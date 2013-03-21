declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh383:
  ret void
}


define i32 @program (i32 %argc1803, { i32, [ 0 x i8* ] }* %argv1801){

__fresh382:
  %argc_slot1804 = alloca i32
  store i32 %argc1803, i32* %argc_slot1804
  %argv_slot1802 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1801, { i32, [ 0 x i8* ] }** %argv_slot1802
  %array_ptr1805 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1806 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1805 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1807 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1808 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1807 to { i32, [ 0 x i32 ] }* 
  %index_ptr1809 = getelementptr { i32, [ 0 x i32 ] }* %array1808, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1809
  %index_ptr1810 = getelementptr { i32, [ 0 x i32 ] }* %array1808, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1810
  %index_ptr1811 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1806, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1808, { i32, [ 0 x i32 ] }** %index_ptr1811
  %array_ptr1812 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1813 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1812 to { i32, [ 0 x i32 ] }* 
  %index_ptr1814 = getelementptr { i32, [ 0 x i32 ] }* %array1813, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1814
  %index_ptr1815 = getelementptr { i32, [ 0 x i32 ] }* %array1813, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1815
  %index_ptr1816 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1806, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1813, { i32, [ 0 x i32 ] }** %index_ptr1816
  %array_ptr1817 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1818 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1817 to { i32, [ 0 x i32 ] }* 
  %index_ptr1819 = getelementptr { i32, [ 0 x i32 ] }* %array1818, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1819
  %index_ptr1820 = getelementptr { i32, [ 0 x i32 ] }* %array1818, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1820
  %index_ptr1821 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1806, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1818, { i32, [ 0 x i32 ] }** %index_ptr1821
  %array_ptr1822 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1823 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1822 to { i32, [ 0 x i32 ] }* 
  %index_ptr1824 = getelementptr { i32, [ 0 x i32 ] }* %array1823, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1824
  %index_ptr1825 = getelementptr { i32, [ 0 x i32 ] }* %array1823, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1825
  %index_ptr1826 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1806, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1823, { i32, [ 0 x i32 ] }** %index_ptr1826
  %arr1827 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1806, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1827
  %len_ptr1828 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1827, i32 0, i32 0
  %len1829 = load i32* %len_ptr1828
  call void @oat_array_bounds_check( i32 %len1829, i32 2 )
  %array_dereferenced1830 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1827
  %elt_ptr1831 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1830, i32 0, i32 1, i32 2
  %_lhs1832 = load { i32, [ 0 x i32 ] }** %elt_ptr1831
  %len_ptr1833 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1832, i32 0, i32 0
  %len1834 = load i32* %len_ptr1833
  %len1835 = alloca i32
  store i32 %len1834, i32* %len1835
  %_lhs1836 = load i32* %len1835
  ret i32 %_lhs1836
}


