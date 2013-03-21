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


define i32 @program (i32 %argc3410, { i32, [ 0 x i8* ] }* %argv3408){

__fresh673:
  %argc_slot3411 = alloca i32
  store i32 %argc3410, i32* %argc_slot3411
  %argv_slot3409 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3408, { i32, [ 0 x i8* ] }** %argv_slot3409
  %array_ptr3412 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3413 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3412 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3414 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3415 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3414 to { i32, [ 0 x i32 ] }* 
  %index_ptr3416 = getelementptr { i32, [ 0 x i32 ] }* %array3415, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3416
  %index_ptr3417 = getelementptr { i32, [ 0 x i32 ] }* %array3415, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3417
  %index_ptr3418 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3413, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3415, { i32, [ 0 x i32 ] }** %index_ptr3418
  %array_ptr3419 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3420 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3419 to { i32, [ 0 x i32 ] }* 
  %index_ptr3421 = getelementptr { i32, [ 0 x i32 ] }* %array3420, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3421
  %index_ptr3422 = getelementptr { i32, [ 0 x i32 ] }* %array3420, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3422
  %index_ptr3423 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3413, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3420, { i32, [ 0 x i32 ] }** %index_ptr3423
  %a3424 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3413, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3424
  %len_ptr3425 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3424, i32 0, i32 0
  %len3426 = load i32* %len_ptr3425
  call void @oat_array_bounds_check( i32 %len3426, i32 1 )
  %array_dereferenced3427 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3424
  %elt_ptr3428 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3427, i32 0, i32 1, i32 1
  %len_ptr3429 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3428, i32 0, i32 0
  %len3430 = load i32* %len_ptr3429
  call void @oat_array_bounds_check( i32 %len3430, i32 3 )
  %array_dereferenced3431 = load { i32, [ 0 x i32 ] }** %elt_ptr3428
  %elt_ptr3432 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3431, i32 0, i32 1, i32 3
  %_lhs3433 = load i32* %elt_ptr3432
  ret i32 %_lhs3433
}


