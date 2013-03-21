declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh170:
  ret void
}


define i32 @program (i32 %argc1053, { i32, [ 0 x i8* ] }* %argv1051){

__fresh169:
  %argc_slot1054 = alloca i32
  store i32 %argc1053, i32* %argc_slot1054
  %argv_slot1052 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1051, { i32, [ 0 x i8* ] }** %argv_slot1052
  %array_ptr1055 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1056 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1055 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1057 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1058 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1057 to { i32, [ 0 x i32 ] }* 
  %index_ptr1059 = getelementptr { i32, [ 0 x i32 ] }* %array1058, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1059
  %index_ptr1060 = getelementptr { i32, [ 0 x i32 ] }* %array1058, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1060
  %index_ptr1061 = getelementptr { i32, [ 0 x i32 ] }* %array1058, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1061
  %index_ptr1062 = getelementptr { i32, [ 0 x i32 ] }* %array1058, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1062
  %index_ptr1063 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1056, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1058, { i32, [ 0 x i32 ] }** %index_ptr1063
  %array_ptr1064 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1065 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1064 to { i32, [ 0 x i32 ] }* 
  %index_ptr1066 = getelementptr { i32, [ 0 x i32 ] }* %array1065, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1066
  %index_ptr1067 = getelementptr { i32, [ 0 x i32 ] }* %array1065, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1067
  %index_ptr1068 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1056, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1065, { i32, [ 0 x i32 ] }** %index_ptr1068
  %array_ptr1069 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1070 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1069 to { i32, [ 0 x i32 ] }* 
  %index_ptr1071 = getelementptr { i32, [ 0 x i32 ] }* %array1070, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1071
  %index_ptr1072 = getelementptr { i32, [ 0 x i32 ] }* %array1070, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1072
  %index_ptr1073 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1056, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1070, { i32, [ 0 x i32 ] }** %index_ptr1073
  %array_ptr1074 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1075 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1074 to { i32, [ 0 x i32 ] }* 
  %index_ptr1076 = getelementptr { i32, [ 0 x i32 ] }* %array1075, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1076
  %index_ptr1077 = getelementptr { i32, [ 0 x i32 ] }* %array1075, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1077
  %index_ptr1078 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1056, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1075, { i32, [ 0 x i32 ] }** %index_ptr1078
  %arr1079 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1056, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1079
  %_lhs1080 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1079
  %len_ptr1081 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1080, i32 0, i32 0
  %len1082 = load i32* %len_ptr1081
  %len1083 = alloca i32
  store i32 %len1082, i32* %len1083
  %_lhs1084 = load i32* %len1083
  ret i32 %_lhs1084
}


