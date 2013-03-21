declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2232.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2232 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2232.str., i32 0, i32 0), align 4
@_oat_string2228.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2228 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2228.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh871:
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2268, i32 %low2266, i32 %high2264, i32 %mid2262){

__fresh856:
  %a_slot2269 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2268, { i32, [ 0 x i32 ] }** %a_slot2269
  %low_slot2267 = alloca i32
  store i32 %low2266, i32* %low_slot2267
  %high_slot2265 = alloca i32
  store i32 %high2264, i32* %high_slot2265
  %mid_slot2263 = alloca i32
  store i32 %mid2262, i32* %mid_slot2263
  %i2270 = alloca i32
  store i32 0, i32* %i2270
  %j2271 = alloca i32
  store i32 0, i32* %j2271
  %k2272 = alloca i32
  store i32 0, i32* %k2272
  %array_ptr2274 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2275 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2274 to { i32, [ 0 x i32 ] }* 
  %i2279 = alloca i32
  store i32 1, i32* %i2279
  %i2273 = load i32* %i2279
  br label %__check839

__fresh857:
  br label %__check839

__check839:
  br label %__end838

__fresh858:
  %cmp_op2277 = icmp slt i32 %i2273, 50
  br i32 %cmp_op2277, label %__body840, label %__end838

__fresh859:
  br label %__body840

__body840:
  %elem_ptr2276 = getelementptr { i32, [ 0 x i32 ] }* %array2275, i32 0, i32 1, i32 %i2273
  store i32 0, i32* %elem_ptr2276
  %index_op2278 = add i32 %i2273, 1
  br label %__check839

__fresh860:
  br label %__end838

__end838:
  %c2281 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2275, { i32, [ 0 x i32 ] }** %c2281
  %_lhs2282 = load i32* %low_slot2267
  store i32 %_lhs2282, i32* %i2270
  %_lhs2283 = load i32* %mid_slot2263
  %bop2284 = add i32 %_lhs2283, 1
  store i32 %bop2284, i32* %j2271
  %_lhs2285 = load i32* %low_slot2267
  store i32 %_lhs2285, i32* %k2272
  br label %__cond843

__cond843:
  %_lhs2286 = load i32* %i2270
  %_lhs2287 = load i32* %mid_slot2263
  %bop2288 = icmp sle i32 %_lhs2286, %_lhs2287
  %_lhs2289 = load i32* %j2271
  %_lhs2290 = load i32* %high_slot2265
  %bop2291 = icmp sle i32 %_lhs2289, %_lhs2290
  %bop2292 = and i1 %bop2288, %bop2291
  br i1 %bop2292, label %__body842, label %__post841

__fresh861:
  br label %__body842

__body842:
  %_lhs2293 = load i32* %i2270
  %array_dereferenced2294 = load { i32, [ 0 x i32 ] }** %a_slot2269
  %len_ptr2295 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2294, i32 0, i32 0
  %len2296 = load i32* %len_ptr2295
  call void @oat_array_bounds_check( i32 %len2296, i32 %_lhs2293 )
  %elt_ptr2297 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2294, i32 0, i32 1, i32 %_lhs2293
  %_lhs2298 = load i32* %elt_ptr2297
  %_lhs2299 = load i32* %j2271
  %array_dereferenced2300 = load { i32, [ 0 x i32 ] }** %a_slot2269
  %len_ptr2301 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2300, i32 0, i32 0
  %len2302 = load i32* %len_ptr2301
  call void @oat_array_bounds_check( i32 %len2302, i32 %_lhs2299 )
  %elt_ptr2303 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2300, i32 0, i32 1, i32 %_lhs2299
  %_lhs2304 = load i32* %elt_ptr2303
  %bop2305 = icmp slt i32 %_lhs2298, %_lhs2304
  br i1 %bop2305, label %__then846, label %__else845

__fresh862:
  br label %__then846

__then846:
  %_lhs2306 = load i32* %k2272
  %array_dereferenced2307 = load { i32, [ 0 x i32 ] }** %c2281
  %len_ptr2308 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2307, i32 0, i32 0
  %len2309 = load i32* %len_ptr2308
  call void @oat_array_bounds_check( i32 %len2309, i32 %_lhs2306 )
  %elt_ptr2310 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2307, i32 0, i32 1, i32 %_lhs2306
  %_lhs2311 = load i32* %i2270
  %array_dereferenced2312 = load { i32, [ 0 x i32 ] }** %a_slot2269
  %len_ptr2313 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2312, i32 0, i32 0
  %len2314 = load i32* %len_ptr2313
  call void @oat_array_bounds_check( i32 %len2314, i32 %_lhs2311 )
  %elt_ptr2315 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2312, i32 0, i32 1, i32 %_lhs2311
  %_lhs2316 = load i32* %elt_ptr2315
  store i32 %_lhs2316, i32* %elt_ptr2310
  %_lhs2317 = load i32* %k2272
  %bop2318 = add i32 %_lhs2317, 1
  store i32 %bop2318, i32* %k2272
  %_lhs2319 = load i32* %i2270
  %bop2320 = add i32 %_lhs2319, 1
  store i32 %bop2320, i32* %i2270
  br label %__merge844

__fresh863:
  br label %__else845

__else845:
  %_lhs2321 = load i32* %k2272
  %array_dereferenced2322 = load { i32, [ 0 x i32 ] }** %c2281
  %len_ptr2323 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2322, i32 0, i32 0
  %len2324 = load i32* %len_ptr2323
  call void @oat_array_bounds_check( i32 %len2324, i32 %_lhs2321 )
  %elt_ptr2325 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2322, i32 0, i32 1, i32 %_lhs2321
  %_lhs2326 = load i32* %j2271
  %array_dereferenced2327 = load { i32, [ 0 x i32 ] }** %a_slot2269
  %len_ptr2328 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2327, i32 0, i32 0
  %len2329 = load i32* %len_ptr2328
  call void @oat_array_bounds_check( i32 %len2329, i32 %_lhs2326 )
  %elt_ptr2330 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2327, i32 0, i32 1, i32 %_lhs2326
  %_lhs2331 = load i32* %elt_ptr2330
  store i32 %_lhs2331, i32* %elt_ptr2325
  %_lhs2332 = load i32* %k2272
  %bop2333 = add i32 %_lhs2332, 1
  store i32 %bop2333, i32* %k2272
  %_lhs2334 = load i32* %j2271
  %bop2335 = add i32 %_lhs2334, 1
  store i32 %bop2335, i32* %j2271
  br label %__merge844

__merge844:
  br label %__cond843

__fresh864:
  br label %__post841

__post841:
  br label %__cond849

__cond849:
  %_lhs2336 = load i32* %i2270
  %_lhs2337 = load i32* %mid_slot2263
  %bop2338 = icmp sle i32 %_lhs2336, %_lhs2337
  br i1 %bop2338, label %__body848, label %__post847

__fresh865:
  br label %__body848

__body848:
  %_lhs2339 = load i32* %k2272
  %array_dereferenced2340 = load { i32, [ 0 x i32 ] }** %c2281
  %len_ptr2341 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2340, i32 0, i32 0
  %len2342 = load i32* %len_ptr2341
  call void @oat_array_bounds_check( i32 %len2342, i32 %_lhs2339 )
  %elt_ptr2343 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2340, i32 0, i32 1, i32 %_lhs2339
  %_lhs2344 = load i32* %i2270
  %array_dereferenced2345 = load { i32, [ 0 x i32 ] }** %a_slot2269
  %len_ptr2346 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2345, i32 0, i32 0
  %len2347 = load i32* %len_ptr2346
  call void @oat_array_bounds_check( i32 %len2347, i32 %_lhs2344 )
  %elt_ptr2348 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2345, i32 0, i32 1, i32 %_lhs2344
  %_lhs2349 = load i32* %elt_ptr2348
  store i32 %_lhs2349, i32* %elt_ptr2343
  %_lhs2350 = load i32* %k2272
  %bop2351 = add i32 %_lhs2350, 1
  store i32 %bop2351, i32* %k2272
  %_lhs2352 = load i32* %i2270
  %bop2353 = add i32 %_lhs2352, 1
  store i32 %bop2353, i32* %i2270
  br label %__cond849

__fresh866:
  br label %__post847

__post847:
  br label %__cond852

__cond852:
  %_lhs2354 = load i32* %j2271
  %_lhs2355 = load i32* %high_slot2265
  %bop2356 = icmp sle i32 %_lhs2354, %_lhs2355
  br i1 %bop2356, label %__body851, label %__post850

__fresh867:
  br label %__body851

__body851:
  %_lhs2357 = load i32* %k2272
  %array_dereferenced2358 = load { i32, [ 0 x i32 ] }** %c2281
  %len_ptr2359 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2358, i32 0, i32 0
  %len2360 = load i32* %len_ptr2359
  call void @oat_array_bounds_check( i32 %len2360, i32 %_lhs2357 )
  %elt_ptr2361 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2358, i32 0, i32 1, i32 %_lhs2357
  %_lhs2362 = load i32* %j2271
  %array_dereferenced2363 = load { i32, [ 0 x i32 ] }** %a_slot2269
  %len_ptr2364 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2363, i32 0, i32 0
  %len2365 = load i32* %len_ptr2364
  call void @oat_array_bounds_check( i32 %len2365, i32 %_lhs2362 )
  %elt_ptr2366 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2363, i32 0, i32 1, i32 %_lhs2362
  %_lhs2367 = load i32* %elt_ptr2366
  store i32 %_lhs2367, i32* %elt_ptr2361
  %_lhs2368 = load i32* %k2272
  %bop2369 = add i32 %_lhs2368, 1
  store i32 %bop2369, i32* %k2272
  %_lhs2370 = load i32* %j2271
  %bop2371 = add i32 %_lhs2370, 1
  store i32 %bop2371, i32* %j2271
  br label %__cond852

__fresh868:
  br label %__post850

__post850:
  %_lhs2372 = load i32* %low_slot2267
  store i32 %_lhs2372, i32* %i2270
  br label %__cond855

__cond855:
  %_lhs2373 = load i32* %i2270
  %_lhs2374 = load i32* %k2272
  %bop2375 = icmp slt i32 %_lhs2373, %_lhs2374
  br i1 %bop2375, label %__body854, label %__post853

__fresh869:
  br label %__body854

__body854:
  %_lhs2376 = load i32* %i2270
  %array_dereferenced2377 = load { i32, [ 0 x i32 ] }** %a_slot2269
  %len_ptr2378 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2377, i32 0, i32 0
  %len2379 = load i32* %len_ptr2378
  call void @oat_array_bounds_check( i32 %len2379, i32 %_lhs2376 )
  %elt_ptr2380 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2377, i32 0, i32 1, i32 %_lhs2376
  %_lhs2381 = load i32* %i2270
  %array_dereferenced2382 = load { i32, [ 0 x i32 ] }** %c2281
  %len_ptr2383 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2382, i32 0, i32 0
  %len2384 = load i32* %len_ptr2383
  call void @oat_array_bounds_check( i32 %len2384, i32 %_lhs2381 )
  %elt_ptr2385 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2382, i32 0, i32 1, i32 %_lhs2381
  %_lhs2386 = load i32* %elt_ptr2385
  store i32 %_lhs2386, i32* %elt_ptr2380
  %_lhs2387 = load i32* %i2270
  %bop2388 = add i32 %_lhs2387, 1
  store i32 %bop2388, i32* %i2270
  br label %__cond855

__fresh870:
  br label %__post853

__post853:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2241, i32 %low2239, i32 %high2237){

__fresh835:
  %a_slot2242 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2241, { i32, [ 0 x i32 ] }** %a_slot2242
  %low_slot2240 = alloca i32
  store i32 %low2239, i32* %low_slot2240
  %high_slot2238 = alloca i32
  store i32 %high2237, i32* %high_slot2238
  %mid2243 = alloca i32
  store i32 0, i32* %mid2243
  %_lhs2244 = load i32* %low_slot2240
  %_lhs2245 = load i32* %high_slot2238
  %bop2246 = icmp slt i32 %_lhs2244, %_lhs2245
  br i1 %bop2246, label %__then834, label %__else833

__fresh836:
  br label %__then834

__then834:
  %_lhs2247 = load i32* %low_slot2240
  %_lhs2248 = load i32* %high_slot2238
  %bop2249 = add i32 %_lhs2247, %_lhs2248
  %bop2250 = ashr i32 %bop2249, 1
  store i32 %bop2250, i32* %mid2243
  %_lhs2253 = load i32* %mid2243
  %_lhs2252 = load i32* %low_slot2240
  %_lhs2251 = load { i32, [ 0 x i32 ] }** %a_slot2242
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2251, i32 %_lhs2252, i32 %_lhs2253 )
  %_lhs2257 = load i32* %high_slot2238
  %_lhs2255 = load i32* %mid2243
  %bop2256 = add i32 %_lhs2255, 1
  %_lhs2254 = load { i32, [ 0 x i32 ] }** %a_slot2242
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2254, i32 %bop2256, i32 %_lhs2257 )
  %_lhs2261 = load i32* %mid2243
  %_lhs2260 = load i32* %high_slot2238
  %_lhs2259 = load i32* %low_slot2240
  %_lhs2258 = load { i32, [ 0 x i32 ] }** %a_slot2242
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2258, i32 %_lhs2259, i32 %_lhs2260, i32 %_lhs2261 )
  br label %__merge832

__fresh837:
  br label %__else833

__else833:
  br label %__merge832

__merge832:
  ret void
}


define i32 @program (i32 %argc2209, { i32, [ 0 x i8* ] }* %argv2207){

__fresh831:
  %argc_slot2210 = alloca i32
  store i32 %argc2209, i32* %argc_slot2210
  %argv_slot2208 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2207, { i32, [ 0 x i8* ] }** %argv_slot2208
  %i2211 = alloca i32
  store i32 0, i32* %i2211
  %array_ptr2212 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2213 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2212 to { i32, [ 0 x i32 ] }* 
  %index_ptr2214 = getelementptr { i32, [ 0 x i32 ] }* %array2213, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2214
  %index_ptr2215 = getelementptr { i32, [ 0 x i32 ] }* %array2213, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2215
  %index_ptr2216 = getelementptr { i32, [ 0 x i32 ] }* %array2213, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2216
  %index_ptr2217 = getelementptr { i32, [ 0 x i32 ] }* %array2213, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2217
  %index_ptr2218 = getelementptr { i32, [ 0 x i32 ] }* %array2213, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2218
  %index_ptr2219 = getelementptr { i32, [ 0 x i32 ] }* %array2213, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2219
  %index_ptr2220 = getelementptr { i32, [ 0 x i32 ] }* %array2213, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2220
  %index_ptr2221 = getelementptr { i32, [ 0 x i32 ] }* %array2213, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2221
  %index_ptr2222 = getelementptr { i32, [ 0 x i32 ] }* %array2213, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2222
  %index_ptr2223 = getelementptr { i32, [ 0 x i32 ] }* %array2213, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2223
  %a2224 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2213, { i32, [ 0 x i32 ] }** %a2224
  %_lhs2225 = load { i32, [ 0 x i32 ] }** %a2224
  %ret2226 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2225 )
  call void @print_string( i8* %ret2226 )
  %_lhs2227 = load { i32, [ 0 x i32 ] }** %a2224
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2227, i32 0, i32 9 )
  %strval2229 = load i8** @_oat_string2228
  call void @print_string( i8* %strval2229 )
  %_lhs2230 = load { i32, [ 0 x i32 ] }** %a2224
  %ret2231 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2230 )
  call void @print_string( i8* %ret2231 )
  %strval2233 = load i8** @_oat_string2232
  call void @print_string( i8* %strval2233 )
  %_lhs2234 = load i32* %i2211
  ret i32 %_lhs2234
}


