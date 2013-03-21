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

__fresh600:
  ret void
}


define i32 @program (i32 %argc2065, { i32, [ 0 x i8* ] }* %argv2063){

__fresh599:
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

__fresh588:
  %a_slot1966 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1965, { i32, [ 0 x i32 ] }** %a_slot1966
  %l_slot1964 = alloca i32
  store i32 %l1963, i32* %l_slot1964
  %r_slot1962 = alloca i32
  store i32 %r1961, i32* %r_slot1962
  %_lhs1967 = load i32* %l_slot1964
  %array_dereferenced1968 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %len_ptr1969 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1968, i32 0, i32 0
  %len1970 = load i32* %len_ptr1969
  call void @oat_array_bounds_check( i32 %len1970, i32 %_lhs1967 )
  %elt_ptr1971 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1968, i32 0, i32 1, i32 %_lhs1967
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
  br label %__cond575

__cond575:
  %_lhs1981 = load i32* %done1980
  %bop1982 = icmp eq i32 %_lhs1981, 0
  br i1 %bop1982, label %__body574, label %__post573

__fresh589:
  br label %__body574

__body574:
  %_lhs1983 = load i32* %i1975
  %bop1984 = add i32 %_lhs1983, 1
  store i32 %bop1984, i32* %i1975
  br label %__cond578

__cond578:
  %_lhs1985 = load i32* %i1975
  %array_dereferenced1986 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %len_ptr1987 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1986, i32 0, i32 0
  %len1988 = load i32* %len_ptr1987
  call void @oat_array_bounds_check( i32 %len1988, i32 %_lhs1985 )
  %elt_ptr1989 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1986, i32 0, i32 1, i32 %_lhs1985
  %_lhs1990 = load i32* %elt_ptr1989
  %_lhs1991 = load i32* %pivot1973
  %bop1992 = icmp sle i32 %_lhs1990, %_lhs1991
  %_lhs1993 = load i32* %i1975
  %_lhs1994 = load i32* %r_slot1962
  %bop1995 = icmp sle i32 %_lhs1993, %_lhs1994
  %bop1996 = and i1 %bop1992, %bop1995
  br i1 %bop1996, label %__body577, label %__post576

__fresh590:
  br label %__body577

__body577:
  %_lhs1997 = load i32* %i1975
  %bop1998 = add i32 %_lhs1997, 1
  store i32 %bop1998, i32* %i1975
  br label %__cond578

__fresh591:
  br label %__post576

__post576:
  %_lhs1999 = load i32* %j1978
  %bop2000 = sub i32 %_lhs1999, 1
  store i32 %bop2000, i32* %j1978
  br label %__cond581

__cond581:
  %_lhs2001 = load i32* %j1978
  %array_dereferenced2002 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %len_ptr2003 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2002, i32 0, i32 0
  %len2004 = load i32* %len_ptr2003
  call void @oat_array_bounds_check( i32 %len2004, i32 %_lhs2001 )
  %elt_ptr2005 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2002, i32 0, i32 1, i32 %_lhs2001
  %_lhs2006 = load i32* %elt_ptr2005
  %_lhs2007 = load i32* %pivot1973
  %bop2008 = icmp sgt i32 %_lhs2006, %_lhs2007
  br i1 %bop2008, label %__body580, label %__post579

__fresh592:
  br label %__body580

__body580:
  %_lhs2009 = load i32* %j1978
  %bop2010 = sub i32 %_lhs2009, 1
  store i32 %bop2010, i32* %j1978
  br label %__cond581

__fresh593:
  br label %__post579

__post579:
  %_lhs2011 = load i32* %i1975
  %_lhs2012 = load i32* %j1978
  %bop2013 = icmp sge i32 %_lhs2011, %_lhs2012
  br i1 %bop2013, label %__then584, label %__else583

__fresh594:
  br label %__then584

__then584:
  store i32 1, i32* %done1980
  br label %__merge582

__fresh595:
  br label %__else583

__else583:
  br label %__merge582

__merge582:
  %_lhs2014 = load i32* %done1980
  %bop2015 = icmp eq i32 %_lhs2014, 0
  br i1 %bop2015, label %__then587, label %__else586

__fresh596:
  br label %__then587

__then587:
  %_lhs2016 = load i32* %i1975
  %array_dereferenced2017 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %len_ptr2018 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2017, i32 0, i32 0
  %len2019 = load i32* %len_ptr2018
  call void @oat_array_bounds_check( i32 %len2019, i32 %_lhs2016 )
  %elt_ptr2020 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2017, i32 0, i32 1, i32 %_lhs2016
  %_lhs2021 = load i32* %elt_ptr2020
  store i32 %_lhs2021, i32* %t1979
  %_lhs2022 = load i32* %i1975
  %array_dereferenced2023 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %len_ptr2024 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2023, i32 0, i32 0
  %len2025 = load i32* %len_ptr2024
  call void @oat_array_bounds_check( i32 %len2025, i32 %_lhs2022 )
  %elt_ptr2026 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2023, i32 0, i32 1, i32 %_lhs2022
  %_lhs2027 = load i32* %j1978
  %array_dereferenced2028 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %len_ptr2029 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2028, i32 0, i32 0
  %len2030 = load i32* %len_ptr2029
  call void @oat_array_bounds_check( i32 %len2030, i32 %_lhs2027 )
  %elt_ptr2031 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2028, i32 0, i32 1, i32 %_lhs2027
  %_lhs2032 = load i32* %elt_ptr2031
  store i32 %_lhs2032, i32* %elt_ptr2026
  %_lhs2033 = load i32* %j1978
  %array_dereferenced2034 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %len_ptr2035 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2034, i32 0, i32 0
  %len2036 = load i32* %len_ptr2035
  call void @oat_array_bounds_check( i32 %len2036, i32 %_lhs2033 )
  %elt_ptr2037 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2034, i32 0, i32 1, i32 %_lhs2033
  %_lhs2038 = load i32* %t1979
  store i32 %_lhs2038, i32* %elt_ptr2037
  br label %__merge585

__fresh597:
  br label %__else586

__else586:
  br label %__merge585

__merge585:
  br label %__cond575

__fresh598:
  br label %__post573

__post573:
  %_lhs2039 = load i32* %l_slot1964
  %array_dereferenced2040 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %len_ptr2041 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2040, i32 0, i32 0
  %len2042 = load i32* %len_ptr2041
  call void @oat_array_bounds_check( i32 %len2042, i32 %_lhs2039 )
  %elt_ptr2043 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2040, i32 0, i32 1, i32 %_lhs2039
  %_lhs2044 = load i32* %elt_ptr2043
  store i32 %_lhs2044, i32* %t1979
  %_lhs2045 = load i32* %l_slot1964
  %array_dereferenced2046 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %len_ptr2047 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2046, i32 0, i32 0
  %len2048 = load i32* %len_ptr2047
  call void @oat_array_bounds_check( i32 %len2048, i32 %_lhs2045 )
  %elt_ptr2049 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2046, i32 0, i32 1, i32 %_lhs2045
  %_lhs2050 = load i32* %j1978
  %array_dereferenced2051 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %len_ptr2052 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2051, i32 0, i32 0
  %len2053 = load i32* %len_ptr2052
  call void @oat_array_bounds_check( i32 %len2053, i32 %_lhs2050 )
  %elt_ptr2054 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2051, i32 0, i32 1, i32 %_lhs2050
  %_lhs2055 = load i32* %elt_ptr2054
  store i32 %_lhs2055, i32* %elt_ptr2049
  %_lhs2056 = load i32* %j1978
  %array_dereferenced2057 = load { i32, [ 0 x i32 ] }** %a_slot1966
  %len_ptr2058 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2057, i32 0, i32 0
  %len2059 = load i32* %len_ptr2058
  call void @oat_array_bounds_check( i32 %len2059, i32 %_lhs2056 )
  %elt_ptr2060 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2057, i32 0, i32 1, i32 %_lhs2056
  %_lhs2061 = load i32* %t1979
  store i32 %_lhs2061, i32* %elt_ptr2060
  %_lhs2062 = load i32* %j1978
  ret i32 %_lhs2062
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1943, i32 %l1941, i32 %r1939){

__fresh570:
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
  br i1 %bop1948, label %__then569, label %__else568

__fresh571:
  br label %__then569

__then569:
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
  br label %__merge567

__fresh572:
  br label %__else568

__else568:
  br label %__merge567

__merge567:
  ret void
}


