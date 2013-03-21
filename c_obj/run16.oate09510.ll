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


define i32 @program (i32 %argc1009, { i32, [ 0 x i8* ] }* %argv1007){

__fresh263:
  %argc_slot1010 = alloca i32
  store i32 %argc1009, i32* %argc_slot1010
  %argv_slot1008 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1007, { i32, [ 0 x i8* ] }** %argv_slot1008
  %x1011 = alloca i32
  store i32 10, i32* %x1011
  %index_op1029 = alloca i32
  store i32 1, i32* %index_op1029
  br label %__check261

__check261:
  %cmp_op1028 = icmp slt i32* %index_op1029, 3
  br i32 %cmp_op1028, label %__body262, label %__end260

__fresh264:
  br label %__body262

__body262:
  %index_op1029 = load i32* %i1012
  %index_op1023 = alloca i32
  store i32 1, i32* %index_op1023
  br label %__check258

__check258:
  %cmp_op1022 = icmp slt i32* %index_op1023, 3
  br i32 %cmp_op1022, label %__body259, label %__end257

__fresh265:
  br label %__body259

__body259:
  %index_op1023 = load i32* %j1013
  %_lhs1014 = load i32* %x1011
  %_lhs1015 = load i32* %i1012
  %bop1016 = add i32 %_lhs1014, %_lhs1015
  %_lhs1017 = load i32* %j1013
  %bop1018 = add i32 %bop1016, %_lhs1017
  %elem_ptr1021 = getelementptr { i32, [ 0 x i32 ] }* %array1020, i32 0, i32 1, i32* %index_op1023
  %elem_ptr1021 = load i32* %j1013
  %incr_op1024 = add i32* %index_op1023, 1
  store i32* %index_op1023, i32 %incr_op1024
  br label %__check258

__fresh266:
  br label %__end257

__end257:
  %elem_ptr1027 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1026, i32 0, i32 1, i32* %index_op1029
  %elem_ptr1027 = load i32* %i1012
  %incr_op1030 = add i32* %index_op1029, 1
  store i32* %index_op1029, i32 %incr_op1030
  br label %__check261

__fresh267:
  br label %__end260

__end260:
  %a1031 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1026, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1031
  %_lhs1032 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1031
  %b1033 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1032, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b1033
  %len_ptr1034 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b1033, i32 0, i32 0
  %len1035 = load i32* %len_ptr1034
  call void @oat_array_bounds_check( i32 %len1035, i32 2 )
  %array_dereferenced1036 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b1033
  %elt_ptr1037 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1036, i32 0, i32 1, i32 2
  %len_ptr1038 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr1037, i32 0, i32 0
  %len1039 = load i32* %len_ptr1038
  call void @oat_array_bounds_check( i32 %len1039, i32 1 )
  %array_dereferenced1040 = load { i32, [ 0 x i32 ] }** %elt_ptr1037
  %elt_ptr1041 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1040, i32 0, i32 1, i32 1
  %_lhs1042 = load i32* %elt_ptr1041
  ret i32 %_lhs1042
}


