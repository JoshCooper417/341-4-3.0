declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh319:
  ret void
}


define i32 @program (i32 %argc2098, { i32, [ 0 x i8* ] }* %argv2096){

__fresh316:
  %argc_slot2099 = alloca i32
  store i32 %argc2098, i32* %argc_slot2099
  %argv_slot2097 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2096, { i32, [ 0 x i8* ] }** %argv_slot2097
  %array_ptr2100 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array2101 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2100 to { i32, [ 0 x i32 ] }* 
  %index_ptr2102 = getelementptr { i32, [ 0 x i32 ] }* %array2101, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2102
  %index_ptr2103 = getelementptr { i32, [ 0 x i32 ] }* %array2101, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2103
  %index_ptr2104 = getelementptr { i32, [ 0 x i32 ] }* %array2101, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr2104
  %index_ptr2105 = getelementptr { i32, [ 0 x i32 ] }* %array2101, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr2105
  %unop2106 = sub i32 0, 6
  %index_ptr2107 = getelementptr { i32, [ 0 x i32 ] }* %array2101, i32 0, i32 1, i32 4
  store i32 %unop2106, i32* %index_ptr2107
  %index_ptr2108 = getelementptr { i32, [ 0 x i32 ] }* %array2101, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr2108
  %index_ptr2109 = getelementptr { i32, [ 0 x i32 ] }* %array2101, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr2109
  %index_ptr2110 = getelementptr { i32, [ 0 x i32 ] }* %array2101, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr2110
  %unop2111 = sub i32 0, 2
  %index_ptr2112 = getelementptr { i32, [ 0 x i32 ] }* %array2101, i32 0, i32 1, i32 8
  store i32 %unop2111, i32* %index_ptr2112
  %unop2113 = sub i32 0, 5
  %index_ptr2114 = getelementptr { i32, [ 0 x i32 ] }* %array2101, i32 0, i32 1, i32 9
  store i32 %unop2113, i32* %index_ptr2114
  %index_ptr2115 = getelementptr { i32, [ 0 x i32 ] }* %array2101, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr2115
  %index_ptr2116 = getelementptr { i32, [ 0 x i32 ] }* %array2101, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr2116
  %index_ptr2117 = getelementptr { i32, [ 0 x i32 ] }* %array2101, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr2117
  %unop2118 = sub i32 0, 3
  %index_ptr2119 = getelementptr { i32, [ 0 x i32 ] }* %array2101, i32 0, i32 1, i32 13
  store i32 %unop2118, i32* %index_ptr2119
  %index_ptr2120 = getelementptr { i32, [ 0 x i32 ] }* %array2101, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr2120
  %nums2121 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2101, { i32, [ 0 x i32 ] }** %nums2121
  %i2122 = alloca i32
  store i32 0, i32* %i2122
  %_lhs2123 = load { i32, [ 0 x i32 ] }** %nums2121
  %len_ptr2124 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2123, i32 0, i32 0
  %len2125 = load i32* %len_ptr2124
  %n2126 = alloca i32
  store i32 %len2125, i32* %n2126
  %_lhs2128 = load i32* %n2126
  %bop2129 = sub i32 %_lhs2128, 1
  %_lhs2127 = load { i32, [ 0 x i32 ] }** %nums2121
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2127, i32 0, i32 %bop2129 )
  store i32 0, i32* %i2122
  br label %__cond315

__cond315:
  %_lhs2130 = load i32* %i2122
  %_lhs2131 = load i32* %n2126
  %bop2132 = sub i32 %_lhs2131, 1
  %bop2133 = icmp sle i32 %_lhs2130, %bop2132
  br i1 %bop2133, label %__body314, label %__post313

__fresh317:
  br label %__body314

__body314:
  %_lhs2134 = load i32* %i2122
  %len_ptr2135 = getelementptr { i32, [ 0 x i32 ] }** %nums2121, i32 0, i32 0
  %len2136 = load i32* %len_ptr2135
  call void @oat_array_bounds_check( i32 %len2136, i32 %_lhs2134 )
  %array_dereferenced2137 = load { i32, [ 0 x i32 ] }** %nums2121
  %elt_ptr2138 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2137, i32 0, i32 1, i32 %_lhs2134
  %_lhs2139 = load i32* %elt_ptr2138
  call void @print_int( i32 %_lhs2139 )
  %_lhs2140 = load i32* %i2122
  %bop2141 = add i32 %_lhs2140, 1
  store i32 %bop2141, i32* %i2122
  br label %__cond315

__fresh318:
  br label %__post313

__post313:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a2033, i32 %i2031, i32 %j2029){

__fresh308:
  %a_slot2034 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2033, { i32, [ 0 x i32 ] }** %a_slot2034
  %i_slot2032 = alloca i32
  store i32 %i2031, i32* %i_slot2032
  %j_slot2030 = alloca i32
  store i32 %j2029, i32* %j_slot2030
  %t2035 = alloca i32
  store i32 0, i32* %t2035
  %_lhs2036 = load i32* %j_slot2030
  %len_ptr2037 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2034, i32 0, i32 0
  %len2038 = load i32* %len_ptr2037
  call void @oat_array_bounds_check( i32 %len2038, i32 %_lhs2036 )
  %array_dereferenced2039 = load { i32, [ 0 x i32 ] }** %a_slot2034
  %elt_ptr2040 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2039, i32 0, i32 1, i32 %_lhs2036
  %_lhs2041 = load i32* %elt_ptr2040
  %_lhs2042 = load i32* %i_slot2032
  %len_ptr2043 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2034, i32 0, i32 0
  %len2044 = load i32* %len_ptr2043
  call void @oat_array_bounds_check( i32 %len2044, i32 %_lhs2042 )
  %array_dereferenced2045 = load { i32, [ 0 x i32 ] }** %a_slot2034
  %elt_ptr2046 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2045, i32 0, i32 1, i32 %_lhs2042
  %_lhs2047 = load i32* %elt_ptr2046
  %bop2048 = icmp slt i32 %_lhs2041, %_lhs2047
  br i1 %bop2048, label %__then304, label %__else303

__fresh309:
  br label %__then304

__then304:
  %_lhs2049 = load i32* %i_slot2032
  %len_ptr2050 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2034, i32 0, i32 0
  %len2051 = load i32* %len_ptr2050
  call void @oat_array_bounds_check( i32 %len2051, i32 %_lhs2049 )
  %array_dereferenced2052 = load { i32, [ 0 x i32 ] }** %a_slot2034
  %elt_ptr2053 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2052, i32 0, i32 1, i32 %_lhs2049
  %_lhs2054 = load i32* %elt_ptr2053
  store i32 %_lhs2054, i32* %t2035
  %_lhs2055 = load i32* %i_slot2032
  %len_ptr2056 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2034, i32 0, i32 0
  %len2057 = load i32* %len_ptr2056
  call void @oat_array_bounds_check( i32 %len2057, i32 %_lhs2055 )
  %array_dereferenced2058 = load { i32, [ 0 x i32 ] }** %a_slot2034
  %elt_ptr2059 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2058, i32 0, i32 1, i32 %_lhs2055
  %_lhs2060 = load i32* %j_slot2030
  %len_ptr2061 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2034, i32 0, i32 0
  %len2062 = load i32* %len_ptr2061
  call void @oat_array_bounds_check( i32 %len2062, i32 %_lhs2060 )
  %array_dereferenced2063 = load { i32, [ 0 x i32 ] }** %a_slot2034
  %elt_ptr2064 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2063, i32 0, i32 1, i32 %_lhs2060
  %_lhs2065 = load i32* %elt_ptr2064
  store i32 %_lhs2065, i32* %elt_ptr2059
  %_lhs2066 = load i32* %j_slot2030
  %len_ptr2067 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2034, i32 0, i32 0
  %len2068 = load i32* %len_ptr2067
  call void @oat_array_bounds_check( i32 %len2068, i32 %_lhs2066 )
  %array_dereferenced2069 = load { i32, [ 0 x i32 ] }** %a_slot2034
  %elt_ptr2070 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2069, i32 0, i32 1, i32 %_lhs2066
  %_lhs2071 = load i32* %t2035
  store i32 %_lhs2071, i32* %elt_ptr2070
  br label %__merge302

__fresh310:
  br label %__else303

__else303:
  br label %__merge302

__merge302:
  %_lhs2072 = load i32* %j_slot2030
  %_lhs2073 = load i32* %i_slot2032
  %bop2074 = sub i32 %_lhs2072, %_lhs2073
  %bop2075 = icmp sgt i32 %bop2074, 1
  br i1 %bop2075, label %__then307, label %__else306

__fresh311:
  br label %__then307

__then307:
  %_lhs2076 = load i32* %j_slot2030
  %_lhs2077 = load i32* %i_slot2032
  %bop2078 = sub i32 %_lhs2076, %_lhs2077
  %bop2079 = add i32 %bop2078, 1
  %bop2080 = ashr i32 %bop2079, 1
  store i32 %bop2080, i32* %t2035
  %_lhs2083 = load i32* %j_slot2030
  %_lhs2084 = load i32* %t2035
  %bop2085 = sub i32 %_lhs2083, %_lhs2084
  %_lhs2082 = load i32* %i_slot2032
  %_lhs2081 = load { i32, [ 0 x i32 ] }** %a_slot2034
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2081, i32 %_lhs2082, i32 %bop2085 )
  %_lhs2090 = load i32* %j_slot2030
  %_lhs2087 = load i32* %i_slot2032
  %_lhs2088 = load i32* %t2035
  %bop2089 = add i32 %_lhs2087, %_lhs2088
  %_lhs2086 = load { i32, [ 0 x i32 ] }** %a_slot2034
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2086, i32 %bop2089, i32 %_lhs2090 )
  %_lhs2093 = load i32* %j_slot2030
  %_lhs2094 = load i32* %t2035
  %bop2095 = sub i32 %_lhs2093, %_lhs2094
  %_lhs2092 = load i32* %i_slot2032
  %_lhs2091 = load { i32, [ 0 x i32 ] }** %a_slot2034
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2091, i32 %_lhs2092, i32 %bop2095 )
  br label %__merge305

__fresh312:
  br label %__else306

__else306:
  br label %__merge305

__merge305:
  ret void
}


