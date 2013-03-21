declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1185 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1185.init
define void @oat_init (){

__fresh131:
  call void @a1185.init(  )
  ret void
}


define i32 @program (i32 %argc1188, { i32, [ 0 x i8* ] }* %argv1186){

__fresh130:
  %argc_slot1189 = alloca i32
  store i32 %argc1188, i32* %argc_slot1189
  %argv_slot1187 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1186, { i32, [ 0 x i8* ] }** %argv_slot1187
  %_lhs1190 = load { i32, [ 0 x i32 ] }** @a1185
  %ret1191 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1190 )
  call void @print_string( i8* %ret1191 )
  ret i32 0
}


define void @a1185.init (){

__fresh129:
  %array_ptr1173 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1174 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1173 to { i32, [ 0 x i32 ] }* 
  %index_ptr1175 = getelementptr { i32, [ 0 x i32 ] }* %array1174, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1175
  %index_ptr1176 = getelementptr { i32, [ 0 x i32 ] }* %array1174, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1176
  %index_ptr1177 = getelementptr { i32, [ 0 x i32 ] }* %array1174, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1177
  %index_ptr1178 = getelementptr { i32, [ 0 x i32 ] }* %array1174, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1178
  %index_ptr1179 = getelementptr { i32, [ 0 x i32 ] }* %array1174, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1179
  %index_ptr1180 = getelementptr { i32, [ 0 x i32 ] }* %array1174, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1180
  %index_ptr1181 = getelementptr { i32, [ 0 x i32 ] }* %array1174, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1181
  %index_ptr1182 = getelementptr { i32, [ 0 x i32 ] }* %array1174, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1182
  %index_ptr1183 = getelementptr { i32, [ 0 x i32 ] }* %array1174, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1183
  %index_ptr1184 = getelementptr { i32, [ 0 x i32 ] }* %array1174, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1184
  store { i32, [ 0 x i32 ] }* %array1174, { i32, [ 0 x i32 ] }** @a1185
  ret void
}


