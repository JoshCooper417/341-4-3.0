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

__fresh1021:
  call void @b2590.init(  )
  ret void
}


define void @restoreHdown ({ i32, [ 0 x i32 ] }* %a2743, i32 %i2741, i32 %n2739){

__fresh1012:
  %a_slot2744 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2743, { i32, [ 0 x i32 ] }** %a_slot2744
  %i_slot2742 = alloca i32
  store i32 %i2741, i32* %i_slot2742
  %n_slot2740 = alloca i32
  store i32 %n2739, i32* %n_slot2740
  %_lhs2745 = load i32* %i_slot2742
  %array_dereferenced2746 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %len_ptr2747 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2746, i32 0, i32 0
  %len2748 = load i32* %len_ptr2747
  call void @oat_array_bounds_check( i32 %len2748, i32 %_lhs2745 )
  %elt_ptr2749 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2746, i32 0, i32 1, i32 %_lhs2745
  %_lhs2750 = load i32* %elt_ptr2749
  %v2751 = alloca i32
  store i32 %_lhs2750, i32* %v2751
  %_lhs2752 = load i32* %i_slot2742
  %bop2753 = mul i32 %_lhs2752, 2
  %j2754 = alloca i32
  store i32 %bop2753, i32* %j2754
  %done2755 = alloca i32
  store i32 0, i32* %done2755
  br label %__cond1002

__cond1002:
  %_lhs2756 = load i32* %j2754
  %_lhs2757 = load i32* %n_slot2740
  %bop2758 = icmp sle i32 %_lhs2756, %_lhs2757
  %_lhs2759 = load i32* %done2755
  %bop2760 = icmp eq i32 %_lhs2759, 0
  %bop2761 = and i1 %bop2758, %bop2760
  br i1 %bop2761, label %__body1001, label %__post1000

__fresh1013:
  br label %__body1001

__body1001:
  %_lhs2762 = load i32* %j2754
  %_lhs2763 = load i32* %n_slot2740
  %bop2764 = icmp slt i32 %_lhs2762, %_lhs2763
  %_lhs2765 = load i32* %j2754
  %array_dereferenced2766 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %len_ptr2767 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2766, i32 0, i32 0
  %len2768 = load i32* %len_ptr2767
  call void @oat_array_bounds_check( i32 %len2768, i32 %_lhs2765 )
  %elt_ptr2769 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2766, i32 0, i32 1, i32 %_lhs2765
  %_lhs2770 = load i32* %elt_ptr2769
  %_lhs2771 = load i32* %j2754
  %bop2772 = add i32 %_lhs2771, 1
  %array_dereferenced2773 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %len_ptr2774 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2773, i32 0, i32 0
  %len2775 = load i32* %len_ptr2774
  call void @oat_array_bounds_check( i32 %len2775, i32 %bop2772 )
  %elt_ptr2776 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2773, i32 0, i32 1, i32 %bop2772
  %_lhs2777 = load i32* %elt_ptr2776
  %bop2778 = icmp slt i32 %_lhs2770, %_lhs2777
  %bop2779 = and i1 %bop2764, %bop2778
  br i1 %bop2779, label %__then1005, label %__else1004

__fresh1014:
  br label %__then1005

__then1005:
  %_lhs2780 = load i32* %j2754
  %bop2781 = add i32 %_lhs2780, 1
  store i32 %bop2781, i32* %j2754
  br label %__merge1003

__fresh1015:
  br label %__else1004

__else1004:
  br label %__merge1003

__merge1003:
  %_lhs2782 = load i32* %j2754
  %array_dereferenced2783 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %len_ptr2784 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2783, i32 0, i32 0
  %len2785 = load i32* %len_ptr2784
  call void @oat_array_bounds_check( i32 %len2785, i32 %_lhs2782 )
  %elt_ptr2786 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2783, i32 0, i32 1, i32 %_lhs2782
  %_lhs2787 = load i32* %elt_ptr2786
  %_lhs2788 = load i32* %j2754
  %bop2789 = ashr i32 %_lhs2788, 1
  %array_dereferenced2790 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %len_ptr2791 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2790, i32 0, i32 0
  %len2792 = load i32* %len_ptr2791
  call void @oat_array_bounds_check( i32 %len2792, i32 %bop2789 )
  %elt_ptr2793 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2790, i32 0, i32 1, i32 %bop2789
  %_lhs2794 = load i32* %elt_ptr2793
  %bop2795 = icmp slt i32 %_lhs2787, %_lhs2794
  br i1 %bop2795, label %__then1008, label %__else1007

__fresh1016:
  br label %__then1008

__then1008:
  store i32 1, i32* %done2755
  br label %__merge1006

__fresh1017:
  br label %__else1007

__else1007:
  br label %__merge1006

__merge1006:
  %_lhs2796 = load i32* %done2755
  %bop2797 = icmp eq i32 %_lhs2796, 0
  br i1 %bop2797, label %__then1011, label %__else1010

__fresh1018:
  br label %__then1011

__then1011:
  %_lhs2798 = load i32* %j2754
  %bop2799 = ashr i32 %_lhs2798, 1
  %array_dereferenced2800 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %len_ptr2801 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2800, i32 0, i32 0
  %len2802 = load i32* %len_ptr2801
  call void @oat_array_bounds_check( i32 %len2802, i32 %bop2799 )
  %elt_ptr2803 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2800, i32 0, i32 1, i32 %bop2799
  %_lhs2804 = load i32* %j2754
  %array_dereferenced2805 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %len_ptr2806 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2805, i32 0, i32 0
  %len2807 = load i32* %len_ptr2806
  call void @oat_array_bounds_check( i32 %len2807, i32 %_lhs2804 )
  %elt_ptr2808 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2805, i32 0, i32 1, i32 %_lhs2804
  %_lhs2809 = load i32* %elt_ptr2808
  store i32 %_lhs2809, i32* %elt_ptr2803
  %_lhs2810 = load i32* %j2754
  %bop2811 = mul i32 %_lhs2810, 2
  store i32 %bop2811, i32* %j2754
  br label %__merge1009

__fresh1019:
  br label %__else1010

__else1010:
  br label %__merge1009

__merge1009:
  br label %__cond1002

__fresh1020:
  br label %__post1000

__post1000:
  %_lhs2812 = load i32* %j2754
  %bop2813 = ashr i32 %_lhs2812, 1
  %array_dereferenced2814 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %len_ptr2815 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2814, i32 0, i32 0
  %len2816 = load i32* %len_ptr2815
  call void @oat_array_bounds_check( i32 %len2816, i32 %bop2813 )
  %elt_ptr2817 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2814, i32 0, i32 1, i32 %bop2813
  %_lhs2818 = load i32* %v2751
  store i32 %_lhs2818, i32* %elt_ptr2817
  ret void
}


define void @restoreHup ({ i32, [ 0 x i32 ] }* %a2698, i32 %i2696){

__fresh997:
  %a_slot2699 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2698, { i32, [ 0 x i32 ] }** %a_slot2699
  %i_slot2697 = alloca i32
  store i32 %i2696, i32* %i_slot2697
  %_lhs2700 = load i32* %i_slot2697
  %array_dereferenced2701 = load { i32, [ 0 x i32 ] }** %a_slot2699
  %len_ptr2702 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2701, i32 0, i32 0
  %len2703 = load i32* %len_ptr2702
  call void @oat_array_bounds_check( i32 %len2703, i32 %_lhs2700 )
  %elt_ptr2704 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2701, i32 0, i32 1, i32 %_lhs2700
  %_lhs2705 = load i32* %elt_ptr2704
  %v2706 = alloca i32
  store i32 %_lhs2705, i32* %v2706
  br label %__cond996

__cond996:
  %_lhs2707 = load i32* %i_slot2697
  %bop2708 = icmp sgt i32 %_lhs2707, 1
  %_lhs2709 = load i32* %i_slot2697
  %bop2710 = ashr i32 %_lhs2709, 1
  %array_dereferenced2711 = load { i32, [ 0 x i32 ] }** %a_slot2699
  %len_ptr2712 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2711, i32 0, i32 0
  %len2713 = load i32* %len_ptr2712
  call void @oat_array_bounds_check( i32 %len2713, i32 %bop2710 )
  %elt_ptr2714 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2711, i32 0, i32 1, i32 %bop2710
  %_lhs2715 = load i32* %elt_ptr2714
  %_lhs2716 = load i32* %v2706
  %bop2717 = icmp slt i32 %_lhs2715, %_lhs2716
  %bop2718 = and i1 %bop2708, %bop2717
  br i1 %bop2718, label %__body995, label %__post994

__fresh998:
  br label %__body995

__body995:
  %_lhs2719 = load i32* %i_slot2697
  %array_dereferenced2720 = load { i32, [ 0 x i32 ] }** %a_slot2699
  %len_ptr2721 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2720, i32 0, i32 0
  %len2722 = load i32* %len_ptr2721
  call void @oat_array_bounds_check( i32 %len2722, i32 %_lhs2719 )
  %elt_ptr2723 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2720, i32 0, i32 1, i32 %_lhs2719
  %_lhs2724 = load i32* %i_slot2697
  %bop2725 = ashr i32 %_lhs2724, 1
  %array_dereferenced2726 = load { i32, [ 0 x i32 ] }** %a_slot2699
  %len_ptr2727 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2726, i32 0, i32 0
  %len2728 = load i32* %len_ptr2727
  call void @oat_array_bounds_check( i32 %len2728, i32 %bop2725 )
  %elt_ptr2729 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2726, i32 0, i32 1, i32 %bop2725
  %_lhs2730 = load i32* %elt_ptr2729
  store i32 %_lhs2730, i32* %elt_ptr2723
  %_lhs2731 = load i32* %i_slot2697
  %bop2732 = ashr i32 %_lhs2731, 1
  store i32 %bop2732, i32* %i_slot2697
  br label %__cond996

__fresh999:
  br label %__post994

__post994:
  %_lhs2733 = load i32* %i_slot2697
  %array_dereferenced2734 = load { i32, [ 0 x i32 ] }** %a_slot2699
  %len_ptr2735 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2734, i32 0, i32 0
  %len2736 = load i32* %len_ptr2735
  call void @oat_array_bounds_check( i32 %len2736, i32 %_lhs2733 )
  %elt_ptr2737 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2734, i32 0, i32 1, i32 %_lhs2733
  %_lhs2738 = load i32* %v2706
  store i32 %_lhs2738, i32* %elt_ptr2737
  ret void
}


define i32 @program (i32 %argc2594, { i32, [ 0 x i8* ] }* %argv2592){

__fresh981:
  %argc_slot2595 = alloca i32
  store i32 %argc2594, i32* %argc_slot2595
  %argv_slot2593 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2592, { i32, [ 0 x i8* ] }** %argv_slot2593
  %array_ptr2597 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2598 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2597 to { i32, [ 0 x i32 ] }* 
  %i2602 = alloca i32
  store i32 1, i32* %i2602
  %i2596 = load i32* %i2602
  br label %__check967

__fresh982:
  br label %__check967

__check967:
  br label %__end966

__fresh983:
  %cmp_op2600 = icmp slt i32 %i2596, 9
  br i32 %cmp_op2600, label %__body968, label %__end966

__fresh984:
  br label %__body968

__body968:
  %elem_ptr2599 = getelementptr { i32, [ 0 x i32 ] }* %array2598, i32 0, i32 1, i32 %i2596
  store i32 0, i32* %elem_ptr2599
  %index_op2601 = add i32 %i2596, 1
  br label %__check967

__fresh985:
  br label %__end966

__end966:
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
  %array_dereferenced2609 = load { i32, [ 0 x i32 ] }** %a2604
  %len_ptr2610 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2609, i32 0, i32 0
  %len2611 = load i32* %len_ptr2610
  call void @oat_array_bounds_check( i32 %len2611, i32 0 )
  %elt_ptr2612 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2609, i32 0, i32 1, i32 0
  %_lhs2613 = load i32* %elt_ptr2612
  %check2614 = alloca i32
  store i32 %_lhs2613, i32* %check2614
  %array_dereferenced2615 = load { i32, [ 0 x i32 ] }** %a2604
  %len_ptr2616 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2615, i32 0, i32 0
  %len2617 = load i32* %len_ptr2616
  call void @oat_array_bounds_check( i32 %len2617, i32 0 )
  %elt_ptr2618 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2615, i32 0, i32 1, i32 0
  %array_dereferenced2619 = load { i32, [ 0 x i32 ] }** @b2590
  %len_ptr2620 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2619, i32 0, i32 0
  %len2621 = load i32* %len_ptr2620
  call void @oat_array_bounds_check( i32 %len2621, i32 0 )
  %elt_ptr2622 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2619, i32 0, i32 1, i32 0
  %_lhs2623 = load i32* %elt_ptr2622
  store i32 %_lhs2623, i32* %elt_ptr2618
  store i32 1, i32* %i2605
  br label %__cond971

__cond971:
  %_lhs2624 = load i32* %i2605
  %_lhs2625 = load i32* @n2591
  %bop2626 = icmp sle i32 %_lhs2624, %_lhs2625
  br i1 %bop2626, label %__body970, label %__post969

__fresh986:
  br label %__body970

__body970:
  %_lhs2627 = load i32* %i2605
  %array_dereferenced2628 = load { i32, [ 0 x i32 ] }** %a2604
  %len_ptr2629 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2628, i32 0, i32 0
  %len2630 = load i32* %len_ptr2629
  call void @oat_array_bounds_check( i32 %len2630, i32 %_lhs2627 )
  %elt_ptr2631 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2628, i32 0, i32 1, i32 %_lhs2627
  %_lhs2632 = load i32* %i2605
  %array_dereferenced2633 = load { i32, [ 0 x i32 ] }** @b2590
  %len_ptr2634 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2633, i32 0, i32 0
  %len2635 = load i32* %len_ptr2634
  call void @oat_array_bounds_check( i32 %len2635, i32 %_lhs2632 )
  %elt_ptr2636 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2633, i32 0, i32 1, i32 %_lhs2632
  %_lhs2637 = load i32* %elt_ptr2636
  %unop2638 = sub i32 0, %_lhs2637
  store i32 %unop2638, i32* %elt_ptr2631
  %_lhs2640 = load i32* %i2605
  %_lhs2639 = load { i32, [ 0 x i32 ] }** %a2604
  call void @restoreHup( { i32, [ 0 x i32 ] }* %_lhs2639, i32 %_lhs2640 )
  %_lhs2641 = load i32* %i2605
  %bop2642 = add i32 %_lhs2641, 1
  store i32 %bop2642, i32* %i2605
  br label %__cond971

__fresh987:
  br label %__post969

__post969:
  %_lhs2643 = load i32* @n2591
  store i32 %_lhs2643, i32* %j2606
  store i32 1, i32* %i2605
  br label %__cond974

__cond974:
  %_lhs2644 = load i32* %i2605
  %_lhs2645 = load i32* %j2606
  %bop2646 = icmp sle i32 %_lhs2644, %_lhs2645
  br i1 %bop2646, label %__body973, label %__post972

__fresh988:
  br label %__body973

__body973:
  %temp2647 = alloca i32
  store i32 0, i32* %temp2647
  %array_dereferenced2648 = load { i32, [ 0 x i32 ] }** %a2604
  %len_ptr2649 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2648, i32 0, i32 0
  %len2650 = load i32* %len_ptr2649
  call void @oat_array_bounds_check( i32 %len2650, i32 1 )
  %elt_ptr2651 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2648, i32 0, i32 1, i32 1
  %_lhs2652 = load i32* %elt_ptr2651
  store i32 %_lhs2652, i32* %temp2647
  %array_dereferenced2653 = load { i32, [ 0 x i32 ] }** %a2604
  %len_ptr2654 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2653, i32 0, i32 0
  %len2655 = load i32* %len_ptr2654
  call void @oat_array_bounds_check( i32 %len2655, i32 1 )
  %elt_ptr2656 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2653, i32 0, i32 1, i32 1
  %_lhs2657 = load i32* @n2591
  %array_dereferenced2658 = load { i32, [ 0 x i32 ] }** %a2604
  %len_ptr2659 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2658, i32 0, i32 0
  %len2660 = load i32* %len_ptr2659
  call void @oat_array_bounds_check( i32 %len2660, i32 %_lhs2657 )
  %elt_ptr2661 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2658, i32 0, i32 1, i32 %_lhs2657
  %_lhs2662 = load i32* %elt_ptr2661
  store i32 %_lhs2662, i32* %elt_ptr2656
  %_lhs2663 = load i32* @n2591
  %array_dereferenced2664 = load { i32, [ 0 x i32 ] }** %a2604
  %len_ptr2665 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2664, i32 0, i32 0
  %len2666 = load i32* %len_ptr2665
  call void @oat_array_bounds_check( i32 %len2666, i32 %_lhs2663 )
  %elt_ptr2667 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2664, i32 0, i32 1, i32 %_lhs2663
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
  br label %__cond974

__fresh989:
  br label %__post972

__post972:
  %_lhs2675 = load i32* %j2606
  store i32 %_lhs2675, i32* @n2591
  store i32 1, i32* %i2605
  br label %__cond977

__cond977:
  %_lhs2676 = load i32* %i2605
  %_lhs2677 = load i32* @n2591
  %bop2678 = icmp sle i32 %_lhs2676, %_lhs2677
  br i1 %bop2678, label %__body976, label %__post975

__fresh990:
  br label %__body976

__body976:
  %_lhs2679 = load i32* %i2605
  %array_dereferenced2680 = load { i32, [ 0 x i32 ] }** %a2604
  %len_ptr2681 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2680, i32 0, i32 0
  %len2682 = load i32* %len_ptr2681
  call void @oat_array_bounds_check( i32 %len2682, i32 %_lhs2679 )
  %elt_ptr2683 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2680, i32 0, i32 1, i32 %_lhs2679
  %_lhs2684 = load i32* %elt_ptr2683
  %_lhs2685 = load i32* %check2614
  %bop2686 = icmp sge i32 %_lhs2684, %_lhs2685
  br i1 %bop2686, label %__then980, label %__else979

__fresh991:
  br label %__then980

__then980:
  %_lhs2687 = load i32* %i2605
  %array_dereferenced2688 = load { i32, [ 0 x i32 ] }** %a2604
  %len_ptr2689 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2688, i32 0, i32 0
  %len2690 = load i32* %len_ptr2689
  call void @oat_array_bounds_check( i32 %len2690, i32 %_lhs2687 )
  %elt_ptr2691 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2688, i32 0, i32 1, i32 %_lhs2687
  %_lhs2692 = load i32* %elt_ptr2691
  store i32 %_lhs2692, i32* %check2614
  br label %__merge978

__fresh992:
  br label %__else979

__else979:
  store i32 1, i32* %r2608
  br label %__merge978

__merge978:
  %_lhs2693 = load i32* %i2605
  %bop2694 = add i32 %_lhs2693, 1
  store i32 %bop2694, i32* %i2605
  br label %__cond977

__fresh993:
  br label %__post975

__post975:
  %_lhs2695 = load i32* %r2608
  ret i32 %_lhs2695
}


define void @b2590.init (){

__fresh965:
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


