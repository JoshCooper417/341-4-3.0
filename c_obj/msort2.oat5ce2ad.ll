declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2601.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2601 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2601.str., i32 0, i32 0), align 4
@_oat_string2597.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2597 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2597.str., i32 0, i32 0), align 4
@a2588 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2588.init
define void @oat_init (){

__fresh490:
  call void @a2588.init(  )
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2637, i32 %low2635, i32 %high2633, i32 %mid2631){

__fresh479:
  %a_slot2638 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2637, { i32, [ 0 x i32 ] }** %a_slot2638
  %low_slot2636 = alloca i32
  store i32 %low2635, i32* %low_slot2636
  %high_slot2634 = alloca i32
  store i32 %high2633, i32* %high_slot2634
  %mid_slot2632 = alloca i32
  store i32 %mid2631, i32* %mid_slot2632
  %i2639 = alloca i32
  store i32 0, i32* %i2639
  %j2640 = alloca i32
  store i32 0, i32* %j2640
  %k2641 = alloca i32
  store i32 0, i32* %k2641
  store i32 1, i32* %i2642
  %c2649 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2644, { i32, [ 0 x i32 ] }** %c2649
  %_lhs2650 = load i32* %low_slot2636
  store i32 %_lhs2650, i32* %i2639
  %_lhs2651 = load i32* %mid_slot2632
  %bop2652 = add i32 %_lhs2651, 1
  store i32 %bop2652, i32* %j2640
  %_lhs2653 = load i32* %low_slot2636
  store i32 %_lhs2653, i32* %k2641
  br label %__cond466

__cond466:
  %_lhs2654 = load i32* %i2639
  %_lhs2655 = load i32* %mid_slot2632
  %bop2656 = icmp sle i32 %_lhs2654, %_lhs2655
  %_lhs2657 = load i32* %j2640
  %_lhs2658 = load i32* %high_slot2634
  %bop2659 = icmp sle i32 %_lhs2657, %_lhs2658
  %bop2660 = and i1 %bop2656, %bop2659
  br i1 %bop2660, label %__body465, label %__post464

__fresh480:
  br label %__body465

__body465:
  %_lhs2661 = load i32* %i2639
  %len_ptr2662 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2638, i32 0, i32 0
  %len2663 = load i32* %len_ptr2662
  call void @oat_array_bounds_check( i32 %len2663, i32 %_lhs2661 )
  %array_dereferenced2664 = load { i32, [ 0 x i32 ] }** %a_slot2638
  %elt_ptr2665 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2664, i32 0, i32 1, i32 %_lhs2661
  %_lhs2666 = load i32* %elt_ptr2665
  %_lhs2667 = load i32* %j2640
  %len_ptr2668 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2638, i32 0, i32 0
  %len2669 = load i32* %len_ptr2668
  call void @oat_array_bounds_check( i32 %len2669, i32 %_lhs2667 )
  %array_dereferenced2670 = load { i32, [ 0 x i32 ] }** %a_slot2638
  %elt_ptr2671 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2670, i32 0, i32 1, i32 %_lhs2667
  %_lhs2672 = load i32* %elt_ptr2671
  %bop2673 = icmp slt i32 %_lhs2666, %_lhs2672
  br i1 %bop2673, label %__then469, label %__else468

__fresh481:
  br label %__then469

__then469:
  %_lhs2674 = load i32* %k2641
  %len_ptr2675 = getelementptr { i32, [ 0 x i32 ] }** %c2649, i32 0, i32 0
  %len2676 = load i32* %len_ptr2675
  call void @oat_array_bounds_check( i32 %len2676, i32 %_lhs2674 )
  %array_dereferenced2677 = load { i32, [ 0 x i32 ] }** %c2649
  %elt_ptr2678 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2677, i32 0, i32 1, i32 %_lhs2674
  %_lhs2679 = load i32* %i2639
  %len_ptr2680 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2638, i32 0, i32 0
  %len2681 = load i32* %len_ptr2680
  call void @oat_array_bounds_check( i32 %len2681, i32 %_lhs2679 )
  %array_dereferenced2682 = load { i32, [ 0 x i32 ] }** %a_slot2638
  %elt_ptr2683 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2682, i32 0, i32 1, i32 %_lhs2679
  %_lhs2684 = load i32* %elt_ptr2683
  store i32 %_lhs2684, i32* %elt_ptr2678
  %_lhs2685 = load i32* %k2641
  %bop2686 = add i32 %_lhs2685, 1
  store i32 %bop2686, i32* %k2641
  %_lhs2687 = load i32* %i2639
  %bop2688 = add i32 %_lhs2687, 1
  store i32 %bop2688, i32* %i2639
  br label %__merge467

__fresh482:
  br label %__else468

__else468:
  %_lhs2689 = load i32* %k2641
  %len_ptr2690 = getelementptr { i32, [ 0 x i32 ] }** %c2649, i32 0, i32 0
  %len2691 = load i32* %len_ptr2690
  call void @oat_array_bounds_check( i32 %len2691, i32 %_lhs2689 )
  %array_dereferenced2692 = load { i32, [ 0 x i32 ] }** %c2649
  %elt_ptr2693 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2692, i32 0, i32 1, i32 %_lhs2689
  %_lhs2694 = load i32* %j2640
  %len_ptr2695 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2638, i32 0, i32 0
  %len2696 = load i32* %len_ptr2695
  call void @oat_array_bounds_check( i32 %len2696, i32 %_lhs2694 )
  %array_dereferenced2697 = load { i32, [ 0 x i32 ] }** %a_slot2638
  %elt_ptr2698 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2697, i32 0, i32 1, i32 %_lhs2694
  %_lhs2699 = load i32* %elt_ptr2698
  store i32 %_lhs2699, i32* %elt_ptr2693
  %_lhs2700 = load i32* %k2641
  %bop2701 = add i32 %_lhs2700, 1
  store i32 %bop2701, i32* %k2641
  %_lhs2702 = load i32* %j2640
  %bop2703 = add i32 %_lhs2702, 1
  store i32 %bop2703, i32* %j2640
  br label %__merge467

__merge467:
  br label %__cond466

__fresh483:
  br label %__post464

__post464:
  br label %__cond472

__cond472:
  %_lhs2704 = load i32* %i2639
  %_lhs2705 = load i32* %mid_slot2632
  %bop2706 = icmp sle i32 %_lhs2704, %_lhs2705
  br i1 %bop2706, label %__body471, label %__post470

__fresh484:
  br label %__body471

__body471:
  %_lhs2707 = load i32* %k2641
  %len_ptr2708 = getelementptr { i32, [ 0 x i32 ] }** %c2649, i32 0, i32 0
  %len2709 = load i32* %len_ptr2708
  call void @oat_array_bounds_check( i32 %len2709, i32 %_lhs2707 )
  %array_dereferenced2710 = load { i32, [ 0 x i32 ] }** %c2649
  %elt_ptr2711 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2710, i32 0, i32 1, i32 %_lhs2707
  %_lhs2712 = load i32* %i2639
  %len_ptr2713 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2638, i32 0, i32 0
  %len2714 = load i32* %len_ptr2713
  call void @oat_array_bounds_check( i32 %len2714, i32 %_lhs2712 )
  %array_dereferenced2715 = load { i32, [ 0 x i32 ] }** %a_slot2638
  %elt_ptr2716 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2715, i32 0, i32 1, i32 %_lhs2712
  %_lhs2717 = load i32* %elt_ptr2716
  store i32 %_lhs2717, i32* %elt_ptr2711
  %_lhs2718 = load i32* %k2641
  %bop2719 = add i32 %_lhs2718, 1
  store i32 %bop2719, i32* %k2641
  %_lhs2720 = load i32* %i2639
  %bop2721 = add i32 %_lhs2720, 1
  store i32 %bop2721, i32* %i2639
  br label %__cond472

__fresh485:
  br label %__post470

__post470:
  br label %__cond475

__cond475:
  %_lhs2722 = load i32* %j2640
  %_lhs2723 = load i32* %high_slot2634
  %bop2724 = icmp sle i32 %_lhs2722, %_lhs2723
  br i1 %bop2724, label %__body474, label %__post473

__fresh486:
  br label %__body474

__body474:
  %_lhs2725 = load i32* %k2641
  %len_ptr2726 = getelementptr { i32, [ 0 x i32 ] }** %c2649, i32 0, i32 0
  %len2727 = load i32* %len_ptr2726
  call void @oat_array_bounds_check( i32 %len2727, i32 %_lhs2725 )
  %array_dereferenced2728 = load { i32, [ 0 x i32 ] }** %c2649
  %elt_ptr2729 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2728, i32 0, i32 1, i32 %_lhs2725
  %_lhs2730 = load i32* %j2640
  %len_ptr2731 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2638, i32 0, i32 0
  %len2732 = load i32* %len_ptr2731
  call void @oat_array_bounds_check( i32 %len2732, i32 %_lhs2730 )
  %array_dereferenced2733 = load { i32, [ 0 x i32 ] }** %a_slot2638
  %elt_ptr2734 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2733, i32 0, i32 1, i32 %_lhs2730
  %_lhs2735 = load i32* %elt_ptr2734
  store i32 %_lhs2735, i32* %elt_ptr2729
  %_lhs2736 = load i32* %k2641
  %bop2737 = add i32 %_lhs2736, 1
  store i32 %bop2737, i32* %k2641
  %_lhs2738 = load i32* %j2640
  %bop2739 = add i32 %_lhs2738, 1
  store i32 %bop2739, i32* %j2640
  br label %__cond475

__fresh487:
  br label %__post473

__post473:
  %_lhs2740 = load i32* %low_slot2636
  store i32 %_lhs2740, i32* %i2639
  br label %__cond478

__cond478:
  %_lhs2741 = load i32* %i2639
  %_lhs2742 = load i32* %k2641
  %bop2743 = icmp slt i32 %_lhs2741, %_lhs2742
  br i1 %bop2743, label %__body477, label %__post476

__fresh488:
  br label %__body477

__body477:
  %_lhs2744 = load i32* %i2639
  %len_ptr2745 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2638, i32 0, i32 0
  %len2746 = load i32* %len_ptr2745
  call void @oat_array_bounds_check( i32 %len2746, i32 %_lhs2744 )
  %array_dereferenced2747 = load { i32, [ 0 x i32 ] }** %a_slot2638
  %elt_ptr2748 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2747, i32 0, i32 1, i32 %_lhs2744
  %_lhs2749 = load i32* %i2639
  %len_ptr2750 = getelementptr { i32, [ 0 x i32 ] }** %c2649, i32 0, i32 0
  %len2751 = load i32* %len_ptr2750
  call void @oat_array_bounds_check( i32 %len2751, i32 %_lhs2749 )
  %array_dereferenced2752 = load { i32, [ 0 x i32 ] }** %c2649
  %elt_ptr2753 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2752, i32 0, i32 1, i32 %_lhs2749
  %_lhs2754 = load i32* %elt_ptr2753
  store i32 %_lhs2754, i32* %elt_ptr2748
  %_lhs2755 = load i32* %i2639
  %bop2756 = add i32 %_lhs2755, 1
  store i32 %bop2756, i32* %i2639
  br label %__cond478

__fresh489:
  br label %__post476

__post476:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2610, i32 %low2608, i32 %high2606){

__fresh458:
  %a_slot2611 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2610, { i32, [ 0 x i32 ] }** %a_slot2611
  %low_slot2609 = alloca i32
  store i32 %low2608, i32* %low_slot2609
  %high_slot2607 = alloca i32
  store i32 %high2606, i32* %high_slot2607
  %mid2612 = alloca i32
  store i32 0, i32* %mid2612
  %_lhs2613 = load i32* %low_slot2609
  %_lhs2614 = load i32* %high_slot2607
  %bop2615 = icmp slt i32 %_lhs2613, %_lhs2614
  br i1 %bop2615, label %__then457, label %__else456

__fresh459:
  br label %__then457

__then457:
  %_lhs2616 = load i32* %low_slot2609
  %_lhs2617 = load i32* %high_slot2607
  %bop2618 = add i32 %_lhs2616, %_lhs2617
  %bop2619 = ashr i32 %bop2618, 1
  store i32 %bop2619, i32* %mid2612
  %_lhs2622 = load i32* %mid2612
  %_lhs2621 = load i32* %low_slot2609
  %_lhs2620 = load { i32, [ 0 x i32 ] }** %a_slot2611
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2620, i32 %_lhs2621, i32 %_lhs2622 )
  %_lhs2626 = load i32* %high_slot2607
  %_lhs2624 = load i32* %mid2612
  %bop2625 = add i32 %_lhs2624, 1
  %_lhs2623 = load { i32, [ 0 x i32 ] }** %a_slot2611
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2623, i32 %bop2625, i32 %_lhs2626 )
  %_lhs2630 = load i32* %mid2612
  %_lhs2629 = load i32* %high_slot2607
  %_lhs2628 = load i32* %low_slot2609
  %_lhs2627 = load { i32, [ 0 x i32 ] }** %a_slot2611
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2627, i32 %_lhs2628, i32 %_lhs2629, i32 %_lhs2630 )
  br label %__merge455

__fresh460:
  br label %__else456

__else456:
  br label %__merge455

__merge455:
  ret void
}


define i32 @program (i32 %argc2591, { i32, [ 0 x i8* ] }* %argv2589){

__fresh454:
  %argc_slot2592 = alloca i32
  store i32 %argc2591, i32* %argc_slot2592
  %argv_slot2590 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2589, { i32, [ 0 x i8* ] }** %argv_slot2590
  %i2593 = alloca i32
  store i32 0, i32* %i2593
  %_lhs2594 = load { i32, [ 0 x i32 ] }** @a2588
  %ret2595 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2594 )
  call void @print_string( i8* %ret2595 )
  %_lhs2596 = load { i32, [ 0 x i32 ] }** @a2588
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2596, i32 0, i32 9 )
  %strval2598 = load i8** @_oat_string2597
  call void @print_string( i8* %strval2598 )
  %_lhs2599 = load { i32, [ 0 x i32 ] }** @a2588
  %ret2600 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2599 )
  call void @print_string( i8* %ret2600 )
  %strval2602 = load i8** @_oat_string2601
  call void @print_string( i8* %strval2602 )
  %_lhs2603 = load i32* %i2593
  ret i32 %_lhs2603
}


define void @a2588.init (){

__fresh453:
  %array_ptr2576 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2577 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2576 to { i32, [ 0 x i32 ] }* 
  %index_ptr2578 = getelementptr { i32, [ 0 x i32 ] }* %array2577, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2578
  %index_ptr2579 = getelementptr { i32, [ 0 x i32 ] }* %array2577, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2579
  %index_ptr2580 = getelementptr { i32, [ 0 x i32 ] }* %array2577, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2580
  %index_ptr2581 = getelementptr { i32, [ 0 x i32 ] }* %array2577, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2581
  %index_ptr2582 = getelementptr { i32, [ 0 x i32 ] }* %array2577, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2582
  %index_ptr2583 = getelementptr { i32, [ 0 x i32 ] }* %array2577, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2583
  %index_ptr2584 = getelementptr { i32, [ 0 x i32 ] }* %array2577, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2584
  %index_ptr2585 = getelementptr { i32, [ 0 x i32 ] }* %array2577, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2585
  %index_ptr2586 = getelementptr { i32, [ 0 x i32 ] }* %array2577, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2586
  %index_ptr2587 = getelementptr { i32, [ 0 x i32 ] }* %array2577, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2587
  store { i32, [ 0 x i32 ] }* %array2577, { i32, [ 0 x i32 ] }** @a2588
  ret void
}


