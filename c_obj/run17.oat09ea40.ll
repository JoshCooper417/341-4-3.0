declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh648:
  ret void
}


define i32 @program (i32 %argc3526, { i32, [ 0 x i8* ] }* %argv3524){

__fresh647:
  %argc_slot3527 = alloca i32
  store i32 %argc3526, i32* %argc_slot3527
  %argv_slot3525 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3524, { i32, [ 0 x i8* ] }** %argv_slot3525
  %x3528 = alloca i32
  store i32 10, i32* %x3528
  store i32 1, i32* %i3529
  %a3548 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3543, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3548
  %_lhs3549 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3548
  %b3550 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3549, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3550
  %len_ptr3551 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3550, i32 0, i32 0
  %len3552 = load i32* %len_ptr3551
  call void @oat_array_bounds_check( i32 %len3552, i32 2 )
  %array_dereferenced3553 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3550
  %elt_ptr3554 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3553, i32 0, i32 1, i32 2
  %len_ptr3555 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3554, i32 0, i32 0
  %len3556 = load i32* %len_ptr3555
  call void @oat_array_bounds_check( i32 %len3556, i32 3 )
  %array_dereferenced3557 = load { i32, [ 0 x i32 ] }** %elt_ptr3554
  %elt_ptr3558 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3557, i32 0, i32 1, i32 3
  %_lhs3559 = load i32* %elt_ptr3558
  ret i32 %_lhs3559
}


