declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh770:
  ret void
}


define i32 @program (i32 %argc3683, { i32, [ 0 x i8* ] }* %argv3681){

__fresh769:
  %argc_slot3684 = alloca i32
  store i32 %argc3683, i32* %argc_slot3684
  %argv_slot3682 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3681, { i32, [ 0 x i8* ] }** %argv_slot3682
  %len_ptr3685 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot3682, i32 0, i32 0
  %len3686 = load i32* %len_ptr3685
  call void @oat_array_bounds_check( i32 %len3686, i32 1 )
  %array_dereferenced3687 = load { i32, [ 0 x i8* ] }** %argv_slot3682
  %elt_ptr3688 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced3687, i32 0, i32 1, i32 1
  %_lhs3689 = load i8** %elt_ptr3688
  %ret3690 = call i8* @sub ( i8* %_lhs3689, i32 3, i32 5 )
  call void @print_string( i8* %ret3690 )
  ret i32 0
}


define i8* @sub (i8* %str3657, i32 %start3655, i32 %len3653){

__fresh766:
  %str_slot3658 = alloca i8*
  store i8* %str3657, i8** %str_slot3658
  %start_slot3656 = alloca i32
  store i32 %start3655, i32* %start_slot3656
  %len_slot3654 = alloca i32
  store i32 %len3653, i32* %len_slot3654
  %_lhs3659 = load i8** %str_slot3658
  %ret3660 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs3659 )
  %arr3661 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret3660, { i32, [ 0 x i32 ] }** %arr3661
  br label %__check764

__check764:
  %cmp_op3675 = icmp slt i32 %index_op3676, %_lhs3662
  br i32 %cmp_op3675, label %__body765, label %__end763

__fresh767:
  br label %__body765

__body765:
  %index_op3676 = load i32* %i3663
  %_lhs3664 = load i32* %i3663
  %_lhs3665 = load i32* %start_slot3656
  %bop3666 = add i32 %_lhs3664, %_lhs3665
  %len_ptr3667 = getelementptr { i32, [ 0 x i32 ] }** %arr3661, i32 0, i32 0
  %len3668 = load i32* %len_ptr3667
  call void @oat_array_bounds_check( i32 %len3668, i32 %bop3666 )
  %array_dereferenced3669 = load { i32, [ 0 x i32 ] }** %arr3661
  %elt_ptr3670 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3669, i32 0, i32 1, i32 %bop3666
  %_lhs3671 = load i32* %elt_ptr3670
  %elem_ptr3674 = getelementptr { i32, [ 0 x i32 ] }* %array3673, i32 0, i32 1, i32 %index_op3676
  store i32 %_lhs3671, i32* %elem_ptr3674
  %index_op3676 = add i32 %index_op3676, 1
  br label %__check764

__fresh768:
  br label %__end763

__end763:
  %r3678 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3673, { i32, [ 0 x i32 ] }** %r3678
  %_lhs3679 = load { i32, [ 0 x i32 ] }** %r3678
  %ret3680 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs3679 )
  ret i8* %ret3680
}


