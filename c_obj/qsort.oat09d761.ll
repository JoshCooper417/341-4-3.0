declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2329.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2329 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2329.str., i32 0, i32 0), align 4
@_oat_string2324.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2324 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2324.str., i32 0, i32 0), align 4
@_oat_string2320.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2320 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2320.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh492:
  ret void
}


define i32 @program (i32 %argc2306, { i32, [ 0 x i8* ] }* %argv2304){

__fresh491:
  %argc_slot2307 = alloca i32
  store i32 %argc2306, i32* %argc_slot2307
  %argv_slot2305 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2304, { i32, [ 0 x i8* ] }** %argv_slot2305
  %array_ptr2308 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2309 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2308 to { i32, [ 0 x i32 ] }* 
  %index_ptr2310 = getelementptr { i32, [ 0 x i32 ] }* %array2309, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr2310
  %index_ptr2311 = getelementptr { i32, [ 0 x i32 ] }* %array2309, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr2311
  %index_ptr2312 = getelementptr { i32, [ 0 x i32 ] }* %array2309, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr2312
  %index_ptr2313 = getelementptr { i32, [ 0 x i32 ] }* %array2309, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr2313
  %index_ptr2314 = getelementptr { i32, [ 0 x i32 ] }* %array2309, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr2314
  %index_ptr2315 = getelementptr { i32, [ 0 x i32 ] }* %array2309, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr2315
  %index_ptr2316 = getelementptr { i32, [ 0 x i32 ] }* %array2309, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr2316
  %index_ptr2317 = getelementptr { i32, [ 0 x i32 ] }* %array2309, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr2317
  %index_ptr2318 = getelementptr { i32, [ 0 x i32 ] }* %array2309, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr2318
  %a2319 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2309, { i32, [ 0 x i32 ] }** %a2319
  %strval2321 = load i8** @_oat_string2320
  call void @print_string( i8* %strval2321 )
  %_lhs2322 = load { i32, [ 0 x i32 ] }** %a2319
  %ret2323 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2322 )
  call void @print_string( i8* %ret2323 )
  %strval2325 = load i8** @_oat_string2324
  call void @print_string( i8* %strval2325 )
  %_lhs2326 = load { i32, [ 0 x i32 ] }** %a2319
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2326, i32 0, i32 8 )
  %_lhs2327 = load { i32, [ 0 x i32 ] }** %a2319
  %ret2328 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2327 )
  call void @print_string( i8* %ret2328 )
  %strval2330 = load i8** @_oat_string2329
  call void @print_string( i8* %strval2330 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a2206, i32 %l2204, i32 %r2202){

__fresh480:
  %a_slot2207 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2206, { i32, [ 0 x i32 ] }** %a_slot2207
  %l_slot2205 = alloca i32
  store i32 %l2204, i32* %l_slot2205
  %r_slot2203 = alloca i32
  store i32 %r2202, i32* %r_slot2203
  %_lhs2208 = load i32* %l_slot2205
  %len_ptr2209 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2207, i32 0, i32 0
  %len2210 = load i32* %len_ptr2209
  call void @oat_array_bounds_check( i32 %len2210, i32 %_lhs2208 )
  %array_dereferenced2211 = load { i32, [ 0 x i32 ] }** %a_slot2207
  %elt_ptr2212 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2211, i32 0, i32 1, i32 %_lhs2208
  %_lhs2213 = load i32* %elt_ptr2212
  %pivot2214 = alloca i32
  store i32 %_lhs2213, i32* %pivot2214
  %_lhs2215 = load i32* %l_slot2205
  %i2216 = alloca i32
  store i32 %_lhs2215, i32* %i2216
  %_lhs2217 = load i32* %r_slot2203
  %bop2218 = add i32 %_lhs2217, 1
  %j2219 = alloca i32
  store i32 %bop2218, i32* %j2219
  %t2220 = alloca i32
  store i32 0, i32* %t2220
  %done2221 = alloca i32
  store i32 0, i32* %done2221
  br label %__cond467

__cond467:
  %_lhs2222 = load i32* %done2221
  %bop2223 = icmp eq i32 %_lhs2222, 0
  br i1 %bop2223, label %__body466, label %__post465

__fresh481:
  br label %__body466

__body466:
  %_lhs2224 = load i32* %i2216
  %bop2225 = add i32 %_lhs2224, 1
  store i32 %bop2225, i32* %i2216
  br label %__cond470

__cond470:
  %_lhs2226 = load i32* %i2216
  %len_ptr2227 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2207, i32 0, i32 0
  %len2228 = load i32* %len_ptr2227
  call void @oat_array_bounds_check( i32 %len2228, i32 %_lhs2226 )
  %array_dereferenced2229 = load { i32, [ 0 x i32 ] }** %a_slot2207
  %elt_ptr2230 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2229, i32 0, i32 1, i32 %_lhs2226
  %_lhs2231 = load i32* %elt_ptr2230
  %_lhs2232 = load i32* %pivot2214
  %bop2233 = icmp sle i32 %_lhs2231, %_lhs2232
  %_lhs2234 = load i32* %i2216
  %_lhs2235 = load i32* %r_slot2203
  %bop2236 = icmp sle i32 %_lhs2234, %_lhs2235
  %bop2237 = and i1 %bop2233, %bop2236
  br i1 %bop2237, label %__body469, label %__post468

__fresh482:
  br label %__body469

__body469:
  %_lhs2238 = load i32* %i2216
  %bop2239 = add i32 %_lhs2238, 1
  store i32 %bop2239, i32* %i2216
  br label %__cond470

__fresh483:
  br label %__post468

__post468:
  %_lhs2240 = load i32* %j2219
  %bop2241 = sub i32 %_lhs2240, 1
  store i32 %bop2241, i32* %j2219
  br label %__cond473

__cond473:
  %_lhs2242 = load i32* %j2219
  %len_ptr2243 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2207, i32 0, i32 0
  %len2244 = load i32* %len_ptr2243
  call void @oat_array_bounds_check( i32 %len2244, i32 %_lhs2242 )
  %array_dereferenced2245 = load { i32, [ 0 x i32 ] }** %a_slot2207
  %elt_ptr2246 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2245, i32 0, i32 1, i32 %_lhs2242
  %_lhs2247 = load i32* %elt_ptr2246
  %_lhs2248 = load i32* %pivot2214
  %bop2249 = icmp sgt i32 %_lhs2247, %_lhs2248
  br i1 %bop2249, label %__body472, label %__post471

__fresh484:
  br label %__body472

__body472:
  %_lhs2250 = load i32* %j2219
  %bop2251 = sub i32 %_lhs2250, 1
  store i32 %bop2251, i32* %j2219
  br label %__cond473

__fresh485:
  br label %__post471

__post471:
  %_lhs2252 = load i32* %i2216
  %_lhs2253 = load i32* %j2219
  %bop2254 = icmp sge i32 %_lhs2252, %_lhs2253
  br i1 %bop2254, label %__then476, label %__else475

__fresh486:
  br label %__then476

__then476:
  store i32 1, i32* %done2221
  br label %__merge474

__fresh487:
  br label %__else475

__else475:
  br label %__merge474

__merge474:
  %_lhs2255 = load i32* %done2221
  %bop2256 = icmp eq i32 %_lhs2255, 0
  br i1 %bop2256, label %__then479, label %__else478

__fresh488:
  br label %__then479

__then479:
  %_lhs2257 = load i32* %i2216
  %len_ptr2258 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2207, i32 0, i32 0
  %len2259 = load i32* %len_ptr2258
  call void @oat_array_bounds_check( i32 %len2259, i32 %_lhs2257 )
  %array_dereferenced2260 = load { i32, [ 0 x i32 ] }** %a_slot2207
  %elt_ptr2261 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2260, i32 0, i32 1, i32 %_lhs2257
  %_lhs2262 = load i32* %elt_ptr2261
  store i32 %_lhs2262, i32* %t2220
  %_lhs2263 = load i32* %i2216
  %len_ptr2264 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2207, i32 0, i32 0
  %len2265 = load i32* %len_ptr2264
  call void @oat_array_bounds_check( i32 %len2265, i32 %_lhs2263 )
  %array_dereferenced2266 = load { i32, [ 0 x i32 ] }** %a_slot2207
  %elt_ptr2267 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2266, i32 0, i32 1, i32 %_lhs2263
  %_lhs2268 = load i32* %j2219
  %len_ptr2269 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2207, i32 0, i32 0
  %len2270 = load i32* %len_ptr2269
  call void @oat_array_bounds_check( i32 %len2270, i32 %_lhs2268 )
  %array_dereferenced2271 = load { i32, [ 0 x i32 ] }** %a_slot2207
  %elt_ptr2272 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2271, i32 0, i32 1, i32 %_lhs2268
  %_lhs2273 = load i32* %elt_ptr2272
  store i32 %_lhs2273, i32* %elt_ptr2267
  %_lhs2274 = load i32* %j2219
  %len_ptr2275 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2207, i32 0, i32 0
  %len2276 = load i32* %len_ptr2275
  call void @oat_array_bounds_check( i32 %len2276, i32 %_lhs2274 )
  %array_dereferenced2277 = load { i32, [ 0 x i32 ] }** %a_slot2207
  %elt_ptr2278 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2277, i32 0, i32 1, i32 %_lhs2274
  %_lhs2279 = load i32* %t2220
  store i32 %_lhs2279, i32* %elt_ptr2278
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
  %_lhs2280 = load i32* %l_slot2205
  %len_ptr2281 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2207, i32 0, i32 0
  %len2282 = load i32* %len_ptr2281
  call void @oat_array_bounds_check( i32 %len2282, i32 %_lhs2280 )
  %array_dereferenced2283 = load { i32, [ 0 x i32 ] }** %a_slot2207
  %elt_ptr2284 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2283, i32 0, i32 1, i32 %_lhs2280
  %_lhs2285 = load i32* %elt_ptr2284
  store i32 %_lhs2285, i32* %t2220
  %_lhs2286 = load i32* %l_slot2205
  %len_ptr2287 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2207, i32 0, i32 0
  %len2288 = load i32* %len_ptr2287
  call void @oat_array_bounds_check( i32 %len2288, i32 %_lhs2286 )
  %array_dereferenced2289 = load { i32, [ 0 x i32 ] }** %a_slot2207
  %elt_ptr2290 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2289, i32 0, i32 1, i32 %_lhs2286
  %_lhs2291 = load i32* %j2219
  %len_ptr2292 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2207, i32 0, i32 0
  %len2293 = load i32* %len_ptr2292
  call void @oat_array_bounds_check( i32 %len2293, i32 %_lhs2291 )
  %array_dereferenced2294 = load { i32, [ 0 x i32 ] }** %a_slot2207
  %elt_ptr2295 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2294, i32 0, i32 1, i32 %_lhs2291
  %_lhs2296 = load i32* %elt_ptr2295
  store i32 %_lhs2296, i32* %elt_ptr2290
  %_lhs2297 = load i32* %j2219
  %len_ptr2298 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2207, i32 0, i32 0
  %len2299 = load i32* %len_ptr2298
  call void @oat_array_bounds_check( i32 %len2299, i32 %_lhs2297 )
  %array_dereferenced2300 = load { i32, [ 0 x i32 ] }** %a_slot2207
  %elt_ptr2301 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2300, i32 0, i32 1, i32 %_lhs2297
  %_lhs2302 = load i32* %t2220
  store i32 %_lhs2302, i32* %elt_ptr2301
  %_lhs2303 = load i32* %j2219
  ret i32 %_lhs2303
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a2184, i32 %l2182, i32 %r2180){

__fresh462:
  %a_slot2185 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2184, { i32, [ 0 x i32 ] }** %a_slot2185
  %l_slot2183 = alloca i32
  store i32 %l2182, i32* %l_slot2183
  %r_slot2181 = alloca i32
  store i32 %r2180, i32* %r_slot2181
  %j2186 = alloca i32
  store i32 0, i32* %j2186
  %_lhs2187 = load i32* %l_slot2183
  %_lhs2188 = load i32* %r_slot2181
  %bop2189 = icmp slt i32 %_lhs2187, %_lhs2188
  br i1 %bop2189, label %__then461, label %__else460

__fresh463:
  br label %__then461

__then461:
  %_lhs2192 = load i32* %r_slot2181
  %_lhs2191 = load i32* %l_slot2183
  %_lhs2190 = load { i32, [ 0 x i32 ] }** %a_slot2185
  %ret2193 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs2190, i32 %_lhs2191, i32 %_lhs2192 )
  store i32 %ret2193, i32* %j2186
  %_lhs2196 = load i32* %j2186
  %bop2197 = sub i32 %_lhs2196, 1
  %_lhs2195 = load i32* %l_slot2183
  %_lhs2194 = load { i32, [ 0 x i32 ] }** %a_slot2185
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2194, i32 %_lhs2195, i32 %bop2197 )
  %_lhs2201 = load i32* %r_slot2181
  %_lhs2199 = load i32* %j2186
  %bop2200 = add i32 %_lhs2199, 1
  %_lhs2198 = load { i32, [ 0 x i32 ] }** %a_slot2185
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2198, i32 %bop2200, i32 %_lhs2201 )
  br label %__merge459

__fresh464:
  br label %__else460

__else460:
  br label %__merge459

__merge459:
  ret void
}


