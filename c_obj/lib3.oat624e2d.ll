declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh308:
  ret void
}


define i32 @program (i32 %argc1684, { i32, [ 0 x i8* ] }* %argv1682){

__fresh307:
  %argc_slot1685 = alloca i32
  store i32 %argc1684, i32* %argc_slot1685
  %argv_slot1683 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1682, { i32, [ 0 x i8* ] }** %argv_slot1683
  %array_ptr1686 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1687 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1686 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1688 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1689 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1688 to { i32, [ 0 x i32 ] }* 
  %index_ptr1690 = getelementptr { i32, [ 0 x i32 ] }* %array1689, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1690
  %index_ptr1691 = getelementptr { i32, [ 0 x i32 ] }* %array1689, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1691
  %index_ptr1692 = getelementptr { i32, [ 0 x i32 ] }* %array1689, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1692
  %index_ptr1693 = getelementptr { i32, [ 0 x i32 ] }* %array1689, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1693
  %index_ptr1694 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1687, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1689, { i32, [ 0 x i32 ] }** %index_ptr1694
  %array_ptr1695 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1696 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1695 to { i32, [ 0 x i32 ] }* 
  %index_ptr1697 = getelementptr { i32, [ 0 x i32 ] }* %array1696, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1697
  %index_ptr1698 = getelementptr { i32, [ 0 x i32 ] }* %array1696, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1698
  %index_ptr1699 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1687, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1696, { i32, [ 0 x i32 ] }** %index_ptr1699
  %array_ptr1700 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1701 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1700 to { i32, [ 0 x i32 ] }* 
  %index_ptr1702 = getelementptr { i32, [ 0 x i32 ] }* %array1701, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1702
  %index_ptr1703 = getelementptr { i32, [ 0 x i32 ] }* %array1701, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1703
  %index_ptr1704 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1687, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1701, { i32, [ 0 x i32 ] }** %index_ptr1704
  %array_ptr1705 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1706 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1705 to { i32, [ 0 x i32 ] }* 
  %index_ptr1707 = getelementptr { i32, [ 0 x i32 ] }* %array1706, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1707
  %index_ptr1708 = getelementptr { i32, [ 0 x i32 ] }* %array1706, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1708
  %index_ptr1709 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1687, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1706, { i32, [ 0 x i32 ] }** %index_ptr1709
  %arr1710 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1687, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1710
  %len_ptr1711 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1710, i32 0, i32 0
  %len1712 = load i32* %len_ptr1711
  call void @oat_array_bounds_check( i32 %len1712, i32 0 )
  %array_dereferenced1713 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1710
  %elt_ptr1714 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1713, i32 0, i32 1, i32 0
  %_lhs1715 = load { i32, [ 0 x i32 ] }** %elt_ptr1714
  %len_ptr1716 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1715, i32 0, i32 0
  %len1717 = load i32* %len_ptr1716
  %len1718 = alloca i32
  store i32 %len1717, i32* %len1718
  %_lhs1719 = load i32* %len1718
  ret i32 %_lhs1719
}


