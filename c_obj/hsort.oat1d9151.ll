declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@n2591 = global i32 8, align 4
@b2590 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by b2590.init
define void @oat_init (){

__fresh586:
  call void @b2590.init(  )
  ret void
}


define void @restoreHdown ({ i32, [ 0 x i32 ] }* %a2743, i32 %i2741, i32 %n2739){

__fresh577:
  %a_slot2744 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2743, { i32, [ 0 x i32 ] }** %a_slot2744
  %i_slot2742 = alloca i32
  store i32 %i2741, i32* %i_slot2742
  %n_slot2740 = alloca i32
  store i32 %n2739, i32* %n_slot2740
  %_lhs2745 = load i32* %i_slot2742
  %len_ptr2746 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2744, i32 0, i32 0
  %len2747 = load i32* %len_ptr2746
  call void @oat_array_bounds_check( i32 %len2747, i32 %_lhs2745 )
  %array_dereferenced2748 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %elt_ptr2749 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2748, i32 0, i32 1, i32 %_lhs2745
  %_lhs2750 = load i32* %elt_ptr2749
  %v2751 = alloca i32
  store i32 %_lhs2750, i32* %v2751
  %_lhs2752 = load i32* %i_slot2742
  %bop2753 = mul i32 %_lhs2752, 2
  %j2754 = alloca i32
  store i32 %bop2753, i32* %j2754
  %done2755 = alloca i32
  store i32 0, i32* %done2755
  br label %__cond567

__cond567:
  %_lhs2756 = load i32* %j2754
  %_lhs2757 = load i32* %n_slot2740
  %bop2758 = icmp sle i32 %_lhs2756, %_lhs2757
  %_lhs2759 = load i32* %done2755
  %bop2760 = icmp eq i32 %_lhs2759, 0
  %bop2761 = and i1 %bop2758, %bop2760
  br i1 %bop2761, label %__body566, label %__post565

__fresh578:
  br label %__body566

__body566:
  %_lhs2762 = load i32* %j2754
  %_lhs2763 = load i32* %n_slot2740
  %bop2764 = icmp slt i32 %_lhs2762, %_lhs2763
  %_lhs2765 = load i32* %j2754
  %len_ptr2766 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2744, i32 0, i32 0
  %len2767 = load i32* %len_ptr2766
  call void @oat_array_bounds_check( i32 %len2767, i32 %_lhs2765 )
  %array_dereferenced2768 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %elt_ptr2769 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2768, i32 0, i32 1, i32 %_lhs2765
  %_lhs2770 = load i32* %elt_ptr2769
  %_lhs2771 = load i32* %j2754
  %bop2772 = add i32 %_lhs2771, 1
  %len_ptr2773 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2744, i32 0, i32 0
  %len2774 = load i32* %len_ptr2773
  call void @oat_array_bounds_check( i32 %len2774, i32 %bop2772 )
  %array_dereferenced2775 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %elt_ptr2776 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2775, i32 0, i32 1, i32 %bop2772
  %_lhs2777 = load i32* %elt_ptr2776
  %bop2778 = icmp slt i32 %_lhs2770, %_lhs2777
  %bop2779 = and i1 %bop2764, %bop2778
  br i1 %bop2779, label %__then570, label %__else569

__fresh579:
  br label %__then570

__then570:
  %_lhs2780 = load i32* %j2754
  %bop2781 = add i32 %_lhs2780, 1
  store i32 %bop2781, i32* %j2754
  br label %__merge568

__fresh580:
  br label %__else569

__else569:
  br label %__merge568

__merge568:
  %_lhs2782 = load i32* %j2754
  %len_ptr2783 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2744, i32 0, i32 0
  %len2784 = load i32* %len_ptr2783
  call void @oat_array_bounds_check( i32 %len2784, i32 %_lhs2782 )
  %array_dereferenced2785 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %elt_ptr2786 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2785, i32 0, i32 1, i32 %_lhs2782
  %_lhs2787 = load i32* %elt_ptr2786
  %_lhs2788 = load i32* %j2754
  %bop2789 = ashr i32 %_lhs2788, 1
  %len_ptr2790 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2744, i32 0, i32 0
  %len2791 = load i32* %len_ptr2790
  call void @oat_array_bounds_check( i32 %len2791, i32 %bop2789 )
  %array_dereferenced2792 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %elt_ptr2793 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2792, i32 0, i32 1, i32 %bop2789
  %_lhs2794 = load i32* %elt_ptr2793
  %bop2795 = icmp slt i32 %_lhs2787, %_lhs2794
  br i1 %bop2795, label %__then573, label %__else572

__fresh581:
  br label %__then573

__then573:
  store i32 1, i32* %done2755
  br label %__merge571

__fresh582:
  br label %__else572

__else572:
  br label %__merge571

__merge571:
  %_lhs2796 = load i32* %done2755
  %bop2797 = icmp eq i32 %_lhs2796, 0
  br i1 %bop2797, label %__then576, label %__else575

__fresh583:
  br label %__then576

__then576:
  %_lhs2798 = load i32* %j2754
  %bop2799 = ashr i32 %_lhs2798, 1
  %len_ptr2800 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2744, i32 0, i32 0
  %len2801 = load i32* %len_ptr2800
  call void @oat_array_bounds_check( i32 %len2801, i32 %bop2799 )
  %array_dereferenced2802 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %elt_ptr2803 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2802, i32 0, i32 1, i32 %bop2799
  %_lhs2804 = load i32* %j2754
  %len_ptr2805 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2744, i32 0, i32 0
  %len2806 = load i32* %len_ptr2805
  call void @oat_array_bounds_check( i32 %len2806, i32 %_lhs2804 )
  %array_dereferenced2807 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %elt_ptr2808 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2807, i32 0, i32 1, i32 %_lhs2804
  %_lhs2809 = load i32* %elt_ptr2808
  store i32 %_lhs2809, i32* %elt_ptr2803
  %_lhs2810 = load i32* %j2754
  %bop2811 = mul i32 %_lhs2810, 2
  store i32 %bop2811, i32* %j2754
  br label %__merge574

__fresh584:
  br label %__else575

__else575:
  br label %__merge574

__merge574:
  br label %__cond567

__fresh585:
  br label %__post565

__post565:
  %_lhs2812 = load i32* %j2754
  %bop2813 = ashr i32 %_lhs2812, 1
  %len_ptr2814 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2744, i32 0, i32 0
  %len2815 = load i32* %len_ptr2814
  call void @oat_array_bounds_check( i32 %len2815, i32 %bop2813 )
  %array_dereferenced2816 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %elt_ptr2817 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2816, i32 0, i32 1, i32 %bop2813
  %_lhs2818 = load i32* %v2751
  store i32 %_lhs2818, i32* %elt_ptr2817
  ret void
}


define void @restoreHup ({ i32, [ 0 x i32 ] }* %a2698, i32 %i2696){

__fresh562:
  %a_slot2699 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2698, { i32, [ 0 x i32 ] }** %a_slot2699
  %i_slot2697 = alloca i32
  store i32 %i2696, i32* %i_slot2697
  %_lhs2700 = load i32* %i_slot2697
  %len_ptr2701 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2699, i32 0, i32 0
  %len2702 = load i32* %len_ptr2701
  call void @oat_array_bounds_check( i32 %len2702, i32 %_lhs2700 )
  %array_dereferenced2703 = load { i32, [ 0 x i32 ] }** %a_slot2699
  %elt_ptr2704 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2703, i32 0, i32 1, i32 %_lhs2700
  %_lhs2705 = load i32* %elt_ptr2704
  %v2706 = alloca i32
  store i32 %_lhs2705, i32* %v2706
  br label %__cond561

__cond561:
  %_lhs2707 = load i32* %i_slot2697
  %bop2708 = icmp sgt i32 %_lhs2707, 1
  %_lhs2709 = load i32* %i_slot2697
  %bop2710 = ashr i32 %_lhs2709, 1
  %len_ptr2711 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2699, i32 0, i32 0
  %len2712 = load i32* %len_ptr2711
  call void @oat_array_bounds_check( i32 %len2712, i32 %bop2710 )
  %array_dereferenced2713 = load { i32, [ 0 x i32 ] }** %a_slot2699
  %elt_ptr2714 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2713, i32 0, i32 1, i32 %bop2710
  %_lhs2715 = load i32* %elt_ptr2714
  %_lhs2716 = load i32* %v2706
  %bop2717 = icmp slt i32 %_lhs2715, %_lhs2716
  %bop2718 = and i1 %bop2708, %bop2717
  br i1 %bop2718, label %__body560, label %__post559

__fresh563:
  br label %__body560

__body560:
  %_lhs2719 = load i32* %i_slot2697
  %len_ptr2720 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2699, i32 0, i32 0
  %len2721 = load i32* %len_ptr2720
  call void @oat_array_bounds_check( i32 %len2721, i32 %_lhs2719 )
  %array_dereferenced2722 = load { i32, [ 0 x i32 ] }** %a_slot2699
  %elt_ptr2723 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2722, i32 0, i32 1, i32 %_lhs2719
  %_lhs2724 = load i32* %i_slot2697
  %bop2725 = ashr i32 %_lhs2724, 1
  %len_ptr2726 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2699, i32 0, i32 0
  %len2727 = load i32* %len_ptr2726
  call void @oat_array_bounds_check( i32 %len2727, i32 %bop2725 )
  %array_dereferenced2728 = load { i32, [ 0 x i32 ] }** %a_slot2699
  %elt_ptr2729 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2728, i32 0, i32 1, i32 %bop2725
  %_lhs2730 = load i32* %elt_ptr2729
  store i32 %_lhs2730, i32* %elt_ptr2723
  %_lhs2731 = load i32* %i_slot2697
  %bop2732 = ashr i32 %_lhs2731, 1
  store i32 %bop2732, i32* %i_slot2697
  br label %__cond561

__fresh564:
  br label %__post559

__post559:
  %_lhs2733 = load i32* %i_slot2697
  %len_ptr2734 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2699, i32 0, i32 0
  %len2735 = load i32* %len_ptr2734
  call void @oat_array_bounds_check( i32 %len2735, i32 %_lhs2733 )
  %array_dereferenced2736 = load { i32, [ 0 x i32 ] }** %a_slot2699
  %elt_ptr2737 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2736, i32 0, i32 1, i32 %_lhs2733
  %_lhs2738 = load i32* %v2706
  store i32 %_lhs2738, i32* %elt_ptr2737
  ret void
}


define i32 @program (i32 %argc2594, { i32, [ 0 x i8* ] }* %argv2592){

__fresh546:
  %argc_slot2595 = alloca i32
  store i32 %argc2594, i32* %argc_slot2595
  %argv_slot2593 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2592, { i32, [ 0 x i8* ] }** %argv_slot2593
  %array_ptr2597 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2598 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2597 to { i32, [ 0 x i32 ] }* 
  %i2602 = alloca i32
  store i32 1, i32* %i2602
  %i2596 = load i32* %i2602
  br label %__check532

__fresh547:
  br label %__check532

__check532:
  br label %__end531

__fresh548:
  %cmp_op2600 = icmp slt i32 %i2596, 9
  br i32 %cmp_op2600, label %__body533, label %__end531

__fresh549:
  br label %__body533

__body533:
  %elem_ptr2599 = getelementptr { i32, [ 0 x i32 ] }* %array2598, i32 0, i32 1, i32 %i2596
  store i32 0, i32* %elem_ptr2599
  %index_op2601 = add i32 %i2596, 1
  br label %__check532

__fresh550:
  br label %__end531

__end531:
  %a2604 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2598, { i32, [ 0 x i32 ] }** %a2604
  %i2605 = alloca i32
  store i32 0, i32* %i2605
  %j2606 = alloca i32
  store i32 0, i32* %j2606
  %k2607 = alloca i32
  store i32 0, i32* %k2607
  %r2608 = alloca i32
  store i32 0, i32* %r2608
  %len_ptr2609 = getelementptr { i32, [ 0 x i32 ] }** %a2604, i32 0, i32 0
  %len2610 = load i32* %len_ptr2609
  call void @oat_array_bounds_check( i32 %len2610, i32 0 )
  %array_dereferenced2611 = load { i32, [ 0 x i32 ] }** %a2604
  %elt_ptr2612 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2611, i32 0, i32 1, i32 0
  %_lhs2613 = load i32* %elt_ptr2612
  %check2614 = alloca i32
  store i32 %_lhs2613, i32* %check2614
  %len_ptr2615 = getelementptr { i32, [ 0 x i32 ] }** %a2604, i32 0, i32 0
  %len2616 = load i32* %len_ptr2615
  call void @oat_array_bounds_check( i32 %len2616, i32 0 )
  %array_dereferenced2617 = load { i32, [ 0 x i32 ] }** %a2604
  %elt_ptr2618 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2617, i32 0, i32 1, i32 0
  %len_ptr2619 = getelementptr { i32, [ 0 x i32 ] }** @b2590, i32 0, i32 0
  %len2620 = load i32* %len_ptr2619
  call void @oat_array_bounds_check( i32 %len2620, i32 0 )
  %array_dereferenced2621 = load { i32, [ 0 x i32 ] }** @b2590
  %elt_ptr2622 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2621, i32 0, i32 1, i32 0
  %_lhs2623 = load i32* %elt_ptr2622
  store i32 %_lhs2623, i32* %elt_ptr2618
  store i32 1, i32* %i2605
  br label %__cond536

__cond536:
  %_lhs2624 = load i32* %i2605
  %_lhs2625 = load i32* @n2591
  %bop2626 = icmp sle i32 %_lhs2624, %_lhs2625
  br i1 %bop2626, label %__body535, label %__post534

__fresh551:
  br label %__body535

__body535:
  %_lhs2627 = load i32* %i2605
  %len_ptr2628 = getelementptr { i32, [ 0 x i32 ] }** %a2604, i32 0, i32 0
  %len2629 = load i32* %len_ptr2628
  call void @oat_array_bounds_check( i32 %len2629, i32 %_lhs2627 )
  %array_dereferenced2630 = load { i32, [ 0 x i32 ] }** %a2604
  %elt_ptr2631 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2630, i32 0, i32 1, i32 %_lhs2627
  %_lhs2632 = load i32* %i2605
  %len_ptr2633 = getelementptr { i32, [ 0 x i32 ] }** @b2590, i32 0, i32 0
  %len2634 = load i32* %len_ptr2633
  call void @oat_array_bounds_check( i32 %len2634, i32 %_lhs2632 )
  %array_dereferenced2635 = load { i32, [ 0 x i32 ] }** @b2590
  %elt_ptr2636 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2635, i32 0, i32 1, i32 %_lhs2632
  %_lhs2637 = load i32* %elt_ptr2636
  %unop2638 = sub i32 0, %_lhs2637
  store i32 %unop2638, i32* %elt_ptr2631
  %_lhs2640 = load i32* %i2605
  %_lhs2639 = load { i32, [ 0 x i32 ] }** %a2604
  call void @restoreHup( { i32, [ 0 x i32 ] }* %_lhs2639, i32 %_lhs2640 )
  %_lhs2641 = load i32* %i2605
  %bop2642 = add i32 %_lhs2641, 1
  store i32 %bop2642, i32* %i2605
  br label %__cond536

__fresh552:
  br label %__post534

__post534:
  %_lhs2643 = load i32* @n2591
  store i32 %_lhs2643, i32* %j2606
  store i32 1, i32* %i2605
  br label %__cond539

__cond539:
  %_lhs2644 = load i32* %i2605
  %_lhs2645 = load i32* %j2606
  %bop2646 = icmp sle i32 %_lhs2644, %_lhs2645
  br i1 %bop2646, label %__body538, label %__post537

__fresh553:
  br label %__body538

__body538:
  %temp2647 = alloca i32
  store i32 0, i32* %temp2647
  %len_ptr2648 = getelementptr { i32, [ 0 x i32 ] }** %a2604, i32 0, i32 0
  %len2649 = load i32* %len_ptr2648
  call void @oat_array_bounds_check( i32 %len2649, i32 1 )
  %array_dereferenced2650 = load { i32, [ 0 x i32 ] }** %a2604
  %elt_ptr2651 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2650, i32 0, i32 1, i32 1
  %_lhs2652 = load i32* %elt_ptr2651
  store i32 %_lhs2652, i32* %temp2647
  %len_ptr2653 = getelementptr { i32, [ 0 x i32 ] }** %a2604, i32 0, i32 0
  %len2654 = load i32* %len_ptr2653
  call void @oat_array_bounds_check( i32 %len2654, i32 1 )
  %array_dereferenced2655 = load { i32, [ 0 x i32 ] }** %a2604
  %elt_ptr2656 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2655, i32 0, i32 1, i32 1
  %_lhs2657 = load i32* @n2591
  %len_ptr2658 = getelementptr { i32, [ 0 x i32 ] }** %a2604, i32 0, i32 0
  %len2659 = load i32* %len_ptr2658
  call void @oat_array_bounds_check( i32 %len2659, i32 %_lhs2657 )
  %array_dereferenced2660 = load { i32, [ 0 x i32 ] }** %a2604
  %elt_ptr2661 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2660, i32 0, i32 1, i32 %_lhs2657
  %_lhs2662 = load i32* %elt_ptr2661
  store i32 %_lhs2662, i32* %elt_ptr2656
  %_lhs2663 = load i32* @n2591
  %len_ptr2664 = getelementptr { i32, [ 0 x i32 ] }** %a2604, i32 0, i32 0
  %len2665 = load i32* %len_ptr2664
  call void @oat_array_bounds_check( i32 %len2665, i32 %_lhs2663 )
  %array_dereferenced2666 = load { i32, [ 0 x i32 ] }** %a2604
  %elt_ptr2667 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2666, i32 0, i32 1, i32 %_lhs2663
  %_lhs2668 = load i32* %temp2647
  store i32 %_lhs2668, i32* %elt_ptr2667
  %_lhs2669 = load i32* @n2591
  %bop2670 = sub i32 %_lhs2669, 1
  store i32 %bop2670, i32* @n2591
  %_lhs2672 = load i32* @n2591
  %_lhs2671 = load { i32, [ 0 x i32 ] }** %a2604
  call void @restoreHdown( { i32, [ 0 x i32 ] }* %_lhs2671, i32 1, i32 %_lhs2672 )
  %_lhs2673 = load i32* %i2605
  %bop2674 = add i32 %_lhs2673, 1
  store i32 %bop2674, i32* %i2605
  br label %__cond539

__fresh554:
  br label %__post537

__post537:
  %_lhs2675 = load i32* %j2606
  store i32 %_lhs2675, i32* @n2591
  store i32 1, i32* %i2605
  br label %__cond542

__cond542:
  %_lhs2676 = load i32* %i2605
  %_lhs2677 = load i32* @n2591
  %bop2678 = icmp sle i32 %_lhs2676, %_lhs2677
  br i1 %bop2678, label %__body541, label %__post540

__fresh555:
  br label %__body541

__body541:
  %_lhs2679 = load i32* %i2605
  %len_ptr2680 = getelementptr { i32, [ 0 x i32 ] }** %a2604, i32 0, i32 0
  %len2681 = load i32* %len_ptr2680
  call void @oat_array_bounds_check( i32 %len2681, i32 %_lhs2679 )
  %array_dereferenced2682 = load { i32, [ 0 x i32 ] }** %a2604
  %elt_ptr2683 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2682, i32 0, i32 1, i32 %_lhs2679
  %_lhs2684 = load i32* %elt_ptr2683
  %_lhs2685 = load i32* %check2614
  %bop2686 = icmp sge i32 %_lhs2684, %_lhs2685
  br i1 %bop2686, label %__then545, label %__else544

__fresh556:
  br label %__then545

__then545:
  %_lhs2687 = load i32* %i2605
  %len_ptr2688 = getelementptr { i32, [ 0 x i32 ] }** %a2604, i32 0, i32 0
  %len2689 = load i32* %len_ptr2688
  call void @oat_array_bounds_check( i32 %len2689, i32 %_lhs2687 )
  %array_dereferenced2690 = load { i32, [ 0 x i32 ] }** %a2604
  %elt_ptr2691 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2690, i32 0, i32 1, i32 %_lhs2687
  %_lhs2692 = load i32* %elt_ptr2691
  store i32 %_lhs2692, i32* %check2614
  br label %__merge543

__fresh557:
  br label %__else544

__else544:
  store i32 1, i32* %r2608
  br label %__merge543

__merge543:
  %_lhs2693 = load i32* %i2605
  %bop2694 = add i32 %_lhs2693, 1
  store i32 %bop2694, i32* %i2605
  br label %__cond542

__fresh558:
  br label %__post540

__post540:
  %_lhs2695 = load i32* %r2608
  ret i32 %_lhs2695
}


define void @b2590.init (){

__fresh530:
  %array_ptr2571 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2572 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2571 to { i32, [ 0 x i32 ] }* 
  %index_ptr2573 = getelementptr { i32, [ 0 x i32 ] }* %array2572, i32 0, i32 1, i32 0
  store i32 108, i32* %index_ptr2573
  %unop2574 = sub i32 0, 110
  %index_ptr2575 = getelementptr { i32, [ 0 x i32 ] }* %array2572, i32 0, i32 1, i32 1
  store i32 %unop2574, i32* %index_ptr2575
  %unop2576 = sub i32 0, 111
  %index_ptr2577 = getelementptr { i32, [ 0 x i32 ] }* %array2572, i32 0, i32 1, i32 2
  store i32 %unop2576, i32* %index_ptr2577
  %unop2578 = sub i32 0, 109
  %index_ptr2579 = getelementptr { i32, [ 0 x i32 ] }* %array2572, i32 0, i32 1, i32 3
  store i32 %unop2578, i32* %index_ptr2579
  %unop2580 = sub i32 0, 117
  %index_ptr2581 = getelementptr { i32, [ 0 x i32 ] }* %array2572, i32 0, i32 1, i32 4
  store i32 %unop2580, i32* %index_ptr2581
  %unop2582 = sub i32 0, 119
  %index_ptr2583 = getelementptr { i32, [ 0 x i32 ] }* %array2572, i32 0, i32 1, i32 5
  store i32 %unop2582, i32* %index_ptr2583
  %unop2584 = sub i32 0, 113
  %index_ptr2585 = getelementptr { i32, [ 0 x i32 ] }* %array2572, i32 0, i32 1, i32 6
  store i32 %unop2584, i32* %index_ptr2585
  %unop2586 = sub i32 0, 120
  %index_ptr2587 = getelementptr { i32, [ 0 x i32 ] }* %array2572, i32 0, i32 1, i32 7
  store i32 %unop2586, i32* %index_ptr2587
  %unop2588 = sub i32 0, 108
  %index_ptr2589 = getelementptr { i32, [ 0 x i32 ] }* %array2572, i32 0, i32 1, i32 8
  store i32 %unop2588, i32* %index_ptr2589
  store { i32, [ 0 x i32 ] }* %array2572, { i32, [ 0 x i32 ] }** @b2590
  ret void
}


