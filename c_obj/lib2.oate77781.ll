declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh168:
  ret void
}


define i32 @program (i32 %argc1021, { i32, [ 0 x i8* ] }* %argv1019){

__fresh167:
  %argc_slot1022 = alloca i32
  store i32 %argc1021, i32* %argc_slot1022
  %argv_slot1020 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1019, { i32, [ 0 x i8* ] }** %argv_slot1020
  %array_ptr1023 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1024 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1023 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1025 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1026 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1025 to { i32, [ 0 x i32 ] }* 
  %index_ptr1027 = getelementptr { i32, [ 0 x i32 ] }* %array1026, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1027
  %index_ptr1028 = getelementptr { i32, [ 0 x i32 ] }* %array1026, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1028
  %index_ptr1029 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1024, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1026, { i32, [ 0 x i32 ] }** %index_ptr1029
  %array_ptr1030 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1031 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1030 to { i32, [ 0 x i32 ] }* 
  %index_ptr1032 = getelementptr { i32, [ 0 x i32 ] }* %array1031, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1032
  %index_ptr1033 = getelementptr { i32, [ 0 x i32 ] }* %array1031, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1033
  %index_ptr1034 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1024, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1031, { i32, [ 0 x i32 ] }** %index_ptr1034
  %array_ptr1035 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1036 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1035 to { i32, [ 0 x i32 ] }* 
  %index_ptr1037 = getelementptr { i32, [ 0 x i32 ] }* %array1036, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1037
  %index_ptr1038 = getelementptr { i32, [ 0 x i32 ] }* %array1036, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1038
  %index_ptr1039 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1024, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1036, { i32, [ 0 x i32 ] }** %index_ptr1039
  %array_ptr1040 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1041 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1040 to { i32, [ 0 x i32 ] }* 
  %index_ptr1042 = getelementptr { i32, [ 0 x i32 ] }* %array1041, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1042
  %index_ptr1043 = getelementptr { i32, [ 0 x i32 ] }* %array1041, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1043
  %index_ptr1044 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1024, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1041, { i32, [ 0 x i32 ] }** %index_ptr1044
  %arr1045 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1024, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1045
  %_lhs1046 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1045
  %len_ptr1047 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1046, i32 0, i32 0
  %len1048 = load i32* %len_ptr1047
  %len1049 = alloca i32
  store i32 %len1048, i32* %len1049
  %_lhs1050 = load i32* %len1049
  ret i32 %_lhs1050
}


