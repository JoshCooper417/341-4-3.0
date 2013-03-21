declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2252.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2252 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2252.str., i32 0, i32 0), align 4
@_oat_string2248.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2248 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2248.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh494:
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2288, i32 %low2286, i32 %high2284, i32 %mid2282){

__fresh479:
  %a_slot2289 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2288, { i32, [ 0 x i32 ] }** %a_slot2289
  %low_slot2287 = alloca i32
  store i32 %low2286, i32* %low_slot2287
  %high_slot2285 = alloca i32
  store i32 %high2284, i32* %high_slot2285
  %mid_slot2283 = alloca i32
  store i32 %mid2282, i32* %mid_slot2283
  %i2290 = alloca i32
  store i32 0, i32* %i2290
  %j2291 = alloca i32
  store i32 0, i32* %j2291
  %k2292 = alloca i32
  store i32 0, i32* %k2292
  %array_ptr2294 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2295 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2294 to { i32, [ 0 x i32 ] }* 
  %i2299 = alloca i32
  store i32 1, i32* %i2299
  %i2293 = load i32* %i2299
  br label %__check462

__fresh480:
  br label %__check462

__check462:
  br label %__end461

__fresh481:
  %cmp_op2297 = icmp slt i32 %i2293, 50
  br i32 %cmp_op2297, label %__body463, label %__end461

__fresh482:
  br label %__body463

__body463:
  %elem_ptr2296 = getelementptr { i32, [ 0 x i32 ] }* %array2295, i32 0, i32 1, i32 %i2293
  store i32 0, i32* %elem_ptr2296
  %index_op2298 = add i32 %i2293, 1
  br label %__check462

__fresh483:
  br label %__end461

__end461:
  %c2301 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2295, { i32, [ 0 x i32 ] }** %c2301
  %_lhs2302 = load i32* %low_slot2287
  store i32 %_lhs2302, i32* %i2290
  %_lhs2303 = load i32* %mid_slot2283
  %bop2304 = add i32 %_lhs2303, 1
  store i32 %bop2304, i32* %j2291
  %_lhs2305 = load i32* %low_slot2287
  store i32 %_lhs2305, i32* %k2292
  br label %__cond466

__cond466:
  %_lhs2306 = load i32* %i2290
  %_lhs2307 = load i32* %mid_slot2283
  %bop2308 = icmp sle i32 %_lhs2306, %_lhs2307
  %_lhs2309 = load i32* %j2291
  %_lhs2310 = load i32* %high_slot2285
  %bop2311 = icmp sle i32 %_lhs2309, %_lhs2310
  %bop2312 = and i1 %bop2308, %bop2311
  br i1 %bop2312, label %__body465, label %__post464

__fresh484:
  br label %__body465

__body465:
  %_lhs2313 = load i32* %i2290
  %len_ptr2314 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2289, i32 0, i32 0
  %len2315 = load i32* %len_ptr2314
  call void @oat_array_bounds_check( i32 %len2315, i32 %_lhs2313 )
  %array_dereferenced2316 = load { i32, [ 0 x i32 ] }** %a_slot2289
  %elt_ptr2317 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2316, i32 0, i32 1, i32 %_lhs2313
  %_lhs2318 = load i32* %elt_ptr2317
  %_lhs2319 = load i32* %j2291
  %len_ptr2320 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2289, i32 0, i32 0
  %len2321 = load i32* %len_ptr2320
  call void @oat_array_bounds_check( i32 %len2321, i32 %_lhs2319 )
  %array_dereferenced2322 = load { i32, [ 0 x i32 ] }** %a_slot2289
  %elt_ptr2323 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2322, i32 0, i32 1, i32 %_lhs2319
  %_lhs2324 = load i32* %elt_ptr2323
  %bop2325 = icmp slt i32 %_lhs2318, %_lhs2324
  br i1 %bop2325, label %__then469, label %__else468

__fresh485:
  br label %__then469

__then469:
  %_lhs2326 = load i32* %k2292
  %len_ptr2327 = getelementptr { i32, [ 0 x i32 ] }** %c2301, i32 0, i32 0
  %len2328 = load i32* %len_ptr2327
  call void @oat_array_bounds_check( i32 %len2328, i32 %_lhs2326 )
  %array_dereferenced2329 = load { i32, [ 0 x i32 ] }** %c2301
  %elt_ptr2330 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2329, i32 0, i32 1, i32 %_lhs2326
  %_lhs2331 = load i32* %i2290
  %len_ptr2332 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2289, i32 0, i32 0
  %len2333 = load i32* %len_ptr2332
  call void @oat_array_bounds_check( i32 %len2333, i32 %_lhs2331 )
  %array_dereferenced2334 = load { i32, [ 0 x i32 ] }** %a_slot2289
  %elt_ptr2335 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2334, i32 0, i32 1, i32 %_lhs2331
  %_lhs2336 = load i32* %elt_ptr2335
  store i32 %_lhs2336, i32* %elt_ptr2330
  %_lhs2337 = load i32* %k2292
  %bop2338 = add i32 %_lhs2337, 1
  store i32 %bop2338, i32* %k2292
  %_lhs2339 = load i32* %i2290
  %bop2340 = add i32 %_lhs2339, 1
  store i32 %bop2340, i32* %i2290
  br label %__merge467

__fresh486:
  br label %__else468

__else468:
  %_lhs2341 = load i32* %k2292
  %len_ptr2342 = getelementptr { i32, [ 0 x i32 ] }** %c2301, i32 0, i32 0
  %len2343 = load i32* %len_ptr2342
  call void @oat_array_bounds_check( i32 %len2343, i32 %_lhs2341 )
  %array_dereferenced2344 = load { i32, [ 0 x i32 ] }** %c2301
  %elt_ptr2345 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2344, i32 0, i32 1, i32 %_lhs2341
  %_lhs2346 = load i32* %j2291
  %len_ptr2347 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2289, i32 0, i32 0
  %len2348 = load i32* %len_ptr2347
  call void @oat_array_bounds_check( i32 %len2348, i32 %_lhs2346 )
  %array_dereferenced2349 = load { i32, [ 0 x i32 ] }** %a_slot2289
  %elt_ptr2350 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2349, i32 0, i32 1, i32 %_lhs2346
  %_lhs2351 = load i32* %elt_ptr2350
  store i32 %_lhs2351, i32* %elt_ptr2345
  %_lhs2352 = load i32* %k2292
  %bop2353 = add i32 %_lhs2352, 1
  store i32 %bop2353, i32* %k2292
  %_lhs2354 = load i32* %j2291
  %bop2355 = add i32 %_lhs2354, 1
  store i32 %bop2355, i32* %j2291
  br label %__merge467

__merge467:
  br label %__cond466

__fresh487:
  br label %__post464

__post464:
  br label %__cond472

__cond472:
  %_lhs2356 = load i32* %i2290
  %_lhs2357 = load i32* %mid_slot2283
  %bop2358 = icmp sle i32 %_lhs2356, %_lhs2357
  br i1 %bop2358, label %__body471, label %__post470

__fresh488:
  br label %__body471

__body471:
  %_lhs2359 = load i32* %k2292
  %len_ptr2360 = getelementptr { i32, [ 0 x i32 ] }** %c2301, i32 0, i32 0
  %len2361 = load i32* %len_ptr2360
  call void @oat_array_bounds_check( i32 %len2361, i32 %_lhs2359 )
  %array_dereferenced2362 = load { i32, [ 0 x i32 ] }** %c2301
  %elt_ptr2363 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2362, i32 0, i32 1, i32 %_lhs2359
  %_lhs2364 = load i32* %i2290
  %len_ptr2365 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2289, i32 0, i32 0
  %len2366 = load i32* %len_ptr2365
  call void @oat_array_bounds_check( i32 %len2366, i32 %_lhs2364 )
  %array_dereferenced2367 = load { i32, [ 0 x i32 ] }** %a_slot2289
  %elt_ptr2368 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2367, i32 0, i32 1, i32 %_lhs2364
  %_lhs2369 = load i32* %elt_ptr2368
  store i32 %_lhs2369, i32* %elt_ptr2363
  %_lhs2370 = load i32* %k2292
  %bop2371 = add i32 %_lhs2370, 1
  store i32 %bop2371, i32* %k2292
  %_lhs2372 = load i32* %i2290
  %bop2373 = add i32 %_lhs2372, 1
  store i32 %bop2373, i32* %i2290
  br label %__cond472

__fresh489:
  br label %__post470

__post470:
  br label %__cond475

__cond475:
  %_lhs2374 = load i32* %j2291
  %_lhs2375 = load i32* %high_slot2285
  %bop2376 = icmp sle i32 %_lhs2374, %_lhs2375
  br i1 %bop2376, label %__body474, label %__post473

__fresh490:
  br label %__body474

__body474:
  %_lhs2377 = load i32* %k2292
  %len_ptr2378 = getelementptr { i32, [ 0 x i32 ] }** %c2301, i32 0, i32 0
  %len2379 = load i32* %len_ptr2378
  call void @oat_array_bounds_check( i32 %len2379, i32 %_lhs2377 )
  %array_dereferenced2380 = load { i32, [ 0 x i32 ] }** %c2301
  %elt_ptr2381 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2380, i32 0, i32 1, i32 %_lhs2377
  %_lhs2382 = load i32* %j2291
  %len_ptr2383 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2289, i32 0, i32 0
  %len2384 = load i32* %len_ptr2383
  call void @oat_array_bounds_check( i32 %len2384, i32 %_lhs2382 )
  %array_dereferenced2385 = load { i32, [ 0 x i32 ] }** %a_slot2289
  %elt_ptr2386 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2385, i32 0, i32 1, i32 %_lhs2382
  %_lhs2387 = load i32* %elt_ptr2386
  store i32 %_lhs2387, i32* %elt_ptr2381
  %_lhs2388 = load i32* %k2292
  %bop2389 = add i32 %_lhs2388, 1
  store i32 %bop2389, i32* %k2292
  %_lhs2390 = load i32* %j2291
  %bop2391 = add i32 %_lhs2390, 1
  store i32 %bop2391, i32* %j2291
  br label %__cond475

__fresh491:
  br label %__post473

__post473:
  %_lhs2392 = load i32* %low_slot2287
  store i32 %_lhs2392, i32* %i2290
  br label %__cond478

__cond478:
  %_lhs2393 = load i32* %i2290
  %_lhs2394 = load i32* %k2292
  %bop2395 = icmp slt i32 %_lhs2393, %_lhs2394
  br i1 %bop2395, label %__body477, label %__post476

__fresh492:
  br label %__body477

__body477:
  %_lhs2396 = load i32* %i2290
  %len_ptr2397 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2289, i32 0, i32 0
  %len2398 = load i32* %len_ptr2397
  call void @oat_array_bounds_check( i32 %len2398, i32 %_lhs2396 )
  %array_dereferenced2399 = load { i32, [ 0 x i32 ] }** %a_slot2289
  %elt_ptr2400 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2399, i32 0, i32 1, i32 %_lhs2396
  %_lhs2401 = load i32* %i2290
  %len_ptr2402 = getelementptr { i32, [ 0 x i32 ] }** %c2301, i32 0, i32 0
  %len2403 = load i32* %len_ptr2402
  call void @oat_array_bounds_check( i32 %len2403, i32 %_lhs2401 )
  %array_dereferenced2404 = load { i32, [ 0 x i32 ] }** %c2301
  %elt_ptr2405 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2404, i32 0, i32 1, i32 %_lhs2401
  %_lhs2406 = load i32* %elt_ptr2405
  store i32 %_lhs2406, i32* %elt_ptr2400
  %_lhs2407 = load i32* %i2290
  %bop2408 = add i32 %_lhs2407, 1
  store i32 %bop2408, i32* %i2290
  br label %__cond478

__fresh493:
  br label %__post476

__post476:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2261, i32 %low2259, i32 %high2257){

__fresh458:
  %a_slot2262 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2261, { i32, [ 0 x i32 ] }** %a_slot2262
  %low_slot2260 = alloca i32
  store i32 %low2259, i32* %low_slot2260
  %high_slot2258 = alloca i32
  store i32 %high2257, i32* %high_slot2258
  %mid2263 = alloca i32
  store i32 0, i32* %mid2263
  %_lhs2264 = load i32* %low_slot2260
  %_lhs2265 = load i32* %high_slot2258
  %bop2266 = icmp slt i32 %_lhs2264, %_lhs2265
  br i1 %bop2266, label %__then457, label %__else456

__fresh459:
  br label %__then457

__then457:
  %_lhs2267 = load i32* %low_slot2260
  %_lhs2268 = load i32* %high_slot2258
  %bop2269 = add i32 %_lhs2267, %_lhs2268
  %bop2270 = ashr i32 %bop2269, 1
  store i32 %bop2270, i32* %mid2263
  %_lhs2273 = load i32* %mid2263
  %_lhs2272 = load i32* %low_slot2260
  %_lhs2271 = load { i32, [ 0 x i32 ] }** %a_slot2262
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2271, i32 %_lhs2272, i32 %_lhs2273 )
  %_lhs2277 = load i32* %high_slot2258
  %_lhs2275 = load i32* %mid2263
  %bop2276 = add i32 %_lhs2275, 1
  %_lhs2274 = load { i32, [ 0 x i32 ] }** %a_slot2262
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2274, i32 %bop2276, i32 %_lhs2277 )
  %_lhs2281 = load i32* %mid2263
  %_lhs2280 = load i32* %high_slot2258
  %_lhs2279 = load i32* %low_slot2260
  %_lhs2278 = load { i32, [ 0 x i32 ] }** %a_slot2262
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2278, i32 %_lhs2279, i32 %_lhs2280, i32 %_lhs2281 )
  br label %__merge455

__fresh460:
  br label %__else456

__else456:
  br label %__merge455

__merge455:
  ret void
}


define i32 @program (i32 %argc2229, { i32, [ 0 x i8* ] }* %argv2227){

__fresh454:
  %argc_slot2230 = alloca i32
  store i32 %argc2229, i32* %argc_slot2230
  %argv_slot2228 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2227, { i32, [ 0 x i8* ] }** %argv_slot2228
  %i2231 = alloca i32
  store i32 0, i32* %i2231
  %array_ptr2232 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2233 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2232 to { i32, [ 0 x i32 ] }* 
  %index_ptr2234 = getelementptr { i32, [ 0 x i32 ] }* %array2233, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2234
  %index_ptr2235 = getelementptr { i32, [ 0 x i32 ] }* %array2233, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2235
  %index_ptr2236 = getelementptr { i32, [ 0 x i32 ] }* %array2233, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2236
  %index_ptr2237 = getelementptr { i32, [ 0 x i32 ] }* %array2233, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2237
  %index_ptr2238 = getelementptr { i32, [ 0 x i32 ] }* %array2233, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2238
  %index_ptr2239 = getelementptr { i32, [ 0 x i32 ] }* %array2233, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2239
  %index_ptr2240 = getelementptr { i32, [ 0 x i32 ] }* %array2233, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2240
  %index_ptr2241 = getelementptr { i32, [ 0 x i32 ] }* %array2233, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2241
  %index_ptr2242 = getelementptr { i32, [ 0 x i32 ] }* %array2233, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2242
  %index_ptr2243 = getelementptr { i32, [ 0 x i32 ] }* %array2233, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2243
  %a2244 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2233, { i32, [ 0 x i32 ] }** %a2244
  %_lhs2245 = load { i32, [ 0 x i32 ] }** %a2244
  %ret2246 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2245 )
  call void @print_string( i8* %ret2246 )
  %_lhs2247 = load { i32, [ 0 x i32 ] }** %a2244
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2247, i32 0, i32 9 )
  %strval2249 = load i8** @_oat_string2248
  call void @print_string( i8* %strval2249 )
  %_lhs2250 = load { i32, [ 0 x i32 ] }** %a2244
  %ret2251 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2250 )
  call void @print_string( i8* %ret2251 )
  %strval2253 = load i8** @_oat_string2252
  call void @print_string( i8* %strval2253 )
  %_lhs2254 = load i32* %i2231
  ret i32 %_lhs2254
}


