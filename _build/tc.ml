(* The Oat Typechecker *)

open Ast
open Astlib
open Printf
open Tctxt

(* See oat.pdf for a complete specification of the functions
   containined in this file. 

   Each judgment is implemented by an OCaml function named tc_<foo>
   where <foo> name of the judgment rules.  For example, the judgment
   for typechecking optional statments has two cases named
   OPT_EXP_NONE and OPT_EXP_SOME.  Those rules are implemented by the
   single OCaml function tc_opt_exp, which has two cases.  

   Every judgment found in oat.pdf translates similarly.  Before
   starting the assignment, spend some time looking at the
   relationship between the functions defined here and the inference
   rules in oat.pdf.

   The typechecker uses the Tctxt module to implement the
   \Delta;\Gamma data structure used in the type inference rules of
   oat.pdf.  You'll need to use the context operations documented in
   tctxt.ml to manipulate the \Delta and \Gamma contexts. *)


(* Helper functions for generating error message.
 * 
 * All typechecking errors are reported using the TypeError exception
 * with an informative error message as the string.
 * 
 * Errors / unexpected conditions in the typechecking code itself
 * should signal a Failure exception (using failwith).
 * 
 * Use assert_equal_types to validate that two Oat types are equal.
 * See its use in tc_opt_exp for an example.
 *)
exception TypeError of string

let type_error s = raise (TypeError s)

(* Prefix a message with file location info. *)
let info_msg (info:Range.t) (msg:string) : string = 
  (Range.string_of_range info) ^ ": " ^ msg

(* A standard type checking error. *)
let type_error_msg (info:Range.t) (expected:typ) (found:typ) : string =
  info_msg info 
    (sprintf 
    "This expression has type %s but an expression was expected of type %s." 
    (string_of_typ found) (string_of_typ expected))

(* Assert that the type found is the type that was expected *)
let assert_equal_types (info:Range.t) (expected:typ) (found:typ) : unit =
  if (not (found = expected)) then 
    type_error (type_error_msg info expected found)


(*******************************)
(* Builtin functions' types.   *)
(*******************************)


(* Defines the types of the built-in Oat functions.  *)
let builtin_functions : (string * ftyp) list = [
  ("string_of_array", ([TArray TInt], Some TString));
  ("array_of_string", ([TString], Some (TArray TInt)));
  ("print_string", ([TString], None));
  ("print_int", ([TInt], None));
  ("print_bool", ([TBool], None));
]


(*****************************)
(* Typechecking functions.   *)
(*****************************)

(* Each function is derived from one of the sets of inference rules of
 * oat.pdf.  *)


(* Unary operations *)
let tc_unop (uop:Range.t unop) (t:typ) : typ =
  let error_msg = info_msg (unop_info uop)
    (sprintf "%s cannot take input type: %s." (string_of_unop uop)
       (string_of_typ t))
  in
  match uop with
      Neg _ | Not _ -> 
        if t = TInt then TInt else type_error error_msg
    | Lognot _ -> 
        if t = TBool then TBool else type_error error_msg

(* Binary operations *)
let tc_bop (bop:Range.t binop) (t1:typ) (t2:typ) : typ =
  let error_msg = info_msg (binop_info bop) 
    (sprintf "%s cannot take input type: (%s, %s)." 
             (string_of_binop bop) (string_of_typ t1) (string_of_typ t2))
  in
  match bop with
      Plus _ | Times _ | Minus _ | Shl _ | Shr _ | Sar _ -> 
        if (t1 = TInt && t2 = TInt) then TInt else type_error error_msg
    | Eq _ | Neq _ ->
        if (t1 = t2) then TBool else type_error error_msg
    | Lt _ | Lte _ | Gt _ | Gte _ -> 
        if (t1 = TInt && t2 = TInt) then TBool else type_error error_msg
    | IAnd _ | IOr _ -> 
        if (t1 = TInt && t2 = TInt) then TInt else type_error error_msg
    | And _ | Or _ -> 
        if (t1 = TBool && t2 = TBool) then TBool else type_error error_msg

(* Constants *)
let  tc_const (cn:Range.t const) : typ =
  match cn with
    | Cbool _ -> TBool
    | Cint _ -> TInt
    | Cstring _ -> TString

let rec check_length_of_array (c:ctxt)(args: ('a exp) list): typ = 
  let arg = 
  begin match args with
    |[h]->h
    |_->let info_msg = "expected exactly one input for length_of_array" in
		     type_error info_msg
  end
      in
  let typ2 = tc_exp c arg in
  begin match typ2 with
    |TArray t -> TInt
    |_-> let info_msg = "expected input to be an array for length_of_array" in
		     type_error info_msg
  end

(* Expressions *)
and tc_exp (c:ctxt) (e:Range.t exp) : typ =
  begin match e with  
  | Const c -> tc_const c
  | Lhs l -> tc_lhs c l
  | New (t, e1, i, e2) -> let t1 = tc_exp c e1 in 
                          begin match t1 with
                           | TInt -> () 
                           |_ -> let error_msg = "first expression must evaluate to a TInt." in
                                 type_error error_msg
                          end;
			  let c2 = add_local (snd i) TInt c in 
                          let t2 = tc_exp c2 e2 in 
			  TArray t2
  | Binop (b, e1, e2) -> tc_bop b (tc_exp c e1) (tc_exp c e2)
  | Unop (u, e) -> tc_unop u (tc_exp c e) 
  | Ecall(i, elist) ->  let fid = snd i in
			if(fid = "length_of_array") then 
			 check_length_of_array c elist
			else let ft = lookup_global_fn fid c in
                        begin match ft with
			| Some ftype -> tc_fn_args c (fst ftype) elist; 
			  begin match snd (ftype) with
			   | Some rt -> rt
			   | None -> type_error "we don't know what to do about this yet."
			  end
                        | None -> let error_msg = "Cannot apply "^ (snd i) ^" as a function" in 
				  type_error error_msg
			end		     
		end


and tc_fn_args (c:ctxt)(r: typ list)(args: ('a exp) list): unit = 
  begin match r, args with
  | h1::t1, h2::t2 -> let typ2 = tc_exp c h2 in if (h1 = typ2) then tc_fn_args c t1 t2 else 
      let info_msg = "expected type" ^ (string_of_typ h1)^" but found type " ^ (string_of_typ typ2) in
		     type_error info_msg
  | [], [] -> ()
  | _, _ -> let error_msg = "incorrect number of function arguments" in type_error error_msg
 end

(* Left-hand sides *)
and tc_lhs (c:ctxt) (l:Range.t lhs) : typ =
  begin match l with
    | Var v -> let id = snd v in
	       begin match lookup_local id c with
		 |Some t -> t
		 |None -> begin match lookup_global_val id c with
		             |Some t -> t
			     |None->let error_msg = 
				      "variable neither global nor local" in
				    type_error error_msg
			  end
		 end
 (* variable *)
    | Index (l,e)-> let t1 = tc_exp c e in 
                    begin match t1 with
                      | TInt -> () 
                      |_ -> let error_msg = 
			      "first expression must evaluate to a TInt." in
                                 type_error error_msg
                          end;
		    let t2 = tc_lhs c l in
		    begin match t2 with
		      |TArray t -> t
		      |_->let error_msg = 
			      "LHS should be an array in this case." in
                                 type_error error_msg
                          end	
  end


(* An optional exception is used in For loops, it must have type bool *)
let tc_opt_exp (c:ctxt) (eo:(Range.t opt_exp)) : unit =
  begin match eo with
    | None -> ()
    | Some e -> 
	let found = tc_exp c e in
	  assert_equal_types (exp_info e) TBool found
  end

let rec init_list (c:ctxt) (expected:typ) 
    (l:(Range.t init) list) : unit = 
  begin match l with
       | h::t-> tc_init c expected h;
			init_list c expected t
       | []->()
  end

(* Variable initializers *)
and tc_init (c:ctxt) (expected:typ) (i:Range.t init) : unit =
  begin match i with
    |Iexp exp -> let t = tc_exp c exp in
		 if(t = expected) then () else let error_msg = 
		       "Init not of expected type" in
                        type_error error_msg
    |Iarray (e,l) -> let internal_type = 
		       begin match expected with
                         |TArray t -> t
			 |_->let error_msg = 
		       "List but not an array" in
                        type_error error_msg
		       end in
      init_list c internal_type l
  end


let rec work_vlist (c:ctxt) (vdecls:(Range.t vdecl) list) : ctxt =
  begin match vdecls with
    |h::t-> tc_init c h.v_ty h.v_init;
      let local_var = lookup_local (snd h.v_id) c in
      begin match local_var with
       |Some t -> let error_msg = "Cannot shadow local variables" in 
		  type_error error_msg
       | None -> let new_context = add_local (snd h.v_id) h.v_ty c in
                work_vlist new_context t
      end 
    |[]->c
  end

(* List of variable declarations *)
let tc_vdecls (c:ctxt) (vdecls:(Range.t vdecl) list) : ctxt =
  work_vlist c vdecls


(* Statements *)
let rec tc_stmt (c:ctxt) (s:Range.t stmt) : unit =
  begin match s with
    | Assign (l,e)->let t1 = tc_lhs c l in
		    let t2 = tc_exp c e in
		    if (t1 = t2) then ()
		    else let error_msg = "assign mistyped" in
                                 type_error error_msg;
    (* assignment *)
    | Scall (i,elist)-> let ftoption = lookup_global_fn (snd i) c in
			begin match ftoption with
			  | Some ft -> 
			    begin match (snd ft) with
			      |Some s ->let error_msg = 
		"Trying to call a non-unit function without assignment" in
                                 type_error error_msg
			      |None->tc_fn_args c (fst ft) elist
			    end;
			  | None -> let error_msg = "Trying to call an unknown function" in
                                 type_error error_msg
			 end
    (* function call *)
    | If (e,s1,soption)-> let t1 = tc_exp c e in 
                   begin match t1 with
                    | TBool -> () 
                    |_ -> let error_msg = "'if' expression must be a TBool." in
                                 type_error error_msg
                          end;
		   tc_stmt c s1;
		   tc_opt_stmt c soption
    (* if-then, optional else *)
    | While (e,s)->let t1 = tc_exp c e in 
                   begin match t1 with
                    | TBool -> () 
                    |_ -> let error_msg = "'while' expression must be a TBool." in
                                 type_error error_msg
                          end;
		   tc_stmt c s
    (* while loop *)
    | For (vdls, opte,soption,s2)-> let c2  = tc_vdecls c vdls in
				    tc_opt_exp c2 opte;
				    tc_opt_stmt c2 soption;
				    tc_stmt c2 s2
    (* for loop *)
    | Block b-> let c2 = tc_block c b in ()(* block *)
  end

(* Sequence of statements *)
and tc_stmts (c:ctxt) (stmts:'a stmts) : unit =
  List.iter (tc_stmt c) stmts

(* Blocks *)
and tc_block (c:ctxt) (vdecls, stmts) : ctxt =
  let c' = tc_vdecls c vdecls in
  let _ = tc_stmts c' stmts in
    c'

(* Optional statements *)
and tc_opt_stmt (c:ctxt) (so:(Range.t stmt) option) : unit =
  match so with
    | Some s -> tc_stmt c s
    | None -> ()

(* Function argument lists *)
let tc_args (c:ctxt) args : ctxt =
  let extend c (t, (info, id)) = 
    if in_locals id c then 
      type_error (info_msg info ("argument "^ id ^" occurs twice."))
    else 
      add_local id t c
  in List.fold_left extend c args

(* Function declarations *)
let tc_fdecl (c:ctxt)  ((rt, (info,fid), args, block, eo): Range.t fdecl) : unit =
  let c' = tc_args c args in
  let c'' = tc_block c' block in 
  match (eo, rt) with
    | (Some e, Some expected) -> 
	let found = tc_exp c'' e in
	  assert_equal_types info expected found
    | (None, None) -> ()
    | (Some _, None) -> 
        type_error (info_msg info "Expected to return unit.")
    | (None, Some expected) -> 
        type_error (info_msg info ("Expected to return "^ (string_of_typ expected) ^"."))

(* Collect the global function context *)
let rec tc_fctxt (c:ctxt) (p:Range.t prog) : ctxt =
  begin match p with
    | [] -> c
    | (Gvdecl _) :: q -> tc_fctxt c q
    | (Gfdecl (rtyp, (info, fid), args, _, _)) :: q-> 
	let (tjs, _)  = List.split args in
	  if in_globals fid c then 
	    type_error (info_msg info (sprintf "Function %s already declared in global context." fid))
	  else
	    let c' = add_global_fn fid (tjs, rtyp) c in
	      tc_fctxt c' q
  end

(* Create the toplevel typechecking context. *)
let toplevel_ctxt = 
  List.fold_left (fun c (name, t) -> add_global_fn name t c) 
    empty_ctxt builtin_functions

(* Typechecks a program assuming that c has already got the 
 * function context initialized properly *)
let rec tc_prog (c:ctxt) (p:Range.t prog) : unit =
  begin match p with
    | [] -> ()
    | Gvdecl vd :: q ->
	let {v_ty=expected; v_id=(info, id); v_init=init} = vd in
	  if in_globals id c then 
	    type_error (info_msg info (sprintf "Identifier %s already declared in global context." id))
	  else
	    let _ = tc_init toplevel_ctxt expected init in
	      tc_prog (add_global_val id expected c) q
    | Gfdecl fd :: q ->
	let _ = tc_fdecl c fd in
	  tc_prog c q
  end


(* A toplevel program: ensures that there is a function called
 * 'program' with the right type. *)
let tc_toplevel (p:Range.t prog) : unit =
  let c = tc_fctxt toplevel_ctxt p in
  let _ =
    (* If a function named 'program' is defined, it must have the correct type. *)
    begin match lookup_global_fn "program" c with
      | None -> ()  
      | Some([TInt; TArray TString], Some TInt) -> ()
      | Some(ts,ret) -> 
	  type_error ("'program' defined at the incorrect type: should be (int, string[]) -> int")
    end
  in
    tc_prog c p
