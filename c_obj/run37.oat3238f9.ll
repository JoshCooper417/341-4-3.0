declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh674:
  ret void
}


define i32 @program (i32 %argc3379, { i32, [ 0 x i8* ] }* %argv3377){

__fresh673:
  %argc_slot3380 = alloca i32
  store i32 %argc3379, i32* %argc_slot3380
  %argv_slot3378 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3377, { i32, [ 0 x i8* ] }** %argv_slot3378
  %array_ptr3381 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3382 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3381 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3383 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3384 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3383 to { i32, [ 0 x i32 ] }* 
  %index_ptr3385 = getelementptr { i32, [ 0 x i32 ] }* %array3384, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3385
  %index_ptr3386 = getelementptr { i32, [ 0 x i32 ] }* %array3384, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3386
  %index_ptr3387 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3382, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3384, { i32, [ 0 x i32 ] }** %index_ptr3387
  %array_ptr3388 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3389 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3388 to { i32, [ 0 x i32 ] }* 
  %index_ptr3390 = getelementptr { i32, [ 0 x i32 ] }* %array3389, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3390
  %index_ptr3391 = getelementptr { i32, [ 0 x i32 ] }* %array3389, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3391
  %index_ptr3392 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3382, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3389, { i32, [ 0 x i32 ] }** %index_ptr3392
  %a3393 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3382, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3393
  %len_ptr3394 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3393, i32 0, i32 0
  %len3395 = load i32* %len_ptr3394
  call void @oat_array_bounds_check( i32 %len3395, i32 1 )
  %array_dereferenced3396 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3393
  %elt_ptr3397 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3396, i32 0, i32 1, i32 1
  %len_ptr3398 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3397, i32 0, i32 0
  %len3399 = load i32* %len_ptr3398
  call void @oat_array_bounds_check( i32 %len3399, i32 3 )
  %array_dereferenced3400 = load { i32, [ 0 x i32 ] }** %elt_ptr3397
  %elt_ptr3401 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3400, i32 0, i32 1, i32 3
  %_lhs3402 = load i32* %elt_ptr3401
  ret i32 %_lhs3402
}


