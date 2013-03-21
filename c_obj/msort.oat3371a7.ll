declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2472.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2472 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2472.str., i32 0, i32 0), align 4
@_oat_string2468.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2468 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2468.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh554:
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2508, i32 %low2506, i32 %high2504, i32 %mid2502){

__fresh541:
  %a_slot2509 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2508, { i32, [ 0 x i32 ] }** %a_slot2509
  %low_slot2507 = alloca i32
  store i32 %low2506, i32* %low_slot2507
  %high_slot2505 = alloca i32
  store i32 %high2504, i32* %high_slot2505
  %mid_slot2503 = alloca i32
  store i32 %mid2502, i32* %mid_slot2503
  %i2510 = alloca i32
  store i32 0, i32* %i2510
  %j2511 = alloca i32
  store i32 0, i32* %j2511
  %k2512 = alloca i32
  store i32 0, i32* %k2512
  store i32 1, i32* %i2513
  %index_op2518 = load i32* %i2513
  br label %__check524

__check524:
  %cmp_op2517 = icmp slt i32 %index_op2518, 50
  br i32 %cmp_op2517, label %__body525, label %__end523

__fresh542:
  br label %__body525

__body525:
  %elem_ptr2516 = getelementptr { i32, [ 0 x i32 ] }* %array2515, i32 0, i32 1, i32 %index_op2518
  store i32 0, i32* %elem_ptr2516
  %index_op2518 = add i32 %index_op2518, 1
  br label %__check524

__fresh543:
  br label %__end523

__end523:
  %c2520 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2515, { i32, [ 0 x i32 ] }** %c2520
  %_lhs2521 = load i32* %low_slot2507
  store i32 %_lhs2521, i32* %i2510
  %_lhs2522 = load i32* %mid_slot2503
  %bop2523 = add i32 %_lhs2522, 1
  store i32 %bop2523, i32* %j2511
  %_lhs2524 = load i32* %low_slot2507
  store i32 %_lhs2524, i32* %k2512
  br label %__cond528

__cond528:
  %_lhs2525 = load i32* %i2510
  %_lhs2526 = load i32* %mid_slot2503
  %bop2527 = icmp sle i32 %_lhs2525, %_lhs2526
  %_lhs2528 = load i32* %j2511
  %_lhs2529 = load i32* %high_slot2505
  %bop2530 = icmp sle i32 %_lhs2528, %_lhs2529
  %bop2531 = and i1 %bop2527, %bop2530
  br i1 %bop2531, label %__body527, label %__post526

__fresh544:
  br label %__body527

__body527:
  %_lhs2532 = load i32* %i2510
  %len_ptr2533 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2509, i32 0, i32 0
  %len2534 = load i32* %len_ptr2533
  call void @oat_array_bounds_check( i32 %len2534, i32 %_lhs2532 )
  %array_dereferenced2535 = load { i32, [ 0 x i32 ] }** %a_slot2509
  %elt_ptr2536 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2535, i32 0, i32 1, i32 %_lhs2532
  %_lhs2537 = load i32* %elt_ptr2536
  %_lhs2538 = load i32* %j2511
  %len_ptr2539 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2509, i32 0, i32 0
  %len2540 = load i32* %len_ptr2539
  call void @oat_array_bounds_check( i32 %len2540, i32 %_lhs2538 )
  %array_dereferenced2541 = load { i32, [ 0 x i32 ] }** %a_slot2509
  %elt_ptr2542 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2541, i32 0, i32 1, i32 %_lhs2538
  %_lhs2543 = load i32* %elt_ptr2542
  %bop2544 = icmp slt i32 %_lhs2537, %_lhs2543
  br i1 %bop2544, label %__then531, label %__else530

__fresh545:
  br label %__then531

__then531:
  %_lhs2545 = load i32* %k2512
  %len_ptr2546 = getelementptr { i32, [ 0 x i32 ] }** %c2520, i32 0, i32 0
  %len2547 = load i32* %len_ptr2546
  call void @oat_array_bounds_check( i32 %len2547, i32 %_lhs2545 )
  %array_dereferenced2548 = load { i32, [ 0 x i32 ] }** %c2520
  %elt_ptr2549 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2548, i32 0, i32 1, i32 %_lhs2545
  %_lhs2550 = load i32* %i2510
  %len_ptr2551 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2509, i32 0, i32 0
  %len2552 = load i32* %len_ptr2551
  call void @oat_array_bounds_check( i32 %len2552, i32 %_lhs2550 )
  %array_dereferenced2553 = load { i32, [ 0 x i32 ] }** %a_slot2509
  %elt_ptr2554 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2553, i32 0, i32 1, i32 %_lhs2550
  %_lhs2555 = load i32* %elt_ptr2554
  store i32 %_lhs2555, i32* %elt_ptr2549
  %_lhs2556 = load i32* %k2512
  %bop2557 = add i32 %_lhs2556, 1
  store i32 %bop2557, i32* %k2512
  %_lhs2558 = load i32* %i2510
  %bop2559 = add i32 %_lhs2558, 1
  store i32 %bop2559, i32* %i2510
  br label %__merge529

__fresh546:
  br label %__else530

__else530:
  %_lhs2560 = load i32* %k2512
  %len_ptr2561 = getelementptr { i32, [ 0 x i32 ] }** %c2520, i32 0, i32 0
  %len2562 = load i32* %len_ptr2561
  call void @oat_array_bounds_check( i32 %len2562, i32 %_lhs2560 )
  %array_dereferenced2563 = load { i32, [ 0 x i32 ] }** %c2520
  %elt_ptr2564 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2563, i32 0, i32 1, i32 %_lhs2560
  %_lhs2565 = load i32* %j2511
  %len_ptr2566 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2509, i32 0, i32 0
  %len2567 = load i32* %len_ptr2566
  call void @oat_array_bounds_check( i32 %len2567, i32 %_lhs2565 )
  %array_dereferenced2568 = load { i32, [ 0 x i32 ] }** %a_slot2509
  %elt_ptr2569 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2568, i32 0, i32 1, i32 %_lhs2565
  %_lhs2570 = load i32* %elt_ptr2569
  store i32 %_lhs2570, i32* %elt_ptr2564
  %_lhs2571 = load i32* %k2512
  %bop2572 = add i32 %_lhs2571, 1
  store i32 %bop2572, i32* %k2512
  %_lhs2573 = load i32* %j2511
  %bop2574 = add i32 %_lhs2573, 1
  store i32 %bop2574, i32* %j2511
  br label %__merge529

__merge529:
  br label %__cond528

__fresh547:
  br label %__post526

__post526:
  br label %__cond534

__cond534:
  %_lhs2575 = load i32* %i2510
  %_lhs2576 = load i32* %mid_slot2503
  %bop2577 = icmp sle i32 %_lhs2575, %_lhs2576
  br i1 %bop2577, label %__body533, label %__post532

__fresh548:
  br label %__body533

__body533:
  %_lhs2578 = load i32* %k2512
  %len_ptr2579 = getelementptr { i32, [ 0 x i32 ] }** %c2520, i32 0, i32 0
  %len2580 = load i32* %len_ptr2579
  call void @oat_array_bounds_check( i32 %len2580, i32 %_lhs2578 )
  %array_dereferenced2581 = load { i32, [ 0 x i32 ] }** %c2520
  %elt_ptr2582 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2581, i32 0, i32 1, i32 %_lhs2578
  %_lhs2583 = load i32* %i2510
  %len_ptr2584 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2509, i32 0, i32 0
  %len2585 = load i32* %len_ptr2584
  call void @oat_array_bounds_check( i32 %len2585, i32 %_lhs2583 )
  %array_dereferenced2586 = load { i32, [ 0 x i32 ] }** %a_slot2509
  %elt_ptr2587 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2586, i32 0, i32 1, i32 %_lhs2583
  %_lhs2588 = load i32* %elt_ptr2587
  store i32 %_lhs2588, i32* %elt_ptr2582
  %_lhs2589 = load i32* %k2512
  %bop2590 = add i32 %_lhs2589, 1
  store i32 %bop2590, i32* %k2512
  %_lhs2591 = load i32* %i2510
  %bop2592 = add i32 %_lhs2591, 1
  store i32 %bop2592, i32* %i2510
  br label %__cond534

__fresh549:
  br label %__post532

__post532:
  br label %__cond537

__cond537:
  %_lhs2593 = load i32* %j2511
  %_lhs2594 = load i32* %high_slot2505
  %bop2595 = icmp sle i32 %_lhs2593, %_lhs2594
  br i1 %bop2595, label %__body536, label %__post535

__fresh550:
  br label %__body536

__body536:
  %_lhs2596 = load i32* %k2512
  %len_ptr2597 = getelementptr { i32, [ 0 x i32 ] }** %c2520, i32 0, i32 0
  %len2598 = load i32* %len_ptr2597
  call void @oat_array_bounds_check( i32 %len2598, i32 %_lhs2596 )
  %array_dereferenced2599 = load { i32, [ 0 x i32 ] }** %c2520
  %elt_ptr2600 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2599, i32 0, i32 1, i32 %_lhs2596
  %_lhs2601 = load i32* %j2511
  %len_ptr2602 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2509, i32 0, i32 0
  %len2603 = load i32* %len_ptr2602
  call void @oat_array_bounds_check( i32 %len2603, i32 %_lhs2601 )
  %array_dereferenced2604 = load { i32, [ 0 x i32 ] }** %a_slot2509
  %elt_ptr2605 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2604, i32 0, i32 1, i32 %_lhs2601
  %_lhs2606 = load i32* %elt_ptr2605
  store i32 %_lhs2606, i32* %elt_ptr2600
  %_lhs2607 = load i32* %k2512
  %bop2608 = add i32 %_lhs2607, 1
  store i32 %bop2608, i32* %k2512
  %_lhs2609 = load i32* %j2511
  %bop2610 = add i32 %_lhs2609, 1
  store i32 %bop2610, i32* %j2511
  br label %__cond537

__fresh551:
  br label %__post535

__post535:
  %_lhs2611 = load i32* %low_slot2507
  store i32 %_lhs2611, i32* %i2510
  br label %__cond540

__cond540:
  %_lhs2612 = load i32* %i2510
  %_lhs2613 = load i32* %k2512
  %bop2614 = icmp slt i32 %_lhs2612, %_lhs2613
  br i1 %bop2614, label %__body539, label %__post538

__fresh552:
  br label %__body539

__body539:
  %_lhs2615 = load i32* %i2510
  %len_ptr2616 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2509, i32 0, i32 0
  %len2617 = load i32* %len_ptr2616
  call void @oat_array_bounds_check( i32 %len2617, i32 %_lhs2615 )
  %array_dereferenced2618 = load { i32, [ 0 x i32 ] }** %a_slot2509
  %elt_ptr2619 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2618, i32 0, i32 1, i32 %_lhs2615
  %_lhs2620 = load i32* %i2510
  %len_ptr2621 = getelementptr { i32, [ 0 x i32 ] }** %c2520, i32 0, i32 0
  %len2622 = load i32* %len_ptr2621
  call void @oat_array_bounds_check( i32 %len2622, i32 %_lhs2620 )
  %array_dereferenced2623 = load { i32, [ 0 x i32 ] }** %c2520
  %elt_ptr2624 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2623, i32 0, i32 1, i32 %_lhs2620
  %_lhs2625 = load i32* %elt_ptr2624
  store i32 %_lhs2625, i32* %elt_ptr2619
  %_lhs2626 = load i32* %i2510
  %bop2627 = add i32 %_lhs2626, 1
  store i32 %bop2627, i32* %i2510
  br label %__cond540

__fresh553:
  br label %__post538

__post538:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2481, i32 %low2479, i32 %high2477){

__fresh520:
  %a_slot2482 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2481, { i32, [ 0 x i32 ] }** %a_slot2482
  %low_slot2480 = alloca i32
  store i32 %low2479, i32* %low_slot2480
  %high_slot2478 = alloca i32
  store i32 %high2477, i32* %high_slot2478
  %mid2483 = alloca i32
  store i32 0, i32* %mid2483
  %_lhs2484 = load i32* %low_slot2480
  %_lhs2485 = load i32* %high_slot2478
  %bop2486 = icmp slt i32 %_lhs2484, %_lhs2485
  br i1 %bop2486, label %__then519, label %__else518

__fresh521:
  br label %__then519

__then519:
  %_lhs2487 = load i32* %low_slot2480
  %_lhs2488 = load i32* %high_slot2478
  %bop2489 = add i32 %_lhs2487, %_lhs2488
  %bop2490 = ashr i32 %bop2489, 1
  store i32 %bop2490, i32* %mid2483
  %_lhs2493 = load i32* %mid2483
  %_lhs2492 = load i32* %low_slot2480
  %_lhs2491 = load { i32, [ 0 x i32 ] }** %a_slot2482
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2491, i32 %_lhs2492, i32 %_lhs2493 )
  %_lhs2497 = load i32* %high_slot2478
  %_lhs2495 = load i32* %mid2483
  %bop2496 = add i32 %_lhs2495, 1
  %_lhs2494 = load { i32, [ 0 x i32 ] }** %a_slot2482
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2494, i32 %bop2496, i32 %_lhs2497 )
  %_lhs2501 = load i32* %mid2483
  %_lhs2500 = load i32* %high_slot2478
  %_lhs2499 = load i32* %low_slot2480
  %_lhs2498 = load { i32, [ 0 x i32 ] }** %a_slot2482
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2498, i32 %_lhs2499, i32 %_lhs2500, i32 %_lhs2501 )
  br label %__merge517

__fresh522:
  br label %__else518

__else518:
  br label %__merge517

__merge517:
  ret void
}


define i32 @program (i32 %argc2449, { i32, [ 0 x i8* ] }* %argv2447){

__fresh516:
  %argc_slot2450 = alloca i32
  store i32 %argc2449, i32* %argc_slot2450
  %argv_slot2448 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2447, { i32, [ 0 x i8* ] }** %argv_slot2448
  %i2451 = alloca i32
  store i32 0, i32* %i2451
  %array_ptr2452 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2453 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2452 to { i32, [ 0 x i32 ] }* 
  %index_ptr2454 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2454
  %index_ptr2455 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2455
  %index_ptr2456 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2456
  %index_ptr2457 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2457
  %index_ptr2458 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2458
  %index_ptr2459 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2459
  %index_ptr2460 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2460
  %index_ptr2461 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2461
  %index_ptr2462 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2462
  %index_ptr2463 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2463
  %a2464 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2453, { i32, [ 0 x i32 ] }** %a2464
  %_lhs2465 = load { i32, [ 0 x i32 ] }** %a2464
  %ret2466 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2465 )
  call void @print_string( i8* %ret2466 )
  %_lhs2467 = load { i32, [ 0 x i32 ] }** %a2464
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2467, i32 0, i32 9 )
  %strval2469 = load i8** @_oat_string2468
  call void @print_string( i8* %strval2469 )
  %_lhs2470 = load { i32, [ 0 x i32 ] }** %a2464
  %ret2471 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2470 )
  call void @print_string( i8* %ret2471 )
  %strval2473 = load i8** @_oat_string2472
  call void @print_string( i8* %strval2473 )
  %_lhs2474 = load i32* %i2451
  ret i32 %_lhs2474
}


