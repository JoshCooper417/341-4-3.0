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


define i32 @program (i32 %argc1713, { i32, [ 0 x i8* ] }* %argv1711){

__fresh262:
  %argc_slot1714 = alloca i32
  store i32 %argc1713, i32* %argc_slot1714
  %argv_slot1712 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1711, { i32, [ 0 x i8* ] }** %argv_slot1712
  %array_ptr1715 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1716 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1715 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1717 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1718 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1717 to { i32, [ 0 x i32 ] }* 
  %index_ptr1719 = getelementptr { i32, [ 0 x i32 ] }* %array1718, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1719
  %index_ptr1720 = getelementptr { i32, [ 0 x i32 ] }* %array1718, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1720
  %index_ptr1721 = getelementptr { i32, [ 0 x i32 ] }* %array1718, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1721
  %index_ptr1722 = getelementptr { i32, [ 0 x i32 ] }* %array1718, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1722
  %index_ptr1723 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1716, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1718, { i32, [ 0 x i32 ] }** %index_ptr1723
  %array_ptr1724 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1725 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1724 to { i32, [ 0 x i32 ] }* 
  %index_ptr1726 = getelementptr { i32, [ 0 x i32 ] }* %array1725, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1726
  %index_ptr1727 = getelementptr { i32, [ 0 x i32 ] }* %array1725, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1727
  %index_ptr1728 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1716, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1725, { i32, [ 0 x i32 ] }** %index_ptr1728
  %array_ptr1729 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1730 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1729 to { i32, [ 0 x i32 ] }* 
  %index_ptr1731 = getelementptr { i32, [ 0 x i32 ] }* %array1730, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1731
  %index_ptr1732 = getelementptr { i32, [ 0 x i32 ] }* %array1730, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1732
  %index_ptr1733 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1716, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1730, { i32, [ 0 x i32 ] }** %index_ptr1733
  %array_ptr1734 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1735 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1734 to { i32, [ 0 x i32 ] }* 
  %index_ptr1736 = getelementptr { i32, [ 0 x i32 ] }* %array1735, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1736
  %index_ptr1737 = getelementptr { i32, [ 0 x i32 ] }* %array1735, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1737
  %index_ptr1738 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1716, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1735, { i32, [ 0 x i32 ] }** %index_ptr1738
  %arr1739 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1716, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1739
  %len_ptr1740 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1739, i32 0, i32 0
  %len1741 = load i32* %len_ptr1740
  call void @oat_array_bounds_check( i32 %len1741, i32 0 )
  %array_dereferenced1742 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1739
  %elt_ptr1743 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1742, i32 0, i32 1, i32 0
  %_lhs1744 = load { i32, [ 0 x i32 ] }** %elt_ptr1743
  %len_ptr1745 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1744, i32 0, i32 0
  %len1746 = load i32* %len_ptr1745
  %len1747 = alloca i32
  store i32 %len1746, i32* %len1747
  %_lhs1748 = load i32* %len1747
  ret i32 %_lhs1748
}


