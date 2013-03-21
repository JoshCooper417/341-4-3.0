declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh758:
  ret void
}


define i32 @program (i32 %argc3578, { i32, [ 0 x i8* ] }* %argv3576){

__fresh753:
  %argc_slot3579 = alloca i32
  store i32 %argc3578, i32* %argc_slot3579
  %argv_slot3577 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3576, { i32, [ 0 x i8* ] }** %argv_slot3577
  %x3580 = alloca i32
  store i32 10, i32* %x3580
  %index_op3598 = alloca i32
  store i32 1, i32* %index_op3598
  br label %__check751

__check751:
  %cmp_op3597 = icmp slt i32* %index_op3598, 3
  br i32 %cmp_op3597, label %__body752, label %__end750

__fresh754:
  br label %__body752

__body752:
  %index_op3598 = load i32* %i3581
  %index_op3592 = alloca i32
  store i32 1, i32* %index_op3592
  br label %__check748

__check748:
  %cmp_op3591 = icmp slt i32* %index_op3592, 3
  br i32 %cmp_op3591, label %__body749, label %__end747

__fresh755:
  br label %__body749

__body749:
  %index_op3592 = load i32* %j3582
  %_lhs3583 = load i32* %x3580
  %_lhs3584 = load i32* %i3581
  %bop3585 = add i32 %_lhs3583, %_lhs3584
  %_lhs3586 = load i32* %j3582
  %bop3587 = add i32 %bop3585, %_lhs3586
  %elem_ptr3590 = getelementptr { i32, [ 0 x i32 ] }* %array3589, i32 0, i32 1, i32* %index_op3592
  %elem_ptr3590 = load i32* %j3582
  %incr_op3593 = add i32* %index_op3592, 1
  store i32* %index_op3592, i32 %incr_op3593
  br label %__check748

__fresh756:
  br label %__end747

__end747:
  %elem_ptr3596 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3595, i32 0, i32 1, i32* %index_op3598
  %elem_ptr3596 = load i32* %i3581
  %incr_op3599 = add i32* %index_op3598, 1
  store i32* %index_op3598, i32 %incr_op3599
  br label %__check751

__fresh757:
  br label %__end750

__end750:
  %a3600 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3595, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3600
  %_lhs3601 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3600
  %b3602 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3601, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3602
  %len_ptr3603 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3602, i32 0, i32 0
  %len3604 = load i32* %len_ptr3603
  call void @oat_array_bounds_check( i32 %len3604, i32 2 )
  %array_dereferenced3605 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3602
  %elt_ptr3606 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3605, i32 0, i32 1, i32 2
  %len_ptr3607 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3606, i32 0, i32 0
  %len3608 = load i32* %len_ptr3607
  call void @oat_array_bounds_check( i32 %len3608, i32 3 )
  %array_dereferenced3609 = load { i32, [ 0 x i32 ] }** %elt_ptr3606
  %elt_ptr3610 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3609, i32 0, i32 1, i32 3
  %_lhs3611 = load i32* %elt_ptr3610
  ret i32 %_lhs3611
}


