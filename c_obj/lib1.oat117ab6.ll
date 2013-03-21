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


define i32 @program (i32 %argc1662, { i32, [ 0 x i8* ] }* %argv1660){

__fresh258:
  %argc_slot1663 = alloca i32
  store i32 %argc1662, i32* %argc_slot1663
  %argv_slot1661 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1660, { i32, [ 0 x i8* ] }** %argv_slot1661
  %array_ptr1664 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1665 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1664 to { i32, [ 0 x i32 ] }* 
  %index_ptr1666 = getelementptr { i32, [ 0 x i32 ] }* %array1665, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1666
  %index_ptr1667 = getelementptr { i32, [ 0 x i32 ] }* %array1665, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1667
  %index_ptr1668 = getelementptr { i32, [ 0 x i32 ] }* %array1665, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1668
  %arr1669 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1665, { i32, [ 0 x i32 ] }** %arr1669
  %_lhs1670 = load { i32, [ 0 x i32 ] }** %arr1669
  %len_ptr1671 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1670, i32 0, i32 0
  %len1672 = load i32* %len_ptr1671
  %len1673 = alloca i32
  store i32 %len1672, i32* %len1673
  %_lhs1674 = load i32* %len1673
  ret i32 %_lhs1674
}


