declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2396.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2396 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2396.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh515:
  ret void
}


define i32 @program (i32 %argc2353, { i32, [ 0 x i8* ] }* %argv2351){

__fresh512:
  %argc_slot2354 = alloca i32
  store i32 %argc2353, i32* %argc_slot2354
  %argv_slot2352 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2351, { i32, [ 0 x i8* ] }** %argv_slot2352
  br label %__check510

__check510:
  %cmp_op2359 = icmp slt i32 1, 8
  br i32 %cmp_op2359, label %__body511, label %__end509

__fresh513:
  br label %__body511

__body511:
  store i32* %i2355, i32 1
  %elem_ptr2358 = getelementptr { i32, [ 0 x i32 ] }* %array2357, i32 0, i32 1, i32 1
  %elem_ptr2358 = load i32* %i2355
  %incr_op2360 = add i32 1, 1
  store i32 1, i32 %incr_op2360
  br label %__check510

__fresh514:
  br label %__end509

__end509:
  %a2361 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2357, { i32, [ 0 x i32 ] }** %a2361
  %len_ptr2362 = getelementptr { i32, [ 0 x i32 ] }** %a2361, i32 0, i32 0
  %len2363 = load i32* %len_ptr2362
  call void @oat_array_bounds_check( i32 %len2363, i32 0 )
  %array_dereferenced2364 = load { i32, [ 0 x i32 ] }** %a2361
  %elt_ptr2365 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2364, i32 0, i32 1, i32 0
  store i32 121, i32* %elt_ptr2365
  %len_ptr2366 = getelementptr { i32, [ 0 x i32 ] }** %a2361, i32 0, i32 0
  %len2367 = load i32* %len_ptr2366
  call void @oat_array_bounds_check( i32 %len2367, i32 1 )
  %array_dereferenced2368 = load { i32, [ 0 x i32 ] }** %a2361
  %elt_ptr2369 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2368, i32 0, i32 1, i32 1
  store i32 125, i32* %elt_ptr2369
  %len_ptr2370 = getelementptr { i32, [ 0 x i32 ] }** %a2361, i32 0, i32 0
  %len2371 = load i32* %len_ptr2370
  call void @oat_array_bounds_check( i32 %len2371, i32 2 )
  %array_dereferenced2372 = load { i32, [ 0 x i32 ] }** %a2361
  %elt_ptr2373 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2372, i32 0, i32 1, i32 2
  store i32 120, i32* %elt_ptr2373
  %len_ptr2374 = getelementptr { i32, [ 0 x i32 ] }** %a2361, i32 0, i32 0
  %len2375 = load i32* %len_ptr2374
  call void @oat_array_bounds_check( i32 %len2375, i32 3 )
  %array_dereferenced2376 = load { i32, [ 0 x i32 ] }** %a2361
  %elt_ptr2377 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2376, i32 0, i32 1, i32 3
  store i32 111, i32* %elt_ptr2377
  %len_ptr2378 = getelementptr { i32, [ 0 x i32 ] }** %a2361, i32 0, i32 0
  %len2379 = load i32* %len_ptr2378
  call void @oat_array_bounds_check( i32 %len2379, i32 4 )
  %array_dereferenced2380 = load { i32, [ 0 x i32 ] }** %a2361
  %elt_ptr2381 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2380, i32 0, i32 1, i32 4
  store i32 116, i32* %elt_ptr2381
  %len_ptr2382 = getelementptr { i32, [ 0 x i32 ] }** %a2361, i32 0, i32 0
  %len2383 = load i32* %len_ptr2382
  call void @oat_array_bounds_check( i32 %len2383, i32 5 )
  %array_dereferenced2384 = load { i32, [ 0 x i32 ] }** %a2361
  %elt_ptr2385 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2384, i32 0, i32 1, i32 5
  store i32 110, i32* %elt_ptr2385
  %len_ptr2386 = getelementptr { i32, [ 0 x i32 ] }** %a2361, i32 0, i32 0
  %len2387 = load i32* %len_ptr2386
  call void @oat_array_bounds_check( i32 %len2387, i32 6 )
  %array_dereferenced2388 = load { i32, [ 0 x i32 ] }** %a2361
  %elt_ptr2389 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2388, i32 0, i32 1, i32 6
  store i32 117, i32* %elt_ptr2389
  %len_ptr2390 = getelementptr { i32, [ 0 x i32 ] }** %a2361, i32 0, i32 0
  %len2391 = load i32* %len_ptr2390
  call void @oat_array_bounds_check( i32 %len2391, i32 7 )
  %array_dereferenced2392 = load { i32, [ 0 x i32 ] }** %a2361
  %elt_ptr2393 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2392, i32 0, i32 1, i32 7
  store i32 119, i32* %elt_ptr2393
  %_lhs2394 = load { i32, [ 0 x i32 ] }** %a2361
  %ret2395 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2394 )
  call void @print_string( i8* %ret2395 )
  %strval2397 = load i8** @_oat_string2396
  call void @print_string( i8* %strval2397 )
  %_lhs2399 = load { i32, [ 0 x i32 ] }** %a2361
  %len_ptr2400 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2399, i32 0, i32 0
  %len2401 = load i32* %len_ptr2400
  %_lhs2398 = load { i32, [ 0 x i32 ] }** %a2361
  call void @bubble_sort( { i32, [ 0 x i32 ] }* %_lhs2398, i32 %len2401 )
  %_lhs2402 = load { i32, [ 0 x i32 ] }** %a2361
  %ret2403 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2402 )
  call void @print_string( i8* %ret2403 )
  %unop2404 = sub i32 0, 1
  ret i32 %unop2404
}


define void @bubble_sort ({ i32, [ 0 x i32 ] }* %numbers2296, i32 %array_size2294){

__fresh502:
  %numbers_slot2297 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %numbers2296, { i32, [ 0 x i32 ] }** %numbers_slot2297
  %array_size_slot2295 = alloca i32
  store i32 %array_size2294, i32* %array_size_slot2295
  %temp2298 = alloca i32
  store i32 0, i32* %temp2298
  %_lhs2299 = load i32* %array_size_slot2295
  %bop2300 = sub i32 %_lhs2299, 1
  %i2301 = alloca i32
  store i32 %bop2300, i32* %i2301
  br label %__cond495

__cond495:
  %_lhs2302 = load i32* %i2301
  %bop2303 = icmp sgt i32 %_lhs2302, 0
  br i1 %bop2303, label %__body494, label %__post493

__fresh503:
  br label %__body494

__body494:
  %j2304 = alloca i32
  store i32 1, i32* %j2304
  br label %__cond498

__cond498:
  %_lhs2305 = load i32* %j2304
  %_lhs2306 = load i32* %i2301
  %bop2307 = icmp sle i32 %_lhs2305, %_lhs2306
  br i1 %bop2307, label %__body497, label %__post496

__fresh504:
  br label %__body497

__body497:
  %_lhs2308 = load i32* %j2304
  %bop2309 = sub i32 %_lhs2308, 1
  %len_ptr2310 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2297, i32 0, i32 0
  %len2311 = load i32* %len_ptr2310
  call void @oat_array_bounds_check( i32 %len2311, i32 %bop2309 )
  %array_dereferenced2312 = load { i32, [ 0 x i32 ] }** %numbers_slot2297
  %elt_ptr2313 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2312, i32 0, i32 1, i32 %bop2309
  %_lhs2314 = load i32* %elt_ptr2313
  %_lhs2315 = load i32* %j2304
  %len_ptr2316 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2297, i32 0, i32 0
  %len2317 = load i32* %len_ptr2316
  call void @oat_array_bounds_check( i32 %len2317, i32 %_lhs2315 )
  %array_dereferenced2318 = load { i32, [ 0 x i32 ] }** %numbers_slot2297
  %elt_ptr2319 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2318, i32 0, i32 1, i32 %_lhs2315
  %_lhs2320 = load i32* %elt_ptr2319
  %bop2321 = icmp sgt i32 %_lhs2314, %_lhs2320
  br i1 %bop2321, label %__then501, label %__else500

__fresh505:
  br label %__then501

__then501:
  %_lhs2322 = load i32* %j2304
  %bop2323 = sub i32 %_lhs2322, 1
  %len_ptr2324 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2297, i32 0, i32 0
  %len2325 = load i32* %len_ptr2324
  call void @oat_array_bounds_check( i32 %len2325, i32 %bop2323 )
  %array_dereferenced2326 = load { i32, [ 0 x i32 ] }** %numbers_slot2297
  %elt_ptr2327 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2326, i32 0, i32 1, i32 %bop2323
  %_lhs2328 = load i32* %elt_ptr2327
  store i32 %_lhs2328, i32* %temp2298
  %_lhs2329 = load i32* %j2304
  %bop2330 = sub i32 %_lhs2329, 1
  %len_ptr2331 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2297, i32 0, i32 0
  %len2332 = load i32* %len_ptr2331
  call void @oat_array_bounds_check( i32 %len2332, i32 %bop2330 )
  %array_dereferenced2333 = load { i32, [ 0 x i32 ] }** %numbers_slot2297
  %elt_ptr2334 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2333, i32 0, i32 1, i32 %bop2330
  %_lhs2335 = load i32* %j2304
  %len_ptr2336 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2297, i32 0, i32 0
  %len2337 = load i32* %len_ptr2336
  call void @oat_array_bounds_check( i32 %len2337, i32 %_lhs2335 )
  %array_dereferenced2338 = load { i32, [ 0 x i32 ] }** %numbers_slot2297
  %elt_ptr2339 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2338, i32 0, i32 1, i32 %_lhs2335
  %_lhs2340 = load i32* %elt_ptr2339
  store i32 %_lhs2340, i32* %elt_ptr2334
  %_lhs2341 = load i32* %j2304
  %len_ptr2342 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2297, i32 0, i32 0
  %len2343 = load i32* %len_ptr2342
  call void @oat_array_bounds_check( i32 %len2343, i32 %_lhs2341 )
  %array_dereferenced2344 = load { i32, [ 0 x i32 ] }** %numbers_slot2297
  %elt_ptr2345 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2344, i32 0, i32 1, i32 %_lhs2341
  %_lhs2346 = load i32* %temp2298
  store i32 %_lhs2346, i32* %elt_ptr2345
  br label %__merge499

__fresh506:
  br label %__else500

__else500:
  br label %__merge499

__merge499:
  %_lhs2347 = load i32* %j2304
  %bop2348 = add i32 %_lhs2347, 1
  store i32 %bop2348, i32* %j2304
  br label %__cond498

__fresh507:
  br label %__post496

__post496:
  %_lhs2349 = load i32* %i2301
  %bop2350 = sub i32 %_lhs2349, 1
  store i32 %bop2350, i32* %i2301
  br label %__cond495

__fresh508:
  br label %__post493

__post493:
  ret void
}


