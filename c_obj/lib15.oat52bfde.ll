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
