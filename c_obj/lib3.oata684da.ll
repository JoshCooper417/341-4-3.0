declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh317:
  ret void
}


define i32 @program (i32 %argc1687, { i32, [ 0 x i8* ] }* %argv1685){

__fresh316:
  %argc_slot1688 = alloca i32
  store i32 %argc1687, i32* %argc_slot1688
  %argv_slot1686 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1685, { i32, [ 0 x i8* ] }** %argv_slot1686
  %array_ptr1689 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1690 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1689 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1691 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1692 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1691 to { i32, [ 0 x i32 ] }* 
  %index_ptr1693 = getelementptr { i32, [ 0 x i32 ] }* %array1692, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1693
  %index_ptr1694 = getelementptr { i32, [ 0 x i32 ] }* %array1692, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1694
  %index_ptr1695 = getelementptr { i32, [ 0 x i32 ] }* %array1692, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1695
  %index_ptr1696 = getelementptr { i32, [ 0 x i32 ] }* %array1692, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1696
  %index_ptr1697 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1690, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1692, { i32, [ 0 x i32 ] }** %index_ptr1697
  %array_ptr1698 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1699 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1698 to { i32, [ 0 x i32 ] }* 
  %index_ptr1700 = getelementptr { i32, [ 0 x i32 ] }* %array1699, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1700
  %index_ptr1701 = getelementptr { i32, [ 0 x i32 ] }* %array1699, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1701
  %index_ptr1702 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1690, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1699, { i32, [ 0 x i32 ] }** %index_ptr1702
  %array_ptr1703 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1704 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1703 to { i32, [ 0 x i32 ] }* 
  %index_ptr1705 = getelementptr { i32, [ 0 x i32 ] }* %array1704, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1705
  %index_ptr1706 = getelementptr { i32, [ 0 x i32 ] }* %array1704, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1706
  %index_ptr1707 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1690, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1704, { i32, [ 0 x i32 ] }** %index_ptr1707
  %array_ptr1708 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1709 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1708 to { i32, [ 0 x i32 ] }* 
  %index_ptr1710 = getelementptr { i32, [ 0 x i32 ] }* %array1709, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1710
  %index_ptr1711 = getelementptr { i32, [ 0 x i32 ] }* %array1709, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1711
  %index_ptr1712 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1690, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1709, { i32, [ 0 x i32 ] }** %index_ptr1712
  %arr1713 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1690, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1713
  %len_ptr1714 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1713, i32 0, i32 0
  %len1715 = load i32* %len_ptr1714
  call void @oat_array_bounds_check( i32 %len1715, i32 0 )
  %array_dereferenced1716 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1713
  %elt_ptr1717 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1716, i32 0, i32 1, i32 0
  %_lhs1718 = load { i32, [ 0 x i32 ] }** %elt_ptr1717
  %len_ptr1719 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1718, i32 0, i32 0
  %len1720 = load i32* %len_ptr1719
  %len1721 = alloca i32
  store i32 %len1720, i32* %len1721
  %_lhs1722 = load i32* %len1721
  ret i32 %_lhs1722
}


