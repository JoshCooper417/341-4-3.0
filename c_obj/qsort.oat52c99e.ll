declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2111.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2111 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2111.str., i32 0, i32 0), align 4
@_oat_string2106.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2106 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2106.str., i32 0, i32 0), align 4
@_oat_string2102.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2102 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2102.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh416:
  ret void
}


define i32 @program (i32 %argc2088, { i32, [ 0 x i8* ] }* %argv2086){

__fresh415:
  %argc_slot2089 = alloca i32
  store i32 %argc2088, i32* %argc_slot2089
  %argv_slot2087 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2086, { i32, [ 0 x i8* ] }** %argv_slot2087
  %array_ptr2090 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2091 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2090 to { i32, [ 0 x i32 ] }* 
  %index_ptr2092 = getelementptr { i32, [ 0 x i32 ] }* %array2091, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr2092
  %index_ptr2093 = getelementptr { i32, [ 0 x i32 ] }* %array2091, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr2093
  %index_ptr2094 = getelementptr { i32, [ 0 x i32 ] }* %array2091, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr2094
  %index_ptr2095 = getelementptr { i32, [ 0 x i32 ] }* %array2091, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr2095
  %index_ptr2096 = getelementptr { i32, [ 0 x i32 ] }* %array2091, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr2096
  %index_ptr2097 = getelementptr { i32, [ 0 x i32 ] }* %array2091, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr2097
  %index_ptr2098 = getelementptr { i32, [ 0 x i32 ] }* %array2091, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr2098
  %index_ptr2099 = getelementptr { i32, [ 0 x i32 ] }* %array2091, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr2099
  %index_ptr2100 = getelementptr { i32, [ 0 x i32 ] }* %array2091, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr2100
  %a2101 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2091, { i32, [ 0 x i32 ] }** %a2101
  %strval2103 = load i8** @_oat_string2102
  call void @print_string( i8* %strval2103 )
  %_lhs2104 = load { i32, [ 0 x i32 ] }** %a2101
  %ret2105 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2104 )
  call void @print_string( i8* %ret2105 )
  %strval2107 = load i8** @_oat_string2106
  call void @print_string( i8* %strval2107 )
  %_lhs2108 = load { i32, [ 0 x i32 ] }** %a2101
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2108, i32 0, i32 8 )
  %_lhs2109 = load { i32, [ 0 x i32 ] }** %a2101
  %ret2110 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2109 )
  call void @print_string( i8* %ret2110 )
  %strval2112 = load i8** @_oat_string2111
  call void @print_string( i8* %strval2112 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a1988, i32 %l1986, i32 %r1984){

__fresh404:
  %a_slot1989 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1988, { i32, [ 0 x i32 ] }** %a_slot1989
  %l_slot1987 = alloca i32
  store i32 %l1986, i32* %l_slot1987
  %r_slot1985 = alloca i32
  store i32 %r1984, i32* %r_slot1985
  %_lhs1990 = load i32* %l_slot1987
  %len_ptr1991 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1989, i32 0, i32 0
  %len1992 = load i32* %len_ptr1991
  call void @oat_array_bounds_check( i32 %len1992, i32 %_lhs1990 )
  %array_dereferenced1993 = load { i32, [ 0 x i32 ] }** %a_slot1989
  %elt_ptr1994 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1993, i32 0, i32 1, i32 %_lhs1990
  %_lhs1995 = load i32* %elt_ptr1994
  %pivot1996 = alloca i32
  store i32 %_lhs1995, i32* %pivot1996
  %_lhs1997 = load i32* %l_slot1987
  %i1998 = alloca i32
  store i32 %_lhs1997, i32* %i1998
  %_lhs1999 = load i32* %r_slot1985
  %bop2000 = add i32 %_lhs1999, 1
  %j2001 = alloca i32
  store i32 %bop2000, i32* %j2001
  %t2002 = alloca i32
  store i32 0, i32* %t2002
  %done2003 = alloca i32
  store i32 0, i32* %done2003
  br label %__cond391

__cond391:
  %_lhs2004 = load i32* %done2003
  %bop2005 = icmp eq i32 %_lhs2004, 0
  br i1 %bop2005, label %__body390, label %__post389

__fresh405:
  br label %__body390

__body390:
  %_lhs2006 = load i32* %i1998
  %bop2007 = add i32 %_lhs2006, 1
  store i32 %bop2007, i32* %i1998
  br label %__cond394

__cond394:
  %_lhs2008 = load i32* %i1998
  %len_ptr2009 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1989, i32 0, i32 0
  %len2010 = load i32* %len_ptr2009
  call void @oat_array_bounds_check( i32 %len2010, i32 %_lhs2008 )
  %array_dereferenced2011 = load { i32, [ 0 x i32 ] }** %a_slot1989
  %elt_ptr2012 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2011, i32 0, i32 1, i32 %_lhs2008
  %_lhs2013 = load i32* %elt_ptr2012
  %_lhs2014 = load i32* %pivot1996
  %bop2015 = icmp sle i32 %_lhs2013, %_lhs2014
  %_lhs2016 = load i32* %i1998
  %_lhs2017 = load i32* %r_slot1985
  %bop2018 = icmp sle i32 %_lhs2016, %_lhs2017
  %bop2019 = and i1 %bop2015, %bop2018
  br i1 %bop2019, label %__body393, label %__post392

__fresh406:
  br label %__body393

__body393:
  %_lhs2020 = load i32* %i1998
  %bop2021 = add i32 %_lhs2020, 1
  store i32 %bop2021, i32* %i1998
  br label %__cond394

__fresh407:
  br label %__post392

__post392:
  %_lhs2022 = load i32* %j2001
  %bop2023 = sub i32 %_lhs2022, 1
  store i32 %bop2023, i32* %j2001
  br label %__cond397

__cond397:
  %_lhs2024 = load i32* %j2001
  %len_ptr2025 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1989, i32 0, i32 0
  %len2026 = load i32* %len_ptr2025
  call void @oat_array_bounds_check( i32 %len2026, i32 %_lhs2024 )
  %array_dereferenced2027 = load { i32, [ 0 x i32 ] }** %a_slot1989
  %elt_ptr2028 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2027, i32 0, i32 1, i32 %_lhs2024
  %_lhs2029 = load i32* %elt_ptr2028
  %_lhs2030 = load i32* %pivot1996
  %bop2031 = icmp sgt i32 %_lhs2029, %_lhs2030
  br i1 %bop2031, label %__body396, label %__post395

__fresh408:
  br label %__body396

__body396:
  %_lhs2032 = load i32* %j2001
  %bop2033 = sub i32 %_lhs2032, 1
  store i32 %bop2033, i32* %j2001
  br label %__cond397

__fresh409:
  br label %__post395

__post395:
  %_lhs2034 = load i32* %i1998
  %_lhs2035 = load i32* %j2001
  %bop2036 = icmp sge i32 %_lhs2034, %_lhs2035
  br i1 %bop2036, label %__then400, label %__else399

__fresh410:
  br label %__then400

__then400:
  store i32 1, i32* %done2003
  br label %__merge398

__fresh411:
  br label %__else399

__else399:
  br label %__merge398

__merge398:
  %_lhs2037 = load i32* %done2003
  %bop2038 = icmp eq i32 %_lhs2037, 0
  br i1 %bop2038, label %__then403, label %__else402

__fresh412:
  br label %__then403

__then403:
  %_lhs2039 = load i32* %i1998
  %len_ptr2040 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1989, i32 0, i32 0
  %len2041 = load i32* %len_ptr2040
  call void @oat_array_bounds_check( i32 %len2041, i32 %_lhs2039 )
  %array_dereferenced2042 = load { i32, [ 0 x i32 ] }** %a_slot1989
  %elt_ptr2043 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2042, i32 0, i32 1, i32 %_lhs2039
  %_lhs2044 = load i32* %elt_ptr2043
  store i32 %_lhs2044, i32* %t2002
  %_lhs2045 = load i32* %i1998
  %len_ptr2046 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1989, i32 0, i32 0
  %len2047 = load i32* %len_ptr2046
  call void @oat_array_bounds_check( i32 %len2047, i32 %_lhs2045 )
  %array_dereferenced2048 = load { i32, [ 0 x i32 ] }** %a_slot1989
  %elt_ptr2049 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2048, i32 0, i32 1, i32 %_lhs2045
  %_lhs2050 = load i32* %j2001
  %len_ptr2051 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1989, i32 0, i32 0
  %len2052 = load i32* %len_ptr2051
  call void @oat_array_bounds_check( i32 %len2052, i32 %_lhs2050 )
  %array_dereferenced2053 = load { i32, [ 0 x i32 ] }** %a_slot1989
  %elt_ptr2054 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2053, i32 0, i32 1, i32 %_lhs2050
  %_lhs2055 = load i32* %elt_ptr2054
  store i32 %_lhs2055, i32* %elt_ptr2049
  %_lhs2056 = load i32* %j2001
  %len_ptr2057 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1989, i32 0, i32 0
  %len2058 = load i32* %len_ptr2057
  call void @oat_array_bounds_check( i32 %len2058, i32 %_lhs2056 )
  %array_dereferenced2059 = load { i32, [ 0 x i32 ] }** %a_slot1989
  %elt_ptr2060 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2059, i32 0, i32 1, i32 %_lhs2056
  %_lhs2061 = load i32* %t2002
  store i32 %_lhs2061, i32* %elt_ptr2060
  br label %__merge401

__fresh413:
  br label %__else402

__else402:
  br label %__merge401

__merge401:
  br label %__cond391

__fresh414:
  br label %__post389

__post389:
  %_lhs2062 = load i32* %l_slot1987
  %len_ptr2063 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1989, i32 0, i32 0
  %len2064 = load i32* %len_ptr2063
  call void @oat_array_bounds_check( i32 %len2064, i32 %_lhs2062 )
  %array_dereferenced2065 = load { i32, [ 0 x i32 ] }** %a_slot1989
  %elt_ptr2066 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2065, i32 0, i32 1, i32 %_lhs2062
  %_lhs2067 = load i32* %elt_ptr2066
  store i32 %_lhs2067, i32* %t2002
  %_lhs2068 = load i32* %l_slot1987
  %len_ptr2069 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1989, i32 0, i32 0
  %len2070 = load i32* %len_ptr2069
  call void @oat_array_bounds_check( i32 %len2070, i32 %_lhs2068 )
  %array_dereferenced2071 = load { i32, [ 0 x i32 ] }** %a_slot1989
  %elt_ptr2072 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2071, i32 0, i32 1, i32 %_lhs2068
  %_lhs2073 = load i32* %j2001
  %len_ptr2074 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1989, i32 0, i32 0
  %len2075 = load i32* %len_ptr2074
  call void @oat_array_bounds_check( i32 %len2075, i32 %_lhs2073 )
  %array_dereferenced2076 = load { i32, [ 0 x i32 ] }** %a_slot1989
  %elt_ptr2077 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2076, i32 0, i32 1, i32 %_lhs2073
  %_lhs2078 = load i32* %elt_ptr2077
  store i32 %_lhs2078, i32* %elt_ptr2072
  %_lhs2079 = load i32* %j2001
  %len_ptr2080 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1989, i32 0, i32 0
  %len2081 = load i32* %len_ptr2080
  call void @oat_array_bounds_check( i32 %len2081, i32 %_lhs2079 )
  %array_dereferenced2082 = load { i32, [ 0 x i32 ] }** %a_slot1989
  %elt_ptr2083 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2082, i32 0, i32 1, i32 %_lhs2079
  %_lhs2084 = load i32* %t2002
  store i32 %_lhs2084, i32* %elt_ptr2083
  %_lhs2085 = load i32* %j2001
  ret i32 %_lhs2085
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1966, i32 %l1964, i32 %r1962){

__fresh386:
  %a_slot1967 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1966, { i32, [ 0 x i32 ] }** %a_slot1967
  %l_slot1965 = alloca i32
  store i32 %l1964, i32* %l_slot1965
  %r_slot1963 = alloca i32
  store i32 %r1962, i32* %r_slot1963
  %j1968 = alloca i32
  store i32 0, i32* %j1968
  %_lhs1969 = load i32* %l_slot1965
  %_lhs1970 = load i32* %r_slot1963
  %bop1971 = icmp slt i32 %_lhs1969, %_lhs1970
  br i1 %bop1971, label %__then385, label %__else384

__fresh387:
  br label %__then385

__then385:
  %_lhs1974 = load i32* %r_slot1963
  %_lhs1973 = load i32* %l_slot1965
  %_lhs1972 = load { i32, [ 0 x i32 ] }** %a_slot1967
  %ret1975 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1972, i32 %_lhs1973, i32 %_lhs1974 )
  store i32 %ret1975, i32* %j1968
  %_lhs1978 = load i32* %j1968
  %bop1979 = sub i32 %_lhs1978, 1
  %_lhs1977 = load i32* %l_slot1965
  %_lhs1976 = load { i32, [ 0 x i32 ] }** %a_slot1967
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1976, i32 %_lhs1977, i32 %bop1979 )
  %_lhs1983 = load i32* %r_slot1963
  %_lhs1981 = load i32* %j1968
  %bop1982 = add i32 %_lhs1981, 1
  %_lhs1980 = load { i32, [ 0 x i32 ] }** %a_slot1967
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1980, i32 %bop1982, i32 %_lhs1983 )
  br label %__merge383

__fresh388:
  br label %__else384

__else384:
  br label %__merge383

__merge383:
  ret void
}


