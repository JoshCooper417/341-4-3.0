declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh762:
  ret void
}


define i32 @program (i32 %argc3583, { i32, [ 0 x i8* ] }* %argv3581){

__fresh761:
  %argc_slot3584 = alloca i32
  store i32 %argc3583, i32* %argc_slot3584
  %argv_slot3582 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3581, { i32, [ 0 x i8* ] }** %argv_slot3582
  %array_ptr3585 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3586 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3585 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3587 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3588 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3587 to { i32, [ 0 x i32 ] }* 
  %index_ptr3589 = getelementptr { i32, [ 0 x i32 ] }* %array3588, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3589
  %index_ptr3590 = getelementptr { i32, [ 0 x i32 ] }* %array3588, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3590
  %index_ptr3591 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3586, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3588, { i32, [ 0 x i32 ] }** %index_ptr3591
  %array_ptr3592 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3593 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3592 to { i32, [ 0 x i32 ] }* 
  %index_ptr3594 = getelementptr { i32, [ 0 x i32 ] }* %array3593, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3594
  %index_ptr3595 = getelementptr { i32, [ 0 x i32 ] }* %array3593, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3595
  %index_ptr3596 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3586, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3593, { i32, [ 0 x i32 ] }** %index_ptr3596
  %a3597 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3586, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3597
  %len_ptr3598 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3597, i32 0, i32 0
  %len3599 = load i32* %len_ptr3598
  call void @oat_array_bounds_check( i32 %len3599, i32 1 )
  %array_dereferenced3600 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3597
  %elt_ptr3601 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3600, i32 0, i32 1, i32 1
  %len_ptr3602 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3601, i32 0, i32 0
  %len3603 = load i32* %len_ptr3602
  call void @oat_array_bounds_check( i32 %len3603, i32 3 )
  %array_dereferenced3604 = load { i32, [ 0 x i32 ] }** %elt_ptr3601
  %elt_ptr3605 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3604, i32 0, i32 1, i32 3
  %_lhs3606 = load i32* %elt_ptr3605
  ret i32 %_lhs3606
}


