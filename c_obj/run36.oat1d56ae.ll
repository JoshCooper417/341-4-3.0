declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh650:
  ret void
}


define i32 @program (i32 %argc3562, { i32, [ 0 x i8* ] }* %argv3560){

__fresh649:
  %argc_slot3563 = alloca i32
  store i32 %argc3562, i32* %argc_slot3563
  %argv_slot3561 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3560, { i32, [ 0 x i8* ] }** %argv_slot3561
  %array_ptr3564 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3565 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3564 to { i32, [ 0 x i32 ] }* 
  %index_ptr3566 = getelementptr { i32, [ 0 x i32 ] }* %array3565, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3566
  %index_ptr3567 = getelementptr { i32, [ 0 x i32 ] }* %array3565, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3567
  %a3568 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3565, { i32, [ 0 x i32 ] }** %a3568
  %unop3569 = sub i32 0, 1
  %len_ptr3570 = getelementptr { i32, [ 0 x i32 ] }** %a3568, i32 0, i32 0
  %len3571 = load i32* %len_ptr3570
  call void @oat_array_bounds_check( i32 %len3571, i32 %unop3569 )
  %array_dereferenced3572 = load { i32, [ 0 x i32 ] }** %a3568
  %elt_ptr3573 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3572, i32 0, i32 1, i32 %unop3569
  %_lhs3574 = load i32* %elt_ptr3573
  ret i32 %_lhs3574
}


