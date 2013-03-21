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


define i32 @program (i32 %argc3399, { i32, [ 0 x i8* ] }* %argv3397){

__fresh1231:
  %argc_slot3400 = alloca i32
  store i32 %argc3399, i32* %argc_slot3400
  %argv_slot3398 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3397, { i32, [ 0 x i8* ] }** %argv_slot3398
  %array_ptr3401 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3402 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3401 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3403 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3404 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3403 to { i32, [ 0 x i32 ] }* 
  %index_ptr3405 = getelementptr { i32, [ 0 x i32 ] }* %array3404, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3405
  %index_ptr3406 = getelementptr { i32, [ 0 x i32 ] }* %array3404, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3406
  %index_ptr3407 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3402, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3404, { i32, [ 0 x i32 ] }** %index_ptr3407
  %array_ptr3408 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3409 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3408 to { i32, [ 0 x i32 ] }* 
  %index_ptr3410 = getelementptr { i32, [ 0 x i32 ] }* %array3409, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3410
  %index_ptr3411 = getelementptr { i32, [ 0 x i32 ] }* %array3409, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3411
  %index_ptr3412 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3402, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3409, { i32, [ 0 x i32 ] }** %index_ptr3412
  %a3413 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3402, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3413
  %array_dereferenced3414 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3413
  %len_ptr3415 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3414, i32 0, i32 0
  %len3416 = load i32* %len_ptr3415
  call void @oat_array_bounds_check( i32 %len3416, i32 1 )
  %elt_ptr3417 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3414, i32 0, i32 1, i32 1
  %array_dereferenced3418 = load { i32, [ 0 x i32 ] }** %elt_ptr3417
  %len_ptr3419 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3418, i32 0, i32 0
  %len3420 = load i32* %len_ptr3419
  call void @oat_array_bounds_check( i32 %len3420, i32 3 )
  %elt_ptr3421 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3418, i32 0, i32 1, i32 3
  %_lhs3422 = load i32* %elt_ptr3421
  ret i32 %_lhs3422
}


