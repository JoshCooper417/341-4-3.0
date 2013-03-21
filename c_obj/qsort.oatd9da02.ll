declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2277.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2277 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2277.str., i32 0, i32 0), align 4
@_oat_string2272.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2272 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2272.str., i32 0, i32 0), align 4
@_oat_string2268.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2268 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2268.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh394:
  ret void
}


define i32 @program (i32 %argc2254, { i32, [ 0 x i8* ] }* %argv2252){

__fresh393:
  %argc_slot2255 = alloca i32
  store i32 %argc2254, i32* %argc_slot2255
  %argv_slot2253 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2252, { i32, [ 0 x i8* ] }** %argv_slot2253
  %array_ptr2256 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2257 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2256 to { i32, [ 0 x i32 ] }* 
  %index_ptr2258 = getelementptr { i32, [ 0 x i32 ] }* %array2257, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr2258
  %index_ptr2259 = getelementptr { i32, [ 0 x i32 ] }* %array2257, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr2259
  %index_ptr2260 = getelementptr { i32, [ 0 x i32 ] }* %array2257, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr2260
  %index_ptr2261 = getelementptr { i32, [ 0 x i32 ] }* %array2257, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr2261
  %index_ptr2262 = getelementptr { i32, [ 0 x i32 ] }* %array2257, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr2262
  %index_ptr2263 = getelementptr { i32, [ 0 x i32 ] }* %array2257, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr2263
  %index_ptr2264 = getelementptr { i32, [ 0 x i32 ] }* %array2257, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr2264
  %index_ptr2265 = getelementptr { i32, [ 0 x i32 ] }* %array2257, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr2265
  %index_ptr2266 = getelementptr { i32, [ 0 x i32 ] }* %array2257, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr2266
  %a2267 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2257, { i32, [ 0 x i32 ] }** %a2267
  %strval2269 = load i8** @_oat_string2268
  call void @print_string( i8* %strval2269 )
  %_lhs2270 = load { i32, [ 0 x i32 ] }** %a2267
  %ret2271 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2270 )
  call void @print_string( i8* %ret2271 )
  %strval2273 = load i8** @_oat_string2272
  call void @print_string( i8* %strval2273 )
  %_lhs2274 = load { i32, [ 0 x i32 ] }** %a2267
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2274, i32 0, i32 8 )
  %_lhs2275 = load { i32, [ 0 x i32 ] }** %a2267
  %ret2276 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2275 )
  call void @print_string( i8* %ret2276 )
  %strval2278 = load i8** @_oat_string2277
  call void @print_string( i8* %strval2278 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a2154, i32 %l2152, i32 %r2150){

__fresh382:
  %a_slot2155 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2154, { i32, [ 0 x i32 ] }** %a_slot2155
  %l_slot2153 = alloca i32
  store i32 %l2152, i32* %l_slot2153
  %r_slot2151 = alloca i32
  store i32 %r2150, i32* %r_slot2151
  %_lhs2156 = load i32* %l_slot2153
  %len_ptr2157 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2155, i32 0, i32 0
  %len2158 = load i32* %len_ptr2157
  call void @oat_array_bounds_check( i32 %len2158, i32 %_lhs2156 )
  %array_dereferenced2159 = load { i32, [ 0 x i32 ] }** %a_slot2155
  %elt_ptr2160 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2159, i32 0, i32 1, i32 %_lhs2156
  %_lhs2161 = load i32* %elt_ptr2160
  %pivot2162 = alloca i32
  store i32 %_lhs2161, i32* %pivot2162
  %_lhs2163 = load i32* %l_slot2153
  %i2164 = alloca i32
  store i32 %_lhs2163, i32* %i2164
  %_lhs2165 = load i32* %r_slot2151
  %bop2166 = add i32 %_lhs2165, 1
  %j2167 = alloca i32
  store i32 %bop2166, i32* %j2167
  %t2168 = alloca i32
  store i32 0, i32* %t2168
  %done2169 = alloca i32
  store i32 0, i32* %done2169
  br label %__cond369

__cond369:
  %_lhs2170 = load i32* %done2169
  %bop2171 = icmp eq i32 %_lhs2170, 0
  br i1 %bop2171, label %__body368, label %__post367

__fresh383:
  br label %__body368

__body368:
  %_lhs2172 = load i32* %i2164
  %bop2173 = add i32 %_lhs2172, 1
  store i32 %bop2173, i32* %i2164
  br label %__cond372

__cond372:
  %_lhs2174 = load i32* %i2164
  %len_ptr2175 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2155, i32 0, i32 0
  %len2176 = load i32* %len_ptr2175
  call void @oat_array_bounds_check( i32 %len2176, i32 %_lhs2174 )
  %array_dereferenced2177 = load { i32, [ 0 x i32 ] }** %a_slot2155
  %elt_ptr2178 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2177, i32 0, i32 1, i32 %_lhs2174
  %_lhs2179 = load i32* %elt_ptr2178
  %_lhs2180 = load i32* %pivot2162
  %bop2181 = icmp sle i32 %_lhs2179, %_lhs2180
  %_lhs2182 = load i32* %i2164
  %_lhs2183 = load i32* %r_slot2151
  %bop2184 = icmp sle i32 %_lhs2182, %_lhs2183
  %bop2185 = and i1 %bop2181, %bop2184
  br i1 %bop2185, label %__body371, label %__post370

__fresh384:
  br label %__body371

__body371:
  %_lhs2186 = load i32* %i2164
  %bop2187 = add i32 %_lhs2186, 1
  store i32 %bop2187, i32* %i2164
  br label %__cond372

__fresh385:
  br label %__post370

__post370:
  %_lhs2188 = load i32* %j2167
  %bop2189 = sub i32 %_lhs2188, 1
  store i32 %bop2189, i32* %j2167
  br label %__cond375

__cond375:
  %_lhs2190 = load i32* %j2167
  %len_ptr2191 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2155, i32 0, i32 0
  %len2192 = load i32* %len_ptr2191
  call void @oat_array_bounds_check( i32 %len2192, i32 %_lhs2190 )
  %array_dereferenced2193 = load { i32, [ 0 x i32 ] }** %a_slot2155
  %elt_ptr2194 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2193, i32 0, i32 1, i32 %_lhs2190
  %_lhs2195 = load i32* %elt_ptr2194
  %_lhs2196 = load i32* %pivot2162
  %bop2197 = icmp sgt i32 %_lhs2195, %_lhs2196
  br i1 %bop2197, label %__body374, label %__post373

__fresh386:
  br label %__body374

__body374:
  %_lhs2198 = load i32* %j2167
  %bop2199 = sub i32 %_lhs2198, 1
  store i32 %bop2199, i32* %j2167
  br label %__cond375

__fresh387:
  br label %__post373

__post373:
  %_lhs2200 = load i32* %i2164
  %_lhs2201 = load i32* %j2167
  %bop2202 = icmp sge i32 %_lhs2200, %_lhs2201
  br i1 %bop2202, label %__then378, label %__else377

__fresh388:
  br label %__then378

__then378:
  store i32 1, i32* %done2169
  br label %__merge376

__fresh389:
  br label %__else377

__else377:
  br label %__merge376

__merge376:
  %_lhs2203 = load i32* %done2169
  %bop2204 = icmp eq i32 %_lhs2203, 0
  br i1 %bop2204, label %__then381, label %__else380

__fresh390:
  br label %__then381

__then381:
  %_lhs2205 = load i32* %i2164
  %len_ptr2206 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2155, i32 0, i32 0
  %len2207 = load i32* %len_ptr2206
  call void @oat_array_bounds_check( i32 %len2207, i32 %_lhs2205 )
  %array_dereferenced2208 = load { i32, [ 0 x i32 ] }** %a_slot2155
  %elt_ptr2209 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2208, i32 0, i32 1, i32 %_lhs2205
  %_lhs2210 = load i32* %elt_ptr2209
  store i32 %_lhs2210, i32* %t2168
  %_lhs2211 = load i32* %i2164
  %len_ptr2212 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2155, i32 0, i32 0
  %len2213 = load i32* %len_ptr2212
  call void @oat_array_bounds_check( i32 %len2213, i32 %_lhs2211 )
  %array_dereferenced2214 = load { i32, [ 0 x i32 ] }** %a_slot2155
  %elt_ptr2215 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2214, i32 0, i32 1, i32 %_lhs2211
  %_lhs2216 = load i32* %j2167
  %len_ptr2217 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2155, i32 0, i32 0
  %len2218 = load i32* %len_ptr2217
  call void @oat_array_bounds_check( i32 %len2218, i32 %_lhs2216 )
  %array_dereferenced2219 = load { i32, [ 0 x i32 ] }** %a_slot2155
  %elt_ptr2220 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2219, i32 0, i32 1, i32 %_lhs2216
  %_lhs2221 = load i32* %elt_ptr2220
  store i32 %_lhs2221, i32* %elt_ptr2215
  %_lhs2222 = load i32* %j2167
  %len_ptr2223 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2155, i32 0, i32 0
  %len2224 = load i32* %len_ptr2223
  call void @oat_array_bounds_check( i32 %len2224, i32 %_lhs2222 )
  %array_dereferenced2225 = load { i32, [ 0 x i32 ] }** %a_slot2155
  %elt_ptr2226 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2225, i32 0, i32 1, i32 %_lhs2222
  %_lhs2227 = load i32* %t2168
  store i32 %_lhs2227, i32* %elt_ptr2226
  br label %__merge379

__fresh391:
  br label %__else380

__else380:
  br label %__merge379

__merge379:
  br label %__cond369

__fresh392:
  br label %__post367

__post367:
  %_lhs2228 = load i32* %l_slot2153
  %len_ptr2229 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2155, i32 0, i32 0
  %len2230 = load i32* %len_ptr2229
  call void @oat_array_bounds_check( i32 %len2230, i32 %_lhs2228 )
  %array_dereferenced2231 = load { i32, [ 0 x i32 ] }** %a_slot2155
  %elt_ptr2232 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2231, i32 0, i32 1, i32 %_lhs2228
  %_lhs2233 = load i32* %elt_ptr2232
  store i32 %_lhs2233, i32* %t2168
  %_lhs2234 = load i32* %l_slot2153
  %len_ptr2235 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2155, i32 0, i32 0
  %len2236 = load i32* %len_ptr2235
  call void @oat_array_bounds_check( i32 %len2236, i32 %_lhs2234 )
  %array_dereferenced2237 = load { i32, [ 0 x i32 ] }** %a_slot2155
  %elt_ptr2238 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2237, i32 0, i32 1, i32 %_lhs2234
  %_lhs2239 = load i32* %j2167
  %len_ptr2240 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2155, i32 0, i32 0
  %len2241 = load i32* %len_ptr2240
  call void @oat_array_bounds_check( i32 %len2241, i32 %_lhs2239 )
  %array_dereferenced2242 = load { i32, [ 0 x i32 ] }** %a_slot2155
  %elt_ptr2243 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2242, i32 0, i32 1, i32 %_lhs2239
  %_lhs2244 = load i32* %elt_ptr2243
  store i32 %_lhs2244, i32* %elt_ptr2238
  %_lhs2245 = load i32* %j2167
  %len_ptr2246 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2155, i32 0, i32 0
  %len2247 = load i32* %len_ptr2246
  call void @oat_array_bounds_check( i32 %len2247, i32 %_lhs2245 )
  %array_dereferenced2248 = load { i32, [ 0 x i32 ] }** %a_slot2155
  %elt_ptr2249 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2248, i32 0, i32 1, i32 %_lhs2245
  %_lhs2250 = load i32* %t2168
  store i32 %_lhs2250, i32* %elt_ptr2249
  %_lhs2251 = load i32* %j2167
  ret i32 %_lhs2251
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a2132, i32 %l2130, i32 %r2128){

__fresh364:
  %a_slot2133 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2132, { i32, [ 0 x i32 ] }** %a_slot2133
  %l_slot2131 = alloca i32
  store i32 %l2130, i32* %l_slot2131
  %r_slot2129 = alloca i32
  store i32 %r2128, i32* %r_slot2129
  %j2134 = alloca i32
  store i32 0, i32* %j2134
  %_lhs2135 = load i32* %l_slot2131
  %_lhs2136 = load i32* %r_slot2129
  %bop2137 = icmp slt i32 %_lhs2135, %_lhs2136
  br i1 %bop2137, label %__then363, label %__else362

__fresh365:
  br label %__then363

__then363:
  %_lhs2140 = load i32* %r_slot2129
  %_lhs2139 = load i32* %l_slot2131
  %_lhs2138 = load { i32, [ 0 x i32 ] }** %a_slot2133
  %ret2141 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs2138, i32 %_lhs2139, i32 %_lhs2140 )
  store i32 %ret2141, i32* %j2134
  %_lhs2144 = load i32* %j2134
  %bop2145 = sub i32 %_lhs2144, 1
  %_lhs2143 = load i32* %l_slot2131
  %_lhs2142 = load { i32, [ 0 x i32 ] }** %a_slot2133
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2142, i32 %_lhs2143, i32 %bop2145 )
  %_lhs2149 = load i32* %r_slot2129
  %_lhs2147 = load i32* %j2134
  %bop2148 = add i32 %_lhs2147, 1
  %_lhs2146 = load { i32, [ 0 x i32 ] }** %a_slot2133
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2146, i32 %bop2148, i32 %_lhs2149 )
  br label %__merge361

__fresh366:
  br label %__else362

__else362:
  br label %__merge361

__merge361:
  ret void
}


