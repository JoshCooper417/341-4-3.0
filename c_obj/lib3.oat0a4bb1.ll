declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh289:
  ret void
}


define i32 @program (i32 %argc1826, { i32, [ 0 x i8* ] }* %argv1824){

__fresh288:
  %argc_slot1827 = alloca i32
  store i32 %argc1826, i32* %argc_slot1827
  %argv_slot1825 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1824, { i32, [ 0 x i8* ] }** %argv_slot1825
  %array_ptr1828 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1829 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1828 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1830 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1831 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1830 to { i32, [ 0 x i32 ] }* 
  %index_ptr1832 = getelementptr { i32, [ 0 x i32 ] }* %array1831, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1832
  %index_ptr1833 = getelementptr { i32, [ 0 x i32 ] }* %array1831, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1833
  %index_ptr1834 = getelementptr { i32, [ 0 x i32 ] }* %array1831, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1834
  %index_ptr1835 = getelementptr { i32, [ 0 x i32 ] }* %array1831, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1835
  %index_ptr1836 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1829, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1831, { i32, [ 0 x i32 ] }** %index_ptr1836
  %array_ptr1837 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1838 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1837 to { i32, [ 0 x i32 ] }* 
  %index_ptr1839 = getelementptr { i32, [ 0 x i32 ] }* %array1838, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1839
  %index_ptr1840 = getelementptr { i32, [ 0 x i32 ] }* %array1838, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1840
  %index_ptr1841 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1829, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1838, { i32, [ 0 x i32 ] }** %index_ptr1841
  %array_ptr1842 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1843 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1842 to { i32, [ 0 x i32 ] }* 
  %index_ptr1844 = getelementptr { i32, [ 0 x i32 ] }* %array1843, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1844
  %index_ptr1845 = getelementptr { i32, [ 0 x i32 ] }* %array1843, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1845
  %index_ptr1846 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1829, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1843, { i32, [ 0 x i32 ] }** %index_ptr1846
  %array_ptr1847 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1848 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1847 to { i32, [ 0 x i32 ] }* 
  %index_ptr1849 = getelementptr { i32, [ 0 x i32 ] }* %array1848, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1849
  %index_ptr1850 = getelementptr { i32, [ 0 x i32 ] }* %array1848, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1850
  %index_ptr1851 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1829, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1848, { i32, [ 0 x i32 ] }** %index_ptr1851
  %arr1852 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1829, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1852
  %len_ptr1853 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1852, i32 0, i32 0
  %len1854 = load i32* %len_ptr1853
  call void @oat_array_bounds_check( i32 %len1854, i32 0 )
  %array_dereferenced1855 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1852
  %elt_ptr1856 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1855, i32 0, i32 1, i32 0
  %_lhs1857 = load { i32, [ 0 x i32 ] }** %elt_ptr1856
  %len_ptr1858 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1857, i32 0, i32 0
  %len1859 = load i32* %len_ptr1858
  %len1860 = alloca i32
  store i32 %len1859, i32* %len1860
  %_lhs1861 = load i32* %len1860
  ret i32 %_lhs1861
}


