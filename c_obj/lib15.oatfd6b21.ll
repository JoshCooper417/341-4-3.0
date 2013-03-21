declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh658:
  ret void
}


define i32 @program (i32 %argc3631, { i32, [ 0 x i8* ] }* %argv3629){

__fresh657:
  %argc_slot3632 = alloca i32
  store i32 %argc3631, i32* %argc_slot3632
  %argv_slot3630 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3629, { i32, [ 0 x i8* ] }** %argv_slot3630
  %len_ptr3633 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot3630, i32 0, i32 0
  %len3634 = load i32* %len_ptr3633
  call void @oat_array_bounds_check( i32 %len3634, i32 1 )
  %array_dereferenced3635 = load { i32, [ 0 x i8* ] }** %argv_slot3630
  %elt_ptr3636 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced3635, i32 0, i32 1, i32 1
  %_lhs3637 = load i8** %elt_ptr3636
  %ret3638 = call i8* @sub ( i8* %_lhs3637, i32 3, i32 5 )
  call void @print_string( i8* %ret3638 )
  ret i32 0
}


define i8* @sub (i8* %str3605, i32 %start3603, i32 %len3601){

__fresh656:
  %str_slot3606 = alloca i8*
  store i8* %str3605, i8** %str_slot3606
  %start_slot3604 = alloca i32
  store i32 %start3603, i32* %start_slot3604
  %len_slot3602 = alloca i32
  store i32 %len3601, i32* %len_slot3602
  %_lhs3607 = load i8** %str_slot3606
  %ret3608 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs3607 )
  %arr3609 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret3608, { i32, [ 0 x i32 ] }** %arr3609
  store i32 1, i32* %i3611
  %r3626 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3621, { i32, [ 0 x i32 ] }** %r3626
  %_lhs3627 = load { i32, [ 0 x i32 ] }** %r3626
  %ret3628 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs3627 )
  ret i8* %ret3628
}


