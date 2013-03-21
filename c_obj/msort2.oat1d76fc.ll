declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2414.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2414 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2414.str., i32 0, i32 0), align 4
@_oat_string2410.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2410 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2410.str., i32 0, i32 0), align 4
@a2401 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2401.init
define void @oat_init (){

__fresh939:
  call void @a2401.init(  )
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2450, i32 %low2448, i32 %high2446, i32 %mid2444){

__fresh924:
  %a_slot2451 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2450, { i32, [ 0 x i32 ] }** %a_slot2451
  %low_slot2449 = alloca i32
  store i32 %low2448, i32* %low_slot2449
  %high_slot2447 = alloca i32
  store i32 %high2446, i32* %high_slot2447
  %mid_slot2445 = alloca i32
  store i32 %mid2444, i32* %mid_slot2445
  %i2452 = alloca i32
  store i32 0, i32* %i2452
  %j2453 = alloca i32
  store i32 0, i32* %j2453
  %k2454 = alloca i32
  store i32 0, i32* %k2454
  %array_ptr2456 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2457 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2456 to { i32, [ 0 x i32 ] }* 
  %i2461 = alloca i32
  store i32 1, i32* %i2461
  %i2455 = load i32* %i2461
  br label %__check907

__fresh925:
  br label %__check907

__check907:
  br label %__end906

__fresh926:
  %cmp_op2459 = icmp slt i32 %i2455, 50
  br i32 %cmp_op2459, label %__body908, label %__end906

__fresh927:
  br label %__body908

__body908:
  %elem_ptr2458 = getelementptr { i32, [ 0 x i32 ] }* %array2457, i32 0, i32 1, i32 %i2455
  store i32 0, i32* %elem_ptr2458
  %index_op2460 = add i32 %i2455, 1
  br label %__check907

__fresh928:
  br label %__end906

__end906:
  %c2463 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2457, { i32, [ 0 x i32 ] }** %c2463
  %_lhs2464 = load i32* %low_slot2449
  store i32 %_lhs2464, i32* %i2452
  %_lhs2465 = load i32* %mid_slot2445
  %bop2466 = add i32 %_lhs2465, 1
  store i32 %bop2466, i32* %j2453
  %_lhs2467 = load i32* %low_slot2449
  store i32 %_lhs2467, i32* %k2454
  br label %__cond911

__cond911:
  %_lhs2468 = load i32* %i2452
  %_lhs2469 = load i32* %mid_slot2445
  %bop2470 = icmp sle i32 %_lhs2468, %_lhs2469
  %_lhs2471 = load i32* %j2453
  %_lhs2472 = load i32* %high_slot2447
  %bop2473 = icmp sle i32 %_lhs2471, %_lhs2472
  %bop2474 = and i1 %bop2470, %bop2473
  br i1 %bop2474, label %__body910, label %__post909

__fresh929:
  br label %__body910

__body910:
  %_lhs2475 = load i32* %i2452
  %array_dereferenced2476 = load { i32, [ 0 x i32 ] }** %a_slot2451
  %len_ptr2477 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2476, i32 0, i32 0
  %len2478 = load i32* %len_ptr2477
  call void @oat_array_bounds_check( i32 %len2478, i32 %_lhs2475 )
  %elt_ptr2479 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2476, i32 0, i32 1, i32 %_lhs2475
  %_lhs2480 = load i32* %elt_ptr2479
  %_lhs2481 = load i32* %j2453
  %array_dereferenced2482 = load { i32, [ 0 x i32 ] }** %a_slot2451
  %len_ptr2483 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2482, i32 0, i32 0
  %len2484 = load i32* %len_ptr2483
  call void @oat_array_bounds_check( i32 %len2484, i32 %_lhs2481 )
  %elt_ptr2485 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2482, i32 0, i32 1, i32 %_lhs2481
  %_lhs2486 = load i32* %elt_ptr2485
  %bop2487 = icmp slt i32 %_lhs2480, %_lhs2486
  br i1 %bop2487, label %__then914, label %__else913

__fresh930:
  br label %__then914

__then914:
  %_lhs2488 = load i32* %k2454
  %array_dereferenced2489 = load { i32, [ 0 x i32 ] }** %c2463
  %len_ptr2490 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2489, i32 0, i32 0
  %len2491 = load i32* %len_ptr2490
  call void @oat_array_bounds_check( i32 %len2491, i32 %_lhs2488 )
  %elt_ptr2492 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2489, i32 0, i32 1, i32 %_lhs2488
  %_lhs2493 = load i32* %i2452
  %array_dereferenced2494 = load { i32, [ 0 x i32 ] }** %a_slot2451
  %len_ptr2495 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2494, i32 0, i32 0
  %len2496 = load i32* %len_ptr2495
  call void @oat_array_bounds_check( i32 %len2496, i32 %_lhs2493 )
  %elt_ptr2497 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2494, i32 0, i32 1, i32 %_lhs2493
  %_lhs2498 = load i32* %elt_ptr2497
  store i32 %_lhs2498, i32* %elt_ptr2492
  %_lhs2499 = load i32* %k2454
  %bop2500 = add i32 %_lhs2499, 1
  store i32 %bop2500, i32* %k2454
  %_lhs2501 = load i32* %i2452
  %bop2502 = add i32 %_lhs2501, 1
  store i32 %bop2502, i32* %i2452
  br label %__merge912

__fresh931:
  br label %__else913

__else913:
  %_lhs2503 = load i32* %k2454
  %array_dereferenced2504 = load { i32, [ 0 x i32 ] }** %c2463
  %len_ptr2505 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2504, i32 0, i32 0
  %len2506 = load i32* %len_ptr2505
  call void @oat_array_bounds_check( i32 %len2506, i32 %_lhs2503 )
  %elt_ptr2507 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2504, i32 0, i32 1, i32 %_lhs2503
  %_lhs2508 = load i32* %j2453
  %array_dereferenced2509 = load { i32, [ 0 x i32 ] }** %a_slot2451
  %len_ptr2510 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2509, i32 0, i32 0
  %len2511 = load i32* %len_ptr2510
  call void @oat_array_bounds_check( i32 %len2511, i32 %_lhs2508 )
  %elt_ptr2512 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2509, i32 0, i32 1, i32 %_lhs2508
  %_lhs2513 = load i32* %elt_ptr2512
  store i32 %_lhs2513, i32* %elt_ptr2507
  %_lhs2514 = load i32* %k2454
  %bop2515 = add i32 %_lhs2514, 1
  store i32 %bop2515, i32* %k2454
  %_lhs2516 = load i32* %j2453
  %bop2517 = add i32 %_lhs2516, 1
  store i32 %bop2517, i32* %j2453
  br label %__merge912

__merge912:
  br label %__cond911

__fresh932:
  br label %__post909

__post909:
  br label %__cond917

__cond917:
  %_lhs2518 = load i32* %i2452
  %_lhs2519 = load i32* %mid_slot2445
  %bop2520 = icmp sle i32 %_lhs2518, %_lhs2519
  br i1 %bop2520, label %__body916, label %__post915

__fresh933:
  br label %__body916

__body916:
  %_lhs2521 = load i32* %k2454
  %array_dereferenced2522 = load { i32, [ 0 x i32 ] }** %c2463
  %len_ptr2523 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2522, i32 0, i32 0
  %len2524 = load i32* %len_ptr2523
  call void @oat_array_bounds_check( i32 %len2524, i32 %_lhs2521 )
  %elt_ptr2525 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2522, i32 0, i32 1, i32 %_lhs2521
  %_lhs2526 = load i32* %i2452
  %array_dereferenced2527 = load { i32, [ 0 x i32 ] }** %a_slot2451
  %len_ptr2528 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2527, i32 0, i32 0
  %len2529 = load i32* %len_ptr2528
  call void @oat_array_bounds_check( i32 %len2529, i32 %_lhs2526 )
  %elt_ptr2530 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2527, i32 0, i32 1, i32 %_lhs2526
  %_lhs2531 = load i32* %elt_ptr2530
  store i32 %_lhs2531, i32* %elt_ptr2525
  %_lhs2532 = load i32* %k2454
  %bop2533 = add i32 %_lhs2532, 1
  store i32 %bop2533, i32* %k2454
  %_lhs2534 = load i32* %i2452
  %bop2535 = add i32 %_lhs2534, 1
  store i32 %bop2535, i32* %i2452
  br label %__cond917

__fresh934:
  br label %__post915

__post915:
  br label %__cond920

__cond920:
  %_lhs2536 = load i32* %j2453
  %_lhs2537 = load i32* %high_slot2447
  %bop2538 = icmp sle i32 %_lhs2536, %_lhs2537
  br i1 %bop2538, label %__body919, label %__post918

__fresh935:
  br label %__body919

__body919:
  %_lhs2539 = load i32* %k2454
  %array_dereferenced2540 = load { i32, [ 0 x i32 ] }** %c2463
  %len_ptr2541 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2540, i32 0, i32 0
  %len2542 = load i32* %len_ptr2541
  call void @oat_array_bounds_check( i32 %len2542, i32 %_lhs2539 )
  %elt_ptr2543 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2540, i32 0, i32 1, i32 %_lhs2539
  %_lhs2544 = load i32* %j2453
  %array_dereferenced2545 = load { i32, [ 0 x i32 ] }** %a_slot2451
  %len_ptr2546 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2545, i32 0, i32 0
  %len2547 = load i32* %len_ptr2546
  call void @oat_array_bounds_check( i32 %len2547, i32 %_lhs2544 )
  %elt_ptr2548 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2545, i32 0, i32 1, i32 %_lhs2544
  %_lhs2549 = load i32* %elt_ptr2548
  store i32 %_lhs2549, i32* %elt_ptr2543
  %_lhs2550 = load i32* %k2454
  %bop2551 = add i32 %_lhs2550, 1
  store i32 %bop2551, i32* %k2454
  %_lhs2552 = load i32* %j2453
  %bop2553 = add i32 %_lhs2552, 1
  store i32 %bop2553, i32* %j2453
  br label %__cond920

__fresh936:
  br label %__post918

__post918:
  %_lhs2554 = load i32* %low_slot2449
  store i32 %_lhs2554, i32* %i2452
  br label %__cond923

__cond923:
  %_lhs2555 = load i32* %i2452
  %_lhs2556 = load i32* %k2454
  %bop2557 = icmp slt i32 %_lhs2555, %_lhs2556
  br i1 %bop2557, label %__body922, label %__post921

__fresh937:
  br label %__body922

__body922:
  %_lhs2558 = load i32* %i2452
  %array_dereferenced2559 = load { i32, [ 0 x i32 ] }** %a_slot2451
  %len_ptr2560 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2559, i32 0, i32 0
  %len2561 = load i32* %len_ptr2560
  call void @oat_array_bounds_check( i32 %len2561, i32 %_lhs2558 )
  %elt_ptr2562 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2559, i32 0, i32 1, i32 %_lhs2558
  %_lhs2563 = load i32* %i2452
  %array_dereferenced2564 = load { i32, [ 0 x i32 ] }** %c2463
  %len_ptr2565 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2564, i32 0, i32 0
  %len2566 = load i32* %len_ptr2565
  call void @oat_array_bounds_check( i32 %len2566, i32 %_lhs2563 )
  %elt_ptr2567 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2564, i32 0, i32 1, i32 %_lhs2563
  %_lhs2568 = load i32* %elt_ptr2567
  store i32 %_lhs2568, i32* %elt_ptr2562
  %_lhs2569 = load i32* %i2452
  %bop2570 = add i32 %_lhs2569, 1
  store i32 %bop2570, i32* %i2452
  br label %__cond923

__fresh938:
  br label %__post921

__post921:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2423, i32 %low2421, i32 %high2419){

__fresh903:
  %a_slot2424 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2423, { i32, [ 0 x i32 ] }** %a_slot2424
  %low_slot2422 = alloca i32
  store i32 %low2421, i32* %low_slot2422
  %high_slot2420 = alloca i32
  store i32 %high2419, i32* %high_slot2420
  %mid2425 = alloca i32
  store i32 0, i32* %mid2425
  %_lhs2426 = load i32* %low_slot2422
  %_lhs2427 = load i32* %high_slot2420
  %bop2428 = icmp slt i32 %_lhs2426, %_lhs2427
  br i1 %bop2428, label %__then902, label %__else901

__fresh904:
  br label %__then902

__then902:
  %_lhs2429 = load i32* %low_slot2422
  %_lhs2430 = load i32* %high_slot2420
  %bop2431 = add i32 %_lhs2429, %_lhs2430
  %bop2432 = ashr i32 %bop2431, 1
  store i32 %bop2432, i32* %mid2425
  %_lhs2435 = load i32* %mid2425
  %_lhs2434 = load i32* %low_slot2422
  %_lhs2433 = load { i32, [ 0 x i32 ] }** %a_slot2424
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2433, i32 %_lhs2434, i32 %_lhs2435 )
  %_lhs2439 = load i32* %high_slot2420
  %_lhs2437 = load i32* %mid2425
  %bop2438 = add i32 %_lhs2437, 1
  %_lhs2436 = load { i32, [ 0 x i32 ] }** %a_slot2424
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2436, i32 %bop2438, i32 %_lhs2439 )
  %_lhs2443 = load i32* %mid2425
  %_lhs2442 = load i32* %high_slot2420
  %_lhs2441 = load i32* %low_slot2422
  %_lhs2440 = load { i32, [ 0 x i32 ] }** %a_slot2424
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2440, i32 %_lhs2441, i32 %_lhs2442, i32 %_lhs2443 )
  br label %__merge900

__fresh905:
  br label %__else901

__else901:
  br label %__merge900

__merge900:
  ret void
}


define i32 @program (i32 %argc2404, { i32, [ 0 x i8* ] }* %argv2402){

__fresh899:
  %argc_slot2405 = alloca i32
  store i32 %argc2404, i32* %argc_slot2405
  %argv_slot2403 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2402, { i32, [ 0 x i8* ] }** %argv_slot2403
  %i2406 = alloca i32
  store i32 0, i32* %i2406
  %_lhs2407 = load { i32, [ 0 x i32 ] }** @a2401
  %ret2408 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2407 )
  call void @print_string( i8* %ret2408 )
  %_lhs2409 = load { i32, [ 0 x i32 ] }** @a2401
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2409, i32 0, i32 9 )
  %strval2411 = load i8** @_oat_string2410
  call void @print_string( i8* %strval2411 )
  %_lhs2412 = load { i32, [ 0 x i32 ] }** @a2401
  %ret2413 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2412 )
  call void @print_string( i8* %ret2413 )
  %strval2415 = load i8** @_oat_string2414
  call void @print_string( i8* %strval2415 )
  %_lhs2416 = load i32* %i2406
  ret i32 %_lhs2416
}


define void @a2401.init (){

__fresh898:
  %array_ptr2389 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2390 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2389 to { i32, [ 0 x i32 ] }* 
  %index_ptr2391 = getelementptr { i32, [ 0 x i32 ] }* %array2390, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2391
  %index_ptr2392 = getelementptr { i32, [ 0 x i32 ] }* %array2390, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2392
  %index_ptr2393 = getelementptr { i32, [ 0 x i32 ] }* %array2390, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2393
  %index_ptr2394 = getelementptr { i32, [ 0 x i32 ] }* %array2390, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2394
  %index_ptr2395 = getelementptr { i32, [ 0 x i32 ] }* %array2390, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2395
  %index_ptr2396 = getelementptr { i32, [ 0 x i32 ] }* %array2390, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2396
  %index_ptr2397 = getelementptr { i32, [ 0 x i32 ] }* %array2390, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2397
  %index_ptr2398 = getelementptr { i32, [ 0 x i32 ] }* %array2390, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2398
  %index_ptr2399 = getelementptr { i32, [ 0 x i32 ] }* %array2390, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2399
  %index_ptr2400 = getelementptr { i32, [ 0 x i32 ] }* %array2390, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2400
  store { i32, [ 0 x i32 ] }* %array2390, { i32, [ 0 x i32 ] }** @a2401
  ret void
}


