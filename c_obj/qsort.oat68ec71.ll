declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2289.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2289 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2289.str., i32 0, i32 0), align 4
@_oat_string2284.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2284 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2284.str., i32 0, i32 0), align 4
@_oat_string2280.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2280 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2280.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh492:
  ret void
}


define i32 @program (i32 %argc2266, { i32, [ 0 x i8* ] }* %argv2264){

__fresh491:
  %argc_slot2267 = alloca i32
  store i32 %argc2266, i32* %argc_slot2267
  %argv_slot2265 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2264, { i32, [ 0 x i8* ] }** %argv_slot2265
  %array_ptr2268 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2269 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2268 to { i32, [ 0 x i32 ] }* 
  %index_ptr2270 = getelementptr { i32, [ 0 x i32 ] }* %array2269, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr2270
  %index_ptr2271 = getelementptr { i32, [ 0 x i32 ] }* %array2269, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr2271
  %index_ptr2272 = getelementptr { i32, [ 0 x i32 ] }* %array2269, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr2272
  %index_ptr2273 = getelementptr { i32, [ 0 x i32 ] }* %array2269, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr2273
  %index_ptr2274 = getelementptr { i32, [ 0 x i32 ] }* %array2269, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr2274
  %index_ptr2275 = getelementptr { i32, [ 0 x i32 ] }* %array2269, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr2275
  %index_ptr2276 = getelementptr { i32, [ 0 x i32 ] }* %array2269, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr2276
  %index_ptr2277 = getelementptr { i32, [ 0 x i32 ] }* %array2269, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr2277
  %index_ptr2278 = getelementptr { i32, [ 0 x i32 ] }* %array2269, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr2278
  %a2279 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2269, { i32, [ 0 x i32 ] }** %a2279
  %strval2281 = load i8** @_oat_string2280
  call void @print_string( i8* %strval2281 )
  %_lhs2282 = load { i32, [ 0 x i32 ] }** %a2279
  %ret2283 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2282 )
  call void @print_string( i8* %ret2283 )
  %strval2285 = load i8** @_oat_string2284
  call void @print_string( i8* %strval2285 )
  %_lhs2286 = load { i32, [ 0 x i32 ] }** %a2279
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2286, i32 0, i32 8 )
  %_lhs2287 = load { i32, [ 0 x i32 ] }** %a2279
  %ret2288 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2287 )
  call void @print_string( i8* %ret2288 )
  %strval2290 = load i8** @_oat_string2289
  call void @print_string( i8* %strval2290 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a2166, i32 %l2164, i32 %r2162){

__fresh480:
  %a_slot2167 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2166, { i32, [ 0 x i32 ] }** %a_slot2167
  %l_slot2165 = alloca i32
  store i32 %l2164, i32* %l_slot2165
  %r_slot2163 = alloca i32
  store i32 %r2162, i32* %r_slot2163
  %_lhs2168 = load i32* %l_slot2165
  %len_ptr2169 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2167, i32 0, i32 0
  %len2170 = load i32* %len_ptr2169
  call void @oat_array_bounds_check( i32 %len2170, i32 %_lhs2168 )
  %array_dereferenced2171 = load { i32, [ 0 x i32 ] }** %a_slot2167
  %elt_ptr2172 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2171, i32 0, i32 1, i32 %_lhs2168
  %_lhs2173 = load i32* %elt_ptr2172
  %pivot2174 = alloca i32
  store i32 %_lhs2173, i32* %pivot2174
  %_lhs2175 = load i32* %l_slot2165
  %i2176 = alloca i32
  store i32 %_lhs2175, i32* %i2176
  %_lhs2177 = load i32* %r_slot2163
  %bop2178 = add i32 %_lhs2177, 1
  %j2179 = alloca i32
  store i32 %bop2178, i32* %j2179
  %t2180 = alloca i32
  store i32 0, i32* %t2180
  %done2181 = alloca i32
  store i32 0, i32* %done2181
  br label %__cond467

__cond467:
  %_lhs2182 = load i32* %done2181
  %bop2183 = icmp eq i32 %_lhs2182, 0
  br i1 %bop2183, label %__body466, label %__post465

__fresh481:
  br label %__body466

__body466:
  %_lhs2184 = load i32* %i2176
  %bop2185 = add i32 %_lhs2184, 1
  store i32 %bop2185, i32* %i2176
  br label %__cond470

__cond470:
  %_lhs2186 = load i32* %i2176
  %len_ptr2187 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2167, i32 0, i32 0
  %len2188 = load i32* %len_ptr2187
  call void @oat_array_bounds_check( i32 %len2188, i32 %_lhs2186 )
  %array_dereferenced2189 = load { i32, [ 0 x i32 ] }** %a_slot2167
  %elt_ptr2190 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2189, i32 0, i32 1, i32 %_lhs2186
  %_lhs2191 = load i32* %elt_ptr2190
  %_lhs2192 = load i32* %pivot2174
  %bop2193 = icmp sle i32 %_lhs2191, %_lhs2192
  %_lhs2194 = load i32* %i2176
  %_lhs2195 = load i32* %r_slot2163
  %bop2196 = icmp sle i32 %_lhs2194, %_lhs2195
  %bop2197 = and i1 %bop2193, %bop2196
  br i1 %bop2197, label %__body469, label %__post468

__fresh482:
  br label %__body469

__body469:
  %_lhs2198 = load i32* %i2176
  %bop2199 = add i32 %_lhs2198, 1
  store i32 %bop2199, i32* %i2176
  br label %__cond470

__fresh483:
  br label %__post468

__post468:
  %_lhs2200 = load i32* %j2179
  %bop2201 = sub i32 %_lhs2200, 1
  store i32 %bop2201, i32* %j2179
  br label %__cond473

__cond473:
  %_lhs2202 = load i32* %j2179
  %len_ptr2203 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2167, i32 0, i32 0
  %len2204 = load i32* %len_ptr2203
  call void @oat_array_bounds_check( i32 %len2204, i32 %_lhs2202 )
  %array_dereferenced2205 = load { i32, [ 0 x i32 ] }** %a_slot2167
  %elt_ptr2206 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2205, i32 0, i32 1, i32 %_lhs2202
  %_lhs2207 = load i32* %elt_ptr2206
  %_lhs2208 = load i32* %pivot2174
  %bop2209 = icmp sgt i32 %_lhs2207, %_lhs2208
  br i1 %bop2209, label %__body472, label %__post471

__fresh484:
  br label %__body472

__body472:
  %_lhs2210 = load i32* %j2179
  %bop2211 = sub i32 %_lhs2210, 1
  store i32 %bop2211, i32* %j2179
  br label %__cond473

__fresh485:
  br label %__post471

__post471:
  %_lhs2212 = load i32* %i2176
  %_lhs2213 = load i32* %j2179
  %bop2214 = icmp sge i32 %_lhs2212, %_lhs2213
  br i1 %bop2214, label %__then476, label %__else475

__fresh486:
  br label %__then476

__then476:
  store i32 1, i32* %done2181
  br label %__merge474

__fresh487:
  br label %__else475

__else475:
  br label %__merge474

__merge474:
  %_lhs2215 = load i32* %done2181
  %bop2216 = icmp eq i32 %_lhs2215, 0
  br i1 %bop2216, label %__then479, label %__else478

__fresh488:
  br label %__then479

__then479:
  %_lhs2217 = load i32* %i2176
  %len_ptr2218 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2167, i32 0, i32 0
  %len2219 = load i32* %len_ptr2218
  call void @oat_array_bounds_check( i32 %len2219, i32 %_lhs2217 )
  %array_dereferenced2220 = load { i32, [ 0 x i32 ] }** %a_slot2167
  %elt_ptr2221 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2220, i32 0, i32 1, i32 %_lhs2217
  %_lhs2222 = load i32* %elt_ptr2221
  store i32 %_lhs2222, i32* %t2180
  %_lhs2223 = load i32* %i2176
  %len_ptr2224 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2167, i32 0, i32 0
  %len2225 = load i32* %len_ptr2224
  call void @oat_array_bounds_check( i32 %len2225, i32 %_lhs2223 )
  %array_dereferenced2226 = load { i32, [ 0 x i32 ] }** %a_slot2167
  %elt_ptr2227 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2226, i32 0, i32 1, i32 %_lhs2223
  %_lhs2228 = load i32* %j2179
  %len_ptr2229 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2167, i32 0, i32 0
  %len2230 = load i32* %len_ptr2229
  call void @oat_array_bounds_check( i32 %len2230, i32 %_lhs2228 )
  %array_dereferenced2231 = load { i32, [ 0 x i32 ] }** %a_slot2167
  %elt_ptr2232 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2231, i32 0, i32 1, i32 %_lhs2228
  %_lhs2233 = load i32* %elt_ptr2232
  store i32 %_lhs2233, i32* %elt_ptr2227
  %_lhs2234 = load i32* %j2179
  %len_ptr2235 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2167, i32 0, i32 0
  %len2236 = load i32* %len_ptr2235
  call void @oat_array_bounds_check( i32 %len2236, i32 %_lhs2234 )
  %array_dereferenced2237 = load { i32, [ 0 x i32 ] }** %a_slot2167
  %elt_ptr2238 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2237, i32 0, i32 1, i32 %_lhs2234
  %_lhs2239 = load i32* %t2180
  store i32 %_lhs2239, i32* %elt_ptr2238
  br label %__merge477

__fresh489:
  br label %__else478

__else478:
  br label %__merge477

__merge477:
  br label %__cond467

__fresh490:
  br label %__post465

__post465:
  %_lhs2240 = load i32* %l_slot2165
  %len_ptr2241 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2167, i32 0, i32 0
  %len2242 = load i32* %len_ptr2241
  call void @oat_array_bounds_check( i32 %len2242, i32 %_lhs2240 )
  %array_dereferenced2243 = load { i32, [ 0 x i32 ] }** %a_slot2167
  %elt_ptr2244 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2243, i32 0, i32 1, i32 %_lhs2240
  %_lhs2245 = load i32* %elt_ptr2244
  store i32 %_lhs2245, i32* %t2180
  %_lhs2246 = load i32* %l_slot2165
  %len_ptr2247 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2167, i32 0, i32 0
  %len2248 = load i32* %len_ptr2247
  call void @oat_array_bounds_check( i32 %len2248, i32 %_lhs2246 )
  %array_dereferenced2249 = load { i32, [ 0 x i32 ] }** %a_slot2167
  %elt_ptr2250 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2249, i32 0, i32 1, i32 %_lhs2246
  %_lhs2251 = load i32* %j2179
  %len_ptr2252 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2167, i32 0, i32 0
  %len2253 = load i32* %len_ptr2252
  call void @oat_array_bounds_check( i32 %len2253, i32 %_lhs2251 )
  %array_dereferenced2254 = load { i32, [ 0 x i32 ] }** %a_slot2167
  %elt_ptr2255 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2254, i32 0, i32 1, i32 %_lhs2251
  %_lhs2256 = load i32* %elt_ptr2255
  store i32 %_lhs2256, i32* %elt_ptr2250
  %_lhs2257 = load i32* %j2179
  %len_ptr2258 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2167, i32 0, i32 0
  %len2259 = load i32* %len_ptr2258
  call void @oat_array_bounds_check( i32 %len2259, i32 %_lhs2257 )
  %array_dereferenced2260 = load { i32, [ 0 x i32 ] }** %a_slot2167
  %elt_ptr2261 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2260, i32 0, i32 1, i32 %_lhs2257
  %_lhs2262 = load i32* %t2180
  store i32 %_lhs2262, i32* %elt_ptr2261
  %_lhs2263 = load i32* %j2179
  ret i32 %_lhs2263
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a2144, i32 %l2142, i32 %r2140){

__fresh462:
  %a_slot2145 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2144, { i32, [ 0 x i32 ] }** %a_slot2145
  %l_slot2143 = alloca i32
  store i32 %l2142, i32* %l_slot2143
  %r_slot2141 = alloca i32
  store i32 %r2140, i32* %r_slot2141
  %j2146 = alloca i32
  store i32 0, i32* %j2146
  %_lhs2147 = load i32* %l_slot2143
  %_lhs2148 = load i32* %r_slot2141
  %bop2149 = icmp slt i32 %_lhs2147, %_lhs2148
  br i1 %bop2149, label %__then461, label %__else460

__fresh463:
  br label %__then461

__then461:
  %_lhs2152 = load i32* %r_slot2141
  %_lhs2151 = load i32* %l_slot2143
  %_lhs2150 = load { i32, [ 0 x i32 ] }** %a_slot2145
  %ret2153 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs2150, i32 %_lhs2151, i32 %_lhs2152 )
  store i32 %ret2153, i32* %j2146
  %_lhs2156 = load i32* %j2146
  %bop2157 = sub i32 %_lhs2156, 1
  %_lhs2155 = load i32* %l_slot2143
  %_lhs2154 = load { i32, [ 0 x i32 ] }** %a_slot2145
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2154, i32 %_lhs2155, i32 %bop2157 )
  %_lhs2161 = load i32* %r_slot2141
  %_lhs2159 = load i32* %j2146
  %bop2160 = add i32 %_lhs2159, 1
  %_lhs2158 = load { i32, [ 0 x i32 ] }** %a_slot2145
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2158, i32 %bop2160, i32 %_lhs2161 )
  br label %__merge459

__fresh464:
  br label %__else460

__else460:
  br label %__merge459

__merge459:
  ret void
}


