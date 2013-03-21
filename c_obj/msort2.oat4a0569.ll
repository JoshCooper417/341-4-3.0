declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2611.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2611 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2611.str., i32 0, i32 0), align 4
@_oat_string2607.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2607 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2607.str., i32 0, i32 0), align 4
@a2598 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2598.init
define void @oat_init (){

__fresh594:
  call void @a2598.init(  )
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2647, i32 %low2645, i32 %high2643, i32 %mid2641){

__fresh581:
  %a_slot2648 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2647, { i32, [ 0 x i32 ] }** %a_slot2648
  %low_slot2646 = alloca i32
  store i32 %low2645, i32* %low_slot2646
  %high_slot2644 = alloca i32
  store i32 %high2643, i32* %high_slot2644
  %mid_slot2642 = alloca i32
  store i32 %mid2641, i32* %mid_slot2642
  %i2649 = alloca i32
  store i32 0, i32* %i2649
  %j2650 = alloca i32
  store i32 0, i32* %j2650
  %k2651 = alloca i32
  store i32 0, i32* %k2651
  br label %__check564

__check564:
  %cmp_op2656 = icmp slt i32 1, 50
  br i32 %cmp_op2656, label %__body565, label %__end563

__fresh582:
  br label %__body565

__body565:
  %elem_ptr2655 = getelementptr { i32, [ 0 x i32 ] }* %array2654, i32 0, i32 1, i32 1
  %elem_ptr2655 = load i32* %i2652
  %incr_op2657 = add i32 1, 1
  store i32 1, i32 %incr_op2657
  br label %__check564

__fresh583:
  br label %__end563

__end563:
  %c2658 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2654, { i32, [ 0 x i32 ] }** %c2658
  %_lhs2659 = load i32* %low_slot2646
  store i32 %_lhs2659, i32* %i2649
  %_lhs2660 = load i32* %mid_slot2642
  %bop2661 = add i32 %_lhs2660, 1
  store i32 %bop2661, i32* %j2650
  %_lhs2662 = load i32* %low_slot2646
  store i32 %_lhs2662, i32* %k2651
  br label %__cond568

__cond568:
  %_lhs2663 = load i32* %i2649
  %_lhs2664 = load i32* %mid_slot2642
  %bop2665 = icmp sle i32 %_lhs2663, %_lhs2664
  %_lhs2666 = load i32* %j2650
  %_lhs2667 = load i32* %high_slot2644
  %bop2668 = icmp sle i32 %_lhs2666, %_lhs2667
  %bop2669 = and i1 %bop2665, %bop2668
  br i1 %bop2669, label %__body567, label %__post566

__fresh584:
  br label %__body567

__body567:
  %_lhs2670 = load i32* %i2649
  %len_ptr2671 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2648, i32 0, i32 0
  %len2672 = load i32* %len_ptr2671
  call void @oat_array_bounds_check( i32 %len2672, i32 %_lhs2670 )
  %array_dereferenced2673 = load { i32, [ 0 x i32 ] }** %a_slot2648
  %elt_ptr2674 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2673, i32 0, i32 1, i32 %_lhs2670
  %_lhs2675 = load i32* %elt_ptr2674
  %_lhs2676 = load i32* %j2650
  %len_ptr2677 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2648, i32 0, i32 0
  %len2678 = load i32* %len_ptr2677
  call void @oat_array_bounds_check( i32 %len2678, i32 %_lhs2676 )
  %array_dereferenced2679 = load { i32, [ 0 x i32 ] }** %a_slot2648
  %elt_ptr2680 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2679, i32 0, i32 1, i32 %_lhs2676
  %_lhs2681 = load i32* %elt_ptr2680
  %bop2682 = icmp slt i32 %_lhs2675, %_lhs2681
  br i1 %bop2682, label %__then571, label %__else570

__fresh585:
  br label %__then571

__then571:
  %_lhs2683 = load i32* %k2651
  %len_ptr2684 = getelementptr { i32, [ 0 x i32 ] }** %c2658, i32 0, i32 0
  %len2685 = load i32* %len_ptr2684
  call void @oat_array_bounds_check( i32 %len2685, i32 %_lhs2683 )
  %array_dereferenced2686 = load { i32, [ 0 x i32 ] }** %c2658
  %elt_ptr2687 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2686, i32 0, i32 1, i32 %_lhs2683
  %_lhs2688 = load i32* %i2649
  %len_ptr2689 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2648, i32 0, i32 0
  %len2690 = load i32* %len_ptr2689
  call void @oat_array_bounds_check( i32 %len2690, i32 %_lhs2688 )
  %array_dereferenced2691 = load { i32, [ 0 x i32 ] }** %a_slot2648
  %elt_ptr2692 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2691, i32 0, i32 1, i32 %_lhs2688
  %_lhs2693 = load i32* %elt_ptr2692
  store i32 %_lhs2693, i32* %elt_ptr2687
  %_lhs2694 = load i32* %k2651
  %bop2695 = add i32 %_lhs2694, 1
  store i32 %bop2695, i32* %k2651
  %_lhs2696 = load i32* %i2649
  %bop2697 = add i32 %_lhs2696, 1
  store i32 %bop2697, i32* %i2649
  br label %__merge569

__fresh586:
  br label %__else570

__else570:
  %_lhs2698 = load i32* %k2651
  %len_ptr2699 = getelementptr { i32, [ 0 x i32 ] }** %c2658, i32 0, i32 0
  %len2700 = load i32* %len_ptr2699
  call void @oat_array_bounds_check( i32 %len2700, i32 %_lhs2698 )
  %array_dereferenced2701 = load { i32, [ 0 x i32 ] }** %c2658
  %elt_ptr2702 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2701, i32 0, i32 1, i32 %_lhs2698
  %_lhs2703 = load i32* %j2650
  %len_ptr2704 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2648, i32 0, i32 0
  %len2705 = load i32* %len_ptr2704
  call void @oat_array_bounds_check( i32 %len2705, i32 %_lhs2703 )
  %array_dereferenced2706 = load { i32, [ 0 x i32 ] }** %a_slot2648
  %elt_ptr2707 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2706, i32 0, i32 1, i32 %_lhs2703
  %_lhs2708 = load i32* %elt_ptr2707
  store i32 %_lhs2708, i32* %elt_ptr2702
  %_lhs2709 = load i32* %k2651
  %bop2710 = add i32 %_lhs2709, 1
  store i32 %bop2710, i32* %k2651
  %_lhs2711 = load i32* %j2650
  %bop2712 = add i32 %_lhs2711, 1
  store i32 %bop2712, i32* %j2650
  br label %__merge569

__merge569:
  br label %__cond568

__fresh587:
  br label %__post566

__post566:
  br label %__cond574

__cond574:
  %_lhs2713 = load i32* %i2649
  %_lhs2714 = load i32* %mid_slot2642
  %bop2715 = icmp sle i32 %_lhs2713, %_lhs2714
  br i1 %bop2715, label %__body573, label %__post572

__fresh588:
  br label %__body573

__body573:
  %_lhs2716 = load i32* %k2651
  %len_ptr2717 = getelementptr { i32, [ 0 x i32 ] }** %c2658, i32 0, i32 0
  %len2718 = load i32* %len_ptr2717
  call void @oat_array_bounds_check( i32 %len2718, i32 %_lhs2716 )
  %array_dereferenced2719 = load { i32, [ 0 x i32 ] }** %c2658
  %elt_ptr2720 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2719, i32 0, i32 1, i32 %_lhs2716
  %_lhs2721 = load i32* %i2649
  %len_ptr2722 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2648, i32 0, i32 0
  %len2723 = load i32* %len_ptr2722
  call void @oat_array_bounds_check( i32 %len2723, i32 %_lhs2721 )
  %array_dereferenced2724 = load { i32, [ 0 x i32 ] }** %a_slot2648
  %elt_ptr2725 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2724, i32 0, i32 1, i32 %_lhs2721
  %_lhs2726 = load i32* %elt_ptr2725
  store i32 %_lhs2726, i32* %elt_ptr2720
  %_lhs2727 = load i32* %k2651
  %bop2728 = add i32 %_lhs2727, 1
  store i32 %bop2728, i32* %k2651
  %_lhs2729 = load i32* %i2649
  %bop2730 = add i32 %_lhs2729, 1
  store i32 %bop2730, i32* %i2649
  br label %__cond574

__fresh589:
  br label %__post572

__post572:
  br label %__cond577

__cond577:
  %_lhs2731 = load i32* %j2650
  %_lhs2732 = load i32* %high_slot2644
  %bop2733 = icmp sle i32 %_lhs2731, %_lhs2732
  br i1 %bop2733, label %__body576, label %__post575

__fresh590:
  br label %__body576

__body576:
  %_lhs2734 = load i32* %k2651
  %len_ptr2735 = getelementptr { i32, [ 0 x i32 ] }** %c2658, i32 0, i32 0
  %len2736 = load i32* %len_ptr2735
  call void @oat_array_bounds_check( i32 %len2736, i32 %_lhs2734 )
  %array_dereferenced2737 = load { i32, [ 0 x i32 ] }** %c2658
  %elt_ptr2738 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2737, i32 0, i32 1, i32 %_lhs2734
  %_lhs2739 = load i32* %j2650
  %len_ptr2740 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2648, i32 0, i32 0
  %len2741 = load i32* %len_ptr2740
  call void @oat_array_bounds_check( i32 %len2741, i32 %_lhs2739 )
  %array_dereferenced2742 = load { i32, [ 0 x i32 ] }** %a_slot2648
  %elt_ptr2743 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2742, i32 0, i32 1, i32 %_lhs2739
  %_lhs2744 = load i32* %elt_ptr2743
  store i32 %_lhs2744, i32* %elt_ptr2738
  %_lhs2745 = load i32* %k2651
  %bop2746 = add i32 %_lhs2745, 1
  store i32 %bop2746, i32* %k2651
  %_lhs2747 = load i32* %j2650
  %bop2748 = add i32 %_lhs2747, 1
  store i32 %bop2748, i32* %j2650
  br label %__cond577

__fresh591:
  br label %__post575

__post575:
  %_lhs2749 = load i32* %low_slot2646
  store i32 %_lhs2749, i32* %i2649
  br label %__cond580

__cond580:
  %_lhs2750 = load i32* %i2649
  %_lhs2751 = load i32* %k2651
  %bop2752 = icmp slt i32 %_lhs2750, %_lhs2751
  br i1 %bop2752, label %__body579, label %__post578

__fresh592:
  br label %__body579

__body579:
  %_lhs2753 = load i32* %i2649
  %len_ptr2754 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2648, i32 0, i32 0
  %len2755 = load i32* %len_ptr2754
  call void @oat_array_bounds_check( i32 %len2755, i32 %_lhs2753 )
  %array_dereferenced2756 = load { i32, [ 0 x i32 ] }** %a_slot2648
  %elt_ptr2757 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2756, i32 0, i32 1, i32 %_lhs2753
  %_lhs2758 = load i32* %i2649
  %len_ptr2759 = getelementptr { i32, [ 0 x i32 ] }** %c2658, i32 0, i32 0
  %len2760 = load i32* %len_ptr2759
  call void @oat_array_bounds_check( i32 %len2760, i32 %_lhs2758 )
  %array_dereferenced2761 = load { i32, [ 0 x i32 ] }** %c2658
  %elt_ptr2762 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2761, i32 0, i32 1, i32 %_lhs2758
  %_lhs2763 = load i32* %elt_ptr2762
  store i32 %_lhs2763, i32* %elt_ptr2757
  %_lhs2764 = load i32* %i2649
  %bop2765 = add i32 %_lhs2764, 1
  store i32 %bop2765, i32* %i2649
  br label %__cond580

__fresh593:
  br label %__post578

__post578:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2620, i32 %low2618, i32 %high2616){

__fresh560:
  %a_slot2621 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2620, { i32, [ 0 x i32 ] }** %a_slot2621
  %low_slot2619 = alloca i32
  store i32 %low2618, i32* %low_slot2619
  %high_slot2617 = alloca i32
  store i32 %high2616, i32* %high_slot2617
  %mid2622 = alloca i32
  store i32 0, i32* %mid2622
  %_lhs2623 = load i32* %low_slot2619
  %_lhs2624 = load i32* %high_slot2617
  %bop2625 = icmp slt i32 %_lhs2623, %_lhs2624
  br i1 %bop2625, label %__then559, label %__else558

__fresh561:
  br label %__then559

__then559:
  %_lhs2626 = load i32* %low_slot2619
  %_lhs2627 = load i32* %high_slot2617
  %bop2628 = add i32 %_lhs2626, %_lhs2627
  %bop2629 = ashr i32 %bop2628, 1
  store i32 %bop2629, i32* %mid2622
  %_lhs2632 = load i32* %mid2622
  %_lhs2631 = load i32* %low_slot2619
  %_lhs2630 = load { i32, [ 0 x i32 ] }** %a_slot2621
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2630, i32 %_lhs2631, i32 %_lhs2632 )
  %_lhs2636 = load i32* %high_slot2617
  %_lhs2634 = load i32* %mid2622
  %bop2635 = add i32 %_lhs2634, 1
  %_lhs2633 = load { i32, [ 0 x i32 ] }** %a_slot2621
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2633, i32 %bop2635, i32 %_lhs2636 )
  %_lhs2640 = load i32* %mid2622
  %_lhs2639 = load i32* %high_slot2617
  %_lhs2638 = load i32* %low_slot2619
  %_lhs2637 = load { i32, [ 0 x i32 ] }** %a_slot2621
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2637, i32 %_lhs2638, i32 %_lhs2639, i32 %_lhs2640 )
  br label %__merge557

__fresh562:
  br label %__else558

__else558:
  br label %__merge557

__merge557:
  ret void
}


define i32 @program (i32 %argc2601, { i32, [ 0 x i8* ] }* %argv2599){

__fresh556:
  %argc_slot2602 = alloca i32
  store i32 %argc2601, i32* %argc_slot2602
  %argv_slot2600 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2599, { i32, [ 0 x i8* ] }** %argv_slot2600
  %i2603 = alloca i32
  store i32 0, i32* %i2603
  %_lhs2604 = load { i32, [ 0 x i32 ] }** @a2598
  %ret2605 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2604 )
  call void @print_string( i8* %ret2605 )
  %_lhs2606 = load { i32, [ 0 x i32 ] }** @a2598
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2606, i32 0, i32 9 )
  %strval2608 = load i8** @_oat_string2607
  call void @print_string( i8* %strval2608 )
  %_lhs2609 = load { i32, [ 0 x i32 ] }** @a2598
  %ret2610 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2609 )
  call void @print_string( i8* %ret2610 )
  %strval2612 = load i8** @_oat_string2611
  call void @print_string( i8* %strval2612 )
  %_lhs2613 = load i32* %i2603
  ret i32 %_lhs2613
}


define void @a2598.init (){

__fresh555:
  %array_ptr2586 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2587 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2586 to { i32, [ 0 x i32 ] }* 
  %index_ptr2588 = getelementptr { i32, [ 0 x i32 ] }* %array2587, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2588
  %index_ptr2589 = getelementptr { i32, [ 0 x i32 ] }* %array2587, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2589
  %index_ptr2590 = getelementptr { i32, [ 0 x i32 ] }* %array2587, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2590
  %index_ptr2591 = getelementptr { i32, [ 0 x i32 ] }* %array2587, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2591
  %index_ptr2592 = getelementptr { i32, [ 0 x i32 ] }* %array2587, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2592
  %index_ptr2593 = getelementptr { i32, [ 0 x i32 ] }* %array2587, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2593
  %index_ptr2594 = getelementptr { i32, [ 0 x i32 ] }* %array2587, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2594
  %index_ptr2595 = getelementptr { i32, [ 0 x i32 ] }* %array2587, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2595
  %index_ptr2596 = getelementptr { i32, [ 0 x i32 ] }* %array2587, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2596
  %index_ptr2597 = getelementptr { i32, [ 0 x i32 ] }* %array2587, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2597
  store { i32, [ 0 x i32 ] }* %array2587, { i32, [ 0 x i32 ] }** @a2598
  ret void
}


