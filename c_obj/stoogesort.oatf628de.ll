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


define i32 @program (i32 %argc2007, { i32, [ 0 x i8* ] }* %argv2005){

__fresh285:
  %argc_slot2008 = alloca i32
  store i32 %argc2007, i32* %argc_slot2008
  %argv_slot2006 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2005, { i32, [ 0 x i8* ] }** %argv_slot2006
  %array_ptr2009 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array2010 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2009 to { i32, [ 0 x i32 ] }* 
  %index_ptr2011 = getelementptr { i32, [ 0 x i32 ] }* %array2010, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2011
  %index_ptr2012 = getelementptr { i32, [ 0 x i32 ] }* %array2010, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2012
  %index_ptr2013 = getelementptr { i32, [ 0 x i32 ] }* %array2010, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr2013
  %index_ptr2014 = getelementptr { i32, [ 0 x i32 ] }* %array2010, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr2014
  %unop2015 = sub i32 0, 6
  %index_ptr2016 = getelementptr { i32, [ 0 x i32 ] }* %array2010, i32 0, i32 1, i32 4
  store i32 %unop2015, i32* %index_ptr2016
  %index_ptr2017 = getelementptr { i32, [ 0 x i32 ] }* %array2010, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr2017
  %index_ptr2018 = getelementptr { i32, [ 0 x i32 ] }* %array2010, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr2018
  %index_ptr2019 = getelementptr { i32, [ 0 x i32 ] }* %array2010, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr2019
  %unop2020 = sub i32 0, 2
  %index_ptr2021 = getelementptr { i32, [ 0 x i32 ] }* %array2010, i32 0, i32 1, i32 8
  store i32 %unop2020, i32* %index_ptr2021
  %unop2022 = sub i32 0, 5
  %index_ptr2023 = getelementptr { i32, [ 0 x i32 ] }* %array2010, i32 0, i32 1, i32 9
  store i32 %unop2022, i32* %index_ptr2023
  %index_ptr2024 = getelementptr { i32, [ 0 x i32 ] }* %array2010, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr2024
  %index_ptr2025 = getelementptr { i32, [ 0 x i32 ] }* %array2010, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr2025
  %index_ptr2026 = getelementptr { i32, [ 0 x i32 ] }* %array2010, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr2026
  %unop2027 = sub i32 0, 3
  %index_ptr2028 = getelementptr { i32, [ 0 x i32 ] }* %array2010, i32 0, i32 1, i32 13
  store i32 %unop2027, i32* %index_ptr2028
  %index_ptr2029 = getelementptr { i32, [ 0 x i32 ] }* %array2010, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr2029
  %nums2030 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2010, { i32, [ 0 x i32 ] }** %nums2030
  %i2031 = alloca i32
  store i32 0, i32* %i2031
  %_lhs2032 = load { i32, [ 0 x i32 ] }** %nums2030
  %len_ptr2033 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2032, i32 0, i32 0
  %len2034 = load i32* %len_ptr2033
  %n2035 = alloca i32
  store i32 %len2034, i32* %n2035
  %_lhs2037 = load i32* %n2035
  %bop2038 = sub i32 %_lhs2037, 1
  %_lhs2036 = load { i32, [ 0 x i32 ] }** %nums2030
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2036, i32 0, i32 %bop2038 )
  store i32 0, i32* %i2031
  br label %__cond284

__cond284:
  %_lhs2039 = load i32* %i2031
  %_lhs2040 = load i32* %n2035
  %bop2041 = sub i32 %_lhs2040, 1
  %bop2042 = icmp sle i32 %_lhs2039, %bop2041
  br i1 %bop2042, label %__body283, label %__post282

__fresh286:
  br label %__body283

__body283:
  %_lhs2043 = load i32* %i2031
  %_lhs2044 = load { i32, [ 0 x i32 ] }** %nums2030
  %len_ptr2045 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2044, i32 0, i32 0
  %len2046 = load i32* %len_ptr2045
  call void @oat_array_bounds_check( i32 %len2046, i32 %_lhs2043 )
  %array_dereferenced2047 = load { i32, [ 0 x i32 ] }** %nums2030
  %elt_ptr2048 = getelementptr { i32, [ 0 x i32 ] }** %nums2030, i32 0, i32 1, i32 %_lhs2043
  %_lhs2049 = load [ 0 x i32 ]* %elt_ptr2048
  call void @print_int( [ 0 x i32 ] %_lhs2049 )
  %_lhs2050 = load i32* %i2031
  %bop2051 = add i32 %_lhs2050, 1
  store i32 %bop2051, i32* %i2031
  br label %__cond284

__fresh287:
  br label %__post282

__post282:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a1936, i32 %i1934, i32 %j1932){

__fresh277:
  %a_slot1937 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1936, { i32, [ 0 x i32 ] }** %a_slot1937
  %i_slot1935 = alloca i32
  store i32 %i1934, i32* %i_slot1935
  %j_slot1933 = alloca i32
  store i32 %j1932, i32* %j_slot1933
  %t1938 = alloca i32
  store i32 0, i32* %t1938
  %_lhs1939 = load i32* %j_slot1933
  %_lhs1940 = load { i32, [ 0 x i32 ] }** %a_slot1937
  %len_ptr1941 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1940, i32 0, i32 0
  %len1942 = load i32* %len_ptr1941
  call void @oat_array_bounds_check( i32 %len1942, i32 %_lhs1939 )
  %array_dereferenced1943 = load { i32, [ 0 x i32 ] }** %a_slot1937
  %elt_ptr1944 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1937, i32 0, i32 1, i32 %_lhs1939
  %_lhs1945 = load [ 0 x i32 ]* %elt_ptr1944
  %_lhs1946 = load i32* %i_slot1935
  %_lhs1947 = load { i32, [ 0 x i32 ] }** %a_slot1937
  %len_ptr1948 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1947, i32 0, i32 0
  %len1949 = load i32* %len_ptr1948
  call void @oat_array_bounds_check( i32 %len1949, i32 %_lhs1946 )
  %array_dereferenced1950 = load { i32, [ 0 x i32 ] }** %a_slot1937
  %elt_ptr1951 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1937, i32 0, i32 1, i32 %_lhs1946
  %_lhs1952 = load [ 0 x i32 ]* %elt_ptr1951
  %bop1953 = icmp slt [ 0 x i32 ] %_lhs1945, %_lhs1952
  br i1 %bop1953, label %__then273, label %__else272

__fresh278:
  br label %__then273

__then273:
  %_lhs1954 = load i32* %i_slot1935
  %_lhs1955 = load { i32, [ 0 x i32 ] }** %a_slot1937
  %len_ptr1956 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1955, i32 0, i32 0
  %len1957 = load i32* %len_ptr1956
  call void @oat_array_bounds_check( i32 %len1957, i32 %_lhs1954 )
  %array_dereferenced1958 = load { i32, [ 0 x i32 ] }** %a_slot1937
  %elt_ptr1959 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1937, i32 0, i32 1, i32 %_lhs1954
  %_lhs1960 = load [ 0 x i32 ]* %elt_ptr1959
  store [ 0 x i32 ] %_lhs1960, i32* %t1938
  %_lhs1961 = load i32* %i_slot1935
  %_lhs1962 = load { i32, [ 0 x i32 ] }** %a_slot1937
  %len_ptr1963 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1962, i32 0, i32 0
  %len1964 = load i32* %len_ptr1963
  call void @oat_array_bounds_check( i32 %len1964, i32 %_lhs1961 )
  %array_dereferenced1965 = load { i32, [ 0 x i32 ] }** %a_slot1937
  %elt_ptr1966 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1937, i32 0, i32 1, i32 %_lhs1961
  %_lhs1967 = load i32* %j_slot1933
  %_lhs1968 = load { i32, [ 0 x i32 ] }** %a_slot1937
  %len_ptr1969 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1968, i32 0, i32 0
  %len1970 = load i32* %len_ptr1969
  call void @oat_array_bounds_check( i32 %len1970, i32 %_lhs1967 )
  %array_dereferenced1971 = load { i32, [ 0 x i32 ] }** %a_slot1937
  %elt_ptr1972 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1937, i32 0, i32 1, i32 %_lhs1967
  %_lhs1973 = load [ 0 x i32 ]* %elt_ptr1972
  store [ 0 x i32 ] %_lhs1973, [ 0 x i32 ]* %elt_ptr1966
  %_lhs1974 = load i32* %j_slot1933
  %_lhs1975 = load { i32, [ 0 x i32 ] }** %a_slot1937
  %len_ptr1976 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1975, i32 0, i32 0
  %len1977 = load i32* %len_ptr1976
  call void @oat_array_bounds_check( i32 %len1977, i32 %_lhs1974 )
  %array_dereferenced1978 = load { i32, [ 0 x i32 ] }** %a_slot1937
  %elt_ptr1979 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1937, i32 0, i32 1, i32 %_lhs1974
  %_lhs1980 = load i32* %t1938
  store i32 %_lhs1980, [ 0 x i32 ]* %elt_ptr1979
  br label %__merge271

__fresh279:
  br label %__else272

__else272:
  br label %__merge271

__merge271:
  %_lhs1981 = load i32* %j_slot1933
  %_lhs1982 = load i32* %i_slot1935
  %bop1983 = sub i32 %_lhs1981, %_lhs1982
  %bop1984 = icmp sgt i32 %bop1983, 1
  br i1 %bop1984, label %__then276, label %__else275

__fresh280:
  br label %__then276

__then276:
  %_lhs1985 = load i32* %j_slot1933
  %_lhs1986 = load i32* %i_slot1935
  %bop1987 = sub i32 %_lhs1985, %_lhs1986
  %bop1988 = add i32 %bop1987, 1
  %bop1989 = ashr i32 %bop1988, 1
  store i32 %bop1989, i32* %t1938
  %_lhs1992 = load i32* %j_slot1933
  %_lhs1993 = load i32* %t1938
  %bop1994 = sub i32 %_lhs1992, %_lhs1993
  %_lhs1991 = load i32* %i_slot1935
  %_lhs1990 = load { i32, [ 0 x i32 ] }** %a_slot1937
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs1990, i32 %_lhs1991, i32 %bop1994 )
  %_lhs1999 = load i32* %j_slot1933
  %_lhs1996 = load i32* %i_slot1935
  %_lhs1997 = load i32* %t1938
  %bop1998 = add i32 %_lhs1996, %_lhs1997
  %_lhs1995 = load { i32, [ 0 x i32 ] }** %a_slot1937
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs1995, i32 %bop1998, i32 %_lhs1999 )
  %_lhs2002 = load i32* %j_slot1933
  %_lhs2003 = load i32* %t1938
  %bop2004 = sub i32 %_lhs2002, %_lhs2003
  %_lhs2001 = load i32* %i_slot1935
  %_lhs2000 = load { i32, [ 0 x i32 ] }** %a_slot1937
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2000, i32 %_lhs2001, i32 %bop2004 )
  br label %__merge274

__fresh281:
  br label %__else275

__else275:
  br label %__merge274

__merge274:
  ret void
}


