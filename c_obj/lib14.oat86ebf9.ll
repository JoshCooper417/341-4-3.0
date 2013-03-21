declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1258 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1258.init
define void @oat_init (){

__fresh134:
  call void @a1258.init(  )
  ret void
}


define i32 @program (i32 %argc1261, { i32, [ 0 x i8* ] }* %argv1259){

__fresh133:
  %argc_slot1262 = alloca i32
  store i32 %argc1261, i32* %argc_slot1262
  %argv_slot1260 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1259, { i32, [ 0 x i8* ] }** %argv_slot1260
  %_lhs1263 = load { i32, [ 0 x i32 ] }** @a1258
  %ret1264 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1263 )
  call void @print_string( i8* %ret1264 )
  ret i32 0
}


define void @a1258.init (){

__fresh132:
  %array_ptr1246 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1247 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1246 to { i32, [ 0 x i32 ] }* 
  %index_ptr1248 = getelementptr { i32, [ 0 x i32 ] }* %array1247, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1248
  %index_ptr1249 = getelementptr { i32, [ 0 x i32 ] }* %array1247, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1249
  %index_ptr1250 = getelementptr { i32, [ 0 x i32 ] }* %array1247, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1250
  %index_ptr1251 = getelementptr { i32, [ 0 x i32 ] }* %array1247, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1251
  %index_ptr1252 = getelementptr { i32, [ 0 x i32 ] }* %array1247, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1252
  %index_ptr1253 = getelementptr { i32, [ 0 x i32 ] }* %array1247, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1253
  %index_ptr1254 = getelementptr { i32, [ 0 x i32 ] }* %array1247, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1254
  %index_ptr1255 = getelementptr { i32, [ 0 x i32 ] }* %array1247, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1255
  %index_ptr1256 = getelementptr { i32, [ 0 x i32 ] }* %array1247, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1256
  %index_ptr1257 = getelementptr { i32, [ 0 x i32 ] }* %array1247, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1257
  store { i32, [ 0 x i32 ] }* %array1247, { i32, [ 0 x i32 ] }** @a1258
  ret void
}


