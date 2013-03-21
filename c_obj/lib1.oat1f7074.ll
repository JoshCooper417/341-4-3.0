declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh166:
  ret void
}


define i32 @program (i32 %argc1006, { i32, [ 0 x i8* ] }* %argv1004){

__fresh165:
  %argc_slot1007 = alloca i32
  store i32 %argc1006, i32* %argc_slot1007
  %argv_slot1005 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1004, { i32, [ 0 x i8* ] }** %argv_slot1005
  %array_ptr1008 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1009 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1008 to { i32, [ 0 x i32 ] }* 
  %index_ptr1010 = getelementptr { i32, [ 0 x i32 ] }* %array1009, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1010
  %index_ptr1011 = getelementptr { i32, [ 0 x i32 ] }* %array1009, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1011
  %index_ptr1012 = getelementptr { i32, [ 0 x i32 ] }* %array1009, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1012
  %arr1013 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1009, { i32, [ 0 x i32 ] }** %arr1013
  %_lhs1014 = load { i32, [ 0 x i32 ] }** %arr1013
  %len_ptr1015 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1014, i32 0, i32 0
  %len1016 = load i32* %len_ptr1015
  %len1017 = alloca i32
  store i32 %len1016, i32* %len1017
  %_lhs1018 = load i32* %len1017
  ret i32 %_lhs1018
}


