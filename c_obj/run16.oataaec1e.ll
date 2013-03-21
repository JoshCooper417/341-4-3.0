declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh268:
  ret void
}


define i32 @program (i32 %argc989, { i32, [ 0 x i8* ] }* %argv987){

__fresh263:
  %argc_slot990 = alloca i32
  store i32 %argc989, i32* %argc_slot990
  %argv_slot988 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv987, { i32, [ 0 x i8* ] }** %argv_slot988
  %x991 = alloca i32
  store i32 10, i32* %x991
  br label %__check261

__check261:
  %cmp_op1007 = icmp slt i32 1, 3
  br i32 %cmp_op1007, label %__body262, label %__end260

__fresh264:
  br label %__body262

__body262:
  store i32 1, i32* %i992
  br label %__check258

__check258:
  %cmp_op1002 = icmp slt i32 1, 3
  br i32 %cmp_op1002, label %__body259, label %__end257

__fresh265:
  br label %__body259

__body259:
  store i32 1, i32* %j993
  %_lhs994 = load i32* %x991
  %_lhs995 = load i32* %i992
  %bop996 = add i32 %_lhs994, %_lhs995
  %_lhs997 = load i32* %j993
  %bop998 = add i32 %bop996, %_lhs997
  %elem_ptr1001 = getelementptr { i32, [ 0 x i32 ] }* %array1000, i32 0, i32 1, i32 1
  %elem_ptr1001 = load i32* %j993
  %incr_op1003 = add i32 1, 1
  store i32 1, i32 %incr_op1003
  br label %__check258

__fresh266:
  br label %__end257

__end257:
  %elem_ptr1006 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1005, i32 0, i32 1, i32 1
  %elem_ptr1006 = load i32* %i992
  %incr_op1008 = add i32 1, 1
  store i32 1, i32 %incr_op1008
  br label %__check261

__fresh267:
  br label %__end260

__end260:
  %a1009 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1005, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1009
  %_lhs1010 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1009
  %b1011 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1010, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b1011
  %len_ptr1012 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b1011, i32 0, i32 0
  %len1013 = load i32* %len_ptr1012
  call void @oat_array_bounds_check( i32 %len1013, i32 2 )
  %array_dereferenced1014 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b1011
  %elt_ptr1015 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1014, i32 0, i32 1, i32 2
  %len_ptr1016 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr1015, i32 0, i32 0
  %len1017 = load i32* %len_ptr1016
  call void @oat_array_bounds_check( i32 %len1017, i32 1 )
  %array_dereferenced1018 = load { i32, [ 0 x i32 ] }** %elt_ptr1015
  %elt_ptr1019 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1018, i32 0, i32 1, i32 1
  %_lhs1020 = load i32* %elt_ptr1019
  ret i32 %_lhs1020
}


