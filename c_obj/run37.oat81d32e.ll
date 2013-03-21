declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1232:
  ret void
}


define i32 @program (i32 %argc3374, { i32, [ 0 x i8* ] }* %argv3372){

__fresh1231:
  %argc_slot3375 = alloca i32
  store i32 %argc3374, i32* %argc_slot3375
  %argv_slot3373 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3372, { i32, [ 0 x i8* ] }** %argv_slot3373
  %array_ptr3376 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3377 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3376 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3378 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3379 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3378 to { i32, [ 0 x i32 ] }* 
  %index_ptr3380 = getelementptr { i32, [ 0 x i32 ] }* %array3379, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3380
  %index_ptr3381 = getelementptr { i32, [ 0 x i32 ] }* %array3379, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3381
  %index_ptr3382 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3377, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3379, { i32, [ 0 x i32 ] }** %index_ptr3382
  %array_ptr3383 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3384 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3383 to { i32, [ 0 x i32 ] }* 
  %index_ptr3385 = getelementptr { i32, [ 0 x i32 ] }* %array3384, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3385
  %index_ptr3386 = getelementptr { i32, [ 0 x i32 ] }* %array3384, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3386
  %index_ptr3387 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3377, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3384, { i32, [ 0 x i32 ] }** %index_ptr3387
  %a3388 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3377, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3388
  %array_dereferenced3389 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3388
  %len_ptr3390 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3389, i32 0, i32 0
  %len3391 = load i32* %len_ptr3390
  call void @oat_array_bounds_check( i32 %len3391, i32 1 )
  %elt_ptr3392 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3389, i32 0, i32 1, i32 1
  %array_dereferenced3393 = load { i32, [ 0 x i32 ] }** %elt_ptr3392
  %len_ptr3394 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3393, i32 0, i32 0
  %len3395 = load i32* %len_ptr3394
  call void @oat_array_bounds_check( i32 %len3395, i32 3 )
  %elt_ptr3396 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3393, i32 0, i32 1, i32 3
  %_lhs3397 = load i32* %elt_ptr3396
  ret i32 %_lhs3397
}


