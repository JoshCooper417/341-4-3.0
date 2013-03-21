declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh385:
  ret void
}


define i32 @program (i32 %argc1839, { i32, [ 0 x i8* ] }* %argv1837){

__fresh384:
  %argc_slot1840 = alloca i32
  store i32 %argc1839, i32* %argc_slot1840
  %argv_slot1838 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1837, { i32, [ 0 x i8* ] }** %argv_slot1838
  %array_ptr1841 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1842 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1841 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1843 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1844 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1843 to { i32, [ 0 x i32 ] }* 
  %index_ptr1845 = getelementptr { i32, [ 0 x i32 ] }* %array1844, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1845
  %index_ptr1846 = getelementptr { i32, [ 0 x i32 ] }* %array1844, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1846
  %index_ptr1847 = getelementptr { i32, [ 0 x i32 ] }* %array1844, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1847
  %index_ptr1848 = getelementptr { i32, [ 0 x i32 ] }* %array1844, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1848
  %index_ptr1849 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1842, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1844, { i32, [ 0 x i32 ] }** %index_ptr1849
  %array_ptr1850 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1851 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1850 to { i32, [ 0 x i32 ] }* 
  %index_ptr1852 = getelementptr { i32, [ 0 x i32 ] }* %array1851, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1852
  %index_ptr1853 = getelementptr { i32, [ 0 x i32 ] }* %array1851, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1853
  %index_ptr1854 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1842, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1851, { i32, [ 0 x i32 ] }** %index_ptr1854
  %array_ptr1855 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1856 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1855 to { i32, [ 0 x i32 ] }* 
  %index_ptr1857 = getelementptr { i32, [ 0 x i32 ] }* %array1856, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1857
  %index_ptr1858 = getelementptr { i32, [ 0 x i32 ] }* %array1856, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1858
  %index_ptr1859 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1842, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1856, { i32, [ 0 x i32 ] }** %index_ptr1859
  %array_ptr1860 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1861 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1860 to { i32, [ 0 x i32 ] }* 
  %index_ptr1862 = getelementptr { i32, [ 0 x i32 ] }* %array1861, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1862
  %index_ptr1863 = getelementptr { i32, [ 0 x i32 ] }* %array1861, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1863
  %index_ptr1864 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1842, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1861, { i32, [ 0 x i32 ] }** %index_ptr1864
  %arr1865 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1842, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1865
  %len_ptr1866 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1865, i32 0, i32 0
  %len1867 = load i32* %len_ptr1866
  call void @oat_array_bounds_check( i32 %len1867, i32 0 )
  %array_dereferenced1868 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1865
  %elt_ptr1869 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1868, i32 0, i32 1, i32 0
  %_lhs1870 = load { i32, [ 0 x i32 ] }** %elt_ptr1869
  %len_ptr1871 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1870, i32 0, i32 0
  %len1872 = load i32* %len_ptr1871
  %len1873 = alloca i32
  store i32 %len1872, i32* %len1873
  %_lhs1874 = load i32* %len1873
  ret i32 %_lhs1874
}


