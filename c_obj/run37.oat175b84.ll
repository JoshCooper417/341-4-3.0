declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh652:
  ret void
}


define i32 @program (i32 %argc3577, { i32, [ 0 x i8* ] }* %argv3575){

__fresh651:
  %argc_slot3578 = alloca i32
  store i32 %argc3577, i32* %argc_slot3578
  %argv_slot3576 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3575, { i32, [ 0 x i8* ] }** %argv_slot3576
  %array_ptr3579 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3580 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3579 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3581 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3582 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3581 to { i32, [ 0 x i32 ] }* 
  %index_ptr3583 = getelementptr { i32, [ 0 x i32 ] }* %array3582, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3583
  %index_ptr3584 = getelementptr { i32, [ 0 x i32 ] }* %array3582, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3584
  %index_ptr3585 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3580, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3582, { i32, [ 0 x i32 ] }** %index_ptr3585
  %array_ptr3586 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3587 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3586 to { i32, [ 0 x i32 ] }* 
  %index_ptr3588 = getelementptr { i32, [ 0 x i32 ] }* %array3587, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3588
  %index_ptr3589 = getelementptr { i32, [ 0 x i32 ] }* %array3587, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3589
  %index_ptr3590 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3580, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3587, { i32, [ 0 x i32 ] }** %index_ptr3590
  %a3591 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3580, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3591
  %len_ptr3592 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3591, i32 0, i32 0
  %len3593 = load i32* %len_ptr3592
  call void @oat_array_bounds_check( i32 %len3593, i32 1 )
  %array_dereferenced3594 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3591
  %elt_ptr3595 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3594, i32 0, i32 1, i32 1
  %len_ptr3596 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3595, i32 0, i32 0
  %len3597 = load i32* %len_ptr3596
  call void @oat_array_bounds_check( i32 %len3597, i32 3 )
  %array_dereferenced3598 = load { i32, [ 0 x i32 ] }** %elt_ptr3595
  %elt_ptr3599 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3598, i32 0, i32 1, i32 3
  %_lhs3600 = load i32* %elt_ptr3599
  ret i32 %_lhs3600
}


