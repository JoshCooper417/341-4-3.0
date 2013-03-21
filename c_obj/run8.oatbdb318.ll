declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh116:
  ret void
}


define i32 @program (i32 %argc590, { i32, [ 0 x i8* ] }* %argv588){

__fresh115:
  %argc_slot591 = alloca i32
  store i32 %argc590, i32* %argc_slot591
  %argv_slot589 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv588, { i32, [ 0 x i8* ] }** %argv_slot589
  %array_ptr592 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array593 = bitcast { i32, [ 0 x i32 ] }* %array_ptr592 to { i32, [ 0 x i32 ] }* 
  %index_ptr594 = getelementptr { i32, [ 0 x i32 ] }* %array593, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr594
  %index_ptr595 = getelementptr { i32, [ 0 x i32 ] }* %array593, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr595
  %arr596 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array593, { i32, [ 0 x i32 ] }** %arr596
  %_lhs597 = load { i32, [ 0 x i32 ] }** %arr596
  %len_ptr598 = getelementptr { i32, [ 0 x i32 ] }* %_lhs597, i32 0, i32 0
  %len599 = load i32* %len_ptr598
  call void @oat_array_bounds_check( i32 %len599, i32 1 )
  %array_dereferenced600 = load { i32, [ 0 x i32 ] }** %arr596
  %elt_ptr601 = getelementptr { i32, [ 0 x i32 ] }** %arr596, i32 0, i32 1, i32 1
  %_lhs602 = load i32* %elt_ptr601
  ret i32 %_lhs602
}


