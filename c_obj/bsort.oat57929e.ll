declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2437.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2437 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2437.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh515:
  ret void
}


define i32 @program (i32 %argc2393, { i32, [ 0 x i8* ] }* %argv2391){

__fresh512:
  %argc_slot2394 = alloca i32
  store i32 %argc2393, i32* %argc_slot2394
  %argv_slot2392 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2391, { i32, [ 0 x i8* ] }** %argv_slot2392
  store i32 1, i32* %i2395
  %index_op2400 = load i32* %i2395
  br label %__check510

__check510:
  %cmp_op2399 = icmp slt i32 %index_op2400, 8
  br i32 %cmp_op2399, label %__body511, label %__end509

__fresh513:
  br label %__body511

__body511:
  %elem_ptr2398 = getelementptr { i32, [ 0 x i32 ] }* %array2397, i32 0, i32 1, i32 %index_op2400
  store i32 0, i32* %elem_ptr2398
  %index_op2400 = add i32 %index_op2400, 1
  br label %__check510

__fresh514:
  br label %__end509

__end509:
  %a2402 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2397, { i32, [ 0 x i32 ] }** %a2402
  %len_ptr2403 = getelementptr { i32, [ 0 x i32 ] }** %a2402, i32 0, i32 0
  %len2404 = load i32* %len_ptr2403
  call void @oat_array_bounds_check( i32 %len2404, i32 0 )
  %array_dereferenced2405 = load { i32, [ 0 x i32 ] }** %a2402
  %elt_ptr2406 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2405, i32 0, i32 1, i32 0
  store i32 121, i32* %elt_ptr2406
  %len_ptr2407 = getelementptr { i32, [ 0 x i32 ] }** %a2402, i32 0, i32 0
  %len2408 = load i32* %len_ptr2407
  call void @oat_array_bounds_check( i32 %len2408, i32 1 )
  %array_dereferenced2409 = load { i32, [ 0 x i32 ] }** %a2402
  %elt_ptr2410 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2409, i32 0, i32 1, i32 1
  store i32 125, i32* %elt_ptr2410
  %len_ptr2411 = getelementptr { i32, [ 0 x i32 ] }** %a2402, i32 0, i32 0
  %len2412 = load i32* %len_ptr2411
  call void @oat_array_bounds_check( i32 %len2412, i32 2 )
  %array_dereferenced2413 = load { i32, [ 0 x i32 ] }** %a2402
  %elt_ptr2414 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2413, i32 0, i32 1, i32 2
  store i32 120, i32* %elt_ptr2414
  %len_ptr2415 = getelementptr { i32, [ 0 x i32 ] }** %a2402, i32 0, i32 0
  %len2416 = load i32* %len_ptr2415
  call void @oat_array_bounds_check( i32 %len2416, i32 3 )
  %array_dereferenced2417 = load { i32, [ 0 x i32 ] }** %a2402
  %elt_ptr2418 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2417, i32 0, i32 1, i32 3
  store i32 111, i32* %elt_ptr2418
  %len_ptr2419 = getelementptr { i32, [ 0 x i32 ] }** %a2402, i32 0, i32 0
  %len2420 = load i32* %len_ptr2419
  call void @oat_array_bounds_check( i32 %len2420, i32 4 )
  %array_dereferenced2421 = load { i32, [ 0 x i32 ] }** %a2402
  %elt_ptr2422 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2421, i32 0, i32 1, i32 4
  store i32 116, i32* %elt_ptr2422
  %len_ptr2423 = getelementptr { i32, [ 0 x i32 ] }** %a2402, i32 0, i32 0
  %len2424 = load i32* %len_ptr2423
  call void @oat_array_bounds_check( i32 %len2424, i32 5 )
  %array_dereferenced2425 = load { i32, [ 0 x i32 ] }** %a2402
  %elt_ptr2426 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2425, i32 0, i32 1, i32 5
  store i32 110, i32* %elt_ptr2426
  %len_ptr2427 = getelementptr { i32, [ 0 x i32 ] }** %a2402, i32 0, i32 0
  %len2428 = load i32* %len_ptr2427
  call void @oat_array_bounds_check( i32 %len2428, i32 6 )
  %array_dereferenced2429 = load { i32, [ 0 x i32 ] }** %a2402
  %elt_ptr2430 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2429, i32 0, i32 1, i32 6
  store i32 117, i32* %elt_ptr2430
  %len_ptr2431 = getelementptr { i32, [ 0 x i32 ] }** %a2402, i32 0, i32 0
  %len2432 = load i32* %len_ptr2431
  call void @oat_array_bounds_check( i32 %len2432, i32 7 )
  %array_dereferenced2433 = load { i32, [ 0 x i32 ] }** %a2402
  %elt_ptr2434 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2433, i32 0, i32 1, i32 7
  store i32 119, i32* %elt_ptr2434
  %_lhs2435 = load { i32, [ 0 x i32 ] }** %a2402
  %ret2436 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2435 )
  call void @print_string( i8* %ret2436 )
  %strval2438 = load i8** @_oat_string2437
  call void @print_string( i8* %strval2438 )
  %_lhs2440 = load { i32, [ 0 x i32 ] }** %a2402
  %len_ptr2441 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2440, i32 0, i32 0
  %len2442 = load i32* %len_ptr2441
  %_lhs2439 = load { i32, [ 0 x i32 ] }** %a2402
  call void @bubble_sort( { i32, [ 0 x i32 ] }* %_lhs2439, i32 %len2442 )
  %_lhs2443 = load { i32, [ 0 x i32 ] }** %a2402
  %ret2444 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2443 )
  call void @print_string( i8* %ret2444 )
  %unop2445 = sub i32 0, 1
  ret i32 %unop2445
}


define void @bubble_sort ({ i32, [ 0 x i32 ] }* %numbers2336, i32 %array_size2334){

__fresh502:
  %numbers_slot2337 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %numbers2336, { i32, [ 0 x i32 ] }** %numbers_slot2337
  %array_size_slot2335 = alloca i32
  store i32 %array_size2334, i32* %array_size_slot2335
  %temp2338 = alloca i32
  store i32 0, i32* %temp2338
  %_lhs2339 = load i32* %array_size_slot2335
  %bop2340 = sub i32 %_lhs2339, 1
  %i2341 = alloca i32
  store i32 %bop2340, i32* %i2341
  br label %__cond495

__cond495:
  %_lhs2342 = load i32* %i2341
  %bop2343 = icmp sgt i32 %_lhs2342, 0
  br i1 %bop2343, label %__body494, label %__post493

__fresh503:
  br label %__body494

__body494:
  %j2344 = alloca i32
  store i32 1, i32* %j2344
  br label %__cond498

__cond498:
  %_lhs2345 = load i32* %j2344
  %_lhs2346 = load i32* %i2341
  %bop2347 = icmp sle i32 %_lhs2345, %_lhs2346
  br i1 %bop2347, label %__body497, label %__post496

__fresh504:
  br label %__body497

__body497:
  %_lhs2348 = load i32* %j2344
  %bop2349 = sub i32 %_lhs2348, 1
  %len_ptr2350 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2337, i32 0, i32 0
  %len2351 = load i32* %len_ptr2350
  call void @oat_array_bounds_check( i32 %len2351, i32 %bop2349 )
  %array_dereferenced2352 = load { i32, [ 0 x i32 ] }** %numbers_slot2337
  %elt_ptr2353 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2352, i32 0, i32 1, i32 %bop2349
  %_lhs2354 = load i32* %elt_ptr2353
  %_lhs2355 = load i32* %j2344
  %len_ptr2356 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2337, i32 0, i32 0
  %len2357 = load i32* %len_ptr2356
  call void @oat_array_bounds_check( i32 %len2357, i32 %_lhs2355 )
  %array_dereferenced2358 = load { i32, [ 0 x i32 ] }** %numbers_slot2337
  %elt_ptr2359 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2358, i32 0, i32 1, i32 %_lhs2355
  %_lhs2360 = load i32* %elt_ptr2359
  %bop2361 = icmp sgt i32 %_lhs2354, %_lhs2360
  br i1 %bop2361, label %__then501, label %__else500

__fresh505:
  br label %__then501

__then501:
  %_lhs2362 = load i32* %j2344
  %bop2363 = sub i32 %_lhs2362, 1
  %len_ptr2364 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2337, i32 0, i32 0
  %len2365 = load i32* %len_ptr2364
  call void @oat_array_bounds_check( i32 %len2365, i32 %bop2363 )
  %array_dereferenced2366 = load { i32, [ 0 x i32 ] }** %numbers_slot2337
  %elt_ptr2367 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2366, i32 0, i32 1, i32 %bop2363
  %_lhs2368 = load i32* %elt_ptr2367
  store i32 %_lhs2368, i32* %temp2338
  %_lhs2369 = load i32* %j2344
  %bop2370 = sub i32 %_lhs2369, 1
  %len_ptr2371 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2337, i32 0, i32 0
  %len2372 = load i32* %len_ptr2371
  call void @oat_array_bounds_check( i32 %len2372, i32 %bop2370 )
  %array_dereferenced2373 = load { i32, [ 0 x i32 ] }** %numbers_slot2337
  %elt_ptr2374 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2373, i32 0, i32 1, i32 %bop2370
  %_lhs2375 = load i32* %j2344
  %len_ptr2376 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2337, i32 0, i32 0
  %len2377 = load i32* %len_ptr2376
  call void @oat_array_bounds_check( i32 %len2377, i32 %_lhs2375 )
  %array_dereferenced2378 = load { i32, [ 0 x i32 ] }** %numbers_slot2337
  %elt_ptr2379 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2378, i32 0, i32 1, i32 %_lhs2375
  %_lhs2380 = load i32* %elt_ptr2379
  store i32 %_lhs2380, i32* %elt_ptr2374
  %_lhs2381 = load i32* %j2344
  %len_ptr2382 = getelementptr { i32, [ 0 x i32 ] }** %numbers_slot2337, i32 0, i32 0
  %len2383 = load i32* %len_ptr2382
  call void @oat_array_bounds_check( i32 %len2383, i32 %_lhs2381 )
  %array_dereferenced2384 = load { i32, [ 0 x i32 ] }** %numbers_slot2337
  %elt_ptr2385 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2384, i32 0, i32 1, i32 %_lhs2381
  %_lhs2386 = load i32* %temp2338
  store i32 %_lhs2386, i32* %elt_ptr2385
  br label %__merge499

__fresh506:
  br label %__else500

__else500:
  br label %__merge499

__merge499:
  %_lhs2387 = load i32* %j2344
  %bop2388 = add i32 %_lhs2387, 1
  store i32 %bop2388, i32* %j2344
  br label %__cond498

__fresh507:
  br label %__post496

__post496:
  %_lhs2389 = load i32* %i2341
  %bop2390 = sub i32 %_lhs2389, 1
  store i32 %bop2390, i32* %i2341
  br label %__cond495

__fresh508:
  br label %__post493

__post493:
  ret void
}


