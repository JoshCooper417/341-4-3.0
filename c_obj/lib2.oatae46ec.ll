declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh627:
  ret void
}


define i32 @program (i32 %argc1659, { i32, [ 0 x i8* ] }* %argv1657){

__fresh626:
  %argc_slot1660 = alloca i32
  store i32 %argc1659, i32* %argc_slot1660
  %argv_slot1658 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1657, { i32, [ 0 x i8* ] }** %argv_slot1658
  %array_ptr1661 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1662 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1661 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1663 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1664 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1663 to { i32, [ 0 x i32 ] }* 
  %index_ptr1665 = getelementptr { i32, [ 0 x i32 ] }* %array1664, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1665
  %index_ptr1666 = getelementptr { i32, [ 0 x i32 ] }* %array1664, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1666
  %index_ptr1667 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1662, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1664, { i32, [ 0 x i32 ] }** %index_ptr1667
  %array_ptr1668 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1669 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1668 to { i32, [ 0 x i32 ] }* 
  %index_ptr1670 = getelementptr { i32, [ 0 x i32 ] }* %array1669, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1670
  %index_ptr1671 = getelementptr { i32, [ 0 x i32 ] }* %array1669, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1671
  %index_ptr1672 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1662, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1669, { i32, [ 0 x i32 ] }** %index_ptr1672
  %array_ptr1673 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1674 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1673 to { i32, [ 0 x i32 ] }* 
  %index_ptr1675 = getelementptr { i32, [ 0 x i32 ] }* %array1674, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1675
  %index_ptr1676 = getelementptr { i32, [ 0 x i32 ] }* %array1674, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1676
  %index_ptr1677 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1662, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1674, { i32, [ 0 x i32 ] }** %index_ptr1677
  %array_ptr1678 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1679 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1678 to { i32, [ 0 x i32 ] }* 
  %index_ptr1680 = getelementptr { i32, [ 0 x i32 ] }* %array1679, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1680
  %index_ptr1681 = getelementptr { i32, [ 0 x i32 ] }* %array1679, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1681
  %index_ptr1682 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1662, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1679, { i32, [ 0 x i32 ] }** %index_ptr1682
  %arr1683 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1662, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1683
  %array_dereferenced1684 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1683
  %len_ptr1685 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1684, i32 0, i32 0
  %len1686 = load i32* %len_ptr1685
  call void @oat_array_bounds_check( i32 %len1686, i32 2 )
  %elt_ptr1687 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1684, i32 0, i32 1, i32 2
  %_lhs1688 = load { i32, [ 0 x i32 ] }** %elt_ptr1687
  %len_ptr1689 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1688, i32 0, i32 0
  %len1690 = load i32* %len_ptr1689
  %len1691 = alloca i32
  store i32 %len1690, i32* %len1691
  %_lhs1692 = load i32* %len1691
  ret i32 %_lhs1692
}


