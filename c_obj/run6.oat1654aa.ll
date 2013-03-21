declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3492 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3492.init
define void @oat_init (){

__fresh743:
  call void @arr3492.init(  )
  ret void
}


define i32 @program (i32 %argc3495, { i32, [ 0 x i8* ] }* %argv3493){

__fresh742:
  %argc_slot3496 = alloca i32
  store i32 %argc3495, i32* %argc_slot3496
  %argv_slot3494 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3493, { i32, [ 0 x i8* ] }** %argv_slot3494
  %len_ptr3497 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3492, i32 0, i32 0
  %len3498 = load i32* %len_ptr3497
  call void @oat_array_bounds_check( i32 %len3498, i32 1 )
  %array_dereferenced3499 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3492
  %elt_ptr3500 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3499, i32 0, i32 1, i32 1
  %len_ptr3501 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3500, i32 0, i32 0
  %len3502 = load i32* %len_ptr3501
  call void @oat_array_bounds_check( i32 %len3502, i32 3 )
  %array_dereferenced3503 = load { i32, [ 0 x i32 ] }** %elt_ptr3500
  %elt_ptr3504 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3503, i32 0, i32 1, i32 3
  %_lhs3505 = load i32* %elt_ptr3504
  ret i32 %_lhs3505
}


define void @arr3492.init (){

__fresh741:
  %array_ptr3480 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3481 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3480 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3482 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3483 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3482 to { i32, [ 0 x i32 ] }* 
  %index_ptr3484 = getelementptr { i32, [ 0 x i32 ] }* %array3483, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3484
  %index_ptr3485 = getelementptr { i32, [ 0 x i32 ] }* %array3483, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3485
  %index_ptr3486 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3481, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3483, { i32, [ 0 x i32 ] }** %index_ptr3486
  %array_ptr3487 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3488 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3487 to { i32, [ 0 x i32 ] }* 
  %index_ptr3489 = getelementptr { i32, [ 0 x i32 ] }* %array3488, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3489
  %index_ptr3490 = getelementptr { i32, [ 0 x i32 ] }* %array3488, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3490
  %index_ptr3491 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3481, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3488, { i32, [ 0 x i32 ] }** %index_ptr3491
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3481, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3492
  ret void
}


