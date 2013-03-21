declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2137.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2137 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2137.str., i32 0, i32 0), align 4
@_oat_string2132.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2132 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2132.str., i32 0, i32 0), align 4
@_oat_string2128.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2128 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2128.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh362:
  ret void
}


define i32 @program (i32 %argc2114, { i32, [ 0 x i8* ] }* %argv2112){

__fresh361:
  %argc_slot2115 = alloca i32
  store i32 %argc2114, i32* %argc_slot2115
  %argv_slot2113 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2112, { i32, [ 0 x i8* ] }** %argv_slot2113
  %array_ptr2116 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2117 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2116 to { i32, [ 0 x i32 ] }* 
  %index_ptr2118 = getelementptr { i32, [ 0 x i32 ] }* %array2117, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr2118
  %index_ptr2119 = getelementptr { i32, [ 0 x i32 ] }* %array2117, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr2119
  %index_ptr2120 = getelementptr { i32, [ 0 x i32 ] }* %array2117, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr2120
  %index_ptr2121 = getelementptr { i32, [ 0 x i32 ] }* %array2117, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr2121
  %index_ptr2122 = getelementptr { i32, [ 0 x i32 ] }* %array2117, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr2122
  %index_ptr2123 = getelementptr { i32, [ 0 x i32 ] }* %array2117, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr2123
  %index_ptr2124 = getelementptr { i32, [ 0 x i32 ] }* %array2117, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr2124
  %index_ptr2125 = getelementptr { i32, [ 0 x i32 ] }* %array2117, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr2125
  %index_ptr2126 = getelementptr { i32, [ 0 x i32 ] }* %array2117, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr2126
  %a2127 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2117, { i32, [ 0 x i32 ] }** %a2127
  %strval2129 = load i8** @_oat_string2128
  call void @print_string( i8* %strval2129 )
  %_lhs2130 = load { i32, [ 0 x i32 ] }** %a2127
  %ret2131 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2130 )
  call void @print_string( i8* %ret2131 )
  %strval2133 = load i8** @_oat_string2132
  call void @print_string( i8* %strval2133 )
  %_lhs2134 = load { i32, [ 0 x i32 ] }** %a2127
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2134, i32 0, i32 8 )
  %_lhs2135 = load { i32, [ 0 x i32 ] }** %a2127
  %ret2136 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2135 )
  call void @print_string( i8* %ret2136 )
  %strval2138 = load i8** @_oat_string2137
  call void @print_string( i8* %strval2138 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a2014, i32 %l2012, i32 %r2010){

__fresh350:
  %a_slot2015 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2014, { i32, [ 0 x i32 ] }** %a_slot2015
  %l_slot2013 = alloca i32
  store i32 %l2012, i32* %l_slot2013
  %r_slot2011 = alloca i32
  store i32 %r2010, i32* %r_slot2011
  %_lhs2016 = load i32* %l_slot2013
  %len_ptr2017 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2015, i32 0, i32 0
  %len2018 = load i32* %len_ptr2017
  call void @oat_array_bounds_check( i32 %len2018, i32 %_lhs2016 )
  %array_dereferenced2019 = load { i32, [ 0 x i32 ] }** %a_slot2015
  %elt_ptr2020 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2019, i32 0, i32 1, i32 %_lhs2016
  %_lhs2021 = load i32* %elt_ptr2020
  %pivot2022 = alloca i32
  store i32 %_lhs2021, i32* %pivot2022
  %_lhs2023 = load i32* %l_slot2013
  %i2024 = alloca i32
  store i32 %_lhs2023, i32* %i2024
  %_lhs2025 = load i32* %r_slot2011
  %bop2026 = add i32 %_lhs2025, 1
  %j2027 = alloca i32
  store i32 %bop2026, i32* %j2027
  %t2028 = alloca i32
  store i32 0, i32* %t2028
  %done2029 = alloca i32
  store i32 0, i32* %done2029
  br label %__cond337

__cond337:
  %_lhs2030 = load i32* %done2029
  %bop2031 = icmp eq i32 %_lhs2030, 0
  br i1 %bop2031, label %__body336, label %__post335

__fresh351:
  br label %__body336

__body336:
  %_lhs2032 = load i32* %i2024
  %bop2033 = add i32 %_lhs2032, 1
  store i32 %bop2033, i32* %i2024
  br label %__cond340

__cond340:
  %_lhs2034 = load i32* %i2024
  %len_ptr2035 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2015, i32 0, i32 0
  %len2036 = load i32* %len_ptr2035
  call void @oat_array_bounds_check( i32 %len2036, i32 %_lhs2034 )
  %array_dereferenced2037 = load { i32, [ 0 x i32 ] }** %a_slot2015
  %elt_ptr2038 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2037, i32 0, i32 1, i32 %_lhs2034
  %_lhs2039 = load i32* %elt_ptr2038
  %_lhs2040 = load i32* %pivot2022
  %bop2041 = icmp sle i32 %_lhs2039, %_lhs2040
  %_lhs2042 = load i32* %i2024
  %_lhs2043 = load i32* %r_slot2011
  %bop2044 = icmp sle i32 %_lhs2042, %_lhs2043
  %bop2045 = and i1 %bop2041, %bop2044
  br i1 %bop2045, label %__body339, label %__post338

__fresh352:
  br label %__body339

__body339:
  %_lhs2046 = load i32* %i2024
  %bop2047 = add i32 %_lhs2046, 1
  store i32 %bop2047, i32* %i2024
  br label %__cond340

__fresh353:
  br label %__post338

__post338:
  %_lhs2048 = load i32* %j2027
  %bop2049 = sub i32 %_lhs2048, 1
  store i32 %bop2049, i32* %j2027
  br label %__cond343

__cond343:
  %_lhs2050 = load i32* %j2027
  %len_ptr2051 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2015, i32 0, i32 0
  %len2052 = load i32* %len_ptr2051
  call void @oat_array_bounds_check( i32 %len2052, i32 %_lhs2050 )
  %array_dereferenced2053 = load { i32, [ 0 x i32 ] }** %a_slot2015
  %elt_ptr2054 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2053, i32 0, i32 1, i32 %_lhs2050
  %_lhs2055 = load i32* %elt_ptr2054
  %_lhs2056 = load i32* %pivot2022
  %bop2057 = icmp sgt i32 %_lhs2055, %_lhs2056
  br i1 %bop2057, label %__body342, label %__post341

__fresh354:
  br label %__body342

__body342:
  %_lhs2058 = load i32* %j2027
  %bop2059 = sub i32 %_lhs2058, 1
  store i32 %bop2059, i32* %j2027
  br label %__cond343

__fresh355:
  br label %__post341

__post341:
  %_lhs2060 = load i32* %i2024
  %_lhs2061 = load i32* %j2027
  %bop2062 = icmp sge i32 %_lhs2060, %_lhs2061
  br i1 %bop2062, label %__then346, label %__else345

__fresh356:
  br label %__then346

__then346:
  store i32 1, i32* %done2029
  br label %__merge344

__fresh357:
  br label %__else345

__else345:
  br label %__merge344

__merge344:
  %_lhs2063 = load i32* %done2029
  %bop2064 = icmp eq i32 %_lhs2063, 0
  br i1 %bop2064, label %__then349, label %__else348

__fresh358:
  br label %__then349

__then349:
  %_lhs2065 = load i32* %i2024
  %len_ptr2066 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2015, i32 0, i32 0
  %len2067 = load i32* %len_ptr2066
  call void @oat_array_bounds_check( i32 %len2067, i32 %_lhs2065 )
  %array_dereferenced2068 = load { i32, [ 0 x i32 ] }** %a_slot2015
  %elt_ptr2069 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2068, i32 0, i32 1, i32 %_lhs2065
  %_lhs2070 = load i32* %elt_ptr2069
  store i32 %_lhs2070, i32* %t2028
  %_lhs2071 = load i32* %i2024
  %len_ptr2072 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2015, i32 0, i32 0
  %len2073 = load i32* %len_ptr2072
  call void @oat_array_bounds_check( i32 %len2073, i32 %_lhs2071 )
  %array_dereferenced2074 = load { i32, [ 0 x i32 ] }** %a_slot2015
  %elt_ptr2075 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2074, i32 0, i32 1, i32 %_lhs2071
  %_lhs2076 = load i32* %j2027
  %len_ptr2077 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2015, i32 0, i32 0
  %len2078 = load i32* %len_ptr2077
  call void @oat_array_bounds_check( i32 %len2078, i32 %_lhs2076 )
  %array_dereferenced2079 = load { i32, [ 0 x i32 ] }** %a_slot2015
  %elt_ptr2080 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2079, i32 0, i32 1, i32 %_lhs2076
  %_lhs2081 = load i32* %elt_ptr2080
  store i32 %_lhs2081, i32* %elt_ptr2075
  %_lhs2082 = load i32* %j2027
  %len_ptr2083 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2015, i32 0, i32 0
  %len2084 = load i32* %len_ptr2083
  call void @oat_array_bounds_check( i32 %len2084, i32 %_lhs2082 )
  %array_dereferenced2085 = load { i32, [ 0 x i32 ] }** %a_slot2015
  %elt_ptr2086 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2085, i32 0, i32 1, i32 %_lhs2082
  %_lhs2087 = load i32* %t2028
  store i32 %_lhs2087, i32* %elt_ptr2086
  br label %__merge347

__fresh359:
  br label %__else348

__else348:
  br label %__merge347

__merge347:
  br label %__cond337

__fresh360:
  br label %__post335

__post335:
  %_lhs2088 = load i32* %l_slot2013
  %len_ptr2089 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2015, i32 0, i32 0
  %len2090 = load i32* %len_ptr2089
  call void @oat_array_bounds_check( i32 %len2090, i32 %_lhs2088 )
  %array_dereferenced2091 = load { i32, [ 0 x i32 ] }** %a_slot2015
  %elt_ptr2092 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2091, i32 0, i32 1, i32 %_lhs2088
  %_lhs2093 = load i32* %elt_ptr2092
  store i32 %_lhs2093, i32* %t2028
  %_lhs2094 = load i32* %l_slot2013
  %len_ptr2095 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2015, i32 0, i32 0
  %len2096 = load i32* %len_ptr2095
  call void @oat_array_bounds_check( i32 %len2096, i32 %_lhs2094 )
  %array_dereferenced2097 = load { i32, [ 0 x i32 ] }** %a_slot2015
  %elt_ptr2098 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2097, i32 0, i32 1, i32 %_lhs2094
  %_lhs2099 = load i32* %j2027
  %len_ptr2100 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2015, i32 0, i32 0
  %len2101 = load i32* %len_ptr2100
  call void @oat_array_bounds_check( i32 %len2101, i32 %_lhs2099 )
  %array_dereferenced2102 = load { i32, [ 0 x i32 ] }** %a_slot2015
  %elt_ptr2103 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2102, i32 0, i32 1, i32 %_lhs2099
  %_lhs2104 = load i32* %elt_ptr2103
  store i32 %_lhs2104, i32* %elt_ptr2098
  %_lhs2105 = load i32* %j2027
  %len_ptr2106 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2015, i32 0, i32 0
  %len2107 = load i32* %len_ptr2106
  call void @oat_array_bounds_check( i32 %len2107, i32 %_lhs2105 )
  %array_dereferenced2108 = load { i32, [ 0 x i32 ] }** %a_slot2015
  %elt_ptr2109 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2108, i32 0, i32 1, i32 %_lhs2105
  %_lhs2110 = load i32* %t2028
  store i32 %_lhs2110, i32* %elt_ptr2109
  %_lhs2111 = load i32* %j2027
  ret i32 %_lhs2111
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1992, i32 %l1990, i32 %r1988){

__fresh332:
  %a_slot1993 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1992, { i32, [ 0 x i32 ] }** %a_slot1993
  %l_slot1991 = alloca i32
  store i32 %l1990, i32* %l_slot1991
  %r_slot1989 = alloca i32
  store i32 %r1988, i32* %r_slot1989
  %j1994 = alloca i32
  store i32 0, i32* %j1994
  %_lhs1995 = load i32* %l_slot1991
  %_lhs1996 = load i32* %r_slot1989
  %bop1997 = icmp slt i32 %_lhs1995, %_lhs1996
  br i1 %bop1997, label %__then331, label %__else330

__fresh333:
  br label %__then331

__then331:
  %_lhs2000 = load i32* %r_slot1989
  %_lhs1999 = load i32* %l_slot1991
  %_lhs1998 = load { i32, [ 0 x i32 ] }** %a_slot1993
  %ret2001 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1998, i32 %_lhs1999, i32 %_lhs2000 )
  store i32 %ret2001, i32* %j1994
  %_lhs2004 = load i32* %j1994
  %bop2005 = sub i32 %_lhs2004, 1
  %_lhs2003 = load i32* %l_slot1991
  %_lhs2002 = load { i32, [ 0 x i32 ] }** %a_slot1993
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2002, i32 %_lhs2003, i32 %bop2005 )
  %_lhs2009 = load i32* %r_slot1989
  %_lhs2007 = load i32* %j1994
  %bop2008 = add i32 %_lhs2007, 1
  %_lhs2006 = load { i32, [ 0 x i32 ] }** %a_slot1993
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2006, i32 %bop2008, i32 %_lhs2009 )
  br label %__merge329

__fresh334:
  br label %__else330

__else330:
  br label %__merge329

__merge329:
  ret void
}


