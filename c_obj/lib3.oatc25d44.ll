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


define i32 @program (i32 %argc1714, { i32, [ 0 x i8* ] }* %argv1712){

__fresh316:
  %argc_slot1715 = alloca i32
  store i32 %argc1714, i32* %argc_slot1715
  %argv_slot1713 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1712, { i32, [ 0 x i8* ] }** %argv_slot1713
  %array_ptr1716 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1717 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1716 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1718 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1719 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1718 to { i32, [ 0 x i32 ] }* 
  %index_ptr1720 = getelementptr { i32, [ 0 x i32 ] }* %array1719, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1720
  %index_ptr1721 = getelementptr { i32, [ 0 x i32 ] }* %array1719, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1721
  %index_ptr1722 = getelementptr { i32, [ 0 x i32 ] }* %array1719, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1722
  %index_ptr1723 = getelementptr { i32, [ 0 x i32 ] }* %array1719, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1723
  %index_ptr1724 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1717, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1719, { i32, [ 0 x i32 ] }** %index_ptr1724
  %array_ptr1725 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1726 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1725 to { i32, [ 0 x i32 ] }* 
  %index_ptr1727 = getelementptr { i32, [ 0 x i32 ] }* %array1726, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1727
  %index_ptr1728 = getelementptr { i32, [ 0 x i32 ] }* %array1726, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1728
  %index_ptr1729 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1717, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1726, { i32, [ 0 x i32 ] }** %index_ptr1729
  %array_ptr1730 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1731 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1730 to { i32, [ 0 x i32 ] }* 
  %index_ptr1732 = getelementptr { i32, [ 0 x i32 ] }* %array1731, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1732
  %index_ptr1733 = getelementptr { i32, [ 0 x i32 ] }* %array1731, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1733
  %index_ptr1734 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1717, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1731, { i32, [ 0 x i32 ] }** %index_ptr1734
  %array_ptr1735 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1736 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1735 to { i32, [ 0 x i32 ] }* 
  %index_ptr1737 = getelementptr { i32, [ 0 x i32 ] }* %array1736, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1737
  %index_ptr1738 = getelementptr { i32, [ 0 x i32 ] }* %array1736, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1738
  %index_ptr1739 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1717, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1736, { i32, [ 0 x i32 ] }** %index_ptr1739
  %arr1740 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1717, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1740
  %len_ptr1741 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1740, i32 0, i32 0
  %len1742 = load i32* %len_ptr1741
  call void @oat_array_bounds_check( i32 %len1742, i32 0 )
  %array_dereferenced1743 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1740
  %elt_ptr1744 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1743, i32 0, i32 1, i32 0
  %_lhs1745 = load { i32, [ 0 x i32 ] }** %elt_ptr1744
  %len_ptr1746 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1745, i32 0, i32 0
  %len1747 = load i32* %len_ptr1746
  %len1748 = alloca i32
  store i32 %len1747, i32* %len1748
  %_lhs1749 = load i32* %len1748
  ret i32 %_lhs1749
}


