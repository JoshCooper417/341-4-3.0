declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2424.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2424 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2424.str., i32 0, i32 0), align 4
@_oat_string2420.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2420 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2420.str., i32 0, i32 0), align 4
@a2411 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2411.init
define void @oat_init (){

__fresh944:
  call void @a2411.init(  )
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2460, i32 %low2458, i32 %high2456, i32 %mid2454){

__fresh929:
  %a_slot2461 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2460, { i32, [ 0 x i32 ] }** %a_slot2461
  %low_slot2459 = alloca i32
  store i32 %low2458, i32* %low_slot2459
  %high_slot2457 = alloca i32
  store i32 %high2456, i32* %high_slot2457
  %mid_slot2455 = alloca i32
  store i32 %mid2454, i32* %mid_slot2455
  %i2462 = alloca i32
  store i32 0, i32* %i2462
  %j2463 = alloca i32
  store i32 0, i32* %j2463
  %k2464 = alloca i32
  store i32 0, i32* %k2464
  %array_ptr2466 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2467 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2466 to { i32, [ 0 x i32 ] }* 
  %i2471 = alloca i32
  store i32 1, i32* %i2471
  %i2465 = load i32* %i2471
  br label %__check912

__fresh930:
  br label %__check912

__check912:
  br label %__end911

__fresh931:
  %cmp_op2469 = icmp slt i32 %i2465, 50
  br i32 %cmp_op2469, label %__body913, label %__end911

__fresh932:
  br label %__body913

__body913:
  %elem_ptr2468 = getelementptr { i32, [ 0 x i32 ] }* %array2467, i32 0, i32 1, i32 %i2465
  store i32 0, i32* %elem_ptr2468
  %index_op2470 = add i32 %i2465, 1
  br label %__check912

__fresh933:
  br label %__end911

__end911:
  %c2473 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2467, { i32, [ 0 x i32 ] }** %c2473
  %_lhs2474 = load i32* %low_slot2459
  store i32 %_lhs2474, i32* %i2462
  %_lhs2475 = load i32* %mid_slot2455
  %bop2476 = add i32 %_lhs2475, 1
  store i32 %bop2476, i32* %j2463
  %_lhs2477 = load i32* %low_slot2459
  store i32 %_lhs2477, i32* %k2464
  br label %__cond916

__cond916:
  %_lhs2478 = load i32* %i2462
  %_lhs2479 = load i32* %mid_slot2455
  %bop2480 = icmp sle i32 %_lhs2478, %_lhs2479
  %_lhs2481 = load i32* %j2463
  %_lhs2482 = load i32* %high_slot2457
  %bop2483 = icmp sle i32 %_lhs2481, %_lhs2482
  %bop2484 = and i1 %bop2480, %bop2483
  br i1 %bop2484, label %__body915, label %__post914

__fresh934:
  br label %__body915

__body915:
  %_lhs2485 = load i32* %i2462
  %array_dereferenced2486 = load { i32, [ 0 x i32 ] }** %a_slot2461
  %len_ptr2487 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2486, i32 0, i32 0
  %len2488 = load i32* %len_ptr2487
  call void @oat_array_bounds_check( i32 %len2488, i32 %_lhs2485 )
  %elt_ptr2489 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2486, i32 0, i32 1, i32 %_lhs2485
  %_lhs2490 = load i32* %elt_ptr2489
  %_lhs2491 = load i32* %j2463
  %array_dereferenced2492 = load { i32, [ 0 x i32 ] }** %a_slot2461
  %len_ptr2493 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2492, i32 0, i32 0
  %len2494 = load i32* %len_ptr2493
  call void @oat_array_bounds_check( i32 %len2494, i32 %_lhs2491 )
  %elt_ptr2495 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2492, i32 0, i32 1, i32 %_lhs2491
  %_lhs2496 = load i32* %elt_ptr2495
  %bop2497 = icmp slt i32 %_lhs2490, %_lhs2496
  br i1 %bop2497, label %__then919, label %__else918

__fresh935:
  br label %__then919

__then919:
  %_lhs2498 = load i32* %k2464
  %array_dereferenced2499 = load { i32, [ 0 x i32 ] }** %c2473
  %len_ptr2500 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2499, i32 0, i32 0
  %len2501 = load i32* %len_ptr2500
  call void @oat_array_bounds_check( i32 %len2501, i32 %_lhs2498 )
  %elt_ptr2502 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2499, i32 0, i32 1, i32 %_lhs2498
  %_lhs2503 = load i32* %i2462
  %array_dereferenced2504 = load { i32, [ 0 x i32 ] }** %a_slot2461
  %len_ptr2505 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2504, i32 0, i32 0
  %len2506 = load i32* %len_ptr2505
  call void @oat_array_bounds_check( i32 %len2506, i32 %_lhs2503 )
  %elt_ptr2507 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2504, i32 0, i32 1, i32 %_lhs2503
  %_lhs2508 = load i32* %elt_ptr2507
  store i32 %_lhs2508, i32* %elt_ptr2502
  %_lhs2509 = load i32* %k2464
  %bop2510 = add i32 %_lhs2509, 1
  store i32 %bop2510, i32* %k2464
  %_lhs2511 = load i32* %i2462
  %bop2512 = add i32 %_lhs2511, 1
  store i32 %bop2512, i32* %i2462
  br label %__merge917

__fresh936:
  br label %__else918

__else918:
  %_lhs2513 = load i32* %k2464
  %array_dereferenced2514 = load { i32, [ 0 x i32 ] }** %c2473
  %len_ptr2515 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2514, i32 0, i32 0
  %len2516 = load i32* %len_ptr2515
  call void @oat_array_bounds_check( i32 %len2516, i32 %_lhs2513 )
  %elt_ptr2517 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2514, i32 0, i32 1, i32 %_lhs2513
  %_lhs2518 = load i32* %j2463
  %array_dereferenced2519 = load { i32, [ 0 x i32 ] }** %a_slot2461
  %len_ptr2520 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2519, i32 0, i32 0
  %len2521 = load i32* %len_ptr2520
  call void @oat_array_bounds_check( i32 %len2521, i32 %_lhs2518 )
  %elt_ptr2522 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2519, i32 0, i32 1, i32 %_lhs2518
  %_lhs2523 = load i32* %elt_ptr2522
  store i32 %_lhs2523, i32* %elt_ptr2517
  %_lhs2524 = load i32* %k2464
  %bop2525 = add i32 %_lhs2524, 1
  store i32 %bop2525, i32* %k2464
  %_lhs2526 = load i32* %j2463
  %bop2527 = add i32 %_lhs2526, 1
  store i32 %bop2527, i32* %j2463
  br label %__merge917

__merge917:
  br label %__cond916

__fresh937:
  br label %__post914

__post914:
  br label %__cond922

__cond922:
  %_lhs2528 = load i32* %i2462
  %_lhs2529 = load i32* %mid_slot2455
  %bop2530 = icmp sle i32 %_lhs2528, %_lhs2529
  br i1 %bop2530, label %__body921, label %__post920

__fresh938:
  br label %__body921

__body921:
  %_lhs2531 = load i32* %k2464
  %array_dereferenced2532 = load { i32, [ 0 x i32 ] }** %c2473
  %len_ptr2533 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2532, i32 0, i32 0
  %len2534 = load i32* %len_ptr2533
  call void @oat_array_bounds_check( i32 %len2534, i32 %_lhs2531 )
  %elt_ptr2535 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2532, i32 0, i32 1, i32 %_lhs2531
  %_lhs2536 = load i32* %i2462
  %array_dereferenced2537 = load { i32, [ 0 x i32 ] }** %a_slot2461
  %len_ptr2538 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2537, i32 0, i32 0
  %len2539 = load i32* %len_ptr2538
  call void @oat_array_bounds_check( i32 %len2539, i32 %_lhs2536 )
  %elt_ptr2540 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2537, i32 0, i32 1, i32 %_lhs2536
  %_lhs2541 = load i32* %elt_ptr2540
  store i32 %_lhs2541, i32* %elt_ptr2535
  %_lhs2542 = load i32* %k2464
  %bop2543 = add i32 %_lhs2542, 1
  store i32 %bop2543, i32* %k2464
  %_lhs2544 = load i32* %i2462
  %bop2545 = add i32 %_lhs2544, 1
  store i32 %bop2545, i32* %i2462
  br label %__cond922

__fresh939:
  br label %__post920

__post920:
  br label %__cond925

__cond925:
  %_lhs2546 = load i32* %j2463
  %_lhs2547 = load i32* %high_slot2457
  %bop2548 = icmp sle i32 %_lhs2546, %_lhs2547
  br i1 %bop2548, label %__body924, label %__post923

__fresh940:
  br label %__body924

__body924:
  %_lhs2549 = load i32* %k2464
  %array_dereferenced2550 = load { i32, [ 0 x i32 ] }** %c2473
  %len_ptr2551 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2550, i32 0, i32 0
  %len2552 = load i32* %len_ptr2551
  call void @oat_array_bounds_check( i32 %len2552, i32 %_lhs2549 )
  %elt_ptr2553 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2550, i32 0, i32 1, i32 %_lhs2549
  %_lhs2554 = load i32* %j2463
  %array_dereferenced2555 = load { i32, [ 0 x i32 ] }** %a_slot2461
  %len_ptr2556 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2555, i32 0, i32 0
  %len2557 = load i32* %len_ptr2556
  call void @oat_array_bounds_check( i32 %len2557, i32 %_lhs2554 )
  %elt_ptr2558 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2555, i32 0, i32 1, i32 %_lhs2554
  %_lhs2559 = load i32* %elt_ptr2558
  store i32 %_lhs2559, i32* %elt_ptr2553
  %_lhs2560 = load i32* %k2464
  %bop2561 = add i32 %_lhs2560, 1
  store i32 %bop2561, i32* %k2464
  %_lhs2562 = load i32* %j2463
  %bop2563 = add i32 %_lhs2562, 1
  store i32 %bop2563, i32* %j2463
  br label %__cond925

__fresh941:
  br label %__post923

__post923:
  %_lhs2564 = load i32* %low_slot2459
  store i32 %_lhs2564, i32* %i2462
  br label %__cond928

__cond928:
  %_lhs2565 = load i32* %i2462
  %_lhs2566 = load i32* %k2464
  %bop2567 = icmp slt i32 %_lhs2565, %_lhs2566
  br i1 %bop2567, label %__body927, label %__post926

__fresh942:
  br label %__body927

__body927:
  %_lhs2568 = load i32* %i2462
  %array_dereferenced2569 = load { i32, [ 0 x i32 ] }** %a_slot2461
  %len_ptr2570 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2569, i32 0, i32 0
  %len2571 = load i32* %len_ptr2570
  call void @oat_array_bounds_check( i32 %len2571, i32 %_lhs2568 )
  %elt_ptr2572 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2569, i32 0, i32 1, i32 %_lhs2568
  %_lhs2573 = load i32* %i2462
  %array_dereferenced2574 = load { i32, [ 0 x i32 ] }** %c2473
  %len_ptr2575 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2574, i32 0, i32 0
  %len2576 = load i32* %len_ptr2575
  call void @oat_array_bounds_check( i32 %len2576, i32 %_lhs2573 )
  %elt_ptr2577 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2574, i32 0, i32 1, i32 %_lhs2573
  %_lhs2578 = load i32* %elt_ptr2577
  store i32 %_lhs2578, i32* %elt_ptr2572
  %_lhs2579 = load i32* %i2462
  %bop2580 = add i32 %_lhs2579, 1
  store i32 %bop2580, i32* %i2462
  br label %__cond928

__fresh943:
  br label %__post926

__post926:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2433, i32 %low2431, i32 %high2429){

__fresh908:
  %a_slot2434 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2433, { i32, [ 0 x i32 ] }** %a_slot2434
  %low_slot2432 = alloca i32
  store i32 %low2431, i32* %low_slot2432
  %high_slot2430 = alloca i32
  store i32 %high2429, i32* %high_slot2430
  %mid2435 = alloca i32
  store i32 0, i32* %mid2435
  %_lhs2436 = load i32* %low_slot2432
  %_lhs2437 = load i32* %high_slot2430
  %bop2438 = icmp slt i32 %_lhs2436, %_lhs2437
  br i1 %bop2438, label %__then907, label %__else906

__fresh909:
  br label %__then907

__then907:
  %_lhs2439 = load i32* %low_slot2432
  %_lhs2440 = load i32* %high_slot2430
  %bop2441 = add i32 %_lhs2439, %_lhs2440
  %bop2442 = ashr i32 %bop2441, 1
  store i32 %bop2442, i32* %mid2435
  %_lhs2445 = load i32* %mid2435
  %_lhs2444 = load i32* %low_slot2432
  %_lhs2443 = load { i32, [ 0 x i32 ] }** %a_slot2434
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2443, i32 %_lhs2444, i32 %_lhs2445 )
  %_lhs2449 = load i32* %high_slot2430
  %_lhs2447 = load i32* %mid2435
  %bop2448 = add i32 %_lhs2447, 1
  %_lhs2446 = load { i32, [ 0 x i32 ] }** %a_slot2434
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2446, i32 %bop2448, i32 %_lhs2449 )
  %_lhs2453 = load i32* %mid2435
  %_lhs2452 = load i32* %high_slot2430
  %_lhs2451 = load i32* %low_slot2432
  %_lhs2450 = load { i32, [ 0 x i32 ] }** %a_slot2434
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2450, i32 %_lhs2451, i32 %_lhs2452, i32 %_lhs2453 )
  br label %__merge905

__fresh910:
  br label %__else906

__else906:
  br label %__merge905

__merge905:
  ret void
}


define i32 @program (i32 %argc2414, { i32, [ 0 x i8* ] }* %argv2412){

__fresh904:
  %argc_slot2415 = alloca i32
  store i32 %argc2414, i32* %argc_slot2415
  %argv_slot2413 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2412, { i32, [ 0 x i8* ] }** %argv_slot2413
  %i2416 = alloca i32
  store i32 0, i32* %i2416
  %_lhs2417 = load { i32, [ 0 x i32 ] }** @a2411
  %ret2418 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2417 )
  call void @print_string( i8* %ret2418 )
  %_lhs2419 = load { i32, [ 0 x i32 ] }** @a2411
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2419, i32 0, i32 9 )
  %strval2421 = load i8** @_oat_string2420
  call void @print_string( i8* %strval2421 )
  %_lhs2422 = load { i32, [ 0 x i32 ] }** @a2411
  %ret2423 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2422 )
  call void @print_string( i8* %ret2423 )
  %strval2425 = load i8** @_oat_string2424
  call void @print_string( i8* %strval2425 )
  %_lhs2426 = load i32* %i2416
  ret i32 %_lhs2426
}


define void @a2411.init (){

__fresh903:
  %array_ptr2399 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2400 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2399 to { i32, [ 0 x i32 ] }* 
  %index_ptr2401 = getelementptr { i32, [ 0 x i32 ] }* %array2400, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2401
  %index_ptr2402 = getelementptr { i32, [ 0 x i32 ] }* %array2400, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2402
  %index_ptr2403 = getelementptr { i32, [ 0 x i32 ] }* %array2400, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2403
  %index_ptr2404 = getelementptr { i32, [ 0 x i32 ] }* %array2400, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2404
  %index_ptr2405 = getelementptr { i32, [ 0 x i32 ] }* %array2400, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2405
  %index_ptr2406 = getelementptr { i32, [ 0 x i32 ] }* %array2400, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2406
  %index_ptr2407 = getelementptr { i32, [ 0 x i32 ] }* %array2400, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2407
  %index_ptr2408 = getelementptr { i32, [ 0 x i32 ] }* %array2400, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2408
  %index_ptr2409 = getelementptr { i32, [ 0 x i32 ] }* %array2400, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2409
  %index_ptr2410 = getelementptr { i32, [ 0 x i32 ] }* %array2400, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2410
  store { i32, [ 0 x i32 ] }* %array2400, { i32, [ 0 x i32 ] }** @a2411
  ret void
}


