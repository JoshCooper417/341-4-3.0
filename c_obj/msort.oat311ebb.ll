declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2264.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2264 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2264.str., i32 0, i32 0), align 4
@_oat_string2260.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2260 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2260.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh878:
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2300, i32 %low2298, i32 %high2296, i32 %mid2294){

__fresh863:
  %a_slot2301 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2300, { i32, [ 0 x i32 ] }** %a_slot2301
  %low_slot2299 = alloca i32
  store i32 %low2298, i32* %low_slot2299
  %high_slot2297 = alloca i32
  store i32 %high2296, i32* %high_slot2297
  %mid_slot2295 = alloca i32
  store i32 %mid2294, i32* %mid_slot2295
  %i2302 = alloca i32
  store i32 0, i32* %i2302
  %j2303 = alloca i32
  store i32 0, i32* %j2303
  %k2304 = alloca i32
  store i32 0, i32* %k2304
  %array_ptr2306 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2307 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2306 to { i32, [ 0 x i32 ] }* 
  %i2312 = alloca i32
  store i32 1, i32* %i2312
  %i2305 = load i32* %i2312
  br label %__check846

__fresh864:
  br label %__check846

__check846:
  br label %__end845

__fresh865:
  %cmp_op2310 = icmp slt i32 %i2305, 50
  br i32 %cmp_op2310, label %__body847, label %__end845

__fresh866:
  br label %__body847

__body847:
  %elem_ptr2309 = getelementptr { i32, [ 0 x i32 ] }* %array2307, i32 0, i32 1, i32 %i2305
  store i32 0, i32* %elem_ptr2309
  %index_op2311 = add i32 %i2305, 1
  br label %__check846

__fresh867:
  br label %__end845

__end845:
  %array_ptr2308 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2307, { i32, [ 0 x i32 ] }** %array_ptr2308
  %c2314 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }** %array_ptr2308, { i32, [ 0 x i32 ] }** %c2314
  %_lhs2315 = load i32* %low_slot2299
  store i32 %_lhs2315, i32* %i2302
  %_lhs2316 = load i32* %mid_slot2295
  %bop2317 = add i32 %_lhs2316, 1
  store i32 %bop2317, i32* %j2303
  %_lhs2318 = load i32* %low_slot2299
  store i32 %_lhs2318, i32* %k2304
  br label %__cond850

__cond850:
  %_lhs2319 = load i32* %i2302
  %_lhs2320 = load i32* %mid_slot2295
  %bop2321 = icmp sle i32 %_lhs2319, %_lhs2320
  %_lhs2322 = load i32* %j2303
  %_lhs2323 = load i32* %high_slot2297
  %bop2324 = icmp sle i32 %_lhs2322, %_lhs2323
  %bop2325 = and i1 %bop2321, %bop2324
  br i1 %bop2325, label %__body849, label %__post848

__fresh868:
  br label %__body849

__body849:
  %_lhs2326 = load i32* %i2302
  %array_dereferenced2327 = load { i32, [ 0 x i32 ] }** %a_slot2301
  %len_ptr2328 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2327, i32 0, i32 0
  %len2329 = load i32* %len_ptr2328
  call void @oat_array_bounds_check( i32 %len2329, i32 %_lhs2326 )
  %elt_ptr2330 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2327, i32 0, i32 1, i32 %_lhs2326
  %_lhs2331 = load i32* %elt_ptr2330
  %_lhs2332 = load i32* %j2303
  %array_dereferenced2333 = load { i32, [ 0 x i32 ] }** %a_slot2301
  %len_ptr2334 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2333, i32 0, i32 0
  %len2335 = load i32* %len_ptr2334
  call void @oat_array_bounds_check( i32 %len2335, i32 %_lhs2332 )
  %elt_ptr2336 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2333, i32 0, i32 1, i32 %_lhs2332
  %_lhs2337 = load i32* %elt_ptr2336
  %bop2338 = icmp slt i32 %_lhs2331, %_lhs2337
  br i1 %bop2338, label %__then853, label %__else852

__fresh869:
  br label %__then853

__then853:
  %_lhs2339 = load i32* %k2304
  %array_dereferenced2340 = load { i32, [ 0 x i32 ] }** %c2314
  %len_ptr2341 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2340, i32 0, i32 0
  %len2342 = load i32* %len_ptr2341
  call void @oat_array_bounds_check( i32 %len2342, i32 %_lhs2339 )
  %elt_ptr2343 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2340, i32 0, i32 1, i32 %_lhs2339
  %_lhs2344 = load i32* %i2302
  %array_dereferenced2345 = load { i32, [ 0 x i32 ] }** %a_slot2301
  %len_ptr2346 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2345, i32 0, i32 0
  %len2347 = load i32* %len_ptr2346
  call void @oat_array_bounds_check( i32 %len2347, i32 %_lhs2344 )
  %elt_ptr2348 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2345, i32 0, i32 1, i32 %_lhs2344
  %_lhs2349 = load i32* %elt_ptr2348
  store i32 %_lhs2349, i32* %elt_ptr2343
  %_lhs2350 = load i32* %k2304
  %bop2351 = add i32 %_lhs2350, 1
  store i32 %bop2351, i32* %k2304
  %_lhs2352 = load i32* %i2302
  %bop2353 = add i32 %_lhs2352, 1
  store i32 %bop2353, i32* %i2302
  br label %__merge851

__fresh870:
  br label %__else852

__else852:
  %_lhs2354 = load i32* %k2304
  %array_dereferenced2355 = load { i32, [ 0 x i32 ] }** %c2314
  %len_ptr2356 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2355, i32 0, i32 0
  %len2357 = load i32* %len_ptr2356
  call void @oat_array_bounds_check( i32 %len2357, i32 %_lhs2354 )
  %elt_ptr2358 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2355, i32 0, i32 1, i32 %_lhs2354
  %_lhs2359 = load i32* %j2303
  %array_dereferenced2360 = load { i32, [ 0 x i32 ] }** %a_slot2301
  %len_ptr2361 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2360, i32 0, i32 0
  %len2362 = load i32* %len_ptr2361
  call void @oat_array_bounds_check( i32 %len2362, i32 %_lhs2359 )
  %elt_ptr2363 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2360, i32 0, i32 1, i32 %_lhs2359
  %_lhs2364 = load i32* %elt_ptr2363
  store i32 %_lhs2364, i32* %elt_ptr2358
  %_lhs2365 = load i32* %k2304
  %bop2366 = add i32 %_lhs2365, 1
  store i32 %bop2366, i32* %k2304
  %_lhs2367 = load i32* %j2303
  %bop2368 = add i32 %_lhs2367, 1
  store i32 %bop2368, i32* %j2303
  br label %__merge851

__merge851:
  br label %__cond850

__fresh871:
  br label %__post848

__post848:
  br label %__cond856

__cond856:
  %_lhs2369 = load i32* %i2302
  %_lhs2370 = load i32* %mid_slot2295
  %bop2371 = icmp sle i32 %_lhs2369, %_lhs2370
  br i1 %bop2371, label %__body855, label %__post854

__fresh872:
  br label %__body855

__body855:
  %_lhs2372 = load i32* %k2304
  %array_dereferenced2373 = load { i32, [ 0 x i32 ] }** %c2314
  %len_ptr2374 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2373, i32 0, i32 0
  %len2375 = load i32* %len_ptr2374
  call void @oat_array_bounds_check( i32 %len2375, i32 %_lhs2372 )
  %elt_ptr2376 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2373, i32 0, i32 1, i32 %_lhs2372
  %_lhs2377 = load i32* %i2302
  %array_dereferenced2378 = load { i32, [ 0 x i32 ] }** %a_slot2301
  %len_ptr2379 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2378, i32 0, i32 0
  %len2380 = load i32* %len_ptr2379
  call void @oat_array_bounds_check( i32 %len2380, i32 %_lhs2377 )
  %elt_ptr2381 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2378, i32 0, i32 1, i32 %_lhs2377
  %_lhs2382 = load i32* %elt_ptr2381
  store i32 %_lhs2382, i32* %elt_ptr2376
  %_lhs2383 = load i32* %k2304
  %bop2384 = add i32 %_lhs2383, 1
  store i32 %bop2384, i32* %k2304
  %_lhs2385 = load i32* %i2302
  %bop2386 = add i32 %_lhs2385, 1
  store i32 %bop2386, i32* %i2302
  br label %__cond856

__fresh873:
  br label %__post854

__post854:
  br label %__cond859

__cond859:
  %_lhs2387 = load i32* %j2303
  %_lhs2388 = load i32* %high_slot2297
  %bop2389 = icmp sle i32 %_lhs2387, %_lhs2388
  br i1 %bop2389, label %__body858, label %__post857

__fresh874:
  br label %__body858

__body858:
  %_lhs2390 = load i32* %k2304
  %array_dereferenced2391 = load { i32, [ 0 x i32 ] }** %c2314
  %len_ptr2392 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2391, i32 0, i32 0
  %len2393 = load i32* %len_ptr2392
  call void @oat_array_bounds_check( i32 %len2393, i32 %_lhs2390 )
  %elt_ptr2394 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2391, i32 0, i32 1, i32 %_lhs2390
  %_lhs2395 = load i32* %j2303
  %array_dereferenced2396 = load { i32, [ 0 x i32 ] }** %a_slot2301
  %len_ptr2397 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2396, i32 0, i32 0
  %len2398 = load i32* %len_ptr2397
  call void @oat_array_bounds_check( i32 %len2398, i32 %_lhs2395 )
  %elt_ptr2399 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2396, i32 0, i32 1, i32 %_lhs2395
  %_lhs2400 = load i32* %elt_ptr2399
  store i32 %_lhs2400, i32* %elt_ptr2394
  %_lhs2401 = load i32* %k2304
  %bop2402 = add i32 %_lhs2401, 1
  store i32 %bop2402, i32* %k2304
  %_lhs2403 = load i32* %j2303
  %bop2404 = add i32 %_lhs2403, 1
  store i32 %bop2404, i32* %j2303
  br label %__cond859

__fresh875:
  br label %__post857

__post857:
  %_lhs2405 = load i32* %low_slot2299
  store i32 %_lhs2405, i32* %i2302
  br label %__cond862

__cond862:
  %_lhs2406 = load i32* %i2302
  %_lhs2407 = load i32* %k2304
  %bop2408 = icmp slt i32 %_lhs2406, %_lhs2407
  br i1 %bop2408, label %__body861, label %__post860

__fresh876:
  br label %__body861

__body861:
  %_lhs2409 = load i32* %i2302
  %array_dereferenced2410 = load { i32, [ 0 x i32 ] }** %a_slot2301
  %len_ptr2411 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2410, i32 0, i32 0
  %len2412 = load i32* %len_ptr2411
  call void @oat_array_bounds_check( i32 %len2412, i32 %_lhs2409 )
  %elt_ptr2413 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2410, i32 0, i32 1, i32 %_lhs2409
  %_lhs2414 = load i32* %i2302
  %array_dereferenced2415 = load { i32, [ 0 x i32 ] }** %c2314
  %len_ptr2416 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2415, i32 0, i32 0
  %len2417 = load i32* %len_ptr2416
  call void @oat_array_bounds_check( i32 %len2417, i32 %_lhs2414 )
  %elt_ptr2418 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2415, i32 0, i32 1, i32 %_lhs2414
  %_lhs2419 = load i32* %elt_ptr2418
  store i32 %_lhs2419, i32* %elt_ptr2413
  %_lhs2420 = load i32* %i2302
  %bop2421 = add i32 %_lhs2420, 1
  store i32 %bop2421, i32* %i2302
  br label %__cond862

__fresh877:
  br label %__post860

__post860:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2273, i32 %low2271, i32 %high2269){

__fresh842:
  %a_slot2274 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2273, { i32, [ 0 x i32 ] }** %a_slot2274
  %low_slot2272 = alloca i32
  store i32 %low2271, i32* %low_slot2272
  %high_slot2270 = alloca i32
  store i32 %high2269, i32* %high_slot2270
  %mid2275 = alloca i32
  store i32 0, i32* %mid2275
  %_lhs2276 = load i32* %low_slot2272
  %_lhs2277 = load i32* %high_slot2270
  %bop2278 = icmp slt i32 %_lhs2276, %_lhs2277
  br i1 %bop2278, label %__then841, label %__else840

__fresh843:
  br label %__then841

__then841:
  %_lhs2279 = load i32* %low_slot2272
  %_lhs2280 = load i32* %high_slot2270
  %bop2281 = add i32 %_lhs2279, %_lhs2280
  %bop2282 = ashr i32 %bop2281, 1
  store i32 %bop2282, i32* %mid2275
  %_lhs2285 = load i32* %mid2275
  %_lhs2284 = load i32* %low_slot2272
  %_lhs2283 = load { i32, [ 0 x i32 ] }** %a_slot2274
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2283, i32 %_lhs2284, i32 %_lhs2285 )
  %_lhs2289 = load i32* %high_slot2270
  %_lhs2287 = load i32* %mid2275
  %bop2288 = add i32 %_lhs2287, 1
  %_lhs2286 = load { i32, [ 0 x i32 ] }** %a_slot2274
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2286, i32 %bop2288, i32 %_lhs2289 )
  %_lhs2293 = load i32* %mid2275
  %_lhs2292 = load i32* %high_slot2270
  %_lhs2291 = load i32* %low_slot2272
  %_lhs2290 = load { i32, [ 0 x i32 ] }** %a_slot2274
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2290, i32 %_lhs2291, i32 %_lhs2292, i32 %_lhs2293 )
  br label %__merge839

__fresh844:
  br label %__else840

__else840:
  br label %__merge839

__merge839:
  ret void
}


define i32 @program (i32 %argc2241, { i32, [ 0 x i8* ] }* %argv2239){

__fresh838:
  %argc_slot2242 = alloca i32
  store i32 %argc2241, i32* %argc_slot2242
  %argv_slot2240 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2239, { i32, [ 0 x i8* ] }** %argv_slot2240
  %i2243 = alloca i32
  store i32 0, i32* %i2243
  %array_ptr2244 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2245 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2244 to { i32, [ 0 x i32 ] }* 
  %index_ptr2246 = getelementptr { i32, [ 0 x i32 ] }* %array2245, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2246
  %index_ptr2247 = getelementptr { i32, [ 0 x i32 ] }* %array2245, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2247
  %index_ptr2248 = getelementptr { i32, [ 0 x i32 ] }* %array2245, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2248
  %index_ptr2249 = getelementptr { i32, [ 0 x i32 ] }* %array2245, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2249
  %index_ptr2250 = getelementptr { i32, [ 0 x i32 ] }* %array2245, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2250
  %index_ptr2251 = getelementptr { i32, [ 0 x i32 ] }* %array2245, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2251
  %index_ptr2252 = getelementptr { i32, [ 0 x i32 ] }* %array2245, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2252
  %index_ptr2253 = getelementptr { i32, [ 0 x i32 ] }* %array2245, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2253
  %index_ptr2254 = getelementptr { i32, [ 0 x i32 ] }* %array2245, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2254
  %index_ptr2255 = getelementptr { i32, [ 0 x i32 ] }* %array2245, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2255
  %a2256 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2245, { i32, [ 0 x i32 ] }** %a2256
  %_lhs2257 = load { i32, [ 0 x i32 ] }** %a2256
  %ret2258 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2257 )
  call void @print_string( i8* %ret2258 )
  %_lhs2259 = load { i32, [ 0 x i32 ] }** %a2256
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2259, i32 0, i32 9 )
  %strval2261 = load i8** @_oat_string2260
  call void @print_string( i8* %strval2261 )
  %_lhs2262 = load { i32, [ 0 x i32 ] }** %a2256
  %ret2263 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2262 )
  call void @print_string( i8* %ret2263 )
  %strval2265 = load i8** @_oat_string2264
  call void @print_string( i8* %strval2265 )
  %_lhs2266 = load i32* %i2243
  ret i32 %_lhs2266
}


