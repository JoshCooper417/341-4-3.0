declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2434.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2434 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2434.str., i32 0, i32 0), align 4
@_oat_string2430.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2430 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2430.str., i32 0, i32 0), align 4
@a2421 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2421.init
define void @oat_init (){

__fresh536:
  call void @a2421.init(  )
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2470, i32 %low2468, i32 %high2466, i32 %mid2464){

__fresh521:
  %a_slot2471 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2470, { i32, [ 0 x i32 ] }** %a_slot2471
  %low_slot2469 = alloca i32
  store i32 %low2468, i32* %low_slot2469
  %high_slot2467 = alloca i32
  store i32 %high2466, i32* %high_slot2467
  %mid_slot2465 = alloca i32
  store i32 %mid2464, i32* %mid_slot2465
  %i2472 = alloca i32
  store i32 0, i32* %i2472
  %j2473 = alloca i32
  store i32 0, i32* %j2473
  %k2474 = alloca i32
  store i32 0, i32* %k2474
  %array_ptr2476 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2477 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2476 to { i32, [ 0 x i32 ] }* 
  %i2481 = alloca i32
  store i32 1, i32* %i2481
  %i2475 = load i32* %i2481
  br label %__check504

__fresh522:
  br label %__check504

__check504:
  br label %__end503

__fresh523:
  %cmp_op2479 = icmp slt i32 %i2475, 50
  br i32 %cmp_op2479, label %__body505, label %__end503

__fresh524:
  br label %__body505

__body505:
  %elem_ptr2478 = getelementptr { i32, [ 0 x i32 ] }* %array2477, i32 0, i32 1, i32 %i2475
  store i32 0, i32* %elem_ptr2478
  %index_op2480 = add i32 %i2475, 1
  br label %__check504

__fresh525:
  br label %__end503

__end503:
  %c2483 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2477, { i32, [ 0 x i32 ] }** %c2483
  %_lhs2484 = load i32* %low_slot2469
  store i32 %_lhs2484, i32* %i2472
  %_lhs2485 = load i32* %mid_slot2465
  %bop2486 = add i32 %_lhs2485, 1
  store i32 %bop2486, i32* %j2473
  %_lhs2487 = load i32* %low_slot2469
  store i32 %_lhs2487, i32* %k2474
  br label %__cond508

__cond508:
  %_lhs2488 = load i32* %i2472
  %_lhs2489 = load i32* %mid_slot2465
  %bop2490 = icmp sle i32 %_lhs2488, %_lhs2489
  %_lhs2491 = load i32* %j2473
  %_lhs2492 = load i32* %high_slot2467
  %bop2493 = icmp sle i32 %_lhs2491, %_lhs2492
  %bop2494 = and i1 %bop2490, %bop2493
  br i1 %bop2494, label %__body507, label %__post506

__fresh526:
  br label %__body507

__body507:
  %_lhs2495 = load i32* %i2472
  %len_ptr2496 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2471, i32 0, i32 0
  %len2497 = load i32* %len_ptr2496
  call void @oat_array_bounds_check( i32 %len2497, i32 %_lhs2495 )
  %array_dereferenced2498 = load { i32, [ 0 x i32 ] }** %a_slot2471
  %elt_ptr2499 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2498, i32 0, i32 1, i32 %_lhs2495
  %_lhs2500 = load i32* %elt_ptr2499
  %_lhs2501 = load i32* %j2473
  %len_ptr2502 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2471, i32 0, i32 0
  %len2503 = load i32* %len_ptr2502
  call void @oat_array_bounds_check( i32 %len2503, i32 %_lhs2501 )
  %array_dereferenced2504 = load { i32, [ 0 x i32 ] }** %a_slot2471
  %elt_ptr2505 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2504, i32 0, i32 1, i32 %_lhs2501
  %_lhs2506 = load i32* %elt_ptr2505
  %bop2507 = icmp slt i32 %_lhs2500, %_lhs2506
  br i1 %bop2507, label %__then511, label %__else510

__fresh527:
  br label %__then511

__then511:
  %_lhs2508 = load i32* %k2474
  %len_ptr2509 = getelementptr { i32, [ 0 x i32 ] }** %c2483, i32 0, i32 0
  %len2510 = load i32* %len_ptr2509
  call void @oat_array_bounds_check( i32 %len2510, i32 %_lhs2508 )
  %array_dereferenced2511 = load { i32, [ 0 x i32 ] }** %c2483
  %elt_ptr2512 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2511, i32 0, i32 1, i32 %_lhs2508
  %_lhs2513 = load i32* %i2472
  %len_ptr2514 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2471, i32 0, i32 0
  %len2515 = load i32* %len_ptr2514
  call void @oat_array_bounds_check( i32 %len2515, i32 %_lhs2513 )
  %array_dereferenced2516 = load { i32, [ 0 x i32 ] }** %a_slot2471
  %elt_ptr2517 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2516, i32 0, i32 1, i32 %_lhs2513
  %_lhs2518 = load i32* %elt_ptr2517
  store i32 %_lhs2518, i32* %elt_ptr2512
  %_lhs2519 = load i32* %k2474
  %bop2520 = add i32 %_lhs2519, 1
  store i32 %bop2520, i32* %k2474
  %_lhs2521 = load i32* %i2472
  %bop2522 = add i32 %_lhs2521, 1
  store i32 %bop2522, i32* %i2472
  br label %__merge509

__fresh528:
  br label %__else510

__else510:
  %_lhs2523 = load i32* %k2474
  %len_ptr2524 = getelementptr { i32, [ 0 x i32 ] }** %c2483, i32 0, i32 0
  %len2525 = load i32* %len_ptr2524
  call void @oat_array_bounds_check( i32 %len2525, i32 %_lhs2523 )
  %array_dereferenced2526 = load { i32, [ 0 x i32 ] }** %c2483
  %elt_ptr2527 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2526, i32 0, i32 1, i32 %_lhs2523
  %_lhs2528 = load i32* %j2473
  %len_ptr2529 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2471, i32 0, i32 0
  %len2530 = load i32* %len_ptr2529
  call void @oat_array_bounds_check( i32 %len2530, i32 %_lhs2528 )
  %array_dereferenced2531 = load { i32, [ 0 x i32 ] }** %a_slot2471
  %elt_ptr2532 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2531, i32 0, i32 1, i32 %_lhs2528
  %_lhs2533 = load i32* %elt_ptr2532
  store i32 %_lhs2533, i32* %elt_ptr2527
  %_lhs2534 = load i32* %k2474
  %bop2535 = add i32 %_lhs2534, 1
  store i32 %bop2535, i32* %k2474
  %_lhs2536 = load i32* %j2473
  %bop2537 = add i32 %_lhs2536, 1
  store i32 %bop2537, i32* %j2473
  br label %__merge509

__merge509:
  br label %__cond508

__fresh529:
  br label %__post506

__post506:
  br label %__cond514

__cond514:
  %_lhs2538 = load i32* %i2472
  %_lhs2539 = load i32* %mid_slot2465
  %bop2540 = icmp sle i32 %_lhs2538, %_lhs2539
  br i1 %bop2540, label %__body513, label %__post512

__fresh530:
  br label %__body513

__body513:
  %_lhs2541 = load i32* %k2474
  %len_ptr2542 = getelementptr { i32, [ 0 x i32 ] }** %c2483, i32 0, i32 0
  %len2543 = load i32* %len_ptr2542
  call void @oat_array_bounds_check( i32 %len2543, i32 %_lhs2541 )
  %array_dereferenced2544 = load { i32, [ 0 x i32 ] }** %c2483
  %elt_ptr2545 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2544, i32 0, i32 1, i32 %_lhs2541
  %_lhs2546 = load i32* %i2472
  %len_ptr2547 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2471, i32 0, i32 0
  %len2548 = load i32* %len_ptr2547
  call void @oat_array_bounds_check( i32 %len2548, i32 %_lhs2546 )
  %array_dereferenced2549 = load { i32, [ 0 x i32 ] }** %a_slot2471
  %elt_ptr2550 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2549, i32 0, i32 1, i32 %_lhs2546
  %_lhs2551 = load i32* %elt_ptr2550
  store i32 %_lhs2551, i32* %elt_ptr2545
  %_lhs2552 = load i32* %k2474
  %bop2553 = add i32 %_lhs2552, 1
  store i32 %bop2553, i32* %k2474
  %_lhs2554 = load i32* %i2472
  %bop2555 = add i32 %_lhs2554, 1
  store i32 %bop2555, i32* %i2472
  br label %__cond514

__fresh531:
  br label %__post512

__post512:
  br label %__cond517

__cond517:
  %_lhs2556 = load i32* %j2473
  %_lhs2557 = load i32* %high_slot2467
  %bop2558 = icmp sle i32 %_lhs2556, %_lhs2557
  br i1 %bop2558, label %__body516, label %__post515

__fresh532:
  br label %__body516

__body516:
  %_lhs2559 = load i32* %k2474
  %len_ptr2560 = getelementptr { i32, [ 0 x i32 ] }** %c2483, i32 0, i32 0
  %len2561 = load i32* %len_ptr2560
  call void @oat_array_bounds_check( i32 %len2561, i32 %_lhs2559 )
  %array_dereferenced2562 = load { i32, [ 0 x i32 ] }** %c2483
  %elt_ptr2563 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2562, i32 0, i32 1, i32 %_lhs2559
  %_lhs2564 = load i32* %j2473
  %len_ptr2565 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2471, i32 0, i32 0
  %len2566 = load i32* %len_ptr2565
  call void @oat_array_bounds_check( i32 %len2566, i32 %_lhs2564 )
  %array_dereferenced2567 = load { i32, [ 0 x i32 ] }** %a_slot2471
  %elt_ptr2568 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2567, i32 0, i32 1, i32 %_lhs2564
  %_lhs2569 = load i32* %elt_ptr2568
  store i32 %_lhs2569, i32* %elt_ptr2563
  %_lhs2570 = load i32* %k2474
  %bop2571 = add i32 %_lhs2570, 1
  store i32 %bop2571, i32* %k2474
  %_lhs2572 = load i32* %j2473
  %bop2573 = add i32 %_lhs2572, 1
  store i32 %bop2573, i32* %j2473
  br label %__cond517

__fresh533:
  br label %__post515

__post515:
  %_lhs2574 = load i32* %low_slot2469
  store i32 %_lhs2574, i32* %i2472
  br label %__cond520

__cond520:
  %_lhs2575 = load i32* %i2472
  %_lhs2576 = load i32* %k2474
  %bop2577 = icmp slt i32 %_lhs2575, %_lhs2576
  br i1 %bop2577, label %__body519, label %__post518

__fresh534:
  br label %__body519

__body519:
  %_lhs2578 = load i32* %i2472
  %len_ptr2579 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2471, i32 0, i32 0
  %len2580 = load i32* %len_ptr2579
  call void @oat_array_bounds_check( i32 %len2580, i32 %_lhs2578 )
  %array_dereferenced2581 = load { i32, [ 0 x i32 ] }** %a_slot2471
  %elt_ptr2582 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2581, i32 0, i32 1, i32 %_lhs2578
  %_lhs2583 = load i32* %i2472
  %len_ptr2584 = getelementptr { i32, [ 0 x i32 ] }** %c2483, i32 0, i32 0
  %len2585 = load i32* %len_ptr2584
  call void @oat_array_bounds_check( i32 %len2585, i32 %_lhs2583 )
  %array_dereferenced2586 = load { i32, [ 0 x i32 ] }** %c2483
  %elt_ptr2587 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2586, i32 0, i32 1, i32 %_lhs2583
  %_lhs2588 = load i32* %elt_ptr2587
  store i32 %_lhs2588, i32* %elt_ptr2582
  %_lhs2589 = load i32* %i2472
  %bop2590 = add i32 %_lhs2589, 1
  store i32 %bop2590, i32* %i2472
  br label %__cond520

__fresh535:
  br label %__post518

__post518:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2443, i32 %low2441, i32 %high2439){

__fresh500:
  %a_slot2444 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2443, { i32, [ 0 x i32 ] }** %a_slot2444
  %low_slot2442 = alloca i32
  store i32 %low2441, i32* %low_slot2442
  %high_slot2440 = alloca i32
  store i32 %high2439, i32* %high_slot2440
  %mid2445 = alloca i32
  store i32 0, i32* %mid2445
  %_lhs2446 = load i32* %low_slot2442
  %_lhs2447 = load i32* %high_slot2440
  %bop2448 = icmp slt i32 %_lhs2446, %_lhs2447
  br i1 %bop2448, label %__then499, label %__else498

__fresh501:
  br label %__then499

__then499:
  %_lhs2449 = load i32* %low_slot2442
  %_lhs2450 = load i32* %high_slot2440
  %bop2451 = add i32 %_lhs2449, %_lhs2450
  %bop2452 = ashr i32 %bop2451, 1
  store i32 %bop2452, i32* %mid2445
  %_lhs2455 = load i32* %mid2445
  %_lhs2454 = load i32* %low_slot2442
  %_lhs2453 = load { i32, [ 0 x i32 ] }** %a_slot2444
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2453, i32 %_lhs2454, i32 %_lhs2455 )
  %_lhs2459 = load i32* %high_slot2440
  %_lhs2457 = load i32* %mid2445
  %bop2458 = add i32 %_lhs2457, 1
  %_lhs2456 = load { i32, [ 0 x i32 ] }** %a_slot2444
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2456, i32 %bop2458, i32 %_lhs2459 )
  %_lhs2463 = load i32* %mid2445
  %_lhs2462 = load i32* %high_slot2440
  %_lhs2461 = load i32* %low_slot2442
  %_lhs2460 = load { i32, [ 0 x i32 ] }** %a_slot2444
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2460, i32 %_lhs2461, i32 %_lhs2462, i32 %_lhs2463 )
  br label %__merge497

__fresh502:
  br label %__else498

__else498:
  br label %__merge497

__merge497:
  ret void
}


define i32 @program (i32 %argc2424, { i32, [ 0 x i8* ] }* %argv2422){

__fresh496:
  %argc_slot2425 = alloca i32
  store i32 %argc2424, i32* %argc_slot2425
  %argv_slot2423 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2422, { i32, [ 0 x i8* ] }** %argv_slot2423
  %i2426 = alloca i32
  store i32 0, i32* %i2426
  %_lhs2427 = load { i32, [ 0 x i32 ] }** @a2421
  %ret2428 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2427 )
  call void @print_string( i8* %ret2428 )
  %_lhs2429 = load { i32, [ 0 x i32 ] }** @a2421
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2429, i32 0, i32 9 )
  %strval2431 = load i8** @_oat_string2430
  call void @print_string( i8* %strval2431 )
  %_lhs2432 = load { i32, [ 0 x i32 ] }** @a2421
  %ret2433 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2432 )
  call void @print_string( i8* %ret2433 )
  %strval2435 = load i8** @_oat_string2434
  call void @print_string( i8* %strval2435 )
  %_lhs2436 = load i32* %i2426
  ret i32 %_lhs2436
}


define void @a2421.init (){

__fresh495:
  %array_ptr2409 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2410 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2409 to { i32, [ 0 x i32 ] }* 
  %index_ptr2411 = getelementptr { i32, [ 0 x i32 ] }* %array2410, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2411
  %index_ptr2412 = getelementptr { i32, [ 0 x i32 ] }* %array2410, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2412
  %index_ptr2413 = getelementptr { i32, [ 0 x i32 ] }* %array2410, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2413
  %index_ptr2414 = getelementptr { i32, [ 0 x i32 ] }* %array2410, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2414
  %index_ptr2415 = getelementptr { i32, [ 0 x i32 ] }* %array2410, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2415
  %index_ptr2416 = getelementptr { i32, [ 0 x i32 ] }* %array2410, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2416
  %index_ptr2417 = getelementptr { i32, [ 0 x i32 ] }* %array2410, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2417
  %index_ptr2418 = getelementptr { i32, [ 0 x i32 ] }* %array2410, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2418
  %index_ptr2419 = getelementptr { i32, [ 0 x i32 ] }* %array2410, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2419
  %index_ptr2420 = getelementptr { i32, [ 0 x i32 ] }* %array2410, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2420
  store { i32, [ 0 x i32 ] }* %array2410, { i32, [ 0 x i32 ] }** @a2421
  ret void
}


