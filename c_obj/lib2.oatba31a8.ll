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


define i32 @program (i32 %argc1842, { i32, [ 0 x i8* ] }* %argv1840){

__fresh382:
  %argc_slot1843 = alloca i32
  store i32 %argc1842, i32* %argc_slot1843
  %argv_slot1841 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1840, { i32, [ 0 x i8* ] }** %argv_slot1841
  %array_ptr1844 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1845 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1844 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1846 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1847 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1846 to { i32, [ 0 x i32 ] }* 
  %index_ptr1848 = getelementptr { i32, [ 0 x i32 ] }* %array1847, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1848
  %index_ptr1849 = getelementptr { i32, [ 0 x i32 ] }* %array1847, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1849
  %index_ptr1850 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1845, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1847, { i32, [ 0 x i32 ] }** %index_ptr1850
  %array_ptr1851 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1852 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1851 to { i32, [ 0 x i32 ] }* 
  %index_ptr1853 = getelementptr { i32, [ 0 x i32 ] }* %array1852, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1853
  %index_ptr1854 = getelementptr { i32, [ 0 x i32 ] }* %array1852, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1854
  %index_ptr1855 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1845, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1852, { i32, [ 0 x i32 ] }** %index_ptr1855
  %array_ptr1856 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1857 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1856 to { i32, [ 0 x i32 ] }* 
  %index_ptr1858 = getelementptr { i32, [ 0 x i32 ] }* %array1857, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1858
  %index_ptr1859 = getelementptr { i32, [ 0 x i32 ] }* %array1857, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1859
  %index_ptr1860 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1845, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1857, { i32, [ 0 x i32 ] }** %index_ptr1860
  %array_ptr1861 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1862 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1861 to { i32, [ 0 x i32 ] }* 
  %index_ptr1863 = getelementptr { i32, [ 0 x i32 ] }* %array1862, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1863
  %index_ptr1864 = getelementptr { i32, [ 0 x i32 ] }* %array1862, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1864
  %index_ptr1865 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1845, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1862, { i32, [ 0 x i32 ] }** %index_ptr1865
  %arr1866 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1845, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1866
  %len_ptr1867 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1866, i32 0, i32 0
  %len1868 = load i32* %len_ptr1867
  call void @oat_array_bounds_check( i32 %len1868, i32 2 )
  %array_dereferenced1869 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1866
  %elt_ptr1870 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1869, i32 0, i32 1, i32 2
  %_lhs1871 = load { i32, [ 0 x i32 ] }** %elt_ptr1870
  %len_ptr1872 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1871, i32 0, i32 0
  %len1873 = load i32* %len_ptr1872
  %len1874 = alloca i32
  store i32 %len1873, i32* %len1874
  %_lhs1875 = load i32* %len1874
  ret i32 %_lhs1875
}


