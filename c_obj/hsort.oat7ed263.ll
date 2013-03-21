declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@n2601 = global i32 8, align 4
@b2600 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by b2600.init
define void @oat_init (){

__fresh1026:
  call void @b2600.init(  )
  ret void
}


define void @restoreHdown ({ i32, [ 0 x i32 ] }* %a2753, i32 %i2751, i32 %n2749){

__fresh1017:
  %a_slot2754 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2753, { i32, [ 0 x i32 ] }** %a_slot2754
  %i_slot2752 = alloca i32
  store i32 %i2751, i32* %i_slot2752
  %n_slot2750 = alloca i32
  store i32 %n2749, i32* %n_slot2750
  %_lhs2755 = load i32* %i_slot2752
  %array_dereferenced2756 = load { i32, [ 0 x i32 ] }** %a_slot2754
  %len_ptr2757 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2756, i32 0, i32 0
  %len2758 = load i32* %len_ptr2757
  call void @oat_array_bounds_check( i32 %len2758, i32 %_lhs2755 )
  %elt_ptr2759 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2756, i32 0, i32 1, i32 %_lhs2755
  %_lhs2760 = load i32* %elt_ptr2759
  %v2761 = alloca i32
  store i32 %_lhs2760, i32* %v2761
  %_lhs2762 = load i32* %i_slot2752
  %bop2763 = mul i32 %_lhs2762, 2
  %j2764 = alloca i32
  store i32 %bop2763, i32* %j2764
  %done2765 = alloca i32
  store i32 0, i32* %done2765
  br label %__cond1007

__cond1007:
  %_lhs2766 = load i32* %j2764
  %_lhs2767 = load i32* %n_slot2750
  %bop2768 = icmp sle i32 %_lhs2766, %_lhs2767
  %_lhs2769 = load i32* %done2765
  %bop2770 = icmp eq i32 %_lhs2769, 0
  %bop2771 = and i1 %bop2768, %bop2770
  br i1 %bop2771, label %__body1006, label %__post1005

__fresh1018:
  br label %__body1006

__body1006:
  %_lhs2772 = load i32* %j2764
  %_lhs2773 = load i32* %n_slot2750
  %bop2774 = icmp slt i32 %_lhs2772, %_lhs2773
  %_lhs2775 = load i32* %j2764
  %array_dereferenced2776 = load { i32, [ 0 x i32 ] }** %a_slot2754
  %len_ptr2777 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2776, i32 0, i32 0
  %len2778 = load i32* %len_ptr2777
  call void @oat_array_bounds_check( i32 %len2778, i32 %_lhs2775 )
  %elt_ptr2779 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2776, i32 0, i32 1, i32 %_lhs2775
  %_lhs2780 = load i32* %elt_ptr2779
  %_lhs2781 = load i32* %j2764
  %bop2782 = add i32 %_lhs2781, 1
  %array_dereferenced2783 = load { i32, [ 0 x i32 ] }** %a_slot2754
  %len_ptr2784 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2783, i32 0, i32 0
  %len2785 = load i32* %len_ptr2784
  call void @oat_array_bounds_check( i32 %len2785, i32 %bop2782 )
  %elt_ptr2786 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2783, i32 0, i32 1, i32 %bop2782
  %_lhs2787 = load i32* %elt_ptr2786
  %bop2788 = icmp slt i32 %_lhs2780, %_lhs2787
  %bop2789 = and i1 %bop2774, %bop2788
  br i1 %bop2789, label %__then1010, label %__else1009

__fresh1019:
  br label %__then1010

__then1010:
  %_lhs2790 = load i32* %j2764
  %bop2791 = add i32 %_lhs2790, 1
  store i32 %bop2791, i32* %j2764
  br label %__merge1008

__fresh1020:
  br label %__else1009

__else1009:
  br label %__merge1008

__merge1008:
  %_lhs2792 = load i32* %j2764
  %array_dereferenced2793 = load { i32, [ 0 x i32 ] }** %a_slot2754
  %len_ptr2794 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2793, i32 0, i32 0
  %len2795 = load i32* %len_ptr2794
  call void @oat_array_bounds_check( i32 %len2795, i32 %_lhs2792 )
  %elt_ptr2796 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2793, i32 0, i32 1, i32 %_lhs2792
  %_lhs2797 = load i32* %elt_ptr2796
  %_lhs2798 = load i32* %j2764
  %bop2799 = ashr i32 %_lhs2798, 1
  %array_dereferenced2800 = load { i32, [ 0 x i32 ] }** %a_slot2754
  %len_ptr2801 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2800, i32 0, i32 0
  %len2802 = load i32* %len_ptr2801
  call void @oat_array_bounds_check( i32 %len2802, i32 %bop2799 )
  %elt_ptr2803 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2800, i32 0, i32 1, i32 %bop2799
  %_lhs2804 = load i32* %elt_ptr2803
  %bop2805 = icmp slt i32 %_lhs2797, %_lhs2804
  br i1 %bop2805, label %__then1013, label %__else1012

__fresh1021:
  br label %__then1013

__then1013:
  store i32 1, i32* %done2765
  br label %__merge1011

__fresh1022:
  br label %__else1012

__else1012:
  br label %__merge1011

__merge1011:
  %_lhs2806 = load i32* %done2765
  %bop2807 = icmp eq i32 %_lhs2806, 0
  br i1 %bop2807, label %__then1016, label %__else1015

__fresh1023:
  br label %__then1016

__then1016:
  %_lhs2808 = load i32* %j2764
  %bop2809 = ashr i32 %_lhs2808, 1
  %array_dereferenced2810 = load { i32, [ 0 x i32 ] }** %a_slot2754
  %len_ptr2811 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2810, i32 0, i32 0
  %len2812 = load i32* %len_ptr2811
  call void @oat_array_bounds_check( i32 %len2812, i32 %bop2809 )
  %elt_ptr2813 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2810, i32 0, i32 1, i32 %bop2809
  %_lhs2814 = load i32* %j2764
  %array_dereferenced2815 = load { i32, [ 0 x i32 ] }** %a_slot2754
  %len_ptr2816 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2815, i32 0, i32 0
  %len2817 = load i32* %len_ptr2816
  call void @oat_array_bounds_check( i32 %len2817, i32 %_lhs2814 )
  %elt_ptr2818 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2815, i32 0, i32 1, i32 %_lhs2814
  %_lhs2819 = load i32* %elt_ptr2818
  store i32 %_lhs2819, i32* %elt_ptr2813
  %_lhs2820 = load i32* %j2764
  %bop2821 = mul i32 %_lhs2820, 2
  store i32 %bop2821, i32* %j2764
  br label %__merge1014

__fresh1024:
  br label %__else1015

__else1015:
  br label %__merge1014

__merge1014:
  br label %__cond1007

__fresh1025:
  br label %__post1005

__post1005:
  %_lhs2822 = load i32* %j2764
  %bop2823 = ashr i32 %_lhs2822, 1
  %array_dereferenced2824 = load { i32, [ 0 x i32 ] }** %a_slot2754
  %len_ptr2825 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2824, i32 0, i32 0
  %len2826 = load i32* %len_ptr2825
  call void @oat_array_bounds_check( i32 %len2826, i32 %bop2823 )
  %elt_ptr2827 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2824, i32 0, i32 1, i32 %bop2823
  %_lhs2828 = load i32* %v2761
  store i32 %_lhs2828, i32* %elt_ptr2827
  ret void
}


define void @restoreHup ({ i32, [ 0 x i32 ] }* %a2708, i32 %i2706){

__fresh1002:
  %a_slot2709 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2708, { i32, [ 0 x i32 ] }** %a_slot2709
  %i_slot2707 = alloca i32
  store i32 %i2706, i32* %i_slot2707
  %_lhs2710 = load i32* %i_slot2707
  %array_dereferenced2711 = load { i32, [ 0 x i32 ] }** %a_slot2709
  %len_ptr2712 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2711, i32 0, i32 0
  %len2713 = load i32* %len_ptr2712
  call void @oat_array_bounds_check( i32 %len2713, i32 %_lhs2710 )
  %elt_ptr2714 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2711, i32 0, i32 1, i32 %_lhs2710
  %_lhs2715 = load i32* %elt_ptr2714
  %v2716 = alloca i32
  store i32 %_lhs2715, i32* %v2716
  br label %__cond1001

__cond1001:
  %_lhs2717 = load i32* %i_slot2707
  %bop2718 = icmp sgt i32 %_lhs2717, 1
  %_lhs2719 = load i32* %i_slot2707
  %bop2720 = ashr i32 %_lhs2719, 1
  %array_dereferenced2721 = load { i32, [ 0 x i32 ] }** %a_slot2709
  %len_ptr2722 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2721, i32 0, i32 0
  %len2723 = load i32* %len_ptr2722
  call void @oat_array_bounds_check( i32 %len2723, i32 %bop2720 )
  %elt_ptr2724 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2721, i32 0, i32 1, i32 %bop2720
  %_lhs2725 = load i32* %elt_ptr2724
  %_lhs2726 = load i32* %v2716
  %bop2727 = icmp slt i32 %_lhs2725, %_lhs2726
  %bop2728 = and i1 %bop2718, %bop2727
  br i1 %bop2728, label %__body1000, label %__post999

__fresh1003:
  br label %__body1000

__body1000:
  %_lhs2729 = load i32* %i_slot2707
  %array_dereferenced2730 = load { i32, [ 0 x i32 ] }** %a_slot2709
  %len_ptr2731 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2730, i32 0, i32 0
  %len2732 = load i32* %len_ptr2731
  call void @oat_array_bounds_check( i32 %len2732, i32 %_lhs2729 )
  %elt_ptr2733 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2730, i32 0, i32 1, i32 %_lhs2729
  %_lhs2734 = load i32* %i_slot2707
  %bop2735 = ashr i32 %_lhs2734, 1
  %array_dereferenced2736 = load { i32, [ 0 x i32 ] }** %a_slot2709
  %len_ptr2737 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2736, i32 0, i32 0
  %len2738 = load i32* %len_ptr2737
  call void @oat_array_bounds_check( i32 %len2738, i32 %bop2735 )
  %elt_ptr2739 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2736, i32 0, i32 1, i32 %bop2735
  %_lhs2740 = load i32* %elt_ptr2739
  store i32 %_lhs2740, i32* %elt_ptr2733
  %_lhs2741 = load i32* %i_slot2707
  %bop2742 = ashr i32 %_lhs2741, 1
  store i32 %bop2742, i32* %i_slot2707
  br label %__cond1001

__fresh1004:
  br label %__post999

__post999:
  %_lhs2743 = load i32* %i_slot2707
  %array_dereferenced2744 = load { i32, [ 0 x i32 ] }** %a_slot2709
  %len_ptr2745 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2744, i32 0, i32 0
  %len2746 = load i32* %len_ptr2745
  call void @oat_array_bounds_check( i32 %len2746, i32 %_lhs2743 )
  %elt_ptr2747 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2744, i32 0, i32 1, i32 %_lhs2743
  %_lhs2748 = load i32* %v2716
  store i32 %_lhs2748, i32* %elt_ptr2747
  ret void
}


define i32 @program (i32 %argc2604, { i32, [ 0 x i8* ] }* %argv2602){

__fresh986:
  %argc_slot2605 = alloca i32
  store i32 %argc2604, i32* %argc_slot2605
  %argv_slot2603 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2602, { i32, [ 0 x i8* ] }** %argv_slot2603
  %array_ptr2607 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2608 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2607 to { i32, [ 0 x i32 ] }* 
  %i2612 = alloca i32
  store i32 1, i32* %i2612
  %i2606 = load i32* %i2612
  br label %__check972

__fresh987:
  br label %__check972

__check972:
  br label %__end971

__fresh988:
  %cmp_op2610 = icmp slt i32 %i2606, 9
  br i32 %cmp_op2610, label %__body973, label %__end971

__fresh989:
  br label %__body973

__body973:
  %elem_ptr2609 = getelementptr { i32, [ 0 x i32 ] }* %array2608, i32 0, i32 1, i32 %i2606
  store i32 0, i32* %elem_ptr2609
  %index_op2611 = add i32 %i2606, 1
  br label %__check972

__fresh990:
  br label %__end971

__end971:
  %a2614 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2608, { i32, [ 0 x i32 ] }** %a2614
  %i2615 = alloca i32
  store i32 0, i32* %i2615
  %j2616 = alloca i32
  store i32 0, i32* %j2616
  %k2617 = alloca i32
  store i32 0, i32* %k2617
  %r2618 = alloca i32
  store i32 0, i32* %r2618
  %array_dereferenced2619 = load { i32, [ 0 x i32 ] }** %a2614
  %len_ptr2620 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2619, i32 0, i32 0
  %len2621 = load i32* %len_ptr2620
  call void @oat_array_bounds_check( i32 %len2621, i32 0 )
  %elt_ptr2622 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2619, i32 0, i32 1, i32 0
  %_lhs2623 = load i32* %elt_ptr2622
  %check2624 = alloca i32
  store i32 %_lhs2623, i32* %check2624
  %array_dereferenced2625 = load { i32, [ 0 x i32 ] }** %a2614
  %len_ptr2626 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2625, i32 0, i32 0
  %len2627 = load i32* %len_ptr2626
  call void @oat_array_bounds_check( i32 %len2627, i32 0 )
  %elt_ptr2628 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2625, i32 0, i32 1, i32 0
  %array_dereferenced2629 = load { i32, [ 0 x i32 ] }** @b2600
  %len_ptr2630 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2629, i32 0, i32 0
  %len2631 = load i32* %len_ptr2630
  call void @oat_array_bounds_check( i32 %len2631, i32 0 )
  %elt_ptr2632 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2629, i32 0, i32 1, i32 0
  %_lhs2633 = load i32* %elt_ptr2632
  store i32 %_lhs2633, i32* %elt_ptr2628
  store i32 1, i32* %i2615
  br label %__cond976

__cond976:
  %_lhs2634 = load i32* %i2615
  %_lhs2635 = load i32* @n2601
  %bop2636 = icmp sle i32 %_lhs2634, %_lhs2635
  br i1 %bop2636, label %__body975, label %__post974

__fresh991:
  br label %__body975

__body975:
  %_lhs2637 = load i32* %i2615
  %array_dereferenced2638 = load { i32, [ 0 x i32 ] }** %a2614
  %len_ptr2639 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2638, i32 0, i32 0
  %len2640 = load i32* %len_ptr2639
  call void @oat_array_bounds_check( i32 %len2640, i32 %_lhs2637 )
  %elt_ptr2641 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2638, i32 0, i32 1, i32 %_lhs2637
  %_lhs2642 = load i32* %i2615
  %array_dereferenced2643 = load { i32, [ 0 x i32 ] }** @b2600
  %len_ptr2644 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2643, i32 0, i32 0
  %len2645 = load i32* %len_ptr2644
  call void @oat_array_bounds_check( i32 %len2645, i32 %_lhs2642 )
  %elt_ptr2646 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2643, i32 0, i32 1, i32 %_lhs2642
  %_lhs2647 = load i32* %elt_ptr2646
  %unop2648 = sub i32 0, %_lhs2647
  store i32 %unop2648, i32* %elt_ptr2641
  %_lhs2650 = load i32* %i2615
  %_lhs2649 = load { i32, [ 0 x i32 ] }** %a2614
  call void @restoreHup( { i32, [ 0 x i32 ] }* %_lhs2649, i32 %_lhs2650 )
  %_lhs2651 = load i32* %i2615
  %bop2652 = add i32 %_lhs2651, 1
  store i32 %bop2652, i32* %i2615
  br label %__cond976

__fresh992:
  br label %__post974

__post974:
  %_lhs2653 = load i32* @n2601
  store i32 %_lhs2653, i32* %j2616
  store i32 1, i32* %i2615
  br label %__cond979

__cond979:
  %_lhs2654 = load i32* %i2615
  %_lhs2655 = load i32* %j2616
  %bop2656 = icmp sle i32 %_lhs2654, %_lhs2655
  br i1 %bop2656, label %__body978, label %__post977

__fresh993:
  br label %__body978

__body978:
  %temp2657 = alloca i32
  store i32 0, i32* %temp2657
  %array_dereferenced2658 = load { i32, [ 0 x i32 ] }** %a2614
  %len_ptr2659 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2658, i32 0, i32 0
  %len2660 = load i32* %len_ptr2659
  call void @oat_array_bounds_check( i32 %len2660, i32 1 )
  %elt_ptr2661 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2658, i32 0, i32 1, i32 1
  %_lhs2662 = load i32* %elt_ptr2661
  store i32 %_lhs2662, i32* %temp2657
  %array_dereferenced2663 = load { i32, [ 0 x i32 ] }** %a2614
  %len_ptr2664 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2663, i32 0, i32 0
  %len2665 = load i32* %len_ptr2664
  call void @oat_array_bounds_check( i32 %len2665, i32 1 )
  %elt_ptr2666 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2663, i32 0, i32 1, i32 1
  %_lhs2667 = load i32* @n2601
  %array_dereferenced2668 = load { i32, [ 0 x i32 ] }** %a2614
  %len_ptr2669 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2668, i32 0, i32 0
  %len2670 = load i32* %len_ptr2669
  call void @oat_array_bounds_check( i32 %len2670, i32 %_lhs2667 )
  %elt_ptr2671 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2668, i32 0, i32 1, i32 %_lhs2667
  %_lhs2672 = load i32* %elt_ptr2671
  store i32 %_lhs2672, i32* %elt_ptr2666
  %_lhs2673 = load i32* @n2601
  %array_dereferenced2674 = load { i32, [ 0 x i32 ] }** %a2614
  %len_ptr2675 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2674, i32 0, i32 0
  %len2676 = load i32* %len_ptr2675
  call void @oat_array_bounds_check( i32 %len2676, i32 %_lhs2673 )
  %elt_ptr2677 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2674, i32 0, i32 1, i32 %_lhs2673
  %_lhs2678 = load i32* %temp2657
  store i32 %_lhs2678, i32* %elt_ptr2677
  %_lhs2679 = load i32* @n2601
  %bop2680 = sub i32 %_lhs2679, 1
  store i32 %bop2680, i32* @n2601
  %_lhs2682 = load i32* @n2601
  %_lhs2681 = load { i32, [ 0 x i32 ] }** %a2614
  call void @restoreHdown( { i32, [ 0 x i32 ] }* %_lhs2681, i32 1, i32 %_lhs2682 )
  %_lhs2683 = load i32* %i2615
  %bop2684 = add i32 %_lhs2683, 1
  store i32 %bop2684, i32* %i2615
  br label %__cond979

__fresh994:
  br label %__post977

__post977:
  %_lhs2685 = load i32* %j2616
  store i32 %_lhs2685, i32* @n2601
  store i32 1, i32* %i2615
  br label %__cond982

__cond982:
  %_lhs2686 = load i32* %i2615
  %_lhs2687 = load i32* @n2601
  %bop2688 = icmp sle i32 %_lhs2686, %_lhs2687
  br i1 %bop2688, label %__body981, label %__post980

__fresh995:
  br label %__body981

__body981:
  %_lhs2689 = load i32* %i2615
  %array_dereferenced2690 = load { i32, [ 0 x i32 ] }** %a2614
  %len_ptr2691 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2690, i32 0, i32 0
  %len2692 = load i32* %len_ptr2691
  call void @oat_array_bounds_check( i32 %len2692, i32 %_lhs2689 )
  %elt_ptr2693 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2690, i32 0, i32 1, i32 %_lhs2689
  %_lhs2694 = load i32* %elt_ptr2693
  %_lhs2695 = load i32* %check2624
  %bop2696 = icmp sge i32 %_lhs2694, %_lhs2695
  br i1 %bop2696, label %__then985, label %__else984

__fresh996:
  br label %__then985

__then985:
  %_lhs2697 = load i32* %i2615
  %array_dereferenced2698 = load { i32, [ 0 x i32 ] }** %a2614
  %len_ptr2699 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2698, i32 0, i32 0
  %len2700 = load i32* %len_ptr2699
  call void @oat_array_bounds_check( i32 %len2700, i32 %_lhs2697 )
  %elt_ptr2701 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2698, i32 0, i32 1, i32 %_lhs2697
  %_lhs2702 = load i32* %elt_ptr2701
  store i32 %_lhs2702, i32* %check2624
  br label %__merge983

__fresh997:
  br label %__else984

__else984:
  store i32 1, i32* %r2618
  br label %__merge983

__merge983:
  %_lhs2703 = load i32* %i2615
  %bop2704 = add i32 %_lhs2703, 1
  store i32 %bop2704, i32* %i2615
  br label %__cond982

__fresh998:
  br label %__post980

__post980:
  %_lhs2705 = load i32* %r2618
  ret i32 %_lhs2705
}


define void @b2600.init (){

__fresh970:
  %array_ptr2581 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2582 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2581 to { i32, [ 0 x i32 ] }* 
  %index_ptr2583 = getelementptr { i32, [ 0 x i32 ] }* %array2582, i32 0, i32 1, i32 0
  store i32 108, i32* %index_ptr2583
  %unop2584 = sub i32 0, 110
  %index_ptr2585 = getelementptr { i32, [ 0 x i32 ] }* %array2582, i32 0, i32 1, i32 1
  store i32 %unop2584, i32* %index_ptr2585
  %unop2586 = sub i32 0, 111
  %index_ptr2587 = getelementptr { i32, [ 0 x i32 ] }* %array2582, i32 0, i32 1, i32 2
  store i32 %unop2586, i32* %index_ptr2587
  %unop2588 = sub i32 0, 109
  %index_ptr2589 = getelementptr { i32, [ 0 x i32 ] }* %array2582, i32 0, i32 1, i32 3
  store i32 %unop2588, i32* %index_ptr2589
  %unop2590 = sub i32 0, 117
  %index_ptr2591 = getelementptr { i32, [ 0 x i32 ] }* %array2582, i32 0, i32 1, i32 4
  store i32 %unop2590, i32* %index_ptr2591
  %unop2592 = sub i32 0, 119
  %index_ptr2593 = getelementptr { i32, [ 0 x i32 ] }* %array2582, i32 0, i32 1, i32 5
  store i32 %unop2592, i32* %index_ptr2593
  %unop2594 = sub i32 0, 113
  %index_ptr2595 = getelementptr { i32, [ 0 x i32 ] }* %array2582, i32 0, i32 1, i32 6
  store i32 %unop2594, i32* %index_ptr2595
  %unop2596 = sub i32 0, 120
  %index_ptr2597 = getelementptr { i32, [ 0 x i32 ] }* %array2582, i32 0, i32 1, i32 7
  store i32 %unop2596, i32* %index_ptr2597
  %unop2598 = sub i32 0, 108
  %index_ptr2599 = getelementptr { i32, [ 0 x i32 ] }* %array2582, i32 0, i32 1, i32 8
  store i32 %unop2598, i32* %index_ptr2599
  store { i32, [ 0 x i32 ] }* %array2582, { i32, [ 0 x i32 ] }** @b2600
  ret void
}


