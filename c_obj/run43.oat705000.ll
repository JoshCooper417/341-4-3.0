declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1144 = global { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* zeroinitializer, align 4		; initialized by a1144.init
define void @oat_init (){

__fresh285:
  call void @a1144.init(  )
  ret void
}


define i32 @program (i32 %argc1147, { i32, [ 0 x i8* ] }* %argv1145){

__fresh284:
  %argc_slot1148 = alloca i32
  store i32 %argc1147, i32* %argc_slot1148
  %argv_slot1146 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1145, { i32, [ 0 x i8* ] }** %argv_slot1146
  %len_ptr1149 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a1144, i32 0, i32 0
  %len1150 = load i32* %len_ptr1149
  call void @oat_array_bounds_check( i32 %len1150, i32 0 )
  %array_dereferenced1151 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a1144
  %elt_ptr1152 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array_dereferenced1151, i32 0, i32 1, i32 0
  %len_ptr1153 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %elt_ptr1152, i32 0, i32 0
  %len1154 = load i32* %len_ptr1153
  call void @oat_array_bounds_check( i32 %len1154, i32 1 )
  %array_dereferenced1155 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %elt_ptr1152
  %elt_ptr1156 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1155, i32 0, i32 1, i32 1
  %len_ptr1157 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr1156, i32 0, i32 0
  %len1158 = load i32* %len_ptr1157
  call void @oat_array_bounds_check( i32 %len1158, i32 2 )
  %array_dereferenced1159 = load { i32, [ 0 x i32 ] }** %elt_ptr1156
  %elt_ptr1160 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1159, i32 0, i32 1, i32 2
  %_lhs1161 = load i32* %elt_ptr1160
  ret i32 %_lhs1161
}


define void @a1144.init (){

__fresh283:
  %array_ptr1115 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1116 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1115 to { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* 
  %array_ptr1117 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1118 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1117 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1119 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array1120 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1119 to { i32, [ 0 x i32 ] }* 
  %index_ptr1121 = getelementptr { i32, [ 0 x i32 ] }* %array1120, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1121
  %index_ptr1122 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1118, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1120, { i32, [ 0 x i32 ] }** %index_ptr1122
  %array_ptr1123 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1124 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1123 to { i32, [ 0 x i32 ] }* 
  %index_ptr1125 = getelementptr { i32, [ 0 x i32 ] }* %array1124, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1125
  %index_ptr1126 = getelementptr { i32, [ 0 x i32 ] }* %array1124, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1126
  %index_ptr1127 = getelementptr { i32, [ 0 x i32 ] }* %array1124, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1127
  %index_ptr1128 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1118, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1124, { i32, [ 0 x i32 ] }** %index_ptr1128
  %index_ptr1129 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array1116, i32 0, i32 1, i32 0
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1118, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr1129
  %array_ptr1130 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array1131 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1130 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1132 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array1133 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1132 to { i32, [ 0 x i32 ] }* 
  %index_ptr1134 = getelementptr { i32, [ 0 x i32 ] }* %array1133, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1134
  %index_ptr1135 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1131, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1133, { i32, [ 0 x i32 ] }** %index_ptr1135
  %index_ptr1136 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array1116, i32 0, i32 1, i32 1
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1131, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr1136
  %array_ptr1137 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array1138 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1137 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1139 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array1140 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1139 to { i32, [ 0 x i32 ] }* 
  %index_ptr1141 = getelementptr { i32, [ 0 x i32 ] }* %array1140, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1141
  %index_ptr1142 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1138, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1140, { i32, [ 0 x i32 ] }** %index_ptr1142
  %index_ptr1143 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array1116, i32 0, i32 1, i32 2
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1138, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr1143
  store { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array1116, { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a1144
  ret void
}


