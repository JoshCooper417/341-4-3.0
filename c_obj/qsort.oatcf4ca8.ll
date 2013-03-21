declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2138.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2138 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2138.str., i32 0, i32 0), align 4
@_oat_string2133.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2133 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2133.str., i32 0, i32 0), align 4
@_oat_string2129.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2129 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2129.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh416:
  ret void
}


define i32 @program (i32 %argc2115, { i32, [ 0 x i8* ] }* %argv2113){

__fresh415:
  %argc_slot2116 = alloca i32
  store i32 %argc2115, i32* %argc_slot2116
  %argv_slot2114 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2113, { i32, [ 0 x i8* ] }** %argv_slot2114
  %array_ptr2117 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2118 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2117 to { i32, [ 0 x i32 ] }* 
  %index_ptr2119 = getelementptr { i32, [ 0 x i32 ] }* %array2118, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr2119
  %index_ptr2120 = getelementptr { i32, [ 0 x i32 ] }* %array2118, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr2120
  %index_ptr2121 = getelementptr { i32, [ 0 x i32 ] }* %array2118, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr2121
  %index_ptr2122 = getelementptr { i32, [ 0 x i32 ] }* %array2118, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr2122
  %index_ptr2123 = getelementptr { i32, [ 0 x i32 ] }* %array2118, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr2123
  %index_ptr2124 = getelementptr { i32, [ 0 x i32 ] }* %array2118, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr2124
  %index_ptr2125 = getelementptr { i32, [ 0 x i32 ] }* %array2118, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr2125
  %index_ptr2126 = getelementptr { i32, [ 0 x i32 ] }* %array2118, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr2126
  %index_ptr2127 = getelementptr { i32, [ 0 x i32 ] }* %array2118, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr2127
  %a2128 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2118, { i32, [ 0 x i32 ] }** %a2128
  %strval2130 = load i8** @_oat_string2129
  call void @print_string( i8* %strval2130 )
  %_lhs2131 = load { i32, [ 0 x i32 ] }** %a2128
  %ret2132 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2131 )
  call void @print_string( i8* %ret2132 )
  %strval2134 = load i8** @_oat_string2133
  call void @print_string( i8* %strval2134 )
  %_lhs2135 = load { i32, [ 0 x i32 ] }** %a2128
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2135, i32 0, i32 8 )
  %_lhs2136 = load { i32, [ 0 x i32 ] }** %a2128
  %ret2137 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2136 )
  call void @print_string( i8* %ret2137 )
  %strval2139 = load i8** @_oat_string2138
  call void @print_string( i8* %strval2139 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a2015, i32 %l2013, i32 %r2011){

__fresh404:
  %a_slot2016 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2015, { i32, [ 0 x i32 ] }** %a_slot2016
  %l_slot2014 = alloca i32
  store i32 %l2013, i32* %l_slot2014
  %r_slot2012 = alloca i32
  store i32 %r2011, i32* %r_slot2012
  %_lhs2017 = load i32* %l_slot2014
  %len_ptr2018 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2016, i32 0, i32 0
  %len2019 = load i32* %len_ptr2018
  call void @oat_array_bounds_check( i32 %len2019, i32 %_lhs2017 )
  %array_dereferenced2020 = load { i32, [ 0 x i32 ] }** %a_slot2016
  %elt_ptr2021 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2020, i32 0, i32 1, i32 %_lhs2017
  %_lhs2022 = load i32* %elt_ptr2021
  %pivot2023 = alloca i32
  store i32 %_lhs2022, i32* %pivot2023
  %_lhs2024 = load i32* %l_slot2014
  %i2025 = alloca i32
  store i32 %_lhs2024, i32* %i2025
  %_lhs2026 = load i32* %r_slot2012
  %bop2027 = add i32 %_lhs2026, 1
  %j2028 = alloca i32
  store i32 %bop2027, i32* %j2028
  %t2029 = alloca i32
  store i32 0, i32* %t2029
  %done2030 = alloca i32
  store i32 0, i32* %done2030
  br label %__cond391

__cond391:
  %_lhs2031 = load i32* %done2030
  %bop2032 = icmp eq i32 %_lhs2031, 0
  br i1 %bop2032, label %__body390, label %__post389

__fresh405:
  br label %__body390

__body390:
  %_lhs2033 = load i32* %i2025
  %bop2034 = add i32 %_lhs2033, 1
  store i32 %bop2034, i32* %i2025
  br label %__cond394

__cond394:
  %_lhs2035 = load i32* %i2025
  %len_ptr2036 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2016, i32 0, i32 0
  %len2037 = load i32* %len_ptr2036
  call void @oat_array_bounds_check( i32 %len2037, i32 %_lhs2035 )
  %array_dereferenced2038 = load { i32, [ 0 x i32 ] }** %a_slot2016
  %elt_ptr2039 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2038, i32 0, i32 1, i32 %_lhs2035
  %_lhs2040 = load i32* %elt_ptr2039
  %_lhs2041 = load i32* %pivot2023
  %bop2042 = icmp sle i32 %_lhs2040, %_lhs2041
  %_lhs2043 = load i32* %i2025
  %_lhs2044 = load i32* %r_slot2012
  %bop2045 = icmp sle i32 %_lhs2043, %_lhs2044
  %bop2046 = and i1 %bop2042, %bop2045
  br i1 %bop2046, label %__body393, label %__post392

__fresh406:
  br label %__body393

__body393:
  %_lhs2047 = load i32* %i2025
  %bop2048 = add i32 %_lhs2047, 1
  store i32 %bop2048, i32* %i2025
  br label %__cond394

__fresh407:
  br label %__post392

__post392:
  %_lhs2049 = load i32* %j2028
  %bop2050 = sub i32 %_lhs2049, 1
  store i32 %bop2050, i32* %j2028
  br label %__cond397

__cond397:
  %_lhs2051 = load i32* %j2028
  %len_ptr2052 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2016, i32 0, i32 0
  %len2053 = load i32* %len_ptr2052
  call void @oat_array_bounds_check( i32 %len2053, i32 %_lhs2051 )
  %array_dereferenced2054 = load { i32, [ 0 x i32 ] }** %a_slot2016
  %elt_ptr2055 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2054, i32 0, i32 1, i32 %_lhs2051
  %_lhs2056 = load i32* %elt_ptr2055
  %_lhs2057 = load i32* %pivot2023
  %bop2058 = icmp sgt i32 %_lhs2056, %_lhs2057
  br i1 %bop2058, label %__body396, label %__post395

__fresh408:
  br label %__body396

__body396:
  %_lhs2059 = load i32* %j2028
  %bop2060 = sub i32 %_lhs2059, 1
  store i32 %bop2060, i32* %j2028
  br label %__cond397

__fresh409:
  br label %__post395

__post395:
  %_lhs2061 = load i32* %i2025
  %_lhs2062 = load i32* %j2028
  %bop2063 = icmp sge i32 %_lhs2061, %_lhs2062
  br i1 %bop2063, label %__then400, label %__else399

__fresh410:
  br label %__then400

__then400:
  store i32 1, i32* %done2030
  br label %__merge398

__fresh411:
  br label %__else399

__else399:
  br label %__merge398

__merge398:
  %_lhs2064 = load i32* %done2030
  %bop2065 = icmp eq i32 %_lhs2064, 0
  br i1 %bop2065, label %__then403, label %__else402

__fresh412:
  br label %__then403

__then403:
  %_lhs2066 = load i32* %i2025
  %len_ptr2067 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2016, i32 0, i32 0
  %len2068 = load i32* %len_ptr2067
  call void @oat_array_bounds_check( i32 %len2068, i32 %_lhs2066 )
  %array_dereferenced2069 = load { i32, [ 0 x i32 ] }** %a_slot2016
  %elt_ptr2070 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2069, i32 0, i32 1, i32 %_lhs2066
  %_lhs2071 = load i32* %elt_ptr2070
  store i32 %_lhs2071, i32* %t2029
  %_lhs2072 = load i32* %i2025
  %len_ptr2073 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2016, i32 0, i32 0
  %len2074 = load i32* %len_ptr2073
  call void @oat_array_bounds_check( i32 %len2074, i32 %_lhs2072 )
  %array_dereferenced2075 = load { i32, [ 0 x i32 ] }** %a_slot2016
  %elt_ptr2076 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2075, i32 0, i32 1, i32 %_lhs2072
  %_lhs2077 = load i32* %j2028
  %len_ptr2078 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2016, i32 0, i32 0
  %len2079 = load i32* %len_ptr2078
  call void @oat_array_bounds_check( i32 %len2079, i32 %_lhs2077 )
  %array_dereferenced2080 = load { i32, [ 0 x i32 ] }** %a_slot2016
  %elt_ptr2081 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2080, i32 0, i32 1, i32 %_lhs2077
  %_lhs2082 = load i32* %elt_ptr2081
  store i32 %_lhs2082, i32* %elt_ptr2076
  %_lhs2083 = load i32* %j2028
  %len_ptr2084 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2016, i32 0, i32 0
  %len2085 = load i32* %len_ptr2084
  call void @oat_array_bounds_check( i32 %len2085, i32 %_lhs2083 )
  %array_dereferenced2086 = load { i32, [ 0 x i32 ] }** %a_slot2016
  %elt_ptr2087 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2086, i32 0, i32 1, i32 %_lhs2083
  %_lhs2088 = load i32* %t2029
  store i32 %_lhs2088, i32* %elt_ptr2087
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
  %_lhs2089 = load i32* %l_slot2014
  %len_ptr2090 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2016, i32 0, i32 0
  %len2091 = load i32* %len_ptr2090
  call void @oat_array_bounds_check( i32 %len2091, i32 %_lhs2089 )
  %array_dereferenced2092 = load { i32, [ 0 x i32 ] }** %a_slot2016
  %elt_ptr2093 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2092, i32 0, i32 1, i32 %_lhs2089
  %_lhs2094 = load i32* %elt_ptr2093
  store i32 %_lhs2094, i32* %t2029
  %_lhs2095 = load i32* %l_slot2014
  %len_ptr2096 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2016, i32 0, i32 0
  %len2097 = load i32* %len_ptr2096
  call void @oat_array_bounds_check( i32 %len2097, i32 %_lhs2095 )
  %array_dereferenced2098 = load { i32, [ 0 x i32 ] }** %a_slot2016
  %elt_ptr2099 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2098, i32 0, i32 1, i32 %_lhs2095
  %_lhs2100 = load i32* %j2028
  %len_ptr2101 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2016, i32 0, i32 0
  %len2102 = load i32* %len_ptr2101
  call void @oat_array_bounds_check( i32 %len2102, i32 %_lhs2100 )
  %array_dereferenced2103 = load { i32, [ 0 x i32 ] }** %a_slot2016
  %elt_ptr2104 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2103, i32 0, i32 1, i32 %_lhs2100
  %_lhs2105 = load i32* %elt_ptr2104
  store i32 %_lhs2105, i32* %elt_ptr2099
  %_lhs2106 = load i32* %j2028
  %len_ptr2107 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2016, i32 0, i32 0
  %len2108 = load i32* %len_ptr2107
  call void @oat_array_bounds_check( i32 %len2108, i32 %_lhs2106 )
  %array_dereferenced2109 = load { i32, [ 0 x i32 ] }** %a_slot2016
  %elt_ptr2110 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2109, i32 0, i32 1, i32 %_lhs2106
  %_lhs2111 = load i32* %t2029
  store i32 %_lhs2111, i32* %elt_ptr2110
  %_lhs2112 = load i32* %j2028
  ret i32 %_lhs2112
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1993, i32 %l1991, i32 %r1989){

__fresh386:
  %a_slot1994 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1993, { i32, [ 0 x i32 ] }** %a_slot1994
  %l_slot1992 = alloca i32
  store i32 %l1991, i32* %l_slot1992
  %r_slot1990 = alloca i32
  store i32 %r1989, i32* %r_slot1990
  %j1995 = alloca i32
  store i32 0, i32* %j1995
  %_lhs1996 = load i32* %l_slot1992
  %_lhs1997 = load i32* %r_slot1990
  %bop1998 = icmp slt i32 %_lhs1996, %_lhs1997
  br i1 %bop1998, label %__then385, label %__else384

__fresh387:
  br label %__then385

__then385:
  %_lhs2001 = load i32* %r_slot1990
  %_lhs2000 = load i32* %l_slot1992
  %_lhs1999 = load { i32, [ 0 x i32 ] }** %a_slot1994
  %ret2002 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1999, i32 %_lhs2000, i32 %_lhs2001 )
  store i32 %ret2002, i32* %j1995
  %_lhs2005 = load i32* %j1995
  %bop2006 = sub i32 %_lhs2005, 1
  %_lhs2004 = load i32* %l_slot1992
  %_lhs2003 = load { i32, [ 0 x i32 ] }** %a_slot1994
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2003, i32 %_lhs2004, i32 %bop2006 )
  %_lhs2010 = load i32* %r_slot1990
  %_lhs2008 = load i32* %j1995
  %bop2009 = add i32 %_lhs2008, 1
  %_lhs2007 = load { i32, [ 0 x i32 ] }** %a_slot1994
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2007, i32 %bop2009, i32 %_lhs2010 )
  br label %__merge383

__fresh388:
  br label %__else384

__else384:
  br label %__merge383

__merge383:
  ret void
}


