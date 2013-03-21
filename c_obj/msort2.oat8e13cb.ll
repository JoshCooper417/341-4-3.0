declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2447.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2447 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2447.str., i32 0, i32 0), align 4
@_oat_string2443.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2443 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2443.str., i32 0, i32 0), align 4
@a2434 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2434.init
define void @oat_init (){

__fresh944:
  call void @a2434.init(  )
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2483, i32 %low2481, i32 %high2479, i32 %mid2477){

__fresh929:
  %a_slot2484 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2483, { i32, [ 0 x i32 ] }** %a_slot2484
  %low_slot2482 = alloca i32
  store i32 %low2481, i32* %low_slot2482
  %high_slot2480 = alloca i32
  store i32 %high2479, i32* %high_slot2480
  %mid_slot2478 = alloca i32
  store i32 %mid2477, i32* %mid_slot2478
  %i2485 = alloca i32
  store i32 0, i32* %i2485
  %j2486 = alloca i32
  store i32 0, i32* %j2486
  %k2487 = alloca i32
  store i32 0, i32* %k2487
  %array_ptr2489 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2490 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2489 to { i32, [ 0 x i32 ] }* 
  %i2495 = alloca i32
  store i32 1, i32* %i2495
  %i2488 = load i32* %i2495
  br label %__check912

__fresh930:
  br label %__check912

__check912:
  br label %__end911

__fresh931:
  %cmp_op2493 = icmp slt i32 %i2488, 50
  br i32 %cmp_op2493, label %__body913, label %__end911

__fresh932:
  br label %__body913

__body913:
  %elem_ptr2492 = getelementptr { i32, [ 0 x i32 ] }* %array2490, i32 0, i32 1, i32 %i2488
  store i32 0, i32* %elem_ptr2492
  %index_op2494 = add i32 %i2488, 1
  br label %__check912

__fresh933:
  br label %__end911

__end911:
  %array_ptr2491 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2490, { i32, [ 0 x i32 ] }** %array_ptr2491
  %c2497 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }** %array_ptr2491, { i32, [ 0 x i32 ] }** %c2497
  %_lhs2498 = load i32* %low_slot2482
  store i32 %_lhs2498, i32* %i2485
  %_lhs2499 = load i32* %mid_slot2478
  %bop2500 = add i32 %_lhs2499, 1
  store i32 %bop2500, i32* %j2486
  %_lhs2501 = load i32* %low_slot2482
  store i32 %_lhs2501, i32* %k2487
  br label %__cond916

__cond916:
  %_lhs2502 = load i32* %i2485
  %_lhs2503 = load i32* %mid_slot2478
  %bop2504 = icmp sle i32 %_lhs2502, %_lhs2503
  %_lhs2505 = load i32* %j2486
  %_lhs2506 = load i32* %high_slot2480
  %bop2507 = icmp sle i32 %_lhs2505, %_lhs2506
  %bop2508 = and i1 %bop2504, %bop2507
  br i1 %bop2508, label %__body915, label %__post914

__fresh934:
  br label %__body915

__body915:
  %_lhs2509 = load i32* %i2485
  %array_dereferenced2510 = load { i32, [ 0 x i32 ] }** %a_slot2484
  %len_ptr2511 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2510, i32 0, i32 0
  %len2512 = load i32* %len_ptr2511
  call void @oat_array_bounds_check( i32 %len2512, i32 %_lhs2509 )
  %elt_ptr2513 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2510, i32 0, i32 1, i32 %_lhs2509
  %_lhs2514 = load i32* %elt_ptr2513
  %_lhs2515 = load i32* %j2486
  %array_dereferenced2516 = load { i32, [ 0 x i32 ] }** %a_slot2484
  %len_ptr2517 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2516, i32 0, i32 0
  %len2518 = load i32* %len_ptr2517
  call void @oat_array_bounds_check( i32 %len2518, i32 %_lhs2515 )
  %elt_ptr2519 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2516, i32 0, i32 1, i32 %_lhs2515
  %_lhs2520 = load i32* %elt_ptr2519
  %bop2521 = icmp slt i32 %_lhs2514, %_lhs2520
  br i1 %bop2521, label %__then919, label %__else918

__fresh935:
  br label %__then919

__then919:
  %_lhs2522 = load i32* %k2487
  %array_dereferenced2523 = load { i32, [ 0 x i32 ] }** %c2497
  %len_ptr2524 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2523, i32 0, i32 0
  %len2525 = load i32* %len_ptr2524
  call void @oat_array_bounds_check( i32 %len2525, i32 %_lhs2522 )
  %elt_ptr2526 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2523, i32 0, i32 1, i32 %_lhs2522
  %_lhs2527 = load i32* %i2485
  %array_dereferenced2528 = load { i32, [ 0 x i32 ] }** %a_slot2484
  %len_ptr2529 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2528, i32 0, i32 0
  %len2530 = load i32* %len_ptr2529
  call void @oat_array_bounds_check( i32 %len2530, i32 %_lhs2527 )
  %elt_ptr2531 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2528, i32 0, i32 1, i32 %_lhs2527
  %_lhs2532 = load i32* %elt_ptr2531
  store i32 %_lhs2532, i32* %elt_ptr2526
  %_lhs2533 = load i32* %k2487
  %bop2534 = add i32 %_lhs2533, 1
  store i32 %bop2534, i32* %k2487
  %_lhs2535 = load i32* %i2485
  %bop2536 = add i32 %_lhs2535, 1
  store i32 %bop2536, i32* %i2485
  br label %__merge917

__fresh936:
  br label %__else918

__else918:
  %_lhs2537 = load i32* %k2487
  %array_dereferenced2538 = load { i32, [ 0 x i32 ] }** %c2497
  %len_ptr2539 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2538, i32 0, i32 0
  %len2540 = load i32* %len_ptr2539
  call void @oat_array_bounds_check( i32 %len2540, i32 %_lhs2537 )
  %elt_ptr2541 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2538, i32 0, i32 1, i32 %_lhs2537
  %_lhs2542 = load i32* %j2486
  %array_dereferenced2543 = load { i32, [ 0 x i32 ] }** %a_slot2484
  %len_ptr2544 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2543, i32 0, i32 0
  %len2545 = load i32* %len_ptr2544
  call void @oat_array_bounds_check( i32 %len2545, i32 %_lhs2542 )
  %elt_ptr2546 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2543, i32 0, i32 1, i32 %_lhs2542
  %_lhs2547 = load i32* %elt_ptr2546
  store i32 %_lhs2547, i32* %elt_ptr2541
  %_lhs2548 = load i32* %k2487
  %bop2549 = add i32 %_lhs2548, 1
  store i32 %bop2549, i32* %k2487
  %_lhs2550 = load i32* %j2486
  %bop2551 = add i32 %_lhs2550, 1
  store i32 %bop2551, i32* %j2486
  br label %__merge917

__merge917:
  br label %__cond916

__fresh937:
  br label %__post914

__post914:
  br label %__cond922

__cond922:
  %_lhs2552 = load i32* %i2485
  %_lhs2553 = load i32* %mid_slot2478
  %bop2554 = icmp sle i32 %_lhs2552, %_lhs2553
  br i1 %bop2554, label %__body921, label %__post920

__fresh938:
  br label %__body921

__body921:
  %_lhs2555 = load i32* %k2487
  %array_dereferenced2556 = load { i32, [ 0 x i32 ] }** %c2497
  %len_ptr2557 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2556, i32 0, i32 0
  %len2558 = load i32* %len_ptr2557
  call void @oat_array_bounds_check( i32 %len2558, i32 %_lhs2555 )
  %elt_ptr2559 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2556, i32 0, i32 1, i32 %_lhs2555
  %_lhs2560 = load i32* %i2485
  %array_dereferenced2561 = load { i32, [ 0 x i32 ] }** %a_slot2484
  %len_ptr2562 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2561, i32 0, i32 0
  %len2563 = load i32* %len_ptr2562
  call void @oat_array_bounds_check( i32 %len2563, i32 %_lhs2560 )
  %elt_ptr2564 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2561, i32 0, i32 1, i32 %_lhs2560
  %_lhs2565 = load i32* %elt_ptr2564
  store i32 %_lhs2565, i32* %elt_ptr2559
  %_lhs2566 = load i32* %k2487
  %bop2567 = add i32 %_lhs2566, 1
  store i32 %bop2567, i32* %k2487
  %_lhs2568 = load i32* %i2485
  %bop2569 = add i32 %_lhs2568, 1
  store i32 %bop2569, i32* %i2485
  br label %__cond922

__fresh939:
  br label %__post920

__post920:
  br label %__cond925

__cond925:
  %_lhs2570 = load i32* %j2486
  %_lhs2571 = load i32* %high_slot2480
  %bop2572 = icmp sle i32 %_lhs2570, %_lhs2571
  br i1 %bop2572, label %__body924, label %__post923

__fresh940:
  br label %__body924

__body924:
  %_lhs2573 = load i32* %k2487
  %array_dereferenced2574 = load { i32, [ 0 x i32 ] }** %c2497
  %len_ptr2575 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2574, i32 0, i32 0
  %len2576 = load i32* %len_ptr2575
  call void @oat_array_bounds_check( i32 %len2576, i32 %_lhs2573 )
  %elt_ptr2577 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2574, i32 0, i32 1, i32 %_lhs2573
  %_lhs2578 = load i32* %j2486
  %array_dereferenced2579 = load { i32, [ 0 x i32 ] }** %a_slot2484
  %len_ptr2580 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2579, i32 0, i32 0
  %len2581 = load i32* %len_ptr2580
  call void @oat_array_bounds_check( i32 %len2581, i32 %_lhs2578 )
  %elt_ptr2582 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2579, i32 0, i32 1, i32 %_lhs2578
  %_lhs2583 = load i32* %elt_ptr2582
  store i32 %_lhs2583, i32* %elt_ptr2577
  %_lhs2584 = load i32* %k2487
  %bop2585 = add i32 %_lhs2584, 1
  store i32 %bop2585, i32* %k2487
  %_lhs2586 = load i32* %j2486
  %bop2587 = add i32 %_lhs2586, 1
  store i32 %bop2587, i32* %j2486
  br label %__cond925

__fresh941:
  br label %__post923

__post923:
  %_lhs2588 = load i32* %low_slot2482
  store i32 %_lhs2588, i32* %i2485
  br label %__cond928

__cond928:
  %_lhs2589 = load i32* %i2485
  %_lhs2590 = load i32* %k2487
  %bop2591 = icmp slt i32 %_lhs2589, %_lhs2590
  br i1 %bop2591, label %__body927, label %__post926

__fresh942:
  br label %__body927

__body927:
  %_lhs2592 = load i32* %i2485
  %array_dereferenced2593 = load { i32, [ 0 x i32 ] }** %a_slot2484
  %len_ptr2594 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2593, i32 0, i32 0
  %len2595 = load i32* %len_ptr2594
  call void @oat_array_bounds_check( i32 %len2595, i32 %_lhs2592 )
  %elt_ptr2596 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2593, i32 0, i32 1, i32 %_lhs2592
  %_lhs2597 = load i32* %i2485
  %array_dereferenced2598 = load { i32, [ 0 x i32 ] }** %c2497
  %len_ptr2599 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2598, i32 0, i32 0
  %len2600 = load i32* %len_ptr2599
  call void @oat_array_bounds_check( i32 %len2600, i32 %_lhs2597 )
  %elt_ptr2601 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2598, i32 0, i32 1, i32 %_lhs2597
  %_lhs2602 = load i32* %elt_ptr2601
  store i32 %_lhs2602, i32* %elt_ptr2596
  %_lhs2603 = load i32* %i2485
  %bop2604 = add i32 %_lhs2603, 1
  store i32 %bop2604, i32* %i2485
  br label %__cond928

__fresh943:
  br label %__post926

__post926:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2456, i32 %low2454, i32 %high2452){

__fresh908:
  %a_slot2457 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2456, { i32, [ 0 x i32 ] }** %a_slot2457
  %low_slot2455 = alloca i32
  store i32 %low2454, i32* %low_slot2455
  %high_slot2453 = alloca i32
  store i32 %high2452, i32* %high_slot2453
  %mid2458 = alloca i32
  store i32 0, i32* %mid2458
  %_lhs2459 = load i32* %low_slot2455
  %_lhs2460 = load i32* %high_slot2453
  %bop2461 = icmp slt i32 %_lhs2459, %_lhs2460
  br i1 %bop2461, label %__then907, label %__else906

__fresh909:
  br label %__then907

__then907:
  %_lhs2462 = load i32* %low_slot2455
  %_lhs2463 = load i32* %high_slot2453
  %bop2464 = add i32 %_lhs2462, %_lhs2463
  %bop2465 = ashr i32 %bop2464, 1
  store i32 %bop2465, i32* %mid2458
  %_lhs2468 = load i32* %mid2458
  %_lhs2467 = load i32* %low_slot2455
  %_lhs2466 = load { i32, [ 0 x i32 ] }** %a_slot2457
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2466, i32 %_lhs2467, i32 %_lhs2468 )
  %_lhs2472 = load i32* %high_slot2453
  %_lhs2470 = load i32* %mid2458
  %bop2471 = add i32 %_lhs2470, 1
  %_lhs2469 = load { i32, [ 0 x i32 ] }** %a_slot2457
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2469, i32 %bop2471, i32 %_lhs2472 )
  %_lhs2476 = load i32* %mid2458
  %_lhs2475 = load i32* %high_slot2453
  %_lhs2474 = load i32* %low_slot2455
  %_lhs2473 = load { i32, [ 0 x i32 ] }** %a_slot2457
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2473, i32 %_lhs2474, i32 %_lhs2475, i32 %_lhs2476 )
  br label %__merge905

__fresh910:
  br label %__else906

__else906:
  br label %__merge905

__merge905:
  ret void
}


define i32 @program (i32 %argc2437, { i32, [ 0 x i8* ] }* %argv2435){

__fresh904:
  %argc_slot2438 = alloca i32
  store i32 %argc2437, i32* %argc_slot2438
  %argv_slot2436 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2435, { i32, [ 0 x i8* ] }** %argv_slot2436
  %i2439 = alloca i32
  store i32 0, i32* %i2439
  %_lhs2440 = load { i32, [ 0 x i32 ] }** @a2434
  %ret2441 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2440 )
  call void @print_string( i8* %ret2441 )
  %_lhs2442 = load { i32, [ 0 x i32 ] }** @a2434
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2442, i32 0, i32 9 )
  %strval2444 = load i8** @_oat_string2443
  call void @print_string( i8* %strval2444 )
  %_lhs2445 = load { i32, [ 0 x i32 ] }** @a2434
  %ret2446 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2445 )
  call void @print_string( i8* %ret2446 )
  %strval2448 = load i8** @_oat_string2447
  call void @print_string( i8* %strval2448 )
  %_lhs2449 = load i32* %i2439
  ret i32 %_lhs2449
}


define void @a2434.init (){

__fresh903:
  %array_ptr2422 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2423 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2422 to { i32, [ 0 x i32 ] }* 
  %index_ptr2424 = getelementptr { i32, [ 0 x i32 ] }* %array2423, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2424
  %index_ptr2425 = getelementptr { i32, [ 0 x i32 ] }* %array2423, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2425
  %index_ptr2426 = getelementptr { i32, [ 0 x i32 ] }* %array2423, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2426
  %index_ptr2427 = getelementptr { i32, [ 0 x i32 ] }* %array2423, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2427
  %index_ptr2428 = getelementptr { i32, [ 0 x i32 ] }* %array2423, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2428
  %index_ptr2429 = getelementptr { i32, [ 0 x i32 ] }* %array2423, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2429
  %index_ptr2430 = getelementptr { i32, [ 0 x i32 ] }* %array2423, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2430
  %index_ptr2431 = getelementptr { i32, [ 0 x i32 ] }* %array2423, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2431
  %index_ptr2432 = getelementptr { i32, [ 0 x i32 ] }* %array2423, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2432
  %index_ptr2433 = getelementptr { i32, [ 0 x i32 ] }* %array2423, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2433
  store { i32, [ 0 x i32 ] }* %array2423, { i32, [ 0 x i32 ] }** @a2434
  ret void
}


