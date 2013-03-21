declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh288:
  ret void
}


define i32 @program (i32 %argc1996, { i32, [ 0 x i8* ] }* %argv1994){

__fresh285:
  %argc_slot1997 = alloca i32
  store i32 %argc1996, i32* %argc_slot1997
  %argv_slot1995 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1994, { i32, [ 0 x i8* ] }** %argv_slot1995
  %array_ptr1998 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array1999 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1998 to { i32, [ 0 x i32 ] }* 
  %index_ptr2000 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2000
  %index_ptr2001 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2001
  %index_ptr2002 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr2002
  %index_ptr2003 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr2003
  %unop2004 = sub i32 0, 6
  %index_ptr2005 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 4
  store i32 %unop2004, i32* %index_ptr2005
  %index_ptr2006 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr2006
  %index_ptr2007 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr2007
  %index_ptr2008 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr2008
  %unop2009 = sub i32 0, 2
  %index_ptr2010 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 8
  store i32 %unop2009, i32* %index_ptr2010
  %unop2011 = sub i32 0, 5
  %index_ptr2012 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 9
  store i32 %unop2011, i32* %index_ptr2012
  %index_ptr2013 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr2013
  %index_ptr2014 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr2014
  %index_ptr2015 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr2015
  %unop2016 = sub i32 0, 3
  %index_ptr2017 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 13
  store i32 %unop2016, i32* %index_ptr2017
  %index_ptr2018 = getelementptr { i32, [ 0 x i32 ] }* %array1999, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr2018
  %nums2019 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1999, { i32, [ 0 x i32 ] }** %nums2019
  %i2020 = alloca i32
  store i32 0, i32* %i2020
  %_lhs2021 = load { i32, [ 0 x i32 ] }** %nums2019
  %len_ptr2022 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2021, i32 0, i32 0
  %len2023 = load i32* %len_ptr2022
  %n2024 = alloca i32
  store i32 %len2023, i32* %n2024
  %_lhs2026 = load i32* %n2024
  %bop2027 = sub i32 %_lhs2026, 1
  %_lhs2025 = load { i32, [ 0 x i32 ] }** %nums2019
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2025, i32 0, i32 %bop2027 )
  store i32 0, i32* %i2020
  br label %__cond284

__cond284:
  %_lhs2028 = load i32* %i2020
  %_lhs2029 = load i32* %n2024
  %bop2030 = sub i32 %_lhs2029, 1
  %bop2031 = icmp sle i32 %_lhs2028, %bop2030
  br i1 %bop2031, label %__body283, label %__post282

__fresh286:
  br label %__body283

__body283:
  %_lhs2032 = load i32* %i2020
  %_lhs2033 = load { i32, [ 0 x i32 ] }** %nums2019
  %len_ptr2034 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2033, i32 0, i32 0
  %len2035 = load i32* %len_ptr2034
  call void @oat_array_bounds_check( i32 %len2035, i32 %_lhs2032 )
  %array_dereferenced2036 = load { i32, [ 0 x i32 ] }** %nums2019
  %elt_ptr2037 = getelementptr { i32, [ 0 x i32 ] }** %nums2019, i32 0, i32 1, i32 %_lhs2032
  %_lhs2038 = load i32* %elt_ptr2037
  call void @print_int( i32 %_lhs2038 )
  %_lhs2039 = load i32* %i2020
  %bop2040 = add i32 %_lhs2039, 1
  store i32 %bop2040, i32* %i2020
  br label %__cond284

__fresh287:
  br label %__post282

__post282:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a1925, i32 %i1923, i32 %j1921){

__fresh277:
  %a_slot1926 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1925, { i32, [ 0 x i32 ] }** %a_slot1926
  %i_slot1924 = alloca i32
  store i32 %i1923, i32* %i_slot1924
  %j_slot1922 = alloca i32
  store i32 %j1921, i32* %j_slot1922
  %t1927 = alloca i32
  store i32 0, i32* %t1927
  %_lhs1928 = load i32* %j_slot1922
  %_lhs1929 = load { i32, [ 0 x i32 ] }** %a_slot1926
  %len_ptr1930 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1929, i32 0, i32 0
  %len1931 = load i32* %len_ptr1930
  call void @oat_array_bounds_check( i32 %len1931, i32 %_lhs1928 )
  %array_dereferenced1932 = load { i32, [ 0 x i32 ] }** %a_slot1926
  %elt_ptr1933 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1926, i32 0, i32 1, i32 %_lhs1928
  %_lhs1934 = load i32* %elt_ptr1933
  %_lhs1935 = load i32* %i_slot1924
  %_lhs1936 = load { i32, [ 0 x i32 ] }** %a_slot1926
  %len_ptr1937 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1936, i32 0, i32 0
  %len1938 = load i32* %len_ptr1937
  call void @oat_array_bounds_check( i32 %len1938, i32 %_lhs1935 )
  %array_dereferenced1939 = load { i32, [ 0 x i32 ] }** %a_slot1926
  %elt_ptr1940 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1926, i32 0, i32 1, i32 %_lhs1935
  %_lhs1941 = load i32* %elt_ptr1940
  %bop1942 = icmp slt i32 %_lhs1934, %_lhs1941
  br i1 %bop1942, label %__then273, label %__else272

__fresh278:
  br label %__then273

__then273:
  %_lhs1943 = load i32* %i_slot1924
  %_lhs1944 = load { i32, [ 0 x i32 ] }** %a_slot1926
  %len_ptr1945 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1944, i32 0, i32 0
  %len1946 = load i32* %len_ptr1945
  call void @oat_array_bounds_check( i32 %len1946, i32 %_lhs1943 )
  %array_dereferenced1947 = load { i32, [ 0 x i32 ] }** %a_slot1926
  %elt_ptr1948 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1926, i32 0, i32 1, i32 %_lhs1943
  %_lhs1949 = load i32* %elt_ptr1948
  store i32 %_lhs1949, i32* %t1927
  %_lhs1950 = load i32* %i_slot1924
  %_lhs1951 = load { i32, [ 0 x i32 ] }** %a_slot1926
  %len_ptr1952 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1951, i32 0, i32 0
  %len1953 = load i32* %len_ptr1952
  call void @oat_array_bounds_check( i32 %len1953, i32 %_lhs1950 )
  %array_dereferenced1954 = load { i32, [ 0 x i32 ] }** %a_slot1926
  %elt_ptr1955 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1926, i32 0, i32 1, i32 %_lhs1950
  %_lhs1956 = load i32* %j_slot1922
  %_lhs1957 = load { i32, [ 0 x i32 ] }** %a_slot1926
  %len_ptr1958 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1957, i32 0, i32 0
  %len1959 = load i32* %len_ptr1958
  call void @oat_array_bounds_check( i32 %len1959, i32 %_lhs1956 )
  %array_dereferenced1960 = load { i32, [ 0 x i32 ] }** %a_slot1926
  %elt_ptr1961 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1926, i32 0, i32 1, i32 %_lhs1956
  %_lhs1962 = load i32* %elt_ptr1961
  store i32 %_lhs1962, i32* %elt_ptr1955
  %_lhs1963 = load i32* %j_slot1922
  %_lhs1964 = load { i32, [ 0 x i32 ] }** %a_slot1926
  %len_ptr1965 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1964, i32 0, i32 0
  %len1966 = load i32* %len_ptr1965
  call void @oat_array_bounds_check( i32 %len1966, i32 %_lhs1963 )
  %array_dereferenced1967 = load { i32, [ 0 x i32 ] }** %a_slot1926
  %elt_ptr1968 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1926, i32 0, i32 1, i32 %_lhs1963
  %_lhs1969 = load i32* %t1927
  store i32 %_lhs1969, i32* %elt_ptr1968
  br label %__merge271

__fresh279:
  br label %__else272

__else272:
  br label %__merge271

__merge271:
  %_lhs1970 = load i32* %j_slot1922
  %_lhs1971 = load i32* %i_slot1924
  %bop1972 = sub i32 %_lhs1970, %_lhs1971
  %bop1973 = icmp sgt i32 %bop1972, 1
  br i1 %bop1973, label %__then276, label %__else275

__fresh280:
  br label %__then276

__then276:
  %_lhs1974 = load i32* %j_slot1922
  %_lhs1975 = load i32* %i_slot1924
  %bop1976 = sub i32 %_lhs1974, %_lhs1975
  %bop1977 = add i32 %bop1976, 1
  %bop1978 = ashr i32 %bop1977, 1
  store i32 %bop1978, i32* %t1927
  %_lhs1981 = load i32* %j_slot1922
  %_lhs1982 = load i32* %t1927
  %bop1983 = sub i32 %_lhs1981, %_lhs1982
  %_lhs1980 = load i32* %i_slot1924
  %_lhs1979 = load { i32, [ 0 x i32 ] }** %a_slot1926
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs1979, i32 %_lhs1980, i32 %bop1983 )
  %_lhs1988 = load i32* %j_slot1922
  %_lhs1985 = load i32* %i_slot1924
  %_lhs1986 = load i32* %t1927
  %bop1987 = add i32 %_lhs1985, %_lhs1986
  %_lhs1984 = load { i32, [ 0 x i32 ] }** %a_slot1926
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs1984, i32 %bop1987, i32 %_lhs1988 )
  %_lhs1991 = load i32* %j_slot1922
  %_lhs1992 = load i32* %t1927
  %bop1993 = sub i32 %_lhs1991, %_lhs1992
  %_lhs1990 = load i32* %i_slot1924
  %_lhs1989 = load { i32, [ 0 x i32 ] }** %a_slot1926
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs1989, i32 %_lhs1990, i32 %bop1993 )
  br label %__merge274

__fresh281:
  br label %__else275

__else275:
  br label %__merge274

__merge274:
  ret void
}


