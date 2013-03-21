declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2420.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2420 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2420.str., i32 0, i32 0), align 4
@_oat_string2416.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2416 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2416.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh452:
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2456, i32 %low2454, i32 %high2452, i32 %mid2450){

__fresh441:
  %a_slot2457 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2456, { i32, [ 0 x i32 ] }** %a_slot2457
  %low_slot2455 = alloca i32
  store i32 %low2454, i32* %low_slot2455
  %high_slot2453 = alloca i32
  store i32 %high2452, i32* %high_slot2453
  %mid_slot2451 = alloca i32
  store i32 %mid2450, i32* %mid_slot2451
  %i2458 = alloca i32
  store i32 0, i32* %i2458
  %j2459 = alloca i32
  store i32 0, i32* %j2459
  %k2460 = alloca i32
  store i32 0, i32* %k2460
  store i32 1, i32* %i2461
  %c2468 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2463, { i32, [ 0 x i32 ] }** %c2468
  %_lhs2469 = load i32* %low_slot2455
  store i32 %_lhs2469, i32* %i2458
  %_lhs2470 = load i32* %mid_slot2451
  %bop2471 = add i32 %_lhs2470, 1
  store i32 %bop2471, i32* %j2459
  %_lhs2472 = load i32* %low_slot2455
  store i32 %_lhs2472, i32* %k2460
  br label %__cond428

__cond428:
  %_lhs2473 = load i32* %i2458
  %_lhs2474 = load i32* %mid_slot2451
  %bop2475 = icmp sle i32 %_lhs2473, %_lhs2474
  %_lhs2476 = load i32* %j2459
  %_lhs2477 = load i32* %high_slot2453
  %bop2478 = icmp sle i32 %_lhs2476, %_lhs2477
  %bop2479 = and i1 %bop2475, %bop2478
  br i1 %bop2479, label %__body427, label %__post426

__fresh442:
  br label %__body427

__body427:
  %_lhs2480 = load i32* %i2458
  %len_ptr2481 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2457, i32 0, i32 0
  %len2482 = load i32* %len_ptr2481
  call void @oat_array_bounds_check( i32 %len2482, i32 %_lhs2480 )
  %array_dereferenced2483 = load { i32, [ 0 x i32 ] }** %a_slot2457
  %elt_ptr2484 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2483, i32 0, i32 1, i32 %_lhs2480
  %_lhs2485 = load i32* %elt_ptr2484
  %_lhs2486 = load i32* %j2459
  %len_ptr2487 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2457, i32 0, i32 0
  %len2488 = load i32* %len_ptr2487
  call void @oat_array_bounds_check( i32 %len2488, i32 %_lhs2486 )
  %array_dereferenced2489 = load { i32, [ 0 x i32 ] }** %a_slot2457
  %elt_ptr2490 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2489, i32 0, i32 1, i32 %_lhs2486
  %_lhs2491 = load i32* %elt_ptr2490
  %bop2492 = icmp slt i32 %_lhs2485, %_lhs2491
  br i1 %bop2492, label %__then431, label %__else430

__fresh443:
  br label %__then431

__then431:
  %_lhs2493 = load i32* %k2460
  %len_ptr2494 = getelementptr { i32, [ 0 x i32 ] }** %c2468, i32 0, i32 0
  %len2495 = load i32* %len_ptr2494
  call void @oat_array_bounds_check( i32 %len2495, i32 %_lhs2493 )
  %array_dereferenced2496 = load { i32, [ 0 x i32 ] }** %c2468
  %elt_ptr2497 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2496, i32 0, i32 1, i32 %_lhs2493
  %_lhs2498 = load i32* %i2458
  %len_ptr2499 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2457, i32 0, i32 0
  %len2500 = load i32* %len_ptr2499
  call void @oat_array_bounds_check( i32 %len2500, i32 %_lhs2498 )
  %array_dereferenced2501 = load { i32, [ 0 x i32 ] }** %a_slot2457
  %elt_ptr2502 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2501, i32 0, i32 1, i32 %_lhs2498
  %_lhs2503 = load i32* %elt_ptr2502
  store i32 %_lhs2503, i32* %elt_ptr2497
  %_lhs2504 = load i32* %k2460
  %bop2505 = add i32 %_lhs2504, 1
  store i32 %bop2505, i32* %k2460
  %_lhs2506 = load i32* %i2458
  %bop2507 = add i32 %_lhs2506, 1
  store i32 %bop2507, i32* %i2458
  br label %__merge429

__fresh444:
  br label %__else430

__else430:
  %_lhs2508 = load i32* %k2460
  %len_ptr2509 = getelementptr { i32, [ 0 x i32 ] }** %c2468, i32 0, i32 0
  %len2510 = load i32* %len_ptr2509
  call void @oat_array_bounds_check( i32 %len2510, i32 %_lhs2508 )
  %array_dereferenced2511 = load { i32, [ 0 x i32 ] }** %c2468
  %elt_ptr2512 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2511, i32 0, i32 1, i32 %_lhs2508
  %_lhs2513 = load i32* %j2459
  %len_ptr2514 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2457, i32 0, i32 0
  %len2515 = load i32* %len_ptr2514
  call void @oat_array_bounds_check( i32 %len2515, i32 %_lhs2513 )
  %array_dereferenced2516 = load { i32, [ 0 x i32 ] }** %a_slot2457
  %elt_ptr2517 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2516, i32 0, i32 1, i32 %_lhs2513
  %_lhs2518 = load i32* %elt_ptr2517
  store i32 %_lhs2518, i32* %elt_ptr2512
  %_lhs2519 = load i32* %k2460
  %bop2520 = add i32 %_lhs2519, 1
  store i32 %bop2520, i32* %k2460
  %_lhs2521 = load i32* %j2459
  %bop2522 = add i32 %_lhs2521, 1
  store i32 %bop2522, i32* %j2459
  br label %__merge429

__merge429:
  br label %__cond428

__fresh445:
  br label %__post426

__post426:
  br label %__cond434

__cond434:
  %_lhs2523 = load i32* %i2458
  %_lhs2524 = load i32* %mid_slot2451
  %bop2525 = icmp sle i32 %_lhs2523, %_lhs2524
  br i1 %bop2525, label %__body433, label %__post432

__fresh446:
  br label %__body433

__body433:
  %_lhs2526 = load i32* %k2460
  %len_ptr2527 = getelementptr { i32, [ 0 x i32 ] }** %c2468, i32 0, i32 0
  %len2528 = load i32* %len_ptr2527
  call void @oat_array_bounds_check( i32 %len2528, i32 %_lhs2526 )
  %array_dereferenced2529 = load { i32, [ 0 x i32 ] }** %c2468
  %elt_ptr2530 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2529, i32 0, i32 1, i32 %_lhs2526
  %_lhs2531 = load i32* %i2458
  %len_ptr2532 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2457, i32 0, i32 0
  %len2533 = load i32* %len_ptr2532
  call void @oat_array_bounds_check( i32 %len2533, i32 %_lhs2531 )
  %array_dereferenced2534 = load { i32, [ 0 x i32 ] }** %a_slot2457
  %elt_ptr2535 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2534, i32 0, i32 1, i32 %_lhs2531
  %_lhs2536 = load i32* %elt_ptr2535
  store i32 %_lhs2536, i32* %elt_ptr2530
  %_lhs2537 = load i32* %k2460
  %bop2538 = add i32 %_lhs2537, 1
  store i32 %bop2538, i32* %k2460
  %_lhs2539 = load i32* %i2458
  %bop2540 = add i32 %_lhs2539, 1
  store i32 %bop2540, i32* %i2458
  br label %__cond434

__fresh447:
  br label %__post432

__post432:
  br label %__cond437

__cond437:
  %_lhs2541 = load i32* %j2459
  %_lhs2542 = load i32* %high_slot2453
  %bop2543 = icmp sle i32 %_lhs2541, %_lhs2542
  br i1 %bop2543, label %__body436, label %__post435

__fresh448:
  br label %__body436

__body436:
  %_lhs2544 = load i32* %k2460
  %len_ptr2545 = getelementptr { i32, [ 0 x i32 ] }** %c2468, i32 0, i32 0
  %len2546 = load i32* %len_ptr2545
  call void @oat_array_bounds_check( i32 %len2546, i32 %_lhs2544 )
  %array_dereferenced2547 = load { i32, [ 0 x i32 ] }** %c2468
  %elt_ptr2548 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2547, i32 0, i32 1, i32 %_lhs2544
  %_lhs2549 = load i32* %j2459
  %len_ptr2550 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2457, i32 0, i32 0
  %len2551 = load i32* %len_ptr2550
  call void @oat_array_bounds_check( i32 %len2551, i32 %_lhs2549 )
  %array_dereferenced2552 = load { i32, [ 0 x i32 ] }** %a_slot2457
  %elt_ptr2553 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2552, i32 0, i32 1, i32 %_lhs2549
  %_lhs2554 = load i32* %elt_ptr2553
  store i32 %_lhs2554, i32* %elt_ptr2548
  %_lhs2555 = load i32* %k2460
  %bop2556 = add i32 %_lhs2555, 1
  store i32 %bop2556, i32* %k2460
  %_lhs2557 = load i32* %j2459
  %bop2558 = add i32 %_lhs2557, 1
  store i32 %bop2558, i32* %j2459
  br label %__cond437

__fresh449:
  br label %__post435

__post435:
  %_lhs2559 = load i32* %low_slot2455
  store i32 %_lhs2559, i32* %i2458
  br label %__cond440

__cond440:
  %_lhs2560 = load i32* %i2458
  %_lhs2561 = load i32* %k2460
  %bop2562 = icmp slt i32 %_lhs2560, %_lhs2561
  br i1 %bop2562, label %__body439, label %__post438

__fresh450:
  br label %__body439

__body439:
  %_lhs2563 = load i32* %i2458
  %len_ptr2564 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2457, i32 0, i32 0
  %len2565 = load i32* %len_ptr2564
  call void @oat_array_bounds_check( i32 %len2565, i32 %_lhs2563 )
  %array_dereferenced2566 = load { i32, [ 0 x i32 ] }** %a_slot2457
  %elt_ptr2567 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2566, i32 0, i32 1, i32 %_lhs2563
  %_lhs2568 = load i32* %i2458
  %len_ptr2569 = getelementptr { i32, [ 0 x i32 ] }** %c2468, i32 0, i32 0
  %len2570 = load i32* %len_ptr2569
  call void @oat_array_bounds_check( i32 %len2570, i32 %_lhs2568 )
  %array_dereferenced2571 = load { i32, [ 0 x i32 ] }** %c2468
  %elt_ptr2572 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2571, i32 0, i32 1, i32 %_lhs2568
  %_lhs2573 = load i32* %elt_ptr2572
  store i32 %_lhs2573, i32* %elt_ptr2567
  %_lhs2574 = load i32* %i2458
  %bop2575 = add i32 %_lhs2574, 1
  store i32 %bop2575, i32* %i2458
  br label %__cond440

__fresh451:
  br label %__post438

__post438:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2429, i32 %low2427, i32 %high2425){

__fresh420:
  %a_slot2430 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2429, { i32, [ 0 x i32 ] }** %a_slot2430
  %low_slot2428 = alloca i32
  store i32 %low2427, i32* %low_slot2428
  %high_slot2426 = alloca i32
  store i32 %high2425, i32* %high_slot2426
  %mid2431 = alloca i32
  store i32 0, i32* %mid2431
  %_lhs2432 = load i32* %low_slot2428
  %_lhs2433 = load i32* %high_slot2426
  %bop2434 = icmp slt i32 %_lhs2432, %_lhs2433
  br i1 %bop2434, label %__then419, label %__else418

__fresh421:
  br label %__then419

__then419:
  %_lhs2435 = load i32* %low_slot2428
  %_lhs2436 = load i32* %high_slot2426
  %bop2437 = add i32 %_lhs2435, %_lhs2436
  %bop2438 = ashr i32 %bop2437, 1
  store i32 %bop2438, i32* %mid2431
  %_lhs2441 = load i32* %mid2431
  %_lhs2440 = load i32* %low_slot2428
  %_lhs2439 = load { i32, [ 0 x i32 ] }** %a_slot2430
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2439, i32 %_lhs2440, i32 %_lhs2441 )
  %_lhs2445 = load i32* %high_slot2426
  %_lhs2443 = load i32* %mid2431
  %bop2444 = add i32 %_lhs2443, 1
  %_lhs2442 = load { i32, [ 0 x i32 ] }** %a_slot2430
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2442, i32 %bop2444, i32 %_lhs2445 )
  %_lhs2449 = load i32* %mid2431
  %_lhs2448 = load i32* %high_slot2426
  %_lhs2447 = load i32* %low_slot2428
  %_lhs2446 = load { i32, [ 0 x i32 ] }** %a_slot2430
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2446, i32 %_lhs2447, i32 %_lhs2448, i32 %_lhs2449 )
  br label %__merge417

__fresh422:
  br label %__else418

__else418:
  br label %__merge417

__merge417:
  ret void
}


define i32 @program (i32 %argc2397, { i32, [ 0 x i8* ] }* %argv2395){

__fresh416:
  %argc_slot2398 = alloca i32
  store i32 %argc2397, i32* %argc_slot2398
  %argv_slot2396 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2395, { i32, [ 0 x i8* ] }** %argv_slot2396
  %i2399 = alloca i32
  store i32 0, i32* %i2399
  %array_ptr2400 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2401 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2400 to { i32, [ 0 x i32 ] }* 
  %index_ptr2402 = getelementptr { i32, [ 0 x i32 ] }* %array2401, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2402
  %index_ptr2403 = getelementptr { i32, [ 0 x i32 ] }* %array2401, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2403
  %index_ptr2404 = getelementptr { i32, [ 0 x i32 ] }* %array2401, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2404
  %index_ptr2405 = getelementptr { i32, [ 0 x i32 ] }* %array2401, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2405
  %index_ptr2406 = getelementptr { i32, [ 0 x i32 ] }* %array2401, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2406
  %index_ptr2407 = getelementptr { i32, [ 0 x i32 ] }* %array2401, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2407
  %index_ptr2408 = getelementptr { i32, [ 0 x i32 ] }* %array2401, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2408
  %index_ptr2409 = getelementptr { i32, [ 0 x i32 ] }* %array2401, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2409
  %index_ptr2410 = getelementptr { i32, [ 0 x i32 ] }* %array2401, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2410
  %index_ptr2411 = getelementptr { i32, [ 0 x i32 ] }* %array2401, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2411
  %a2412 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2401, { i32, [ 0 x i32 ] }** %a2412
  %_lhs2413 = load { i32, [ 0 x i32 ] }** %a2412
  %ret2414 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2413 )
  call void @print_string( i8* %ret2414 )
  %_lhs2415 = load { i32, [ 0 x i32 ] }** %a2412
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2415, i32 0, i32 9 )
  %strval2417 = load i8** @_oat_string2416
  call void @print_string( i8* %strval2417 )
  %_lhs2418 = load { i32, [ 0 x i32 ] }** %a2412
  %ret2419 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2418 )
  call void @print_string( i8* %ret2419 )
  %strval2421 = load i8** @_oat_string2420
  call void @print_string( i8* %strval2421 )
  %_lhs2422 = load i32* %i2399
  ret i32 %_lhs2422
}


