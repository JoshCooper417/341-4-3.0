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


define i32 @program (i32 %argc3534, { i32, [ 0 x i8* ] }* %argv3532){

__fresh753:
  %argc_slot3535 = alloca i32
  store i32 %argc3534, i32* %argc_slot3535
  %argv_slot3533 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3532, { i32, [ 0 x i8* ] }** %argv_slot3533
  %x3536 = alloca i32
  store i32 10, i32* %x3536
  br label %__check751

__check751:
  %cmp_op3552 = icmp slt i32 1, 3
  br i32 %cmp_op3552, label %__body752, label %__end750

__fresh754:
  br label %__body752

__body752:
  store i32 1, i32* %i3537
  br label %__check748

__check748:
  %cmp_op3547 = icmp slt i32 1, 3
  br i32 %cmp_op3547, label %__body749, label %__end747

__fresh755:
  br label %__body749

__body749:
  store i32 1, i32* %j3538
  %_lhs3539 = load i32* %x3536
  %_lhs3540 = load i32* %i3537
  %bop3541 = add i32 %_lhs3539, %_lhs3540
  %_lhs3542 = load i32* %j3538
  %bop3543 = add i32 %bop3541, %_lhs3542
  %elem_ptr3546 = getelementptr { i32, [ 0 x i32 ] }* %array3545, i32 0, i32 1, i32 1
  %elem_ptr3546 = load i32* %j3538
  %incr_op3548 = add i32 1, 1
  store i32 1, i32 %incr_op3548
  br label %__check748

__fresh756:
  br label %__end747

__end747:
  %elem_ptr3551 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3550, i32 0, i32 1, i32 1
  %elem_ptr3551 = load i32* %i3537
  %incr_op3553 = add i32 1, 1
  store i32 1, i32 %incr_op3553
  br label %__check751

__fresh757:
  br label %__end750

__end750:
  %a3554 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3550, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3554
  %_lhs3555 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3554
  %b3556 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3555, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3556
  %len_ptr3557 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3556, i32 0, i32 0
  %len3558 = load i32* %len_ptr3557
  call void @oat_array_bounds_check( i32 %len3558, i32 2 )
  %array_dereferenced3559 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3556
  %elt_ptr3560 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3559, i32 0, i32 1, i32 2
  %len_ptr3561 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3560, i32 0, i32 0
  %len3562 = load i32* %len_ptr3561
  call void @oat_array_bounds_check( i32 %len3562, i32 3 )
  %array_dereferenced3563 = load { i32, [ 0 x i32 ] }** %elt_ptr3560
  %elt_ptr3564 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3563, i32 0, i32 1, i32 3
  %_lhs3565 = load i32* %elt_ptr3564
  ret i32 %_lhs3565
}


