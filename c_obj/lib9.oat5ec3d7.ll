declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh328:
  ret void
}


define i32 @program (i32 %argc1991, { i32, [ 0 x i8* ] }* %argv1989){

__fresh325:
  %argc_slot1992 = alloca i32
  store i32 %argc1991, i32* %argc_slot1992
  %argv_slot1990 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1989, { i32, [ 0 x i8* ] }** %argv_slot1990
  %i1993 = alloca i32
  store i32 1, i32* %i1993
  br label %__cond324

__cond324:
  %_lhs1994 = load i32* %i1993
  %_lhs1995 = load i32* %argc_slot1992
  %bop1996 = icmp slt i32 %_lhs1994, %_lhs1995
  br i1 %bop1996, label %__body323, label %__post322

__fresh326:
  br label %__body323

__body323:
  %_lhs1997 = load i32* %i1993
  %len_ptr1998 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot1990, i32 0, i32 0
  %len1999 = load i32* %len_ptr1998
  call void @oat_array_bounds_check( i32 %len1999, i32 %_lhs1997 )
  %array_dereferenced2000 = load { i32, [ 0 x i8* ] }** %argv_slot1990
  %elt_ptr2001 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced2000, i32 0, i32 1, i32 %_lhs1997
  %_lhs2002 = load i8** %elt_ptr2001
  call void @print_string( i8* %_lhs2002 )
  %_lhs2003 = load i32* %i1993
  %bop2004 = add i32 %_lhs2003, 1
  store i32 %bop2004, i32* %i1993
  br label %__cond324

__fresh327:
  br label %__post322

__post322:
  %_lhs2005 = load i32* %argc_slot1992
  ret i32 %_lhs2005
}


