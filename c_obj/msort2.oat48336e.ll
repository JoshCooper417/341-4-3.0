declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2433.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2433 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2433.str., i32 0, i32 0), align 4
@_oat_string2429.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2429 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2429.str., i32 0, i32 0), align 4
@a2420 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2420.init
define void @oat_init (){

__fresh440:
  call void @a2420.init(  )
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2469, i32 %low2467, i32 %high2465, i32 %mid2463){

__fresh429:
  %a_slot2470 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2469, { i32, [ 0 x i32 ] }** %a_slot2470
  %low_slot2468 = alloca i32
  store i32 %low2467, i32* %low_slot2468
  %high_slot2466 = alloca i32
  store i32 %high2465, i32* %high_slot2466
  %mid_slot2464 = alloca i32
  store i32 %mid2463, i32* %mid_slot2464
  %i2471 = alloca i32
  store i32 0, i32* %i2471
  %j2472 = alloca i32
  store i32 0, i32* %j2472
  %k2473 = alloca i32
  store i32 0, i32* %k2473
  store i32 1, i32* %i2480
  %c2482 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2476, { i32, [ 0 x i32 ] }** %c2482
  %_lhs2483 = load i32* %low_slot2468
  store i32 %_lhs2483, i32* %i2471
  %_lhs2484 = load i32* %mid_slot2464
  %bop2485 = add i32 %_lhs2484, 1
  store i32 %bop2485, i32* %j2472
  %_lhs2486 = load i32* %low_slot2468
  store i32 %_lhs2486, i32* %k2473
  br label %__cond416

__cond416:
  %_lhs2487 = load i32* %i2471
  %_lhs2488 = load i32* %mid_slot2464
  %bop2489 = icmp sle i32 %_lhs2487, %_lhs2488
  %_lhs2490 = load i32* %j2472
  %_lhs2491 = load i32* %high_slot2466
  %bop2492 = icmp sle i32 %_lhs2490, %_lhs2491
  %bop2493 = and i1 %bop2489, %bop2492
  br i1 %bop2493, label %__body415, label %__post414

__fresh430:
  br label %__body415

__body415:
  %_lhs2494 = load i32* %i2471
  %len_ptr2495 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2470, i32 0, i32 0
  %len2496 = load i32* %len_ptr2495
  call void @oat_array_bounds_check( i32 %len2496, i32 %_lhs2494 )
  %array_dereferenced2497 = load { i32, [ 0 x i32 ] }** %a_slot2470
  %elt_ptr2498 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2497, i32 0, i32 1, i32 %_lhs2494
  %_lhs2499 = load i32* %elt_ptr2498
  %_lhs2500 = load i32* %j2472
  %len_ptr2501 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2470, i32 0, i32 0
  %len2502 = load i32* %len_ptr2501
  call void @oat_array_bounds_check( i32 %len2502, i32 %_lhs2500 )
  %array_dereferenced2503 = load { i32, [ 0 x i32 ] }** %a_slot2470
  %elt_ptr2504 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2503, i32 0, i32 1, i32 %_lhs2500
  %_lhs2505 = load i32* %elt_ptr2504
  %bop2506 = icmp slt i32 %_lhs2499, %_lhs2505
  br i1 %bop2506, label %__then419, label %__else418

__fresh431:
  br label %__then419

__then419:
  %_lhs2507 = load i32* %k2473
  %len_ptr2508 = getelementptr { i32, [ 0 x i32 ] }** %c2482, i32 0, i32 0
  %len2509 = load i32* %len_ptr2508
  call void @oat_array_bounds_check( i32 %len2509, i32 %_lhs2507 )
  %array_dereferenced2510 = load { i32, [ 0 x i32 ] }** %c2482
  %elt_ptr2511 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2510, i32 0, i32 1, i32 %_lhs2507
  %_lhs2512 = load i32* %i2471
  %len_ptr2513 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2470, i32 0, i32 0
  %len2514 = load i32* %len_ptr2513
  call void @oat_array_bounds_check( i32 %len2514, i32 %_lhs2512 )
  %array_dereferenced2515 = load { i32, [ 0 x i32 ] }** %a_slot2470
  %elt_ptr2516 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2515, i32 0, i32 1, i32 %_lhs2512
  %_lhs2517 = load i32* %elt_ptr2516
  store i32 %_lhs2517, i32* %elt_ptr2511
  %_lhs2518 = load i32* %k2473
  %bop2519 = add i32 %_lhs2518, 1
  store i32 %bop2519, i32* %k2473
  %_lhs2520 = load i32* %i2471
  %bop2521 = add i32 %_lhs2520, 1
  store i32 %bop2521, i32* %i2471
  br label %__merge417

__fresh432:
  br label %__else418

__else418:
  %_lhs2522 = load i32* %k2473
  %len_ptr2523 = getelementptr { i32, [ 0 x i32 ] }** %c2482, i32 0, i32 0
  %len2524 = load i32* %len_ptr2523
  call void @oat_array_bounds_check( i32 %len2524, i32 %_lhs2522 )
  %array_dereferenced2525 = load { i32, [ 0 x i32 ] }** %c2482
  %elt_ptr2526 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2525, i32 0, i32 1, i32 %_lhs2522
  %_lhs2527 = load i32* %j2472
  %len_ptr2528 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2470, i32 0, i32 0
  %len2529 = load i32* %len_ptr2528
  call void @oat_array_bounds_check( i32 %len2529, i32 %_lhs2527 )
  %array_dereferenced2530 = load { i32, [ 0 x i32 ] }** %a_slot2470
  %elt_ptr2531 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2530, i32 0, i32 1, i32 %_lhs2527
  %_lhs2532 = load i32* %elt_ptr2531
  store i32 %_lhs2532, i32* %elt_ptr2526
  %_lhs2533 = load i32* %k2473
  %bop2534 = add i32 %_lhs2533, 1
  store i32 %bop2534, i32* %k2473
  %_lhs2535 = load i32* %j2472
  %bop2536 = add i32 %_lhs2535, 1
  store i32 %bop2536, i32* %j2472
  br label %__merge417

__merge417:
  br label %__cond416

__fresh433:
  br label %__post414

__post414:
  br label %__cond422

__cond422:
  %_lhs2537 = load i32* %i2471
  %_lhs2538 = load i32* %mid_slot2464
  %bop2539 = icmp sle i32 %_lhs2537, %_lhs2538
  br i1 %bop2539, label %__body421, label %__post420

__fresh434:
  br label %__body421

__body421:
  %_lhs2540 = load i32* %k2473
  %len_ptr2541 = getelementptr { i32, [ 0 x i32 ] }** %c2482, i32 0, i32 0
  %len2542 = load i32* %len_ptr2541
  call void @oat_array_bounds_check( i32 %len2542, i32 %_lhs2540 )
  %array_dereferenced2543 = load { i32, [ 0 x i32 ] }** %c2482
  %elt_ptr2544 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2543, i32 0, i32 1, i32 %_lhs2540
  %_lhs2545 = load i32* %i2471
  %len_ptr2546 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2470, i32 0, i32 0
  %len2547 = load i32* %len_ptr2546
  call void @oat_array_bounds_check( i32 %len2547, i32 %_lhs2545 )
  %array_dereferenced2548 = load { i32, [ 0 x i32 ] }** %a_slot2470
  %elt_ptr2549 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2548, i32 0, i32 1, i32 %_lhs2545
  %_lhs2550 = load i32* %elt_ptr2549
  store i32 %_lhs2550, i32* %elt_ptr2544
  %_lhs2551 = load i32* %k2473
  %bop2552 = add i32 %_lhs2551, 1
  store i32 %bop2552, i32* %k2473
  %_lhs2553 = load i32* %i2471
  %bop2554 = add i32 %_lhs2553, 1
  store i32 %bop2554, i32* %i2471
  br label %__cond422

__fresh435:
  br label %__post420

__post420:
  br label %__cond425

__cond425:
  %_lhs2555 = load i32* %j2472
  %_lhs2556 = load i32* %high_slot2466
  %bop2557 = icmp sle i32 %_lhs2555, %_lhs2556
  br i1 %bop2557, label %__body424, label %__post423

__fresh436:
  br label %__body424

__body424:
  %_lhs2558 = load i32* %k2473
  %len_ptr2559 = getelementptr { i32, [ 0 x i32 ] }** %c2482, i32 0, i32 0
  %len2560 = load i32* %len_ptr2559
  call void @oat_array_bounds_check( i32 %len2560, i32 %_lhs2558 )
  %array_dereferenced2561 = load { i32, [ 0 x i32 ] }** %c2482
  %elt_ptr2562 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2561, i32 0, i32 1, i32 %_lhs2558
  %_lhs2563 = load i32* %j2472
  %len_ptr2564 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2470, i32 0, i32 0
  %len2565 = load i32* %len_ptr2564
  call void @oat_array_bounds_check( i32 %len2565, i32 %_lhs2563 )
  %array_dereferenced2566 = load { i32, [ 0 x i32 ] }** %a_slot2470
  %elt_ptr2567 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2566, i32 0, i32 1, i32 %_lhs2563
  %_lhs2568 = load i32* %elt_ptr2567
  store i32 %_lhs2568, i32* %elt_ptr2562
  %_lhs2569 = load i32* %k2473
  %bop2570 = add i32 %_lhs2569, 1
  store i32 %bop2570, i32* %k2473
  %_lhs2571 = load i32* %j2472
  %bop2572 = add i32 %_lhs2571, 1
  store i32 %bop2572, i32* %j2472
  br label %__cond425

__fresh437:
  br label %__post423

__post423:
  %_lhs2573 = load i32* %low_slot2468
  store i32 %_lhs2573, i32* %i2471
  br label %__cond428

__cond428:
  %_lhs2574 = load i32* %i2471
  %_lhs2575 = load i32* %k2473
  %bop2576 = icmp slt i32 %_lhs2574, %_lhs2575
  br i1 %bop2576, label %__body427, label %__post426

__fresh438:
  br label %__body427

__body427:
  %_lhs2577 = load i32* %i2471
  %len_ptr2578 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2470, i32 0, i32 0
  %len2579 = load i32* %len_ptr2578
  call void @oat_array_bounds_check( i32 %len2579, i32 %_lhs2577 )
  %array_dereferenced2580 = load { i32, [ 0 x i32 ] }** %a_slot2470
  %elt_ptr2581 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2580, i32 0, i32 1, i32 %_lhs2577
  %_lhs2582 = load i32* %i2471
  %len_ptr2583 = getelementptr { i32, [ 0 x i32 ] }** %c2482, i32 0, i32 0
  %len2584 = load i32* %len_ptr2583
  call void @oat_array_bounds_check( i32 %len2584, i32 %_lhs2582 )
  %array_dereferenced2585 = load { i32, [ 0 x i32 ] }** %c2482
  %elt_ptr2586 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2585, i32 0, i32 1, i32 %_lhs2582
  %_lhs2587 = load i32* %elt_ptr2586
  store i32 %_lhs2587, i32* %elt_ptr2581
  %_lhs2588 = load i32* %i2471
  %bop2589 = add i32 %_lhs2588, 1
  store i32 %bop2589, i32* %i2471
  br label %__cond428

__fresh439:
  br label %__post426

__post426:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2442, i32 %low2440, i32 %high2438){

__fresh408:
  %a_slot2443 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2442, { i32, [ 0 x i32 ] }** %a_slot2443
  %low_slot2441 = alloca i32
  store i32 %low2440, i32* %low_slot2441
  %high_slot2439 = alloca i32
  store i32 %high2438, i32* %high_slot2439
  %mid2444 = alloca i32
  store i32 0, i32* %mid2444
  %_lhs2445 = load i32* %low_slot2441
  %_lhs2446 = load i32* %high_slot2439
  %bop2447 = icmp slt i32 %_lhs2445, %_lhs2446
  br i1 %bop2447, label %__then407, label %__else406

__fresh409:
  br label %__then407

__then407:
  %_lhs2448 = load i32* %low_slot2441
  %_lhs2449 = load i32* %high_slot2439
  %bop2450 = add i32 %_lhs2448, %_lhs2449
  %bop2451 = ashr i32 %bop2450, 1
  store i32 %bop2451, i32* %mid2444
  %_lhs2454 = load i32* %mid2444
  %_lhs2453 = load i32* %low_slot2441
  %_lhs2452 = load { i32, [ 0 x i32 ] }** %a_slot2443
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2452, i32 %_lhs2453, i32 %_lhs2454 )
  %_lhs2458 = load i32* %high_slot2439
  %_lhs2456 = load i32* %mid2444
  %bop2457 = add i32 %_lhs2456, 1
  %_lhs2455 = load { i32, [ 0 x i32 ] }** %a_slot2443
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2455, i32 %bop2457, i32 %_lhs2458 )
  %_lhs2462 = load i32* %mid2444
  %_lhs2461 = load i32* %high_slot2439
  %_lhs2460 = load i32* %low_slot2441
  %_lhs2459 = load { i32, [ 0 x i32 ] }** %a_slot2443
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2459, i32 %_lhs2460, i32 %_lhs2461, i32 %_lhs2462 )
  br label %__merge405

__fresh410:
  br label %__else406

__else406:
  br label %__merge405

__merge405:
  ret void
}


define i32 @program (i32 %argc2423, { i32, [ 0 x i8* ] }* %argv2421){

__fresh404:
  %argc_slot2424 = alloca i32
  store i32 %argc2423, i32* %argc_slot2424
  %argv_slot2422 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2421, { i32, [ 0 x i8* ] }** %argv_slot2422
  %i2425 = alloca i32
  store i32 0, i32* %i2425
  %_lhs2426 = load { i32, [ 0 x i32 ] }** @a2420
  %ret2427 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2426 )
  call void @print_string( i8* %ret2427 )
  %_lhs2428 = load { i32, [ 0 x i32 ] }** @a2420
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2428, i32 0, i32 9 )
  %strval2430 = load i8** @_oat_string2429
  call void @print_string( i8* %strval2430 )
  %_lhs2431 = load { i32, [ 0 x i32 ] }** @a2420
  %ret2432 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2431 )
  call void @print_string( i8* %ret2432 )
  %strval2434 = load i8** @_oat_string2433
  call void @print_string( i8* %strval2434 )
  %_lhs2435 = load i32* %i2425
  ret i32 %_lhs2435
}


define void @a2420.init (){

__fresh403:
  %array_ptr2408 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2409 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2408 to { i32, [ 0 x i32 ] }* 
  %index_ptr2410 = getelementptr { i32, [ 0 x i32 ] }* %array2409, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2410
  %index_ptr2411 = getelementptr { i32, [ 0 x i32 ] }* %array2409, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2411
  %index_ptr2412 = getelementptr { i32, [ 0 x i32 ] }* %array2409, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2412
  %index_ptr2413 = getelementptr { i32, [ 0 x i32 ] }* %array2409, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2413
  %index_ptr2414 = getelementptr { i32, [ 0 x i32 ] }* %array2409, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2414
  %index_ptr2415 = getelementptr { i32, [ 0 x i32 ] }* %array2409, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2415
  %index_ptr2416 = getelementptr { i32, [ 0 x i32 ] }* %array2409, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2416
  %index_ptr2417 = getelementptr { i32, [ 0 x i32 ] }* %array2409, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2417
  %index_ptr2418 = getelementptr { i32, [ 0 x i32 ] }* %array2409, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2418
  %index_ptr2419 = getelementptr { i32, [ 0 x i32 ] }* %array2409, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2419
  store { i32, [ 0 x i32 ] }* %array2409, { i32, [ 0 x i32 ] }** @a2420
  ret void
}


