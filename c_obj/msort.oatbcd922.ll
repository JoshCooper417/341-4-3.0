declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2431.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2431 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2431.str., i32 0, i32 0), align 4
@_oat_string2427.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2427 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2427.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh554:
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2467, i32 %low2465, i32 %high2463, i32 %mid2461){

__fresh541:
  %a_slot2468 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2467, { i32, [ 0 x i32 ] }** %a_slot2468
  %low_slot2466 = alloca i32
  store i32 %low2465, i32* %low_slot2466
  %high_slot2464 = alloca i32
  store i32 %high2463, i32* %high_slot2464
  %mid_slot2462 = alloca i32
  store i32 %mid2461, i32* %mid_slot2462
  %i2469 = alloca i32
  store i32 0, i32* %i2469
  %j2470 = alloca i32
  store i32 0, i32* %j2470
  %k2471 = alloca i32
  store i32 0, i32* %k2471
  br label %__check524

__check524:
  %cmp_op2476 = icmp slt i32 1, 50
  br i32 %cmp_op2476, label %__body525, label %__end523

__fresh542:
  br label %__body525

__body525:
  store i32* %i2472, i32 1
  %elem_ptr2475 = getelementptr { i32, [ 0 x i32 ] }* %array2474, i32 0, i32 1, i32 1
  %elem_ptr2475 = load i32* %i2472
  %incr_op2477 = add i32 1, 1
  store i32 1, i32 %incr_op2477
  br label %__check524

__fresh543:
  br label %__end523

__end523:
  %c2478 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2474, { i32, [ 0 x i32 ] }** %c2478
  %_lhs2479 = load i32* %low_slot2466
  store i32 %_lhs2479, i32* %i2469
  %_lhs2480 = load i32* %mid_slot2462
  %bop2481 = add i32 %_lhs2480, 1
  store i32 %bop2481, i32* %j2470
  %_lhs2482 = load i32* %low_slot2466
  store i32 %_lhs2482, i32* %k2471
  br label %__cond528

__cond528:
  %_lhs2483 = load i32* %i2469
  %_lhs2484 = load i32* %mid_slot2462
  %bop2485 = icmp sle i32 %_lhs2483, %_lhs2484
  %_lhs2486 = load i32* %j2470
  %_lhs2487 = load i32* %high_slot2464
  %bop2488 = icmp sle i32 %_lhs2486, %_lhs2487
  %bop2489 = and i1 %bop2485, %bop2488
  br i1 %bop2489, label %__body527, label %__post526

__fresh544:
  br label %__body527

__body527:
  %_lhs2490 = load i32* %i2469
  %len_ptr2491 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2468, i32 0, i32 0
  %len2492 = load i32* %len_ptr2491
  call void @oat_array_bounds_check( i32 %len2492, i32 %_lhs2490 )
  %array_dereferenced2493 = load { i32, [ 0 x i32 ] }** %a_slot2468
  %elt_ptr2494 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2493, i32 0, i32 1, i32 %_lhs2490
  %_lhs2495 = load i32* %elt_ptr2494
  %_lhs2496 = load i32* %j2470
  %len_ptr2497 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2468, i32 0, i32 0
  %len2498 = load i32* %len_ptr2497
  call void @oat_array_bounds_check( i32 %len2498, i32 %_lhs2496 )
  %array_dereferenced2499 = load { i32, [ 0 x i32 ] }** %a_slot2468
  %elt_ptr2500 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2499, i32 0, i32 1, i32 %_lhs2496
  %_lhs2501 = load i32* %elt_ptr2500
  %bop2502 = icmp slt i32 %_lhs2495, %_lhs2501
  br i1 %bop2502, label %__then531, label %__else530

__fresh545:
  br label %__then531

__then531:
  %_lhs2503 = load i32* %k2471
  %len_ptr2504 = getelementptr { i32, [ 0 x i32 ] }** %c2478, i32 0, i32 0
  %len2505 = load i32* %len_ptr2504
  call void @oat_array_bounds_check( i32 %len2505, i32 %_lhs2503 )
  %array_dereferenced2506 = load { i32, [ 0 x i32 ] }** %c2478
  %elt_ptr2507 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2506, i32 0, i32 1, i32 %_lhs2503
  %_lhs2508 = load i32* %i2469
  %len_ptr2509 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2468, i32 0, i32 0
  %len2510 = load i32* %len_ptr2509
  call void @oat_array_bounds_check( i32 %len2510, i32 %_lhs2508 )
  %array_dereferenced2511 = load { i32, [ 0 x i32 ] }** %a_slot2468
  %elt_ptr2512 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2511, i32 0, i32 1, i32 %_lhs2508
  %_lhs2513 = load i32* %elt_ptr2512
  store i32 %_lhs2513, i32* %elt_ptr2507
  %_lhs2514 = load i32* %k2471
  %bop2515 = add i32 %_lhs2514, 1
  store i32 %bop2515, i32* %k2471
  %_lhs2516 = load i32* %i2469
  %bop2517 = add i32 %_lhs2516, 1
  store i32 %bop2517, i32* %i2469
  br label %__merge529

__fresh546:
  br label %__else530

__else530:
  %_lhs2518 = load i32* %k2471
  %len_ptr2519 = getelementptr { i32, [ 0 x i32 ] }** %c2478, i32 0, i32 0
  %len2520 = load i32* %len_ptr2519
  call void @oat_array_bounds_check( i32 %len2520, i32 %_lhs2518 )
  %array_dereferenced2521 = load { i32, [ 0 x i32 ] }** %c2478
  %elt_ptr2522 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2521, i32 0, i32 1, i32 %_lhs2518
  %_lhs2523 = load i32* %j2470
  %len_ptr2524 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2468, i32 0, i32 0
  %len2525 = load i32* %len_ptr2524
  call void @oat_array_bounds_check( i32 %len2525, i32 %_lhs2523 )
  %array_dereferenced2526 = load { i32, [ 0 x i32 ] }** %a_slot2468
  %elt_ptr2527 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2526, i32 0, i32 1, i32 %_lhs2523
  %_lhs2528 = load i32* %elt_ptr2527
  store i32 %_lhs2528, i32* %elt_ptr2522
  %_lhs2529 = load i32* %k2471
  %bop2530 = add i32 %_lhs2529, 1
  store i32 %bop2530, i32* %k2471
  %_lhs2531 = load i32* %j2470
  %bop2532 = add i32 %_lhs2531, 1
  store i32 %bop2532, i32* %j2470
  br label %__merge529

__merge529:
  br label %__cond528

__fresh547:
  br label %__post526

__post526:
  br label %__cond534

__cond534:
  %_lhs2533 = load i32* %i2469
  %_lhs2534 = load i32* %mid_slot2462
  %bop2535 = icmp sle i32 %_lhs2533, %_lhs2534
  br i1 %bop2535, label %__body533, label %__post532

__fresh548:
  br label %__body533

__body533:
  %_lhs2536 = load i32* %k2471
  %len_ptr2537 = getelementptr { i32, [ 0 x i32 ] }** %c2478, i32 0, i32 0
  %len2538 = load i32* %len_ptr2537
  call void @oat_array_bounds_check( i32 %len2538, i32 %_lhs2536 )
  %array_dereferenced2539 = load { i32, [ 0 x i32 ] }** %c2478
  %elt_ptr2540 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2539, i32 0, i32 1, i32 %_lhs2536
  %_lhs2541 = load i32* %i2469
  %len_ptr2542 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2468, i32 0, i32 0
  %len2543 = load i32* %len_ptr2542
  call void @oat_array_bounds_check( i32 %len2543, i32 %_lhs2541 )
  %array_dereferenced2544 = load { i32, [ 0 x i32 ] }** %a_slot2468
  %elt_ptr2545 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2544, i32 0, i32 1, i32 %_lhs2541
  %_lhs2546 = load i32* %elt_ptr2545
  store i32 %_lhs2546, i32* %elt_ptr2540
  %_lhs2547 = load i32* %k2471
  %bop2548 = add i32 %_lhs2547, 1
  store i32 %bop2548, i32* %k2471
  %_lhs2549 = load i32* %i2469
  %bop2550 = add i32 %_lhs2549, 1
  store i32 %bop2550, i32* %i2469
  br label %__cond534

__fresh549:
  br label %__post532

__post532:
  br label %__cond537

__cond537:
  %_lhs2551 = load i32* %j2470
  %_lhs2552 = load i32* %high_slot2464
  %bop2553 = icmp sle i32 %_lhs2551, %_lhs2552
  br i1 %bop2553, label %__body536, label %__post535

__fresh550:
  br label %__body536

__body536:
  %_lhs2554 = load i32* %k2471
  %len_ptr2555 = getelementptr { i32, [ 0 x i32 ] }** %c2478, i32 0, i32 0
  %len2556 = load i32* %len_ptr2555
  call void @oat_array_bounds_check( i32 %len2556, i32 %_lhs2554 )
  %array_dereferenced2557 = load { i32, [ 0 x i32 ] }** %c2478
  %elt_ptr2558 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2557, i32 0, i32 1, i32 %_lhs2554
  %_lhs2559 = load i32* %j2470
  %len_ptr2560 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2468, i32 0, i32 0
  %len2561 = load i32* %len_ptr2560
  call void @oat_array_bounds_check( i32 %len2561, i32 %_lhs2559 )
  %array_dereferenced2562 = load { i32, [ 0 x i32 ] }** %a_slot2468
  %elt_ptr2563 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2562, i32 0, i32 1, i32 %_lhs2559
  %_lhs2564 = load i32* %elt_ptr2563
  store i32 %_lhs2564, i32* %elt_ptr2558
  %_lhs2565 = load i32* %k2471
  %bop2566 = add i32 %_lhs2565, 1
  store i32 %bop2566, i32* %k2471
  %_lhs2567 = load i32* %j2470
  %bop2568 = add i32 %_lhs2567, 1
  store i32 %bop2568, i32* %j2470
  br label %__cond537

__fresh551:
  br label %__post535

__post535:
  %_lhs2569 = load i32* %low_slot2466
  store i32 %_lhs2569, i32* %i2469
  br label %__cond540

__cond540:
  %_lhs2570 = load i32* %i2469
  %_lhs2571 = load i32* %k2471
  %bop2572 = icmp slt i32 %_lhs2570, %_lhs2571
  br i1 %bop2572, label %__body539, label %__post538

__fresh552:
  br label %__body539

__body539:
  %_lhs2573 = load i32* %i2469
  %len_ptr2574 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2468, i32 0, i32 0
  %len2575 = load i32* %len_ptr2574
  call void @oat_array_bounds_check( i32 %len2575, i32 %_lhs2573 )
  %array_dereferenced2576 = load { i32, [ 0 x i32 ] }** %a_slot2468
  %elt_ptr2577 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2576, i32 0, i32 1, i32 %_lhs2573
  %_lhs2578 = load i32* %i2469
  %len_ptr2579 = getelementptr { i32, [ 0 x i32 ] }** %c2478, i32 0, i32 0
  %len2580 = load i32* %len_ptr2579
  call void @oat_array_bounds_check( i32 %len2580, i32 %_lhs2578 )
  %array_dereferenced2581 = load { i32, [ 0 x i32 ] }** %c2478
  %elt_ptr2582 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2581, i32 0, i32 1, i32 %_lhs2578
  %_lhs2583 = load i32* %elt_ptr2582
  store i32 %_lhs2583, i32* %elt_ptr2577
  %_lhs2584 = load i32* %i2469
  %bop2585 = add i32 %_lhs2584, 1
  store i32 %bop2585, i32* %i2469
  br label %__cond540

__fresh553:
  br label %__post538

__post538:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2440, i32 %low2438, i32 %high2436){

__fresh520:
  %a_slot2441 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2440, { i32, [ 0 x i32 ] }** %a_slot2441
  %low_slot2439 = alloca i32
  store i32 %low2438, i32* %low_slot2439
  %high_slot2437 = alloca i32
  store i32 %high2436, i32* %high_slot2437
  %mid2442 = alloca i32
  store i32 0, i32* %mid2442
  %_lhs2443 = load i32* %low_slot2439
  %_lhs2444 = load i32* %high_slot2437
  %bop2445 = icmp slt i32 %_lhs2443, %_lhs2444
  br i1 %bop2445, label %__then519, label %__else518

__fresh521:
  br label %__then519

__then519:
  %_lhs2446 = load i32* %low_slot2439
  %_lhs2447 = load i32* %high_slot2437
  %bop2448 = add i32 %_lhs2446, %_lhs2447
  %bop2449 = ashr i32 %bop2448, 1
  store i32 %bop2449, i32* %mid2442
  %_lhs2452 = load i32* %mid2442
  %_lhs2451 = load i32* %low_slot2439
  %_lhs2450 = load { i32, [ 0 x i32 ] }** %a_slot2441
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2450, i32 %_lhs2451, i32 %_lhs2452 )
  %_lhs2456 = load i32* %high_slot2437
  %_lhs2454 = load i32* %mid2442
  %bop2455 = add i32 %_lhs2454, 1
  %_lhs2453 = load { i32, [ 0 x i32 ] }** %a_slot2441
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2453, i32 %bop2455, i32 %_lhs2456 )
  %_lhs2460 = load i32* %mid2442
  %_lhs2459 = load i32* %high_slot2437
  %_lhs2458 = load i32* %low_slot2439
  %_lhs2457 = load { i32, [ 0 x i32 ] }** %a_slot2441
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2457, i32 %_lhs2458, i32 %_lhs2459, i32 %_lhs2460 )
  br label %__merge517

__fresh522:
  br label %__else518

__else518:
  br label %__merge517

__merge517:
  ret void
}


define i32 @program (i32 %argc2408, { i32, [ 0 x i8* ] }* %argv2406){

__fresh516:
  %argc_slot2409 = alloca i32
  store i32 %argc2408, i32* %argc_slot2409
  %argv_slot2407 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2406, { i32, [ 0 x i8* ] }** %argv_slot2407
  %i2410 = alloca i32
  store i32 0, i32* %i2410
  %array_ptr2411 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2412 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2411 to { i32, [ 0 x i32 ] }* 
  %index_ptr2413 = getelementptr { i32, [ 0 x i32 ] }* %array2412, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2413
  %index_ptr2414 = getelementptr { i32, [ 0 x i32 ] }* %array2412, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2414
  %index_ptr2415 = getelementptr { i32, [ 0 x i32 ] }* %array2412, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2415
  %index_ptr2416 = getelementptr { i32, [ 0 x i32 ] }* %array2412, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2416
  %index_ptr2417 = getelementptr { i32, [ 0 x i32 ] }* %array2412, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2417
  %index_ptr2418 = getelementptr { i32, [ 0 x i32 ] }* %array2412, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2418
  %index_ptr2419 = getelementptr { i32, [ 0 x i32 ] }* %array2412, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2419
  %index_ptr2420 = getelementptr { i32, [ 0 x i32 ] }* %array2412, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2420
  %index_ptr2421 = getelementptr { i32, [ 0 x i32 ] }* %array2412, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2421
  %index_ptr2422 = getelementptr { i32, [ 0 x i32 ] }* %array2412, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2422
  %a2423 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2412, { i32, [ 0 x i32 ] }** %a2423
  %_lhs2424 = load { i32, [ 0 x i32 ] }** %a2423
  %ret2425 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2424 )
  call void @print_string( i8* %ret2425 )
  %_lhs2426 = load { i32, [ 0 x i32 ] }** %a2423
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2426, i32 0, i32 9 )
  %strval2428 = load i8** @_oat_string2427
  call void @print_string( i8* %strval2428 )
  %_lhs2429 = load { i32, [ 0 x i32 ] }** %a2423
  %ret2430 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2429 )
  call void @print_string( i8* %ret2430 )
  %strval2432 = load i8** @_oat_string2431
  call void @print_string( i8* %strval2432 )
  %_lhs2433 = load i32* %i2410
  ret i32 %_lhs2433
}


