declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh669:
  ret void
}


define i32 @program (i32 %argc3384, { i32, [ 0 x i8* ] }* %argv3382){

__fresh668:
  %argc_slot3385 = alloca i32
  store i32 %argc3384, i32* %argc_slot3385
  %argv_slot3383 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3382, { i32, [ 0 x i8* ] }** %argv_slot3383
  %array_ptr3386 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3387 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3386 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3388 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3389 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3388 to { i32, [ 0 x i32 ] }* 
  %index_ptr3390 = getelementptr { i32, [ 0 x i32 ] }* %array3389, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3390
  %index_ptr3391 = getelementptr { i32, [ 0 x i32 ] }* %array3389, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3391
  %index_ptr3392 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3387, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3389, { i32, [ 0 x i32 ] }** %index_ptr3392
  %array_ptr3393 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3394 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3393 to { i32, [ 0 x i32 ] }* 
  %index_ptr3395 = getelementptr { i32, [ 0 x i32 ] }* %array3394, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3395
  %index_ptr3396 = getelementptr { i32, [ 0 x i32 ] }* %array3394, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3396
  %index_ptr3397 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3387, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3394, { i32, [ 0 x i32 ] }** %index_ptr3397
  %a3398 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3387, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3398
  %len_ptr3399 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3398, i32 0, i32 0
  %len3400 = load i32* %len_ptr3399
  call void @oat_array_bounds_check( i32 %len3400, i32 1 )
  %array_dereferenced3401 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3398
  %elt_ptr3402 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3401, i32 0, i32 1, i32 1
  %len_ptr3403 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3402, i32 0, i32 0
  %len3404 = load i32* %len_ptr3403
  call void @oat_array_bounds_check( i32 %len3404, i32 3 )
  %array_dereferenced3405 = load { i32, [ 0 x i32 ] }** %elt_ptr3402
  %elt_ptr3406 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3405, i32 0, i32 1, i32 3
  %_lhs3407 = load i32* %elt_ptr3406
  ret i32 %_lhs3407
}


