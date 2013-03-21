declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh287:
  ret void
}


define i32 @program (i32 %argc1790, { i32, [ 0 x i8* ] }* %argv1788){

__fresh286:
  %argc_slot1791 = alloca i32
  store i32 %argc1790, i32* %argc_slot1791
  %argv_slot1789 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1788, { i32, [ 0 x i8* ] }** %argv_slot1789
  %array_ptr1792 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1793 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1792 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1794 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1795 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1794 to { i32, [ 0 x i32 ] }* 
  %index_ptr1796 = getelementptr { i32, [ 0 x i32 ] }* %array1795, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1796
  %index_ptr1797 = getelementptr { i32, [ 0 x i32 ] }* %array1795, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1797
  %index_ptr1798 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1793, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1795, { i32, [ 0 x i32 ] }** %index_ptr1798
  %array_ptr1799 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1800 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1799 to { i32, [ 0 x i32 ] }* 
  %index_ptr1801 = getelementptr { i32, [ 0 x i32 ] }* %array1800, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1801
  %index_ptr1802 = getelementptr { i32, [ 0 x i32 ] }* %array1800, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1802
  %index_ptr1803 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1793, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1800, { i32, [ 0 x i32 ] }** %index_ptr1803
  %array_ptr1804 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1805 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1804 to { i32, [ 0 x i32 ] }* 
  %index_ptr1806 = getelementptr { i32, [ 0 x i32 ] }* %array1805, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1806
  %index_ptr1807 = getelementptr { i32, [ 0 x i32 ] }* %array1805, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1807
  %index_ptr1808 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1793, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1805, { i32, [ 0 x i32 ] }** %index_ptr1808
  %array_ptr1809 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1810 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1809 to { i32, [ 0 x i32 ] }* 
  %index_ptr1811 = getelementptr { i32, [ 0 x i32 ] }* %array1810, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1811
  %index_ptr1812 = getelementptr { i32, [ 0 x i32 ] }* %array1810, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1812
  %index_ptr1813 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1793, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1810, { i32, [ 0 x i32 ] }** %index_ptr1813
  %arr1814 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1793, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1814
  %len_ptr1815 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1814, i32 0, i32 0
  %len1816 = load i32* %len_ptr1815
  call void @oat_array_bounds_check( i32 %len1816, i32 2 )
  %array_dereferenced1817 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1814
  %elt_ptr1818 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1817, i32 0, i32 1, i32 2
  %_lhs1819 = load { i32, [ 0 x i32 ] }** %elt_ptr1818
  %len_ptr1820 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1819, i32 0, i32 0
  %len1821 = load i32* %len_ptr1820
  %len1822 = alloca i32
  store i32 %len1821, i32* %len1822
  %_lhs1823 = load i32* %len1822
  ret i32 %_lhs1823
}


