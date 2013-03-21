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


define i32 @program (i32 %argc1878, { i32, [ 0 x i8* ] }* %argv1876){

__fresh384:
  %argc_slot1879 = alloca i32
  store i32 %argc1878, i32* %argc_slot1879
  %argv_slot1877 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1876, { i32, [ 0 x i8* ] }** %argv_slot1877
  %array_ptr1880 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1881 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1880 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1882 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1883 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1882 to { i32, [ 0 x i32 ] }* 
  %index_ptr1884 = getelementptr { i32, [ 0 x i32 ] }* %array1883, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1884
  %index_ptr1885 = getelementptr { i32, [ 0 x i32 ] }* %array1883, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1885
  %index_ptr1886 = getelementptr { i32, [ 0 x i32 ] }* %array1883, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1886
  %index_ptr1887 = getelementptr { i32, [ 0 x i32 ] }* %array1883, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1887
  %index_ptr1888 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1881, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1883, { i32, [ 0 x i32 ] }** %index_ptr1888
  %array_ptr1889 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1890 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1889 to { i32, [ 0 x i32 ] }* 
  %index_ptr1891 = getelementptr { i32, [ 0 x i32 ] }* %array1890, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1891
  %index_ptr1892 = getelementptr { i32, [ 0 x i32 ] }* %array1890, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1892
  %index_ptr1893 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1881, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1890, { i32, [ 0 x i32 ] }** %index_ptr1893
  %array_ptr1894 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1895 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1894 to { i32, [ 0 x i32 ] }* 
  %index_ptr1896 = getelementptr { i32, [ 0 x i32 ] }* %array1895, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1896
  %index_ptr1897 = getelementptr { i32, [ 0 x i32 ] }* %array1895, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1897
  %index_ptr1898 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1881, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1895, { i32, [ 0 x i32 ] }** %index_ptr1898
  %array_ptr1899 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1900 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1899 to { i32, [ 0 x i32 ] }* 
  %index_ptr1901 = getelementptr { i32, [ 0 x i32 ] }* %array1900, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1901
  %index_ptr1902 = getelementptr { i32, [ 0 x i32 ] }* %array1900, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1902
  %index_ptr1903 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1881, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1900, { i32, [ 0 x i32 ] }** %index_ptr1903
  %arr1904 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1881, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1904
  %len_ptr1905 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1904, i32 0, i32 0
  %len1906 = load i32* %len_ptr1905
  call void @oat_array_bounds_check( i32 %len1906, i32 0 )
  %array_dereferenced1907 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1904
  %elt_ptr1908 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1907, i32 0, i32 1, i32 0
  %_lhs1909 = load { i32, [ 0 x i32 ] }** %elt_ptr1908
  %len_ptr1910 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1909, i32 0, i32 0
  %len1911 = load i32* %len_ptr1910
  %len1912 = alloca i32
  store i32 %len1911, i32* %len1912
  %_lhs1913 = load i32* %len1912
  ret i32 %_lhs1913
}


