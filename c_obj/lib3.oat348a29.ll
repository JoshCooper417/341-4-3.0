declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh628:
  ret void
}


define i32 @program (i32 %argc1664, { i32, [ 0 x i8* ] }* %argv1662){

__fresh627:
  %argc_slot1665 = alloca i32
  store i32 %argc1664, i32* %argc_slot1665
  %argv_slot1663 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1662, { i32, [ 0 x i8* ] }** %argv_slot1663
  %array_ptr1666 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1667 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1666 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1668 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1669 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1668 to { i32, [ 0 x i32 ] }* 
  %index_ptr1670 = getelementptr { i32, [ 0 x i32 ] }* %array1669, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1670
  %index_ptr1671 = getelementptr { i32, [ 0 x i32 ] }* %array1669, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1671
  %index_ptr1672 = getelementptr { i32, [ 0 x i32 ] }* %array1669, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1672
  %index_ptr1673 = getelementptr { i32, [ 0 x i32 ] }* %array1669, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1673
  %index_ptr1674 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1667, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1669, { i32, [ 0 x i32 ] }** %index_ptr1674
  %array_ptr1675 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1676 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1675 to { i32, [ 0 x i32 ] }* 
  %index_ptr1677 = getelementptr { i32, [ 0 x i32 ] }* %array1676, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1677
  %index_ptr1678 = getelementptr { i32, [ 0 x i32 ] }* %array1676, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1678
  %index_ptr1679 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1667, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1676, { i32, [ 0 x i32 ] }** %index_ptr1679
  %array_ptr1680 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1681 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1680 to { i32, [ 0 x i32 ] }* 
  %index_ptr1682 = getelementptr { i32, [ 0 x i32 ] }* %array1681, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1682
  %index_ptr1683 = getelementptr { i32, [ 0 x i32 ] }* %array1681, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1683
  %index_ptr1684 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1667, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1681, { i32, [ 0 x i32 ] }** %index_ptr1684
  %array_ptr1685 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1686 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1685 to { i32, [ 0 x i32 ] }* 
  %index_ptr1687 = getelementptr { i32, [ 0 x i32 ] }* %array1686, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1687
  %index_ptr1688 = getelementptr { i32, [ 0 x i32 ] }* %array1686, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1688
  %index_ptr1689 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1667, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1686, { i32, [ 0 x i32 ] }** %index_ptr1689
  %arr1690 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1667, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1690
  %array_dereferenced1691 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1690
  %len_ptr1692 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1691, i32 0, i32 0
  %len1693 = load i32* %len_ptr1692
  call void @oat_array_bounds_check( i32 %len1693, i32 0 )
  %elt_ptr1694 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1691, i32 0, i32 1, i32 0
  %_lhs1695 = load { i32, [ 0 x i32 ] }** %elt_ptr1694
  %len_ptr1696 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1695, i32 0, i32 0
  %len1697 = load i32* %len_ptr1696
  %len1698 = alloca i32
  store i32 %len1697, i32* %len1698
  %_lhs1699 = load i32* %len1698
  ret i32 %_lhs1699
}


