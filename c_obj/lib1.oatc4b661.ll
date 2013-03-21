declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh259:
  ret void
}


define i32 @program (i32 %argc1632, { i32, [ 0 x i8* ] }* %argv1630){

__fresh258:
  %argc_slot1633 = alloca i32
  store i32 %argc1632, i32* %argc_slot1633
  %argv_slot1631 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1630, { i32, [ 0 x i8* ] }** %argv_slot1631
  %array_ptr1634 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1635 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1634 to { i32, [ 0 x i32 ] }* 
  %index_ptr1636 = getelementptr { i32, [ 0 x i32 ] }* %array1635, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1636
  %index_ptr1637 = getelementptr { i32, [ 0 x i32 ] }* %array1635, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1637
  %index_ptr1638 = getelementptr { i32, [ 0 x i32 ] }* %array1635, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1638
  %arr1639 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1635, { i32, [ 0 x i32 ] }** %arr1639
  %_lhs1640 = load { i32, [ 0 x i32 ] }** %arr1639
  %len_ptr1641 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1640, i32 0, i32 0
  %len1642 = load i32* %len_ptr1641
  %len1643 = alloca i32
  store i32 %len1642, i32* %len1643
  %_lhs1644 = load i32* %len1643
  ret i32 %_lhs1644
}


