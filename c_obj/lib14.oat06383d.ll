declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1262 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1262.init
define void @oat_init (){

__fresh227:
  call void @a1262.init(  )
  ret void
}


define i32 @program (i32 %argc1265, { i32, [ 0 x i8* ] }* %argv1263){

__fresh226:
  %argc_slot1266 = alloca i32
  store i32 %argc1265, i32* %argc_slot1266
  %argv_slot1264 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1263, { i32, [ 0 x i8* ] }** %argv_slot1264
  %_lhs1267 = load { i32, [ 0 x i32 ] }** @a1262
  %ret1268 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1267 )
  call void @print_string( i8* %ret1268 )
  ret i32 0
}


define void @a1262.init (){

__fresh225:
  %array_ptr1250 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1251 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1250 to { i32, [ 0 x i32 ] }* 
  %index_ptr1252 = getelementptr { i32, [ 0 x i32 ] }* %array1251, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1252
  %index_ptr1253 = getelementptr { i32, [ 0 x i32 ] }* %array1251, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1253
  %index_ptr1254 = getelementptr { i32, [ 0 x i32 ] }* %array1251, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1254
  %index_ptr1255 = getelementptr { i32, [ 0 x i32 ] }* %array1251, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1255
  %index_ptr1256 = getelementptr { i32, [ 0 x i32 ] }* %array1251, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1256
  %index_ptr1257 = getelementptr { i32, [ 0 x i32 ] }* %array1251, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1257
  %index_ptr1258 = getelementptr { i32, [ 0 x i32 ] }* %array1251, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1258
  %index_ptr1259 = getelementptr { i32, [ 0 x i32 ] }* %array1251, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1259
  %index_ptr1260 = getelementptr { i32, [ 0 x i32 ] }* %array1251, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1260
  %index_ptr1261 = getelementptr { i32, [ 0 x i32 ] }* %array1251, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1261
  store { i32, [ 0 x i32 ] }* %array1251, { i32, [ 0 x i32 ] }** @a1262
  ret void
}


