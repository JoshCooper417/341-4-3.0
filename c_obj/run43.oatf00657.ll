declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1121 = global { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* zeroinitializer, align 4		; initialized by a1121.init
define void @oat_init (){

__fresh285:
  call void @a1121.init(  )
  ret void
}


define i32 @program (i32 %argc1124, { i32, [ 0 x i8* ] }* %argv1122){

__fresh284:
  %argc_slot1125 = alloca i32
  store i32 %argc1124, i32* %argc_slot1125
  %argv_slot1123 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1122, { i32, [ 0 x i8* ] }** %argv_slot1123
  %len_ptr1126 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a1121, i32 0, i32 0
  %len1127 = load i32* %len_ptr1126
  call void @oat_array_bounds_check( i32 %len1127, i32 0 )
  %array_dereferenced1128 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a1121
  %elt_ptr1129 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array_dereferenced1128, i32 0, i32 1, i32 0
  %len_ptr1130 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %elt_ptr1129, i32 0, i32 0
  %len1131 = load i32* %len_ptr1130
  call void @oat_array_bounds_check( i32 %len1131, i32 1 )
  %array_dereferenced1132 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %elt_ptr1129
  %elt_ptr1133 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1132, i32 0, i32 1, i32 1
  %len_ptr1134 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr1133, i32 0, i32 0
  %len1135 = load i32* %len_ptr1134
  call void @oat_array_bounds_check( i32 %len1135, i32 2 )
  %array_dereferenced1136 = load { i32, [ 0 x i32 ] }** %elt_ptr1133
  %elt_ptr1137 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1136, i32 0, i32 1, i32 2
  %_lhs1138 = load i32* %elt_ptr1137
  ret i32 %_lhs1138
}


define void @a1121.init (){

__fresh283:
  %array_ptr1092 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1093 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1092 to { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* 
  %array_ptr1094 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1095 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1094 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1096 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array1097 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1096 to { i32, [ 0 x i32 ] }* 
  %index_ptr1098 = getelementptr { i32, [ 0 x i32 ] }* %array1097, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1098
  %index_ptr1099 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1095, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1097, { i32, [ 0 x i32 ] }** %index_ptr1099
  %array_ptr1100 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1101 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1100 to { i32, [ 0 x i32 ] }* 
  %index_ptr1102 = getelementptr { i32, [ 0 x i32 ] }* %array1101, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1102
  %index_ptr1103 = getelementptr { i32, [ 0 x i32 ] }* %array1101, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1103
  %index_ptr1104 = getelementptr { i32, [ 0 x i32 ] }* %array1101, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1104
  %index_ptr1105 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1095, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1101, { i32, [ 0 x i32 ] }** %index_ptr1105
  %index_ptr1106 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array1093, i32 0, i32 1, i32 0
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1095, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr1106
  %array_ptr1107 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array1108 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1107 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1109 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array1110 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1109 to { i32, [ 0 x i32 ] }* 
  %index_ptr1111 = getelementptr { i32, [ 0 x i32 ] }* %array1110, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1111
  %index_ptr1112 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1108, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1110, { i32, [ 0 x i32 ] }** %index_ptr1112
  %index_ptr1113 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array1093, i32 0, i32 1, i32 1
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1108, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr1113
  %array_ptr1114 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array1115 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1114 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1116 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array1117 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1116 to { i32, [ 0 x i32 ] }* 
  %index_ptr1118 = getelementptr { i32, [ 0 x i32 ] }* %array1117, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1118
  %index_ptr1119 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1115, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1117, { i32, [ 0 x i32 ] }** %index_ptr1119
  %index_ptr1120 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array1093, i32 0, i32 1, i32 2
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1115, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr1120
  store { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array1093, { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a1121
  ret void
}


