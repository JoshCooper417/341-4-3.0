declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2217.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2217 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2217.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh453:
  ret void
}


define i32 @program (i32 %argc2172, { i32, [ 0 x i8* ] }* %argv2170){

__fresh448:
  %argc_slot2173 = alloca i32
  store i32 %argc2172, i32* %argc_slot2173
  %argv_slot2171 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2170, { i32, [ 0 x i8* ] }** %argv_slot2171
  %array_ptr2175 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2176 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2175 to { i32, [ 0 x i32 ] }* 
  %i2180 = alloca i32
  store i32 1, i32* %i2180
  %i2174 = load i32* %i2180
  br label %__check446

__fresh449:
  br label %__check446

__check446:
  br label %__end445

__fresh450:
  %cmp_op2178 = icmp slt i32 %i2174, 8
  br i32 %cmp_op2178, label %__body447, label %__end445

__fresh451:
  br label %__body447

__body447:
  %elem_ptr2177 = getelementptr { i32, [ 0 x i32 ] }* %array2176, i32 0, i32 1, i32 %i2174
  store i32 0, i32* %elem_ptr2177
  %index_op2179 = add i32 %i2174, 1
  br label %__check446

__fresh452:
  br label %__end445

__end445:
  %a2182 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2176, { i32, [ 0 x i32 ] }** %a2182
  %len_ptr2183 = getelementptr { i32, [ 0 x i32 ] }** %a2182, i32 0, i32 0
  %len2184 = load i32* %len_ptr2183
  call void @oat_array_bounds_check( i32 %len2184, i32 0 )
  %array_dereferenced2185 = load { i32, [ 0 x i32 ] }** %a2182
  %elt_ptr2186 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2185, i32 0, i32 1, i32 0
  store i32 121, i32* %elt_ptr2186
  %len_ptr2187 = getelementptr { i32, [ 0 x i32 ] }** %a2182, i32 0, i32 0
  %len2188 = load i32* %len_ptr2187
  call void @oat_array_bounds_check( i32 %len2188, i32 1 )
  %array_dereferenced2189 = load { i32, [ 0 x i32 ] }** %a2182
  %elt_ptr2190 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2189, i32 0, i32 1, i32 1
  store i32 125, i32* %elt_ptr2190
  %len_ptr2191 = getelementptr { i32, [ 0 x i32 ] }** %a2182, i32 0, i32 0
  %len2192 = load i32* %len_ptr2191
  call void @oat_array_bounds_check( i32 %len2192, i32 2 )
  %array_dereferenced2193 = load { i32, [ 0 x i32 ] }** %a2182
  %elt_ptr2194 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2193, i32 0, i32 1, i32 2
  store i32 120, i32* %elt_ptr2194
  %len_ptr2195 = getelementptr { i32, [ 0 x i32 ] }** %a2182, i32 0, i32 0
  %len2196 = load i32* %len_ptr2195
  call void @oat_array_bounds_check( i32 %len2196, i32 3 )
  %array_dereferenced2197 = load { i32, [ 0 x i32 ] }** %a2182
  %elt_ptr2198 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2197, i32 0, i32 1, i32 3
  store i32 111, i32* %elt_ptr2198
  %len_ptr2199 = getelementptr { i32, [ 0 x i32 ] }** %a2182, i32 0, i32 0
  %len2200 = load i32* %len_ptr2199
  call void @oat_array_bounds_check( i32 %len2200, i32 4 )
  %array_dereferenced2201 = load { i32, [ 0 x i32 ] }** %a2182
  %elt_ptr2202 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2201, i32 0, i32 1, i32 4
  store i32 116, i32* %elt_ptr2202
  %len_ptr2203 = getelementptr { i32, [ 0 x i32 ] }** %a2182, i32 0, i32 0
  %len2204 = load i32* %len_ptr2203
  call void @oat_array_bounds_check( i32 %len2204, i32 5 )
  %array_dereferenced2205 = load { i32, [ 0 x i32 ] }** %a2182
  %elt_ptr2206 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2205, i32 0, i32 1, i32 5
  store i32 110, i32* %elt_ptr2206
  %len_ptr2207 = getelementptr { i32, [ 0 x i32 ] }** %a2182, i32 0, i32 0
  %len2208 = load i32* %len_ptr2207
  call void @oat_array_bounds_check( i32 %len2208, i32 6 )
  %array_dereferenced2209 = load { i32, [ 0 x i32 ] }** %a2182
  %elt_ptr2210 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2209, i32 0, i32 1, i32 6
  store i32 117, i32* %elt_ptr2210
  %len_ptr2211 = getelementptr { i32, [ 0 x i32 ] }** %a2182, i32 0, i32 0
  %len2212 = load i32* %len_ptr2211
  call void @oat_array_bounds_check( i32 %len2212, i32 7 )
  %array_dereferenced2213 = load { i32, [ 0 x i32 ] }** %a2182
  %elt_ptr2214 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2213, i32 0, i32 1, i32 7
  store i32 119, i32* %elt_ptr2214
  %_lhs2215 = load { i32, [ 0 x i32 ] }** %a2182
  %ret2216 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2215 )
  call void @print_string( i8* %ret2216 )
  %strval2218 = load i8** @_oat_string2217
  call void @print_string( i8* %strval2218 )
  %_lhs2220 = load { i32, [ 0 x i32 ] }** %a2182
  %len_ptr2221 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2220, i32 0, i32 0
  %len2222 = load i32* %len_ptr2221
  %_lhs2219 = load { i32, [ 0 x i32 ] }** %a2182
  call void @bubble_sort( { i32, [ 0 x i32 ] }* %_lhs2219, i32 %len2222 )
  %_lhs2223 = load { i32, [ 0 x i32 ] }** %a2182
  %ret2224 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2223 )
  call void @print_string( i8* %ret2224 )
  %unop2225 = sub i32 0, 1
  ret i32 %unop2225
}


define void @bubble_sort ({ i32, [ 0 x i32 ] }* %numbers2115, i32 %array_size2113){

__fresh438:
  %numbers_slot2116 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %numbers2115, { i32, [ 0 x i32 ] }** %numbers_slot2116
  %array_size_slot2114 = alloca i32
  store i32 %array_size2113, i32* %array_size_slot2114
  %temp2117 = alloca i32
  store i32 0, i32* %temp2117
  %_lhs2118 = load i32* %array_size_slot2114
  %bop2119 = sub i32 %_lhs2118, 1
  %i2120 = alloca i32
  store i32 %bop2119, i32* %i2120
  br label %__cond431

__cond431:
  %_lhs2121 = load i32* %i2120
  %bop2122 = icmp sgt i32 %_lhs2121, 0
  br i1 %bop2122, label %__body430, label %__post429

__fresh439:
  br label %__body430

__body430:
  %j2123 = alloca i32
  store i32 1, i32* %j2123
  br label %__cond434

__cond434:
  %_lhs2124 = load i32* %j2123
  %_lhs2125 = load i32* %i2120
  %bop2126 = icmp sle i32 %_lhs2124, %_lhs2125
  br i1 %bop2126, label %__body433, label %__post432

__fresh440:
  br label %__body433

__body433:
  %_lhs2127 = load i32* %j2123
  %bop2128 = sub i32 %_lhs2127, 1
  %len_ptr2129 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2116, i32 0, i32 0
  %len2130 = load i32* %len_ptr2129
  call void @oat_array_bounds_check( i32 %len2130, i32 %bop2128 )
  %array_dereferenced2131 = load { i32, [ 0 x i32 ] }** %numbers_slot2116
  %elt_ptr2132 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2131, i32 0, i32 1, i32 %bop2128
  %_lhs2133 = load i32* %elt_ptr2132
  %_lhs2134 = load i32* %j2123
  %len_ptr2135 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2116, i32 0, i32 0
  %len2136 = load i32* %len_ptr2135
  call void @oat_array_bounds_check( i32 %len2136, i32 %_lhs2134 )
  %array_dereferenced2137 = load { i32, [ 0 x i32 ] }** %numbers_slot2116
  %elt_ptr2138 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2137, i32 0, i32 1, i32 %_lhs2134
  %_lhs2139 = load i32* %elt_ptr2138
  %bop2140 = icmp sgt i32 %_lhs2133, %_lhs2139
  br i1 %bop2140, label %__then437, label %__else436

__fresh441:
  br label %__then437

__then437:
  %_lhs2141 = load i32* %j2123
  %bop2142 = sub i32 %_lhs2141, 1
  %len_ptr2143 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2116, i32 0, i32 0
  %len2144 = load i32* %len_ptr2143
  call void @oat_array_bounds_check( i32 %len2144, i32 %bop2142 )
  %array_dereferenced2145 = load { i32, [ 0 x i32 ] }** %numbers_slot2116
  %elt_ptr2146 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2145, i32 0, i32 1, i32 %bop2142
  %_lhs2147 = load i32* %elt_ptr2146
  store i32 %_lhs2147, i32* %temp2117
  %_lhs2148 = load i32* %j2123
  %bop2149 = sub i32 %_lhs2148, 1
  %len_ptr2150 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2116, i32 0, i32 0
  %len2151 = load i32* %len_ptr2150
  call void @oat_array_bounds_check( i32 %len2151, i32 %bop2149 )
  %array_dereferenced2152 = load { i32, [ 0 x i32 ] }** %numbers_slot2116
  %elt_ptr2153 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2152, i32 0, i32 1, i32 %bop2149
  %_lhs2154 = load i32* %j2123
  %len_ptr2155 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2116, i32 0, i32 0
  %len2156 = load i32* %len_ptr2155
  call void @oat_array_bounds_check( i32 %len2156, i32 %_lhs2154 )
  %array_dereferenced2157 = load { i32, [ 0 x i32 ] }** %numbers_slot2116
  %elt_ptr2158 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2157, i32 0, i32 1, i32 %_lhs2154
  %_lhs2159 = load i32* %elt_ptr2158
  store i32 %_lhs2159, i32* %elt_ptr2153
  %_lhs2160 = load i32* %j2123
  %len_ptr2161 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2116, i32 0, i32 0
  %len2162 = load i32* %len_ptr2161
  call void @oat_array_bounds_check( i32 %len2162, i32 %_lhs2160 )
  %array_dereferenced2163 = load { i32, [ 0 x i32 ] }** %numbers_slot2116
  %elt_ptr2164 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2163, i32 0, i32 1, i32 %_lhs2160
  %_lhs2165 = load i32* %temp2117
  store i32 %_lhs2165, i32* %elt_ptr2164
  br label %__merge435

__fresh442:
  br label %__else436

__else436:
  br label %__merge435

__merge435:
  %_lhs2166 = load i32* %j2123
  %bop2167 = add i32 %_lhs2166, 1
  store i32 %bop2167, i32* %j2123
  br label %__cond434

__fresh443:
  br label %__post432

__post432:
  %_lhs2168 = load i32* %i2120
  %bop2169 = sub i32 %_lhs2168, 1
  store i32 %bop2169, i32* %i2120
  br label %__cond431

__fresh444:
  br label %__post429

__post429:
  ret void
}


