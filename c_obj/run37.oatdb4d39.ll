declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh924:
  ret void
}


define i32 @program (i32 %argc3364, { i32, [ 0 x i8* ] }* %argv3362){

__fresh923:
  %argc_slot3365 = alloca i32
  store i32 %argc3364, i32* %argc_slot3365
  %argv_slot3363 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3362, { i32, [ 0 x i8* ] }** %argv_slot3363
  %array_ptr3366 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3367 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3366 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3368 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3369 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3368 to { i32, [ 0 x i32 ] }* 
  %index_ptr3370 = getelementptr { i32, [ 0 x i32 ] }* %array3369, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3370
  %index_ptr3371 = getelementptr { i32, [ 0 x i32 ] }* %array3369, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3371
  %index_ptr3372 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3367, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3369, { i32, [ 0 x i32 ] }** %index_ptr3372
  %array_ptr3373 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3374 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3373 to { i32, [ 0 x i32 ] }* 
  %index_ptr3375 = getelementptr { i32, [ 0 x i32 ] }* %array3374, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3375
  %index_ptr3376 = getelementptr { i32, [ 0 x i32 ] }* %array3374, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3376
  %index_ptr3377 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3367, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3374, { i32, [ 0 x i32 ] }** %index_ptr3377
  %a3378 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3367, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3378
  %array_dereferenced3383 = load { i32, [ 0 x i32 ] }** %elt_ptr3382
  %array_dereferenced3379 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3378
  %len_ptr3380 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3379, i32 0, i32 0
  %len3381 = load i32* %len_ptr3380
  call void @oat_array_bounds_check( i32 %len3381, i32 1 )
  %elt_ptr3382 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3379, i32 0, i32 1, i32 1
  %len_ptr3384 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3383, i32 0, i32 0
  %len3385 = load i32* %len_ptr3384
  call void @oat_array_bounds_check( i32 %len3385, i32 3 )
  %elt_ptr3386 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3383, i32 0, i32 1, i32 3
  %_lhs3387 = load i32* %elt_ptr3386
  ret i32 %_lhs3387
}


