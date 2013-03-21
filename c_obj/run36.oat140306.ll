declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh760:
  ret void
}


define i32 @program (i32 %argc3568, { i32, [ 0 x i8* ] }* %argv3566){

__fresh759:
  %argc_slot3569 = alloca i32
  store i32 %argc3568, i32* %argc_slot3569
  %argv_slot3567 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3566, { i32, [ 0 x i8* ] }** %argv_slot3567
  %array_ptr3570 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3571 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3570 to { i32, [ 0 x i32 ] }* 
  %index_ptr3572 = getelementptr { i32, [ 0 x i32 ] }* %array3571, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3572
  %index_ptr3573 = getelementptr { i32, [ 0 x i32 ] }* %array3571, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3573
  %a3574 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3571, { i32, [ 0 x i32 ] }** %a3574
  %unop3575 = sub i32 0, 1
  %len_ptr3576 = getelementptr { i32, [ 0 x i32 ] }** %a3574, i32 0, i32 0
  %len3577 = load i32* %len_ptr3576
  call void @oat_array_bounds_check( i32 %len3577, i32 %unop3575 )
  %array_dereferenced3578 = load { i32, [ 0 x i32 ] }** %a3574
  %elt_ptr3579 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3578, i32 0, i32 1, i32 %unop3575
  %_lhs3580 = load i32* %elt_ptr3579
  ret i32 %_lhs3580
}


