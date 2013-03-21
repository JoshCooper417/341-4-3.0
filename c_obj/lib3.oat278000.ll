declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh263:
  ret void
}


define i32 @program (i32 %argc1683, { i32, [ 0 x i8* ] }* %argv1681){

__fresh262:
  %argc_slot1684 = alloca i32
  store i32 %argc1683, i32* %argc_slot1684
  %argv_slot1682 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1681, { i32, [ 0 x i8* ] }** %argv_slot1682
  %array_ptr1685 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1686 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1685 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1687 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1688 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1687 to { i32, [ 0 x i32 ] }* 
  %index_ptr1689 = getelementptr { i32, [ 0 x i32 ] }* %array1688, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1689
  %index_ptr1690 = getelementptr { i32, [ 0 x i32 ] }* %array1688, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1690
  %index_ptr1691 = getelementptr { i32, [ 0 x i32 ] }* %array1688, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1691
  %index_ptr1692 = getelementptr { i32, [ 0 x i32 ] }* %array1688, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1692
  %index_ptr1693 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1686, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1688, { i32, [ 0 x i32 ] }** %index_ptr1693
  %array_ptr1694 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1695 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1694 to { i32, [ 0 x i32 ] }* 
  %index_ptr1696 = getelementptr { i32, [ 0 x i32 ] }* %array1695, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1696
  %index_ptr1697 = getelementptr { i32, [ 0 x i32 ] }* %array1695, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1697
  %index_ptr1698 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1686, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1695, { i32, [ 0 x i32 ] }** %index_ptr1698
  %array_ptr1699 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1700 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1699 to { i32, [ 0 x i32 ] }* 
  %index_ptr1701 = getelementptr { i32, [ 0 x i32 ] }* %array1700, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1701
  %index_ptr1702 = getelementptr { i32, [ 0 x i32 ] }* %array1700, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1702
  %index_ptr1703 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1686, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1700, { i32, [ 0 x i32 ] }** %index_ptr1703
  %array_ptr1704 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1705 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1704 to { i32, [ 0 x i32 ] }* 
  %index_ptr1706 = getelementptr { i32, [ 0 x i32 ] }* %array1705, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1706
  %index_ptr1707 = getelementptr { i32, [ 0 x i32 ] }* %array1705, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1707
  %index_ptr1708 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1686, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1705, { i32, [ 0 x i32 ] }** %index_ptr1708
  %arr1709 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1686, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1709
  %len_ptr1710 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1709, i32 0, i32 0
  %len1711 = load i32* %len_ptr1710
  call void @oat_array_bounds_check( i32 %len1711, i32 0 )
  %array_dereferenced1712 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1709
  %elt_ptr1713 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1712, i32 0, i32 1, i32 0
  %_lhs1714 = load { i32, [ 0 x i32 ] }** %elt_ptr1713
  %len_ptr1715 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1714, i32 0, i32 0
  %len1716 = load i32* %len_ptr1715
  %len1717 = alloca i32
  store i32 %len1716, i32* %len1717
  %_lhs1718 = load i32* %len1717
  ret i32 %_lhs1718
}


