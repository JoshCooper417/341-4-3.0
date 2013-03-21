declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh200:
  ret void
}


define i32 @program (i32 %argc1160, { i32, [ 0 x i8* ] }* %argv1158){

__fresh197:
  %argc_slot1161 = alloca i32
  store i32 %argc1160, i32* %argc_slot1161
  %argv_slot1159 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1158, { i32, [ 0 x i8* ] }** %argv_slot1159
  %array_ptr1162 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1163 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1162 to { i32, [ 0 x i32 ] }* 
  %index_ptr1164 = getelementptr { i32, [ 0 x i32 ] }* %array1163, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1164
  %index_ptr1165 = getelementptr { i32, [ 0 x i32 ] }* %array1163, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1165
  %index_ptr1166 = getelementptr { i32, [ 0 x i32 ] }* %array1163, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1166
  %index_ptr1167 = getelementptr { i32, [ 0 x i32 ] }* %array1163, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1167
  %index_ptr1168 = getelementptr { i32, [ 0 x i32 ] }* %array1163, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1168
  %arr11169 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1163, { i32, [ 0 x i32 ] }** %arr11169
  %_lhs1170 = load { i32, [ 0 x i32 ] }** %arr11169
  %ret1171 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1170 )
  %str1172 = alloca i8*
  store i8* %ret1171, i8** %str1172
  %_lhs1173 = load i8** %str1172
  %ret1174 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1173 )
  %arr21175 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1174, { i32, [ 0 x i32 ] }** %arr21175
  %s1176 = alloca i32
  store i32 0, i32* %s1176
  %i1177 = alloca i32
  store i32 0, i32* %i1177
  br label %__cond196

__cond196:
  %_lhs1178 = load i32* %i1177
  %bop1179 = icmp slt i32 %_lhs1178, 5
  br i1 %bop1179, label %__body195, label %__post194

__fresh198:
  br label %__body195

__body195:
  %_lhs1180 = load i32* %s1176
  %_lhs1182 = load { i32, [ 0 x i32 ] }** %arr21175
  %bop1183 = add i32 %_lhs1180, %_lhs1182
  store i32 %bop1183, i32* %s1176
  %_lhs1184 = load i32* %i1177
  %bop1185 = add i32 %_lhs1184, 1
  store i32 %bop1185, i32* %i1177
  br label %__cond196

__fresh199:
  br label %__post194

__post194:
  %_lhs1186 = load i32* %s1176
  ret i32 %_lhs1186
}


