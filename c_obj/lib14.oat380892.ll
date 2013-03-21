declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1215 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1215.init
define void @oat_init (){

__fresh131:
  call void @a1215.init(  )
  ret void
}


define i32 @program (i32 %argc1218, { i32, [ 0 x i8* ] }* %argv1216){

__fresh130:
  %argc_slot1219 = alloca i32
  store i32 %argc1218, i32* %argc_slot1219
  %argv_slot1217 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1216, { i32, [ 0 x i8* ] }** %argv_slot1217
  %_lhs1220 = load { i32, [ 0 x i32 ] }** @a1215
  %ret1221 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1220 )
  call void @print_string( i8* %ret1221 )
  ret i32 0
}


define void @a1215.init (){

__fresh129:
  %array_ptr1203 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1204 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1203 to { i32, [ 0 x i32 ] }* 
  %index_ptr1205 = getelementptr { i32, [ 0 x i32 ] }* %array1204, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1205
  %index_ptr1206 = getelementptr { i32, [ 0 x i32 ] }* %array1204, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1206
  %index_ptr1207 = getelementptr { i32, [ 0 x i32 ] }* %array1204, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1207
  %index_ptr1208 = getelementptr { i32, [ 0 x i32 ] }* %array1204, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1208
  %index_ptr1209 = getelementptr { i32, [ 0 x i32 ] }* %array1204, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1209
  %index_ptr1210 = getelementptr { i32, [ 0 x i32 ] }* %array1204, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1210
  %index_ptr1211 = getelementptr { i32, [ 0 x i32 ] }* %array1204, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1211
  %index_ptr1212 = getelementptr { i32, [ 0 x i32 ] }* %array1204, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1212
  %index_ptr1213 = getelementptr { i32, [ 0 x i32 ] }* %array1204, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1213
  %index_ptr1214 = getelementptr { i32, [ 0 x i32 ] }* %array1204, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1214
  store { i32, [ 0 x i32 ] }* %array1204, { i32, [ 0 x i32 ] }** @a1215
  ret void
}


