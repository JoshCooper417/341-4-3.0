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


define i32 @program (i32 %argc3636, { i32, [ 0 x i8* ] }* %argv3634){

__fresh769:
  %argc_slot3637 = alloca i32
  store i32 %argc3636, i32* %argc_slot3637
  %argv_slot3635 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3634, { i32, [ 0 x i8* ] }** %argv_slot3635
  %len_ptr3638 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot3635, i32 0, i32 0
  %len3639 = load i32* %len_ptr3638
  call void @oat_array_bounds_check( i32 %len3639, i32 1 )
  %array_dereferenced3640 = load { i32, [ 0 x i8* ] }** %argv_slot3635
  %elt_ptr3641 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced3640, i32 0, i32 1, i32 1
  %_lhs3642 = load i8** %elt_ptr3641
  %ret3643 = call i8* @sub ( i8* %_lhs3642, i32 3, i32 5 )
  call void @print_string( i8* %ret3643 )
  ret i32 0
}


define i8* @sub (i8* %str3611, i32 %start3609, i32 %len3607){

__fresh766:
  %str_slot3612 = alloca i8*
  store i8* %str3611, i8** %str_slot3612
  %start_slot3610 = alloca i32
  store i32 %start3609, i32* %start_slot3610
  %len_slot3608 = alloca i32
  store i32 %len3607, i32* %len_slot3608
  %_lhs3613 = load i8** %str_slot3612
  %ret3614 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs3613 )
  %arr3615 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret3614, { i32, [ 0 x i32 ] }** %arr3615
  br label %__check764

__check764:
  %cmp_op3629 = icmp slt i32 1, %_lhs3616
  br i32 %cmp_op3629, label %__body765, label %__end763

__fresh767:
  br label %__body765

__body765:
  %_lhs3618 = load i32* %i3617
  %_lhs3619 = load i32* %start_slot3610
  %bop3620 = add i32 %_lhs3618, %_lhs3619
  %len_ptr3621 = getelementptr { i32, [ 0 x i32 ] }** %arr3615, i32 0, i32 0
  %len3622 = load i32* %len_ptr3621
  call void @oat_array_bounds_check( i32 %len3622, i32 %bop3620 )
  %array_dereferenced3623 = load { i32, [ 0 x i32 ] }** %arr3615
  %elt_ptr3624 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3623, i32 0, i32 1, i32 %bop3620
  %_lhs3625 = load i32* %elt_ptr3624
  %elem_ptr3628 = getelementptr { i32, [ 0 x i32 ] }* %array3627, i32 0, i32 1, i32 1
  %elem_ptr3628 = load i32* %i3617
  %incr_op3630 = add i32 1, 1
  store i32 1, i32 %incr_op3630
  br label %__check764

__fresh768:
  br label %__end763

__end763:
  %r3631 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3627, { i32, [ 0 x i32 ] }** %r3631
  %_lhs3632 = load { i32, [ 0 x i32 ] }** %r3631
  %ret3633 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs3632 )
  ret i8* %ret3633
}


