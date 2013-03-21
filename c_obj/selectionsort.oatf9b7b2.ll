declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh312:
  ret void
}


define i32 @program (i32 %argc2138, { i32, [ 0 x i8* ] }* %argv2136){

__fresh309:
  %argc_slot2139 = alloca i32
  store i32 %argc2138, i32* %argc_slot2139
  %argv_slot2137 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2136, { i32, [ 0 x i8* ] }** %argv_slot2137
  %array_ptr2140 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2141 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2140 to { i32, [ 0 x i32 ] }* 
  %index_ptr2142 = getelementptr { i32, [ 0 x i32 ] }* %array2141, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr2142
  %index_ptr2143 = getelementptr { i32, [ 0 x i32 ] }* %array2141, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr2143
  %index_ptr2144 = getelementptr { i32, [ 0 x i32 ] }* %array2141, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2144
  %index_ptr2145 = getelementptr { i32, [ 0 x i32 ] }* %array2141, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr2145
  %index_ptr2146 = getelementptr { i32, [ 0 x i32 ] }* %array2141, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr2146
  %index_ptr2147 = getelementptr { i32, [ 0 x i32 ] }* %array2141, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr2147
  %index_ptr2148 = getelementptr { i32, [ 0 x i32 ] }* %array2141, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr2148
  %index_ptr2149 = getelementptr { i32, [ 0 x i32 ] }* %array2141, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr2149
  %ar2150 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2141, { i32, [ 0 x i32 ] }** %ar2150
  %_lhs2151 = load { i32, [ 0 x i32 ] }** %ar2150
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs2151, i32 8 )
  %i2152 = alloca i32
  store i32 0, i32* %i2152
  br label %__cond308

__cond308:
  %_lhs2153 = load i32* %i2152
  %bop2154 = icmp slt i32 %_lhs2153, 8
  br i1 %bop2154, label %__body307, label %__post306

__fresh310:
  br label %__body307

__body307:
  %_lhs2155 = load i32* %i2152
  %_lhs2156 = load { i32, [ 0 x i32 ] }** %ar2150
  %len_ptr2157 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2156, i32 0, i32 0
  %len2158 = load i32* %len_ptr2157
  call void @oat_array_bounds_check( i32 %len2158, i32 %_lhs2155 )
  %array_dereferenced2159 = load { i32, [ 0 x i32 ] }** %ar2150
  %elt_ptr2160 = getelementptr { i32, [ 0 x i32 ] }** %ar2150, i32 0, i32 1, i32 %_lhs2155
  %_lhs2161 = load [ 0 x i32 ]* %elt_ptr2160
  call void @print_int( [ 0 x i32 ] %_lhs2161 )
  %_lhs2162 = load i32* %i2152
  %bop2163 = add i32 %_lhs2162, 1
  store i32 %bop2163, i32* %i2152
  br label %__cond308

__fresh311:
  br label %__post306

__post306:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a2095, i32 %s2093){

__fresh303:
  %a_slot2096 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2095, { i32, [ 0 x i32 ] }** %a_slot2096
  %s_slot2094 = alloca i32
  store i32 %s2093, i32* %s_slot2094
  %t2097 = alloca i32
  store i32 0, i32* %t2097
  %mi2098 = alloca i32
  store i32 0, i32* %mi2098
  %i2099 = alloca i32
  store i32 0, i32* %i2099
  br label %__cond302

__cond302:
  %_lhs2100 = load i32* %i2099
  %_lhs2101 = load i32* %s_slot2094
  %bop2102 = icmp slt i32 %_lhs2100, %_lhs2101
  br i1 %bop2102, label %__body301, label %__post300

__fresh304:
  br label %__body301

__body301:
  %_lhs2105 = load i32* %s_slot2094
  %_lhs2104 = load i32* %i2099
  %_lhs2103 = load { i32, [ 0 x i32 ] }** %a_slot2096
  %ret2106 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs2103, i32 %_lhs2104, i32 %_lhs2105 )
  store i32 %ret2106, i32* %mi2098
  %_lhs2107 = load i32* %i2099
  %_lhs2108 = load { i32, [ 0 x i32 ] }** %a_slot2096
  %len_ptr2109 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2108, i32 0, i32 0
  %len2110 = load i32* %len_ptr2109
  call void @oat_array_bounds_check( i32 %len2110, i32 %_lhs2107 )
  %array_dereferenced2111 = load { i32, [ 0 x i32 ] }** %a_slot2096
  %elt_ptr2112 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2096, i32 0, i32 1, i32 %_lhs2107
  %_lhs2113 = load [ 0 x i32 ]* %elt_ptr2112
  store [ 0 x i32 ] %_lhs2113, i32* %t2097
  %_lhs2114 = load i32* %i2099
  %_lhs2115 = load { i32, [ 0 x i32 ] }** %a_slot2096
  %len_ptr2116 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2115, i32 0, i32 0
  %len2117 = load i32* %len_ptr2116
  call void @oat_array_bounds_check( i32 %len2117, i32 %_lhs2114 )
  %array_dereferenced2118 = load { i32, [ 0 x i32 ] }** %a_slot2096
  %elt_ptr2119 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2096, i32 0, i32 1, i32 %_lhs2114
  %_lhs2120 = load i32* %mi2098
  %_lhs2121 = load { i32, [ 0 x i32 ] }** %a_slot2096
  %len_ptr2122 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2121, i32 0, i32 0
  %len2123 = load i32* %len_ptr2122
  call void @oat_array_bounds_check( i32 %len2123, i32 %_lhs2120 )
  %array_dereferenced2124 = load { i32, [ 0 x i32 ] }** %a_slot2096
  %elt_ptr2125 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2096, i32 0, i32 1, i32 %_lhs2120
  %_lhs2126 = load [ 0 x i32 ]* %elt_ptr2125
  store [ 0 x i32 ] %_lhs2126, [ 0 x i32 ]* %elt_ptr2119
  %_lhs2127 = load i32* %mi2098
  %_lhs2128 = load { i32, [ 0 x i32 ] }** %a_slot2096
  %len_ptr2129 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2128, i32 0, i32 0
  %len2130 = load i32* %len_ptr2129
  call void @oat_array_bounds_check( i32 %len2130, i32 %_lhs2127 )
  %array_dereferenced2131 = load { i32, [ 0 x i32 ] }** %a_slot2096
  %elt_ptr2132 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2096, i32 0, i32 1, i32 %_lhs2127
  %_lhs2133 = load i32* %t2097
  store i32 %_lhs2133, [ 0 x i32 ]* %elt_ptr2132
  %_lhs2134 = load i32* %i2099
  %bop2135 = add i32 %_lhs2134, 1
  store i32 %bop2135, i32* %i2099
  br label %__cond302

__fresh305:
  br label %__post300

__post300:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2056, i32 %s2054, i32 %b2052){

__fresh295:
  %a_slot2057 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2056, { i32, [ 0 x i32 ] }** %a_slot2057
  %s_slot2055 = alloca i32
  store i32 %s2054, i32* %s_slot2055
  %b_slot2053 = alloca i32
  store i32 %b2052, i32* %b_slot2053
  %_lhs2058 = load i32* %s_slot2055
  %i2059 = alloca i32
  store i32 %_lhs2058, i32* %i2059
  %_lhs2060 = load i32* %s_slot2055
  %_lhs2061 = load { i32, [ 0 x i32 ] }** %a_slot2057
  %len_ptr2062 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2061, i32 0, i32 0
  %len2063 = load i32* %len_ptr2062
  call void @oat_array_bounds_check( i32 %len2063, i32 %_lhs2060 )
  %array_dereferenced2064 = load { i32, [ 0 x i32 ] }** %a_slot2057
  %elt_ptr2065 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2057, i32 0, i32 1, i32 %_lhs2060
  %_lhs2066 = load [ 0 x i32 ]* %elt_ptr2065
  %min2067 = alloca i32
  store [ 0 x i32 ] %_lhs2066, i32* %min2067
  %_lhs2068 = load i32* %s_slot2055
  %mi2069 = alloca i32
  store i32 %_lhs2068, i32* %mi2069
  br label %__cond291

__cond291:
  %_lhs2070 = load i32* %i2059
  %_lhs2071 = load i32* %b_slot2053
  %bop2072 = icmp slt i32 %_lhs2070, %_lhs2071
  br i1 %bop2072, label %__body290, label %__post289

__fresh296:
  br label %__body290

__body290:
  %_lhs2073 = load i32* %i2059
  %_lhs2074 = load { i32, [ 0 x i32 ] }** %a_slot2057
  %len_ptr2075 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2074, i32 0, i32 0
  %len2076 = load i32* %len_ptr2075
  call void @oat_array_bounds_check( i32 %len2076, i32 %_lhs2073 )
  %array_dereferenced2077 = load { i32, [ 0 x i32 ] }** %a_slot2057
  %elt_ptr2078 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2057, i32 0, i32 1, i32 %_lhs2073
  %_lhs2079 = load [ 0 x i32 ]* %elt_ptr2078
  %_lhs2080 = load i32* %min2067
  %bop2081 = icmp slt [ 0 x i32 ] %_lhs2079, %_lhs2080
  br i1 %bop2081, label %__then294, label %__else293

__fresh297:
  br label %__then294

__then294:
  %_lhs2082 = load i32* %i2059
  %_lhs2083 = load { i32, [ 0 x i32 ] }** %a_slot2057
  %len_ptr2084 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2083, i32 0, i32 0
  %len2085 = load i32* %len_ptr2084
  call void @oat_array_bounds_check( i32 %len2085, i32 %_lhs2082 )
  %array_dereferenced2086 = load { i32, [ 0 x i32 ] }** %a_slot2057
  %elt_ptr2087 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2057, i32 0, i32 1, i32 %_lhs2082
  %_lhs2088 = load [ 0 x i32 ]* %elt_ptr2087
  store [ 0 x i32 ] %_lhs2088, i32* %min2067
  %_lhs2089 = load i32* %i2059
  store i32 %_lhs2089, i32* %mi2069
  br label %__merge292

__fresh298:
  br label %__else293

__else293:
  br label %__merge292

__merge292:
  %_lhs2090 = load i32* %i2059
  %bop2091 = add i32 %_lhs2090, 1
  store i32 %bop2091, i32* %i2059
  br label %__cond291

__fresh299:
  br label %__post289

__post289:
  %_lhs2092 = load i32* %mi2069
  ret i32 %_lhs2092
}


