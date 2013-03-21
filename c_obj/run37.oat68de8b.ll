declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh594:
  ret void
}


define i32 @program (i32 %argc3383, { i32, [ 0 x i8* ] }* %argv3381){

__fresh593:
  %argc_slot3384 = alloca i32
  store i32 %argc3383, i32* %argc_slot3384
  %argv_slot3382 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3381, { i32, [ 0 x i8* ] }** %argv_slot3382
  %array_ptr3385 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3386 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3385 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3387 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3388 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3387 to { i32, [ 0 x i32 ] }* 
  %index_ptr3389 = getelementptr { i32, [ 0 x i32 ] }* %array3388, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3389
  %index_ptr3390 = getelementptr { i32, [ 0 x i32 ] }* %array3388, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3390
  %index_ptr3391 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3386, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3388, { i32, [ 0 x i32 ] }** %index_ptr3391
  %array_ptr3392 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3393 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3392 to { i32, [ 0 x i32 ] }* 
  %index_ptr3394 = getelementptr { i32, [ 0 x i32 ] }* %array3393, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3394
  %index_ptr3395 = getelementptr { i32, [ 0 x i32 ] }* %array3393, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3395
  %index_ptr3396 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3386, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3393, { i32, [ 0 x i32 ] }** %index_ptr3396
  %a3397 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3386, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3397
  %len_ptr3398 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3397, i32 0, i32 0
  %len3399 = load i32* %len_ptr3398
  call void @oat_array_bounds_check( i32 %len3399, i32 1 )
  %array_dereferenced3400 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3397
  %elt_ptr3401 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3400, i32 0, i32 1, i32 1
  %len_ptr3402 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3401, i32 0, i32 0
  %len3403 = load i32* %len_ptr3402
  call void @oat_array_bounds_check( i32 %len3403, i32 3 )
  %array_dereferenced3404 = load { i32, [ 0 x i32 ] }** %elt_ptr3401
  %elt_ptr3405 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3404, i32 0, i32 1, i32 3
  %_lhs3406 = load i32* %elt_ptr3405
  ret i32 %_lhs3406
}


