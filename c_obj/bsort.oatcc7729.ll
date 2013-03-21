declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2197.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2197 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2197.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh527:
  ret void
}


define i32 @program (i32 %argc2152, { i32, [ 0 x i8* ] }* %argv2150){

__fresh522:
  %argc_slot2153 = alloca i32
  store i32 %argc2152, i32* %argc_slot2153
  %argv_slot2151 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2150, { i32, [ 0 x i8* ] }** %argv_slot2151
  %array_ptr2155 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2156 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2155 to { i32, [ 0 x i32 ] }* 
  %i2160 = alloca i32
  store i32 1, i32* %i2160
  %i2154 = load i32* %i2160
  br label %__check520

__fresh523:
  br label %__check520

__check520:
  br label %__end519

__fresh524:
  %cmp_op2158 = icmp slt i32 %i2154, 8
  br i32 %cmp_op2158, label %__body521, label %__end519

__fresh525:
  br label %__body521

__body521:
  %elem_ptr2157 = getelementptr { i32, [ 0 x i32 ] }* %array2156, i32 0, i32 1, i32 %i2154
  store i32 0, i32* %elem_ptr2157
  %index_op2159 = add i32 %i2154, 1
  br label %__check520

__fresh526:
  br label %__end519

__end519:
  %a2162 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2156, { i32, [ 0 x i32 ] }** %a2162
  %len_ptr2163 = getelementptr { i32, [ 0 x i32 ] }** %a2162, i32 0, i32 0
  %len2164 = load i32* %len_ptr2163
  call void @oat_array_bounds_check( i32 %len2164, i32 0 )
  %array_dereferenced2165 = load { i32, [ 0 x i32 ] }** %a2162
  %elt_ptr2166 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2165, i32 0, i32 1, i32 0
  store i32 121, i32* %elt_ptr2166
  %len_ptr2167 = getelementptr { i32, [ 0 x i32 ] }** %a2162, i32 0, i32 0
  %len2168 = load i32* %len_ptr2167
  call void @oat_array_bounds_check( i32 %len2168, i32 1 )
  %array_dereferenced2169 = load { i32, [ 0 x i32 ] }** %a2162
  %elt_ptr2170 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2169, i32 0, i32 1, i32 1
  store i32 125, i32* %elt_ptr2170
  %len_ptr2171 = getelementptr { i32, [ 0 x i32 ] }** %a2162, i32 0, i32 0
  %len2172 = load i32* %len_ptr2171
  call void @oat_array_bounds_check( i32 %len2172, i32 2 )
  %array_dereferenced2173 = load { i32, [ 0 x i32 ] }** %a2162
  %elt_ptr2174 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2173, i32 0, i32 1, i32 2
  store i32 120, i32* %elt_ptr2174
  %len_ptr2175 = getelementptr { i32, [ 0 x i32 ] }** %a2162, i32 0, i32 0
  %len2176 = load i32* %len_ptr2175
  call void @oat_array_bounds_check( i32 %len2176, i32 3 )
  %array_dereferenced2177 = load { i32, [ 0 x i32 ] }** %a2162
  %elt_ptr2178 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2177, i32 0, i32 1, i32 3
  store i32 111, i32* %elt_ptr2178
  %len_ptr2179 = getelementptr { i32, [ 0 x i32 ] }** %a2162, i32 0, i32 0
  %len2180 = load i32* %len_ptr2179
  call void @oat_array_bounds_check( i32 %len2180, i32 4 )
  %array_dereferenced2181 = load { i32, [ 0 x i32 ] }** %a2162
  %elt_ptr2182 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2181, i32 0, i32 1, i32 4
  store i32 116, i32* %elt_ptr2182
  %len_ptr2183 = getelementptr { i32, [ 0 x i32 ] }** %a2162, i32 0, i32 0
  %len2184 = load i32* %len_ptr2183
  call void @oat_array_bounds_check( i32 %len2184, i32 5 )
  %array_dereferenced2185 = load { i32, [ 0 x i32 ] }** %a2162
  %elt_ptr2186 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2185, i32 0, i32 1, i32 5
  store i32 110, i32* %elt_ptr2186
  %len_ptr2187 = getelementptr { i32, [ 0 x i32 ] }** %a2162, i32 0, i32 0
  %len2188 = load i32* %len_ptr2187
  call void @oat_array_bounds_check( i32 %len2188, i32 6 )
  %array_dereferenced2189 = load { i32, [ 0 x i32 ] }** %a2162
  %elt_ptr2190 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2189, i32 0, i32 1, i32 6
  store i32 117, i32* %elt_ptr2190
  %len_ptr2191 = getelementptr { i32, [ 0 x i32 ] }** %a2162, i32 0, i32 0
  %len2192 = load i32* %len_ptr2191
  call void @oat_array_bounds_check( i32 %len2192, i32 7 )
  %array_dereferenced2193 = load { i32, [ 0 x i32 ] }** %a2162
  %elt_ptr2194 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2193, i32 0, i32 1, i32 7
  store i32 119, i32* %elt_ptr2194
  %_lhs2195 = load { i32, [ 0 x i32 ] }** %a2162
  %ret2196 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2195 )
  call void @print_string( i8* %ret2196 )
  %strval2198 = load i8** @_oat_string2197
  call void @print_string( i8* %strval2198 )
  %_lhs2200 = load { i32, [ 0 x i32 ] }** %a2162
  %len_ptr2201 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2200, i32 0, i32 0
  %len2202 = load i32* %len_ptr2201
  %_lhs2199 = load { i32, [ 0 x i32 ] }** %a2162
  call void @bubble_sort( { i32, [ 0 x i32 ] }* %_lhs2199, i32 %len2202 )
  %_lhs2203 = load { i32, [ 0 x i32 ] }** %a2162
  %ret2204 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2203 )
  call void @print_string( i8* %ret2204 )
  %unop2205 = sub i32 0, 1
  ret i32 %unop2205
}


define void @bubble_sort ({ i32, [ 0 x i32 ] }* %numbers2095, i32 %array_size2093){

__fresh512:
  %numbers_slot2096 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %numbers2095, { i32, [ 0 x i32 ] }** %numbers_slot2096
  %array_size_slot2094 = alloca i32
  store i32 %array_size2093, i32* %array_size_slot2094
  %temp2097 = alloca i32
  store i32 0, i32* %temp2097
  %_lhs2098 = load i32* %array_size_slot2094
  %bop2099 = sub i32 %_lhs2098, 1
  %i2100 = alloca i32
  store i32 %bop2099, i32* %i2100
  br label %__cond505

__cond505:
  %_lhs2101 = load i32* %i2100
  %bop2102 = icmp sgt i32 %_lhs2101, 0
  br i1 %bop2102, label %__body504, label %__post503

__fresh513:
  br label %__body504

__body504:
  %j2103 = alloca i32
  store i32 1, i32* %j2103
  br label %__cond508

__cond508:
  %_lhs2104 = load i32* %j2103
  %_lhs2105 = load i32* %i2100
  %bop2106 = icmp sle i32 %_lhs2104, %_lhs2105
  br i1 %bop2106, label %__body507, label %__post506

__fresh514:
  br label %__body507

__body507:
  %_lhs2107 = load i32* %j2103
  %bop2108 = sub i32 %_lhs2107, 1
  %len_ptr2109 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2096, i32 0, i32 0
  %len2110 = load i32* %len_ptr2109
  call void @oat_array_bounds_check( i32 %len2110, i32 %bop2108 )
  %array_dereferenced2111 = load { i32, [ 0 x i32 ] }** %numbers_slot2096
  %elt_ptr2112 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2111, i32 0, i32 1, i32 %bop2108
  %_lhs2113 = load i32* %elt_ptr2112
  %_lhs2114 = load i32* %j2103
  %len_ptr2115 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2096, i32 0, i32 0
  %len2116 = load i32* %len_ptr2115
  call void @oat_array_bounds_check( i32 %len2116, i32 %_lhs2114 )
  %array_dereferenced2117 = load { i32, [ 0 x i32 ] }** %numbers_slot2096
  %elt_ptr2118 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2117, i32 0, i32 1, i32 %_lhs2114
  %_lhs2119 = load i32* %elt_ptr2118
  %bop2120 = icmp sgt i32 %_lhs2113, %_lhs2119
  br i1 %bop2120, label %__then511, label %__else510

__fresh515:
  br label %__then511

__then511:
  %_lhs2121 = load i32* %j2103
  %bop2122 = sub i32 %_lhs2121, 1
  %len_ptr2123 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2096, i32 0, i32 0
  %len2124 = load i32* %len_ptr2123
  call void @oat_array_bounds_check( i32 %len2124, i32 %bop2122 )
  %array_dereferenced2125 = load { i32, [ 0 x i32 ] }** %numbers_slot2096
  %elt_ptr2126 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2125, i32 0, i32 1, i32 %bop2122
  %_lhs2127 = load i32* %elt_ptr2126
  store i32 %_lhs2127, i32* %temp2097
  %_lhs2128 = load i32* %j2103
  %bop2129 = sub i32 %_lhs2128, 1
  %len_ptr2130 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2096, i32 0, i32 0
  %len2131 = load i32* %len_ptr2130
  call void @oat_array_bounds_check( i32 %len2131, i32 %bop2129 )
  %array_dereferenced2132 = load { i32, [ 0 x i32 ] }** %numbers_slot2096
  %elt_ptr2133 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2132, i32 0, i32 1, i32 %bop2129
  %_lhs2134 = load i32* %j2103
  %len_ptr2135 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2096, i32 0, i32 0
  %len2136 = load i32* %len_ptr2135
  call void @oat_array_bounds_check( i32 %len2136, i32 %_lhs2134 )
  %array_dereferenced2137 = load { i32, [ 0 x i32 ] }** %numbers_slot2096
  %elt_ptr2138 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2137, i32 0, i32 1, i32 %_lhs2134
  %_lhs2139 = load i32* %elt_ptr2138
  store i32 %_lhs2139, i32* %elt_ptr2133
  %_lhs2140 = load i32* %j2103
  %len_ptr2141 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2096, i32 0, i32 0
  %len2142 = load i32* %len_ptr2141
  call void @oat_array_bounds_check( i32 %len2142, i32 %_lhs2140 )
  %array_dereferenced2143 = load { i32, [ 0 x i32 ] }** %numbers_slot2096
  %elt_ptr2144 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2143, i32 0, i32 1, i32 %_lhs2140
  %_lhs2145 = load i32* %temp2097
  store i32 %_lhs2145, i32* %elt_ptr2144
  br label %__merge509

__fresh516:
  br label %__else510

__else510:
  br label %__merge509

__merge509:
  %_lhs2146 = load i32* %j2103
  %bop2147 = add i32 %_lhs2146, 1
  store i32 %bop2147, i32* %j2103
  br label %__cond508

__fresh517:
  br label %__post506

__post506:
  %_lhs2148 = load i32* %i2100
  %bop2149 = sub i32 %_lhs2148, 1
  store i32 %bop2149, i32* %i2100
  br label %__cond505

__fresh518:
  br label %__post503

__post503:
  ret void
}


