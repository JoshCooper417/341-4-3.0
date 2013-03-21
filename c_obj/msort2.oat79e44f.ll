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

__fresh529:
  call void @a2401.init(  )
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2450, i32 %low2448, i32 %high2446, i32 %mid2444){

__fresh514:
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
  br label %__check497

__fresh515:
  br label %__check497

__check497:
  br label %__end496

__fresh516:
  %cmp_op2459 = icmp slt i32 %i2455, 50
  br i32 %cmp_op2459, label %__body498, label %__end496

__fresh517:
  br label %__body498

__body498:
  %elem_ptr2458 = getelementptr { i32, [ 0 x i32 ] }* %array2457, i32 0, i32 1, i32 %i2455
  store i32 0, i32* %elem_ptr2458
  %index_op2460 = add i32 %i2455, 1
  br label %__check497

__fresh518:
  br label %__end496

__end496:
  %c2463 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2457, { i32, [ 0 x i32 ] }** %c2463
  %_lhs2464 = load i32* %low_slot2449
  store i32 %_lhs2464, i32* %i2452
  %_lhs2465 = load i32* %mid_slot2445
  %bop2466 = add i32 %_lhs2465, 1
  store i32 %bop2466, i32* %j2453
  %_lhs2467 = load i32* %low_slot2449
  store i32 %_lhs2467, i32* %k2454
  br label %__cond501

__cond501:
  %_lhs2468 = load i32* %i2452
  %_lhs2469 = load i32* %mid_slot2445
  %bop2470 = icmp sle i32 %_lhs2468, %_lhs2469
  %_lhs2471 = load i32* %j2453
  %_lhs2472 = load i32* %high_slot2447
  %bop2473 = icmp sle i32 %_lhs2471, %_lhs2472
  %bop2474 = and i1 %bop2470, %bop2473
  br i1 %bop2474, label %__body500, label %__post499

__fresh519:
  br label %__body500

__body500:
  %_lhs2475 = load i32* %i2452
  %len_ptr2476 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2451, i32 0, i32 0
  %len2477 = load i32* %len_ptr2476
  call void @oat_array_bounds_check( i32 %len2477, i32 %_lhs2475 )
  %array_dereferenced2478 = load { i32, [ 0 x i32 ] }** %a_slot2451
  %elt_ptr2479 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2478, i32 0, i32 1, i32 %_lhs2475
  %_lhs2480 = load i32* %elt_ptr2479
  %_lhs2481 = load i32* %j2453
  %len_ptr2482 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2451, i32 0, i32 0
  %len2483 = load i32* %len_ptr2482
  call void @oat_array_bounds_check( i32 %len2483, i32 %_lhs2481 )
  %array_dereferenced2484 = load { i32, [ 0 x i32 ] }** %a_slot2451
  %elt_ptr2485 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2484, i32 0, i32 1, i32 %_lhs2481
  %_lhs2486 = load i32* %elt_ptr2485
  %bop2487 = icmp slt i32 %_lhs2480, %_lhs2486
  br i1 %bop2487, label %__then504, label %__else503

__fresh520:
  br label %__then504

__then504:
  %_lhs2488 = load i32* %k2454
  %len_ptr2489 = getelementptr { i32, [ 0 x i32 ] }** %c2463, i32 0, i32 0
  %len2490 = load i32* %len_ptr2489
  call void @oat_array_bounds_check( i32 %len2490, i32 %_lhs2488 )
  %array_dereferenced2491 = load { i32, [ 0 x i32 ] }** %c2463
  %elt_ptr2492 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2491, i32 0, i32 1, i32 %_lhs2488
  %_lhs2493 = load i32* %i2452
  %len_ptr2494 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2451, i32 0, i32 0
  %len2495 = load i32* %len_ptr2494
  call void @oat_array_bounds_check( i32 %len2495, i32 %_lhs2493 )
  %array_dereferenced2496 = load { i32, [ 0 x i32 ] }** %a_slot2451
  %elt_ptr2497 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2496, i32 0, i32 1, i32 %_lhs2493
  %_lhs2498 = load i32* %elt_ptr2497
  store i32 %_lhs2498, i32* %elt_ptr2492
  %_lhs2499 = load i32* %k2454
  %bop2500 = add i32 %_lhs2499, 1
  store i32 %bop2500, i32* %k2454
  %_lhs2501 = load i32* %i2452
  %bop2502 = add i32 %_lhs2501, 1
  store i32 %bop2502, i32* %i2452
  br label %__merge502

__fresh521:
  br label %__else503

__else503:
  %_lhs2503 = load i32* %k2454
  %len_ptr2504 = getelementptr { i32, [ 0 x i32 ] }** %c2463, i32 0, i32 0
  %len2505 = load i32* %len_ptr2504
  call void @oat_array_bounds_check( i32 %len2505, i32 %_lhs2503 )
  %array_dereferenced2506 = load { i32, [ 0 x i32 ] }** %c2463
  %elt_ptr2507 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2506, i32 0, i32 1, i32 %_lhs2503
  %_lhs2508 = load i32* %j2453
  %len_ptr2509 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2451, i32 0, i32 0
  %len2510 = load i32* %len_ptr2509
  call void @oat_array_bounds_check( i32 %len2510, i32 %_lhs2508 )
  %array_dereferenced2511 = load { i32, [ 0 x i32 ] }** %a_slot2451
  %elt_ptr2512 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2511, i32 0, i32 1, i32 %_lhs2508
  %_lhs2513 = load i32* %elt_ptr2512
  store i32 %_lhs2513, i32* %elt_ptr2507
  %_lhs2514 = load i32* %k2454
  %bop2515 = add i32 %_lhs2514, 1
  store i32 %bop2515, i32* %k2454
  %_lhs2516 = load i32* %j2453
  %bop2517 = add i32 %_lhs2516, 1
  store i32 %bop2517, i32* %j2453
  br label %__merge502

__merge502:
  br label %__cond501

__fresh522:
  br label %__post499

__post499:
  br label %__cond507

__cond507:
  %_lhs2518 = load i32* %i2452
  %_lhs2519 = load i32* %mid_slot2445
  %bop2520 = icmp sle i32 %_lhs2518, %_lhs2519
  br i1 %bop2520, label %__body506, label %__post505

__fresh523:
  br label %__body506

__body506:
  %_lhs2521 = load i32* %k2454
  %len_ptr2522 = getelementptr { i32, [ 0 x i32 ] }** %c2463, i32 0, i32 0
  %len2523 = load i32* %len_ptr2522
  call void @oat_array_bounds_check( i32 %len2523, i32 %_lhs2521 )
  %array_dereferenced2524 = load { i32, [ 0 x i32 ] }** %c2463
  %elt_ptr2525 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2524, i32 0, i32 1, i32 %_lhs2521
  %_lhs2526 = load i32* %i2452
  %len_ptr2527 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2451, i32 0, i32 0
  %len2528 = load i32* %len_ptr2527
  call void @oat_array_bounds_check( i32 %len2528, i32 %_lhs2526 )
  %array_dereferenced2529 = load { i32, [ 0 x i32 ] }** %a_slot2451
  %elt_ptr2530 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2529, i32 0, i32 1, i32 %_lhs2526
  %_lhs2531 = load i32* %elt_ptr2530
  store i32 %_lhs2531, i32* %elt_ptr2525
  %_lhs2532 = load i32* %k2454
  %bop2533 = add i32 %_lhs2532, 1
  store i32 %bop2533, i32* %k2454
  %_lhs2534 = load i32* %i2452
  %bop2535 = add i32 %_lhs2534, 1
  store i32 %bop2535, i32* %i2452
  br label %__cond507

__fresh524:
  br label %__post505

__post505:
  br label %__cond510

__cond510:
  %_lhs2536 = load i32* %j2453
  %_lhs2537 = load i32* %high_slot2447
  %bop2538 = icmp sle i32 %_lhs2536, %_lhs2537
  br i1 %bop2538, label %__body509, label %__post508

__fresh525:
  br label %__body509

__body509:
  %_lhs2539 = load i32* %k2454
  %len_ptr2540 = getelementptr { i32, [ 0 x i32 ] }** %c2463, i32 0, i32 0
  %len2541 = load i32* %len_ptr2540
  call void @oat_array_bounds_check( i32 %len2541, i32 %_lhs2539 )
  %array_dereferenced2542 = load { i32, [ 0 x i32 ] }** %c2463
  %elt_ptr2543 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2542, i32 0, i32 1, i32 %_lhs2539
  %_lhs2544 = load i32* %j2453
  %len_ptr2545 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2451, i32 0, i32 0
  %len2546 = load i32* %len_ptr2545
  call void @oat_array_bounds_check( i32 %len2546, i32 %_lhs2544 )
  %array_dereferenced2547 = load { i32, [ 0 x i32 ] }** %a_slot2451
  %elt_ptr2548 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2547, i32 0, i32 1, i32 %_lhs2544
  %_lhs2549 = load i32* %elt_ptr2548
  store i32 %_lhs2549, i32* %elt_ptr2543
  %_lhs2550 = load i32* %k2454
  %bop2551 = add i32 %_lhs2550, 1
  store i32 %bop2551, i32* %k2454
  %_lhs2552 = load i32* %j2453
  %bop2553 = add i32 %_lhs2552, 1
  store i32 %bop2553, i32* %j2453
  br label %__cond510

__fresh526:
  br label %__post508

__post508:
  %_lhs2554 = load i32* %low_slot2449
  store i32 %_lhs2554, i32* %i2452
  br label %__cond513

__cond513:
  %_lhs2555 = load i32* %i2452
  %_lhs2556 = load i32* %k2454
  %bop2557 = icmp slt i32 %_lhs2555, %_lhs2556
  br i1 %bop2557, label %__body512, label %__post511

__fresh527:
  br label %__body512

__body512:
  %_lhs2558 = load i32* %i2452
  %len_ptr2559 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2451, i32 0, i32 0
  %len2560 = load i32* %len_ptr2559
  call void @oat_array_bounds_check( i32 %len2560, i32 %_lhs2558 )
  %array_dereferenced2561 = load { i32, [ 0 x i32 ] }** %a_slot2451
  %elt_ptr2562 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2561, i32 0, i32 1, i32 %_lhs2558
  %_lhs2563 = load i32* %i2452
  %len_ptr2564 = getelementptr { i32, [ 0 x i32 ] }** %c2463, i32 0, i32 0
  %len2565 = load i32* %len_ptr2564
  call void @oat_array_bounds_check( i32 %len2565, i32 %_lhs2563 )
  %array_dereferenced2566 = load { i32, [ 0 x i32 ] }** %c2463
  %elt_ptr2567 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2566, i32 0, i32 1, i32 %_lhs2563
  %_lhs2568 = load i32* %elt_ptr2567
  store i32 %_lhs2568, i32* %elt_ptr2562
  %_lhs2569 = load i32* %i2452
  %bop2570 = add i32 %_lhs2569, 1
  store i32 %bop2570, i32* %i2452
  br label %__cond513

__fresh528:
  br label %__post511

__post511:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2423, i32 %low2421, i32 %high2419){

__fresh493:
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
  br i1 %bop2428, label %__then492, label %__else491

__fresh494:
  br label %__then492

__then492:
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
  br label %__merge490

__fresh495:
  br label %__else491

__else491:
  br label %__merge490

__merge490:
  ret void
}


define i32 @program (i32 %argc2404, { i32, [ 0 x i8* ] }* %argv2402){

__fresh489:
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

__fresh488:
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


