declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2287 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr2287.init
define void @oat_init (){

__fresh325:
  call void @arr2287.init(  )
  ret void
}


define i32 @program (i32 %argc2290, { i32, [ 0 x i8* ] }* %argv2288){

__fresh324:
  %argc_slot2291 = alloca i32
  store i32 %argc2290, i32* %argc_slot2291
  %argv_slot2289 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2288, { i32, [ 0 x i8* ] }** %argv_slot2289
  %_lhs2292 = load { i32, [ 0 x i32 ] }** @arr2287
  %len_ptr2293 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2292, i32 0, i32 0
  %len2294 = load i32* %len_ptr2293
  call void @oat_array_bounds_check( i32 %len2294, i32 2 )
  %array_dereferenced2295 = load { i32, [ 0 x i32 ] }** @arr2287
  %elt_ptr2296 = getelementptr { i32, [ 0 x i32 ] }** @arr2287, i32 0, i32 1, i32 2
  %_lhs2297 = load [ 0 x i32 ]* %elt_ptr2296
  ret [ 0 x i32 ] %_lhs2297
}


define void @arr2287.init (){

__fresh323:
  %array_ptr2283 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2284 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2283 to { i32, [ 0 x i32 ] }* 
  %index_ptr2285 = getelementptr { i32, [ 0 x i32 ] }* %array2284, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2285
  %index_ptr2286 = getelementptr { i32, [ 0 x i32 ] }* %array2284, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2286
  store { i32, [ 0 x i32 ] }* %array2284, { i32, [ 0 x i32 ] }** @arr2287
  ret void
}


