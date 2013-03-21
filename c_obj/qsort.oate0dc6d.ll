declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2088.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2088 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2088.str., i32 0, i32 0), align 4
@_oat_string2083.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2083 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2083.str., i32 0, i32 0), align 4
@_oat_string2079.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2079 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2079.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh421:
  ret void
}


define i32 @program (i32 %argc2065, { i32, [ 0 x i8* ] }* %argv2063){

__fresh420:
  %argc_slot2066 = alloca i32
  store i32 %argc2065, i32* %argc_slot2066
  %argv_slot2064 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2063, { i32, [ 0 x i8* ] }** %argv_slot2064
  %array_ptr2067 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2068 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2067 to { i32, [ 0 x i32 ] }* 
  %index_ptr2069 = getelementptr { i32, [ 0 x i32 ] }* %array2068, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr2069
  %index_ptr2070 = getelementptr { i32, [ 0 x i32 ] }* %array2068, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr2070
  %index_ptr2071 = getelementptr { i32, [ 0 x i32 ] }* %array2068, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr2071
  %index_ptr2072 = getelementptr { i32, [ 0 x i32 ] }* %array2068, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr2072
  %index_ptr2073 = getelementptr { i32, [ 0 x i32 ] }* %array2068, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr2073
  %index_ptr2074 = getelementptr { i32, [ 0 x i32 ] }* %array2068, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr2074
  %index_ptr2075 = getelementptr { i32, [ 0 x i32 ] }* %array2068, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr2075
  %index_ptr2076 = getelementptr { i32, [ 0 x i32 ] }* %array2068, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr2076
  %index_ptr2077 = getelementptr { i32, [ 0 x i32 ] }* %array2068, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr2077
  %a2078 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2068, { i32, [ 0 x i32 ] }** %a2078
  %strval2080 = load i8** @_oat_string2079
  call void @print_string( i8* %strval2080 )
  %_lhs2081 = load { i32, [ 0 x i32 ] }** %a2078
  %ret2082 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2081 )
  call void @print_string( i8* %ret2082 )
  %strval2084 = load i8** @_oat_string2083
  call void @print_string( i8* %strval2084 )
  %_lhs2085 = load { i32, [ 0 x i32 ] }** %a2078
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2085, i32 0, i32 8 )
  %_lhs2086 = load { i32, [ 0 x i32 ] }** %a2078
  %ret2087 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2086 )
  call void @print_string( i8* %ret2087 )
  %strval2089 = load i8** @_oat_string2088
  call void @print_string( i8* %strval2089 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a1965, i32 %l1963, i32 %r1961){

__fresh409:
  %a_slot1966 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1965, { i32, [ 0 x i32 ] }** %a_slot1966
  %l_slot1964 = alloca i32
  store i32 %l1963, i32* %l_slot1964
  %r_slot1962 = alloca i32
  store i32 %r1961, i32* %r_slot1962
  %_lhs1967 = load i32* %l_slot1964
  %len_ptr1968 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1966, i32 0, i32 0
  %len1969 = load i32* %len_ptr1968
  call void @oat_array_bounds_check( i32 %len1969, i32 %_lhs1967 )
  %array_dereferenced1970 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %elt_ptr1971 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1970, i32 0, i32 1, i32 %_lhs1967
  %_lhs1972 = load i32* %elt_ptr1971
  %pivot1973 = alloca i32
  store i32 %_lhs1972, i32* %pivot1973
  %_lhs1974 = load i32* %l_slot1964
  %i1975 = alloca i32
  store i32 %_lhs1974, i32* %i1975
  %_lhs1976 = load i32* %r_slot1962
  %bop1977 = add i32 %_lhs1976, 1
  %j1978 = alloca i32
  store i32 %bop1977, i32* %j1978
  %t1979 = alloca i32
  store i32 0, i32* %t1979
  %done1980 = alloca i32
  store i32 0, i32* %done1980
  br label %__cond396

__cond396:
  %_lhs1981 = load i32* %done1980
  %bop1982 = icmp eq i32 %_lhs1981, 0
  br i1 %bop1982, label %__body395, label %__post394

__fresh410:
  br label %__body395

__body395:
  %_lhs1983 = load i32* %i1975
  %bop1984 = add i32 %_lhs1983, 1
  store i32 %bop1984, i32* %i1975
  br label %__cond399

__cond399:
  %_lhs1985 = load i32* %i1975
  %len_ptr1986 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1966, i32 0, i32 0
  %len1987 = load i32* %len_ptr1986
  call void @oat_array_bounds_check( i32 %len1987, i32 %_lhs1985 )
  %array_dereferenced1988 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %elt_ptr1989 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1988, i32 0, i32 1, i32 %_lhs1985
  %_lhs1990 = load i32* %elt_ptr1989
  %_lhs1991 = load i32* %pivot1973
  %bop1992 = icmp sle i32 %_lhs1990, %_lhs1991
  %_lhs1993 = load i32* %i1975
  %_lhs1994 = load i32* %r_slot1962
  %bop1995 = icmp sle i32 %_lhs1993, %_lhs1994
  %bop1996 = and i1 %bop1992, %bop1995
  br i1 %bop1996, label %__body398, label %__post397

__fresh411:
  br label %__body398

__body398:
  %_lhs1997 = load i32* %i1975
  %bop1998 = add i32 %_lhs1997, 1
  store i32 %bop1998, i32* %i1975
  br label %__cond399

__fresh412:
  br label %__post397

__post397:
  %_lhs1999 = load i32* %j1978
  %bop2000 = sub i32 %_lhs1999, 1
  store i32 %bop2000, i32* %j1978
  br label %__cond402

__cond402:
  %_lhs2001 = load i32* %j1978
  %len_ptr2002 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1966, i32 0, i32 0
  %len2003 = load i32* %len_ptr2002
  call void @oat_array_bounds_check( i32 %len2003, i32 %_lhs2001 )
  %array_dereferenced2004 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %elt_ptr2005 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2004, i32 0, i32 1, i32 %_lhs2001
  %_lhs2006 = load i32* %elt_ptr2005
  %_lhs2007 = load i32* %pivot1973
  %bop2008 = icmp sgt i32 %_lhs2006, %_lhs2007
  br i1 %bop2008, label %__body401, label %__post400

__fresh413:
  br label %__body401

__body401:
  %_lhs2009 = load i32* %j1978
  %bop2010 = sub i32 %_lhs2009, 1
  store i32 %bop2010, i32* %j1978
  br label %__cond402

__fresh414:
  br label %__post400

__post400:
  %_lhs2011 = load i32* %i1975
  %_lhs2012 = load i32* %j1978
  %bop2013 = icmp sge i32 %_lhs2011, %_lhs2012
  br i1 %bop2013, label %__then405, label %__else404

__fresh415:
  br label %__then405

__then405:
  store i32 1, i32* %done1980
  br label %__merge403

__fresh416:
  br label %__else404

__else404:
  br label %__merge403

__merge403:
  %_lhs2014 = load i32* %done1980
  %bop2015 = icmp eq i32 %_lhs2014, 0
  br i1 %bop2015, label %__then408, label %__else407

__fresh417:
  br label %__then408

__then408:
  %_lhs2016 = load i32* %i1975
  %len_ptr2017 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1966, i32 0, i32 0
  %len2018 = load i32* %len_ptr2017
  call void @oat_array_bounds_check( i32 %len2018, i32 %_lhs2016 )
  %array_dereferenced2019 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %elt_ptr2020 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2019, i32 0, i32 1, i32 %_lhs2016
  %_lhs2021 = load i32* %elt_ptr2020
  store i32 %_lhs2021, i32* %t1979
  %_lhs2022 = load i32* %i1975
  %len_ptr2023 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1966, i32 0, i32 0
  %len2024 = load i32* %len_ptr2023
  call void @oat_array_bounds_check( i32 %len2024, i32 %_lhs2022 )
  %array_dereferenced2025 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %elt_ptr2026 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2025, i32 0, i32 1, i32 %_lhs2022
  %_lhs2027 = load i32* %j1978
  %len_ptr2028 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1966, i32 0, i32 0
  %len2029 = load i32* %len_ptr2028
  call void @oat_array_bounds_check( i32 %len2029, i32 %_lhs2027 )
  %array_dereferenced2030 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %elt_ptr2031 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2030, i32 0, i32 1, i32 %_lhs2027
  %_lhs2032 = load i32* %elt_ptr2031
  store i32 %_lhs2032, i32* %elt_ptr2026
  %_lhs2033 = load i32* %j1978
  %len_ptr2034 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1966, i32 0, i32 0
  %len2035 = load i32* %len_ptr2034
  call void @oat_array_bounds_check( i32 %len2035, i32 %_lhs2033 )
  %array_dereferenced2036 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %elt_ptr2037 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2036, i32 0, i32 1, i32 %_lhs2033
  %_lhs2038 = load i32* %t1979
  store i32 %_lhs2038, i32* %elt_ptr2037
  br label %__merge406

__fresh418:
  br label %__else407

__else407:
  br label %__merge406

__merge406:
  br label %__cond396

__fresh419:
  br label %__post394

__post394:
  %_lhs2039 = load i32* %l_slot1964
  %len_ptr2040 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1966, i32 0, i32 0
  %len2041 = load i32* %len_ptr2040
  call void @oat_array_bounds_check( i32 %len2041, i32 %_lhs2039 )
  %array_dereferenced2042 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %elt_ptr2043 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2042, i32 0, i32 1, i32 %_lhs2039
  %_lhs2044 = load i32* %elt_ptr2043
  store i32 %_lhs2044, i32* %t1979
  %_lhs2045 = load i32* %l_slot1964
  %len_ptr2046 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1966, i32 0, i32 0
  %len2047 = load i32* %len_ptr2046
  call void @oat_array_bounds_check( i32 %len2047, i32 %_lhs2045 )
  %array_dereferenced2048 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %elt_ptr2049 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2048, i32 0, i32 1, i32 %_lhs2045
  %_lhs2050 = load i32* %j1978
  %len_ptr2051 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1966, i32 0, i32 0
  %len2052 = load i32* %len_ptr2051
  call void @oat_array_bounds_check( i32 %len2052, i32 %_lhs2050 )
  %array_dereferenced2053 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %elt_ptr2054 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2053, i32 0, i32 1, i32 %_lhs2050
  %_lhs2055 = load i32* %elt_ptr2054
  store i32 %_lhs2055, i32* %elt_ptr2049
  %_lhs2056 = load i32* %j1978
  %len_ptr2057 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1966, i32 0, i32 0
  %len2058 = load i32* %len_ptr2057
  call void @oat_array_bounds_check( i32 %len2058, i32 %_lhs2056 )
  %array_dereferenced2059 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %elt_ptr2060 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2059, i32 0, i32 1, i32 %_lhs2056
  %_lhs2061 = load i32* %t1979
  store i32 %_lhs2061, i32* %elt_ptr2060
  %_lhs2062 = load i32* %j1978
  ret i32 %_lhs2062
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1943, i32 %l1941, i32 %r1939){

__fresh391:
  %a_slot1944 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1943, { i32, [ 0 x i32 ] }** %a_slot1944
  %l_slot1942 = alloca i32
  store i32 %l1941, i32* %l_slot1942
  %r_slot1940 = alloca i32
  store i32 %r1939, i32* %r_slot1940
  %j1945 = alloca i32
  store i32 0, i32* %j1945
  %_lhs1946 = load i32* %l_slot1942
  %_lhs1947 = load i32* %r_slot1940
  %bop1948 = icmp slt i32 %_lhs1946, %_lhs1947
  br i1 %bop1948, label %__then390, label %__else389

__fresh392:
  br label %__then390

__then390:
  %_lhs1951 = load i32* %r_slot1940
  %_lhs1950 = load i32* %l_slot1942
  %_lhs1949 = load { i32, [ 0 x i32 ] }** %a_slot1944
  %ret1952 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1949, i32 %_lhs1950, i32 %_lhs1951 )
  store i32 %ret1952, i32* %j1945
  %_lhs1955 = load i32* %j1945
  %bop1956 = sub i32 %_lhs1955, 1
  %_lhs1954 = load i32* %l_slot1942
  %_lhs1953 = load { i32, [ 0 x i32 ] }** %a_slot1944
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1953, i32 %_lhs1954, i32 %bop1956 )
  %_lhs1960 = load i32* %r_slot1940
  %_lhs1958 = load i32* %j1945
  %bop1959 = add i32 %_lhs1958, 1
  %_lhs1957 = load { i32, [ 0 x i32 ] }** %a_slot1944
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1957, i32 %bop1959, i32 %_lhs1960 )
  br label %__merge388

__fresh393:
  br label %__else389

__else389:
  br label %__merge388

__merge388:
  ret void
}


