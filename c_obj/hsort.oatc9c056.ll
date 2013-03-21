declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@n2625 = global i32 8, align 4
@b2624 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by b2624.init
define void @oat_init (){

__fresh1026:
  call void @b2624.init(  )
  ret void
}


define void @restoreHdown ({ i32, [ 0 x i32 ] }* %a2778, i32 %i2776, i32 %n2774){

__fresh1017:
  %a_slot2779 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2778, { i32, [ 0 x i32 ] }** %a_slot2779
  %i_slot2777 = alloca i32
  store i32 %i2776, i32* %i_slot2777
  %n_slot2775 = alloca i32
  store i32 %n2774, i32* %n_slot2775
  %_lhs2780 = load i32* %i_slot2777
  %array_dereferenced2781 = load { i32, [ 0 x i32 ] }** %a_slot2779
  %len_ptr2782 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2781, i32 0, i32 0
  %len2783 = load i32* %len_ptr2782
  call void @oat_array_bounds_check( i32 %len2783, i32 %_lhs2780 )
  %elt_ptr2784 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2781, i32 0, i32 1, i32 %_lhs2780
  %_lhs2785 = load i32* %elt_ptr2784
  %v2786 = alloca i32
  store i32 %_lhs2785, i32* %v2786
  %_lhs2787 = load i32* %i_slot2777
  %bop2788 = mul i32 %_lhs2787, 2
  %j2789 = alloca i32
  store i32 %bop2788, i32* %j2789
  %done2790 = alloca i32
  store i32 0, i32* %done2790
  br label %__cond1007

__cond1007:
  %_lhs2791 = load i32* %j2789
  %_lhs2792 = load i32* %n_slot2775
  %bop2793 = icmp sle i32 %_lhs2791, %_lhs2792
  %_lhs2794 = load i32* %done2790
  %bop2795 = icmp eq i32 %_lhs2794, 0
  %bop2796 = and i1 %bop2793, %bop2795
  br i1 %bop2796, label %__body1006, label %__post1005

__fresh1018:
  br label %__body1006

__body1006:
  %_lhs2797 = load i32* %j2789
  %_lhs2798 = load i32* %n_slot2775
  %bop2799 = icmp slt i32 %_lhs2797, %_lhs2798
  %_lhs2800 = load i32* %j2789
  %array_dereferenced2801 = load { i32, [ 0 x i32 ] }** %a_slot2779
  %len_ptr2802 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2801, i32 0, i32 0
  %len2803 = load i32* %len_ptr2802
  call void @oat_array_bounds_check( i32 %len2803, i32 %_lhs2800 )
  %elt_ptr2804 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2801, i32 0, i32 1, i32 %_lhs2800
  %_lhs2805 = load i32* %elt_ptr2804
  %_lhs2806 = load i32* %j2789
  %bop2807 = add i32 %_lhs2806, 1
  %array_dereferenced2808 = load { i32, [ 0 x i32 ] }** %a_slot2779
  %len_ptr2809 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2808, i32 0, i32 0
  %len2810 = load i32* %len_ptr2809
  call void @oat_array_bounds_check( i32 %len2810, i32 %bop2807 )
  %elt_ptr2811 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2808, i32 0, i32 1, i32 %bop2807
  %_lhs2812 = load i32* %elt_ptr2811
  %bop2813 = icmp slt i32 %_lhs2805, %_lhs2812
  %bop2814 = and i1 %bop2799, %bop2813
  br i1 %bop2814, label %__then1010, label %__else1009

__fresh1019:
  br label %__then1010

__then1010:
  %_lhs2815 = load i32* %j2789
  %bop2816 = add i32 %_lhs2815, 1
  store i32 %bop2816, i32* %j2789
  br label %__merge1008

__fresh1020:
  br label %__else1009

__else1009:
  br label %__merge1008

__merge1008:
  %_lhs2817 = load i32* %j2789
  %array_dereferenced2818 = load { i32, [ 0 x i32 ] }** %a_slot2779
  %len_ptr2819 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2818, i32 0, i32 0
  %len2820 = load i32* %len_ptr2819
  call void @oat_array_bounds_check( i32 %len2820, i32 %_lhs2817 )
  %elt_ptr2821 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2818, i32 0, i32 1, i32 %_lhs2817
  %_lhs2822 = load i32* %elt_ptr2821
  %_lhs2823 = load i32* %j2789
  %bop2824 = ashr i32 %_lhs2823, 1
  %array_dereferenced2825 = load { i32, [ 0 x i32 ] }** %a_slot2779
  %len_ptr2826 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2825, i32 0, i32 0
  %len2827 = load i32* %len_ptr2826
  call void @oat_array_bounds_check( i32 %len2827, i32 %bop2824 )
  %elt_ptr2828 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2825, i32 0, i32 1, i32 %bop2824
  %_lhs2829 = load i32* %elt_ptr2828
  %bop2830 = icmp slt i32 %_lhs2822, %_lhs2829
  br i1 %bop2830, label %__then1013, label %__else1012

__fresh1021:
  br label %__then1013

__then1013:
  store i32 1, i32* %done2790
  br label %__merge1011

__fresh1022:
  br label %__else1012

__else1012:
  br label %__merge1011

__merge1011:
  %_lhs2831 = load i32* %done2790
  %bop2832 = icmp eq i32 %_lhs2831, 0
  br i1 %bop2832, label %__then1016, label %__else1015

__fresh1023:
  br label %__then1016

__then1016:
  %_lhs2833 = load i32* %j2789
  %bop2834 = ashr i32 %_lhs2833, 1
  %array_dereferenced2835 = load { i32, [ 0 x i32 ] }** %a_slot2779
  %len_ptr2836 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2835, i32 0, i32 0
  %len2837 = load i32* %len_ptr2836
  call void @oat_array_bounds_check( i32 %len2837, i32 %bop2834 )
  %elt_ptr2838 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2835, i32 0, i32 1, i32 %bop2834
  %_lhs2839 = load i32* %j2789
  %array_dereferenced2840 = load { i32, [ 0 x i32 ] }** %a_slot2779
  %len_ptr2841 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2840, i32 0, i32 0
  %len2842 = load i32* %len_ptr2841
  call void @oat_array_bounds_check( i32 %len2842, i32 %_lhs2839 )
  %elt_ptr2843 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2840, i32 0, i32 1, i32 %_lhs2839
  %_lhs2844 = load i32* %elt_ptr2843
  store i32 %_lhs2844, i32* %elt_ptr2838
  %_lhs2845 = load i32* %j2789
  %bop2846 = mul i32 %_lhs2845, 2
  store i32 %bop2846, i32* %j2789
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
  %_lhs2847 = load i32* %j2789
  %bop2848 = ashr i32 %_lhs2847, 1
  %array_dereferenced2849 = load { i32, [ 0 x i32 ] }** %a_slot2779
  %len_ptr2850 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2849, i32 0, i32 0
  %len2851 = load i32* %len_ptr2850
  call void @oat_array_bounds_check( i32 %len2851, i32 %bop2848 )
  %elt_ptr2852 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2849, i32 0, i32 1, i32 %bop2848
  %_lhs2853 = load i32* %v2786
  store i32 %_lhs2853, i32* %elt_ptr2852
  ret void
}


define void @restoreHup ({ i32, [ 0 x i32 ] }* %a2733, i32 %i2731){

__fresh1002:
  %a_slot2734 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2733, { i32, [ 0 x i32 ] }** %a_slot2734
  %i_slot2732 = alloca i32
  store i32 %i2731, i32* %i_slot2732
  %_lhs2735 = load i32* %i_slot2732
  %array_dereferenced2736 = load { i32, [ 0 x i32 ] }** %a_slot2734
  %len_ptr2737 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2736, i32 0, i32 0
  %len2738 = load i32* %len_ptr2737
  call void @oat_array_bounds_check( i32 %len2738, i32 %_lhs2735 )
  %elt_ptr2739 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2736, i32 0, i32 1, i32 %_lhs2735
  %_lhs2740 = load i32* %elt_ptr2739
  %v2741 = alloca i32
  store i32 %_lhs2740, i32* %v2741
  br label %__cond1001

__cond1001:
  %_lhs2742 = load i32* %i_slot2732
  %bop2743 = icmp sgt i32 %_lhs2742, 1
  %_lhs2744 = load i32* %i_slot2732
  %bop2745 = ashr i32 %_lhs2744, 1
  %array_dereferenced2746 = load { i32, [ 0 x i32 ] }** %a_slot2734
  %len_ptr2747 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2746, i32 0, i32 0
  %len2748 = load i32* %len_ptr2747
  call void @oat_array_bounds_check( i32 %len2748, i32 %bop2745 )
  %elt_ptr2749 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2746, i32 0, i32 1, i32 %bop2745
  %_lhs2750 = load i32* %elt_ptr2749
  %_lhs2751 = load i32* %v2741
  %bop2752 = icmp slt i32 %_lhs2750, %_lhs2751
  %bop2753 = and i1 %bop2743, %bop2752
  br i1 %bop2753, label %__body1000, label %__post999

__fresh1003:
  br label %__body1000

__body1000:
  %_lhs2754 = load i32* %i_slot2732
  %array_dereferenced2755 = load { i32, [ 0 x i32 ] }** %a_slot2734
  %len_ptr2756 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2755, i32 0, i32 0
  %len2757 = load i32* %len_ptr2756
  call void @oat_array_bounds_check( i32 %len2757, i32 %_lhs2754 )
  %elt_ptr2758 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2755, i32 0, i32 1, i32 %_lhs2754
  %_lhs2759 = load i32* %i_slot2732
  %bop2760 = ashr i32 %_lhs2759, 1
  %array_dereferenced2761 = load { i32, [ 0 x i32 ] }** %a_slot2734
  %len_ptr2762 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2761, i32 0, i32 0
  %len2763 = load i32* %len_ptr2762
  call void @oat_array_bounds_check( i32 %len2763, i32 %bop2760 )
  %elt_ptr2764 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2761, i32 0, i32 1, i32 %bop2760
  %_lhs2765 = load i32* %elt_ptr2764
  store i32 %_lhs2765, i32* %elt_ptr2758
  %_lhs2766 = load i32* %i_slot2732
  %bop2767 = ashr i32 %_lhs2766, 1
  store i32 %bop2767, i32* %i_slot2732
  br label %__cond1001

__fresh1004:
  br label %__post999

__post999:
  %_lhs2768 = load i32* %i_slot2732
  %array_dereferenced2769 = load { i32, [ 0 x i32 ] }** %a_slot2734
  %len_ptr2770 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2769, i32 0, i32 0
  %len2771 = load i32* %len_ptr2770
  call void @oat_array_bounds_check( i32 %len2771, i32 %_lhs2768 )
  %elt_ptr2772 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2769, i32 0, i32 1, i32 %_lhs2768
  %_lhs2773 = load i32* %v2741
  store i32 %_lhs2773, i32* %elt_ptr2772
  ret void
}


define i32 @program (i32 %argc2628, { i32, [ 0 x i8* ] }* %argv2626){

__fresh986:
  %argc_slot2629 = alloca i32
  store i32 %argc2628, i32* %argc_slot2629
  %argv_slot2627 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2626, { i32, [ 0 x i8* ] }** %argv_slot2627
  %array_ptr2631 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2632 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2631 to { i32, [ 0 x i32 ] }* 
  %i2637 = alloca i32
  store i32 1, i32* %i2637
  %i2630 = load i32* %i2637
  br label %__check972

__fresh987:
  br label %__check972

__check972:
  br label %__end971

__fresh988:
  %cmp_op2635 = icmp slt i32 %i2630, 9
  br i32 %cmp_op2635, label %__body973, label %__end971

__fresh989:
  br label %__body973

__body973:
  %elem_ptr2634 = getelementptr { i32, [ 0 x i32 ] }* %array2632, i32 0, i32 1, i32 %i2630
  store i32 0, i32* %elem_ptr2634
  %index_op2636 = add i32 %i2630, 1
  br label %__check972

__fresh990:
  br label %__end971

__end971:
  %array_ptr2633 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2632, { i32, [ 0 x i32 ] }** %array_ptr2633
  %a2639 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }** %array_ptr2633, { i32, [ 0 x i32 ] }** %a2639
  %i2640 = alloca i32
  store i32 0, i32* %i2640
  %j2641 = alloca i32
  store i32 0, i32* %j2641
  %k2642 = alloca i32
  store i32 0, i32* %k2642
  %r2643 = alloca i32
  store i32 0, i32* %r2643
  %array_dereferenced2644 = load { i32, [ 0 x i32 ] }** %a2639
  %len_ptr2645 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2644, i32 0, i32 0
  %len2646 = load i32* %len_ptr2645
  call void @oat_array_bounds_check( i32 %len2646, i32 0 )
  %elt_ptr2647 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2644, i32 0, i32 1, i32 0
  %_lhs2648 = load i32* %elt_ptr2647
  %check2649 = alloca i32
  store i32 %_lhs2648, i32* %check2649
  %array_dereferenced2650 = load { i32, [ 0 x i32 ] }** %a2639
  %len_ptr2651 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2650, i32 0, i32 0
  %len2652 = load i32* %len_ptr2651
  call void @oat_array_bounds_check( i32 %len2652, i32 0 )
  %elt_ptr2653 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2650, i32 0, i32 1, i32 0
  %array_dereferenced2654 = load { i32, [ 0 x i32 ] }** @b2624
  %len_ptr2655 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2654, i32 0, i32 0
  %len2656 = load i32* %len_ptr2655
  call void @oat_array_bounds_check( i32 %len2656, i32 0 )
  %elt_ptr2657 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2654, i32 0, i32 1, i32 0
  %_lhs2658 = load i32* %elt_ptr2657
  store i32 %_lhs2658, i32* %elt_ptr2653
  store i32 1, i32* %i2640
  br label %__cond976

__cond976:
  %_lhs2659 = load i32* %i2640
  %_lhs2660 = load i32* @n2625
  %bop2661 = icmp sle i32 %_lhs2659, %_lhs2660
  br i1 %bop2661, label %__body975, label %__post974

__fresh991:
  br label %__body975

__body975:
  %_lhs2662 = load i32* %i2640
  %array_dereferenced2663 = load { i32, [ 0 x i32 ] }** %a2639
  %len_ptr2664 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2663, i32 0, i32 0
  %len2665 = load i32* %len_ptr2664
  call void @oat_array_bounds_check( i32 %len2665, i32 %_lhs2662 )
  %elt_ptr2666 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2663, i32 0, i32 1, i32 %_lhs2662
  %_lhs2667 = load i32* %i2640
  %array_dereferenced2668 = load { i32, [ 0 x i32 ] }** @b2624
  %len_ptr2669 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2668, i32 0, i32 0
  %len2670 = load i32* %len_ptr2669
  call void @oat_array_bounds_check( i32 %len2670, i32 %_lhs2667 )
  %elt_ptr2671 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2668, i32 0, i32 1, i32 %_lhs2667
  %_lhs2672 = load i32* %elt_ptr2671
  %unop2673 = sub i32 0, %_lhs2672
  store i32 %unop2673, i32* %elt_ptr2666
  %_lhs2675 = load i32* %i2640
  %_lhs2674 = load { i32, [ 0 x i32 ] }** %a2639
  call void @restoreHup( { i32, [ 0 x i32 ] }* %_lhs2674, i32 %_lhs2675 )
  %_lhs2676 = load i32* %i2640
  %bop2677 = add i32 %_lhs2676, 1
  store i32 %bop2677, i32* %i2640
  br label %__cond976

__fresh992:
  br label %__post974

__post974:
  %_lhs2678 = load i32* @n2625
  store i32 %_lhs2678, i32* %j2641
  store i32 1, i32* %i2640
  br label %__cond979

__cond979:
  %_lhs2679 = load i32* %i2640
  %_lhs2680 = load i32* %j2641
  %bop2681 = icmp sle i32 %_lhs2679, %_lhs2680
  br i1 %bop2681, label %__body978, label %__post977

__fresh993:
  br label %__body978

__body978:
  %temp2682 = alloca i32
  store i32 0, i32* %temp2682
  %array_dereferenced2683 = load { i32, [ 0 x i32 ] }** %a2639
  %len_ptr2684 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2683, i32 0, i32 0
  %len2685 = load i32* %len_ptr2684
  call void @oat_array_bounds_check( i32 %len2685, i32 1 )
  %elt_ptr2686 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2683, i32 0, i32 1, i32 1
  %_lhs2687 = load i32* %elt_ptr2686
  store i32 %_lhs2687, i32* %temp2682
  %array_dereferenced2688 = load { i32, [ 0 x i32 ] }** %a2639
  %len_ptr2689 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2688, i32 0, i32 0
  %len2690 = load i32* %len_ptr2689
  call void @oat_array_bounds_check( i32 %len2690, i32 1 )
  %elt_ptr2691 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2688, i32 0, i32 1, i32 1
  %_lhs2692 = load i32* @n2625
  %array_dereferenced2693 = load { i32, [ 0 x i32 ] }** %a2639
  %len_ptr2694 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2693, i32 0, i32 0
  %len2695 = load i32* %len_ptr2694
  call void @oat_array_bounds_check( i32 %len2695, i32 %_lhs2692 )
  %elt_ptr2696 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2693, i32 0, i32 1, i32 %_lhs2692
  %_lhs2697 = load i32* %elt_ptr2696
  store i32 %_lhs2697, i32* %elt_ptr2691
  %_lhs2698 = load i32* @n2625
  %array_dereferenced2699 = load { i32, [ 0 x i32 ] }** %a2639
  %len_ptr2700 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2699, i32 0, i32 0
  %len2701 = load i32* %len_ptr2700
  call void @oat_array_bounds_check( i32 %len2701, i32 %_lhs2698 )
  %elt_ptr2702 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2699, i32 0, i32 1, i32 %_lhs2698
  %_lhs2703 = load i32* %temp2682
  store i32 %_lhs2703, i32* %elt_ptr2702
  %_lhs2704 = load i32* @n2625
  %bop2705 = sub i32 %_lhs2704, 1
  store i32 %bop2705, i32* @n2625
  %_lhs2707 = load i32* @n2625
  %_lhs2706 = load { i32, [ 0 x i32 ] }** %a2639
  call void @restoreHdown( { i32, [ 0 x i32 ] }* %_lhs2706, i32 1, i32 %_lhs2707 )
  %_lhs2708 = load i32* %i2640
  %bop2709 = add i32 %_lhs2708, 1
  store i32 %bop2709, i32* %i2640
  br label %__cond979

__fresh994:
  br label %__post977

__post977:
  %_lhs2710 = load i32* %j2641
  store i32 %_lhs2710, i32* @n2625
  store i32 1, i32* %i2640
  br label %__cond982

__cond982:
  %_lhs2711 = load i32* %i2640
  %_lhs2712 = load i32* @n2625
  %bop2713 = icmp sle i32 %_lhs2711, %_lhs2712
  br i1 %bop2713, label %__body981, label %__post980

__fresh995:
  br label %__body981

__body981:
  %_lhs2714 = load i32* %i2640
  %array_dereferenced2715 = load { i32, [ 0 x i32 ] }** %a2639
  %len_ptr2716 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2715, i32 0, i32 0
  %len2717 = load i32* %len_ptr2716
  call void @oat_array_bounds_check( i32 %len2717, i32 %_lhs2714 )
  %elt_ptr2718 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2715, i32 0, i32 1, i32 %_lhs2714
  %_lhs2719 = load i32* %elt_ptr2718
  %_lhs2720 = load i32* %check2649
  %bop2721 = icmp sge i32 %_lhs2719, %_lhs2720
  br i1 %bop2721, label %__then985, label %__else984

__fresh996:
  br label %__then985

__then985:
  %_lhs2722 = load i32* %i2640
  %array_dereferenced2723 = load { i32, [ 0 x i32 ] }** %a2639
  %len_ptr2724 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2723, i32 0, i32 0
  %len2725 = load i32* %len_ptr2724
  call void @oat_array_bounds_check( i32 %len2725, i32 %_lhs2722 )
  %elt_ptr2726 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2723, i32 0, i32 1, i32 %_lhs2722
  %_lhs2727 = load i32* %elt_ptr2726
  store i32 %_lhs2727, i32* %check2649
  br label %__merge983

__fresh997:
  br label %__else984

__else984:
  store i32 1, i32* %r2643
  br label %__merge983

__merge983:
  %_lhs2728 = load i32* %i2640
  %bop2729 = add i32 %_lhs2728, 1
  store i32 %bop2729, i32* %i2640
  br label %__cond982

__fresh998:
  br label %__post980

__post980:
  %_lhs2730 = load i32* %r2643
  ret i32 %_lhs2730
}


define void @b2624.init (){

__fresh970:
  %array_ptr2605 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2606 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2605 to { i32, [ 0 x i32 ] }* 
  %index_ptr2607 = getelementptr { i32, [ 0 x i32 ] }* %array2606, i32 0, i32 1, i32 0
  store i32 108, i32* %index_ptr2607
  %unop2608 = sub i32 0, 110
  %index_ptr2609 = getelementptr { i32, [ 0 x i32 ] }* %array2606, i32 0, i32 1, i32 1
  store i32 %unop2608, i32* %index_ptr2609
  %unop2610 = sub i32 0, 111
  %index_ptr2611 = getelementptr { i32, [ 0 x i32 ] }* %array2606, i32 0, i32 1, i32 2
  store i32 %unop2610, i32* %index_ptr2611
  %unop2612 = sub i32 0, 109
  %index_ptr2613 = getelementptr { i32, [ 0 x i32 ] }* %array2606, i32 0, i32 1, i32 3
  store i32 %unop2612, i32* %index_ptr2613
  %unop2614 = sub i32 0, 117
  %index_ptr2615 = getelementptr { i32, [ 0 x i32 ] }* %array2606, i32 0, i32 1, i32 4
  store i32 %unop2614, i32* %index_ptr2615
  %unop2616 = sub i32 0, 119
  %index_ptr2617 = getelementptr { i32, [ 0 x i32 ] }* %array2606, i32 0, i32 1, i32 5
  store i32 %unop2616, i32* %index_ptr2617
  %unop2618 = sub i32 0, 113
  %index_ptr2619 = getelementptr { i32, [ 0 x i32 ] }* %array2606, i32 0, i32 1, i32 6
  store i32 %unop2618, i32* %index_ptr2619
  %unop2620 = sub i32 0, 120
  %index_ptr2621 = getelementptr { i32, [ 0 x i32 ] }* %array2606, i32 0, i32 1, i32 7
  store i32 %unop2620, i32* %index_ptr2621
  %unop2622 = sub i32 0, 108
  %index_ptr2623 = getelementptr { i32, [ 0 x i32 ] }* %array2606, i32 0, i32 1, i32 8
  store i32 %unop2622, i32* %index_ptr2623
  store { i32, [ 0 x i32 ] }* %array2606, { i32, [ 0 x i32 ] }** @b2624
  ret void
}


