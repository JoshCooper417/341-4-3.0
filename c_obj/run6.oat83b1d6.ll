declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3484 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3484.init
define void @oat_init (){

__fresh637:
  call void @arr3484.init(  )
  ret void
}


define i32 @program (i32 %argc3487, { i32, [ 0 x i8* ] }* %argv3485){

__fresh636:
  %argc_slot3488 = alloca i32
  store i32 %argc3487, i32* %argc_slot3488
  %argv_slot3486 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3485, { i32, [ 0 x i8* ] }** %argv_slot3486
  %len_ptr3489 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3484, i32 0, i32 0
  %len3490 = load i32* %len_ptr3489
  call void @oat_array_bounds_check( i32 %len3490, i32 1 )
  %array_dereferenced3491 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3484
  %elt_ptr3492 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3491, i32 0, i32 1, i32 1
  %len_ptr3493 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3492, i32 0, i32 0
  %len3494 = load i32* %len_ptr3493
  call void @oat_array_bounds_check( i32 %len3494, i32 3 )
  %array_dereferenced3495 = load { i32, [ 0 x i32 ] }** %elt_ptr3492
  %elt_ptr3496 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3495, i32 0, i32 1, i32 3
  %_lhs3497 = load i32* %elt_ptr3496
  ret i32 %_lhs3497
}


define void @arr3484.init (){

__fresh635:
  %array_ptr3472 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3473 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3472 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3474 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3475 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3474 to { i32, [ 0 x i32 ] }* 
  %index_ptr3476 = getelementptr { i32, [ 0 x i32 ] }* %array3475, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3476
  %index_ptr3477 = getelementptr { i32, [ 0 x i32 ] }* %array3475, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3477
  %index_ptr3478 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3473, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3475, { i32, [ 0 x i32 ] }** %index_ptr3478
  %array_ptr3479 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3480 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3479 to { i32, [ 0 x i32 ] }* 
  %index_ptr3481 = getelementptr { i32, [ 0 x i32 ] }* %array3480, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3481
  %index_ptr3482 = getelementptr { i32, [ 0 x i32 ] }* %array3480, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3482
  %index_ptr3483 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3473, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3480, { i32, [ 0 x i32 ] }** %index_ptr3483
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3473, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3484
  ret void
}


