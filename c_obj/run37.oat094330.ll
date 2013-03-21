declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh612:
  ret void
}


define i32 @program (i32 %argc3409, { i32, [ 0 x i8* ] }* %argv3407){

__fresh611:
  %argc_slot3410 = alloca i32
  store i32 %argc3409, i32* %argc_slot3410
  %argv_slot3408 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3407, { i32, [ 0 x i8* ] }** %argv_slot3408
  %array_ptr3411 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3412 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3411 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3413 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3414 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3413 to { i32, [ 0 x i32 ] }* 
  %index_ptr3415 = getelementptr { i32, [ 0 x i32 ] }* %array3414, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3415
  %index_ptr3416 = getelementptr { i32, [ 0 x i32 ] }* %array3414, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3416
  %index_ptr3417 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3412, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3414, { i32, [ 0 x i32 ] }** %index_ptr3417
  %array_ptr3418 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3419 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3418 to { i32, [ 0 x i32 ] }* 
  %index_ptr3420 = getelementptr { i32, [ 0 x i32 ] }* %array3419, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3420
  %index_ptr3421 = getelementptr { i32, [ 0 x i32 ] }* %array3419, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3421
  %index_ptr3422 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3412, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3419, { i32, [ 0 x i32 ] }** %index_ptr3422
  %a3423 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3412, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3423
  %len_ptr3424 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3423, i32 0, i32 0
  %len3425 = load i32* %len_ptr3424
  call void @oat_array_bounds_check( i32 %len3425, i32 1 )
  %array_dereferenced3426 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3423
  %elt_ptr3427 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3426, i32 0, i32 1, i32 1
  %len_ptr3428 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3427, i32 0, i32 0
  %len3429 = load i32* %len_ptr3428
  call void @oat_array_bounds_check( i32 %len3429, i32 3 )
  %array_dereferenced3430 = load { i32, [ 0 x i32 ] }** %elt_ptr3427
  %elt_ptr3431 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3430, i32 0, i32 1, i32 3
  %_lhs3432 = load i32* %elt_ptr3431
  ret i32 %_lhs3432
}


