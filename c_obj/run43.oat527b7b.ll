declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1093 = global { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* zeroinitializer, align 4		; initialized by a1093.init
define void @oat_init (){

__fresh221:
  call void @a1093.init(  )
  ret void
}


define i32 @program (i32 %argc1096, { i32, [ 0 x i8* ] }* %argv1094){

__fresh220:
  %argc_slot1097 = alloca i32
  store i32 %argc1096, i32* %argc_slot1097
  %argv_slot1095 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1094, { i32, [ 0 x i8* ] }** %argv_slot1095
  %len_ptr1098 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a1093, i32 0, i32 0
  %len1099 = load i32* %len_ptr1098
  call void @oat_array_bounds_check( i32 %len1099, i32 0 )
  %array_dereferenced1100 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a1093
  %elt_ptr1101 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array_dereferenced1100, i32 0, i32 1, i32 0
  %len_ptr1102 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %elt_ptr1101, i32 0, i32 0
  %len1103 = load i32* %len_ptr1102
  call void @oat_array_bounds_check( i32 %len1103, i32 1 )
  %array_dereferenced1104 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %elt_ptr1101
  %elt_ptr1105 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1104, i32 0, i32 1, i32 1
  %len_ptr1106 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr1105, i32 0, i32 0
  %len1107 = load i32* %len_ptr1106
  call void @oat_array_bounds_check( i32 %len1107, i32 2 )
  %array_dereferenced1108 = load { i32, [ 0 x i32 ] }** %elt_ptr1105
  %elt_ptr1109 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1108, i32 0, i32 1, i32 2
  %_lhs1110 = load i32* %elt_ptr1109
  ret i32 %_lhs1110
}


define void @a1093.init (){

__fresh219:
  %array_ptr1064 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1065 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1064 to { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* 
  %array_ptr1066 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1067 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1066 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1068 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array1069 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1068 to { i32, [ 0 x i32 ] }* 
  %index_ptr1070 = getelementptr { i32, [ 0 x i32 ] }* %array1069, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1070
  %index_ptr1071 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1067, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1069, { i32, [ 0 x i32 ] }** %index_ptr1071
  %array_ptr1072 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1073 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1072 to { i32, [ 0 x i32 ] }* 
  %index_ptr1074 = getelementptr { i32, [ 0 x i32 ] }* %array1073, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1074
  %index_ptr1075 = getelementptr { i32, [ 0 x i32 ] }* %array1073, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1075
  %index_ptr1076 = getelementptr { i32, [ 0 x i32 ] }* %array1073, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1076
  %index_ptr1077 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1067, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1073, { i32, [ 0 x i32 ] }** %index_ptr1077
  %index_ptr1078 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array1065, i32 0, i32 1, i32 0
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1067, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr1078
  %array_ptr1079 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array1080 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1079 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1081 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array1082 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1081 to { i32, [ 0 x i32 ] }* 
  %index_ptr1083 = getelementptr { i32, [ 0 x i32 ] }* %array1082, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1083
  %index_ptr1084 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1080, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1082, { i32, [ 0 x i32 ] }** %index_ptr1084
  %index_ptr1085 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array1065, i32 0, i32 1, i32 1
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1080, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr1085
  %array_ptr1086 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array1087 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1086 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1088 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array1089 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1088 to { i32, [ 0 x i32 ] }* 
  %index_ptr1090 = getelementptr { i32, [ 0 x i32 ] }* %array1089, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1090
  %index_ptr1091 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1087, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1089, { i32, [ 0 x i32 ] }** %index_ptr1091
  %index_ptr1092 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array1065, i32 0, i32 1, i32 2
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1087, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr1092
  store { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array1065, { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a1093
  ret void
}


