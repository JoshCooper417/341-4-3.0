declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@n2637 = global i32 8, align 4
@b2636 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by b2636.init
define void @oat_init (){

__fresh511:
  call void @b2636.init(  )
  ret void
}


define void @restoreHdown ({ i32, [ 0 x i32 ] }* %a2788, i32 %i2786, i32 %n2784){

__fresh502:
  %a_slot2789 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2788, { i32, [ 0 x i32 ] }** %a_slot2789
  %i_slot2787 = alloca i32
  store i32 %i2786, i32* %i_slot2787
  %n_slot2785 = alloca i32
  store i32 %n2784, i32* %n_slot2785
  %_lhs2790 = load i32* %i_slot2787
  %len_ptr2791 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2789, i32 0, i32 0
  %len2792 = load i32* %len_ptr2791
  call void @oat_array_bounds_check( i32 %len2792, i32 %_lhs2790 )
  %array_dereferenced2793 = load { i32, [ 0 x i32 ] }** %a_slot2789
  %elt_ptr2794 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2793, i32 0, i32 1, i32 %_lhs2790
  %_lhs2795 = load i32* %elt_ptr2794
  %v2796 = alloca i32
  store i32 %_lhs2795, i32* %v2796
  %_lhs2797 = load i32* %i_slot2787
  %bop2798 = mul i32 %_lhs2797, 2
  %j2799 = alloca i32
  store i32 %bop2798, i32* %j2799
  %done2800 = alloca i32
  store i32 0, i32* %done2800
  br label %__cond492

__cond492:
  %_lhs2801 = load i32* %j2799
  %_lhs2802 = load i32* %n_slot2785
  %bop2803 = icmp sle i32 %_lhs2801, %_lhs2802
  %_lhs2804 = load i32* %done2800
  %bop2805 = icmp eq i32 %_lhs2804, 0
  %bop2806 = and i1 %bop2803, %bop2805
  br i1 %bop2806, label %__body491, label %__post490

__fresh503:
  br label %__body491

__body491:
  %_lhs2807 = load i32* %j2799
  %_lhs2808 = load i32* %n_slot2785
  %bop2809 = icmp slt i32 %_lhs2807, %_lhs2808
  %_lhs2810 = load i32* %j2799
  %len_ptr2811 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2789, i32 0, i32 0
  %len2812 = load i32* %len_ptr2811
  call void @oat_array_bounds_check( i32 %len2812, i32 %_lhs2810 )
  %array_dereferenced2813 = load { i32, [ 0 x i32 ] }** %a_slot2789
  %elt_ptr2814 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2813, i32 0, i32 1, i32 %_lhs2810
  %_lhs2815 = load i32* %elt_ptr2814
  %_lhs2816 = load i32* %j2799
  %bop2817 = add i32 %_lhs2816, 1
  %len_ptr2818 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2789, i32 0, i32 0
  %len2819 = load i32* %len_ptr2818
  call void @oat_array_bounds_check( i32 %len2819, i32 %bop2817 )
  %array_dereferenced2820 = load { i32, [ 0 x i32 ] }** %a_slot2789
  %elt_ptr2821 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2820, i32 0, i32 1, i32 %bop2817
  %_lhs2822 = load i32* %elt_ptr2821
  %bop2823 = icmp slt i32 %_lhs2815, %_lhs2822
  %bop2824 = and i1 %bop2809, %bop2823
  br i1 %bop2824, label %__then495, label %__else494

__fresh504:
  br label %__then495

__then495:
  %_lhs2825 = load i32* %j2799
  %bop2826 = add i32 %_lhs2825, 1
  store i32 %bop2826, i32* %j2799
  br label %__merge493

__fresh505:
  br label %__else494

__else494:
  br label %__merge493

__merge493:
  %_lhs2827 = load i32* %j2799
  %len_ptr2828 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2789, i32 0, i32 0
  %len2829 = load i32* %len_ptr2828
  call void @oat_array_bounds_check( i32 %len2829, i32 %_lhs2827 )
  %array_dereferenced2830 = load { i32, [ 0 x i32 ] }** %a_slot2789
  %elt_ptr2831 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2830, i32 0, i32 1, i32 %_lhs2827
  %_lhs2832 = load i32* %elt_ptr2831
  %_lhs2833 = load i32* %j2799
  %bop2834 = ashr i32 %_lhs2833, 1
  %len_ptr2835 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2789, i32 0, i32 0
  %len2836 = load i32* %len_ptr2835
  call void @oat_array_bounds_check( i32 %len2836, i32 %bop2834 )
  %array_dereferenced2837 = load { i32, [ 0 x i32 ] }** %a_slot2789
  %elt_ptr2838 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2837, i32 0, i32 1, i32 %bop2834
  %_lhs2839 = load i32* %elt_ptr2838
  %bop2840 = icmp slt i32 %_lhs2832, %_lhs2839
  br i1 %bop2840, label %__then498, label %__else497

__fresh506:
  br label %__then498

__then498:
  store i32 1, i32* %done2800
  br label %__merge496

__fresh507:
  br label %__else497

__else497:
  br label %__merge496

__merge496:
  %_lhs2841 = load i32* %done2800
  %bop2842 = icmp eq i32 %_lhs2841, 0
  br i1 %bop2842, label %__then501, label %__else500

__fresh508:
  br label %__then501

__then501:
  %_lhs2843 = load i32* %j2799
  %bop2844 = ashr i32 %_lhs2843, 1
  %len_ptr2845 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2789, i32 0, i32 0
  %len2846 = load i32* %len_ptr2845
  call void @oat_array_bounds_check( i32 %len2846, i32 %bop2844 )
  %array_dereferenced2847 = load { i32, [ 0 x i32 ] }** %a_slot2789
  %elt_ptr2848 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2847, i32 0, i32 1, i32 %bop2844
  %_lhs2849 = load i32* %j2799
  %len_ptr2850 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2789, i32 0, i32 0
  %len2851 = load i32* %len_ptr2850
  call void @oat_array_bounds_check( i32 %len2851, i32 %_lhs2849 )
  %array_dereferenced2852 = load { i32, [ 0 x i32 ] }** %a_slot2789
  %elt_ptr2853 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2852, i32 0, i32 1, i32 %_lhs2849
  %_lhs2854 = load i32* %elt_ptr2853
  store i32 %_lhs2854, i32* %elt_ptr2848
  %_lhs2855 = load i32* %j2799
  %bop2856 = mul i32 %_lhs2855, 2
  store i32 %bop2856, i32* %j2799
  br label %__merge499

__fresh509:
  br label %__else500

__else500:
  br label %__merge499

__merge499:
  br label %__cond492

__fresh510:
  br label %__post490

__post490:
  %_lhs2857 = load i32* %j2799
  %bop2858 = ashr i32 %_lhs2857, 1
  %len_ptr2859 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2789, i32 0, i32 0
  %len2860 = load i32* %len_ptr2859
  call void @oat_array_bounds_check( i32 %len2860, i32 %bop2858 )
  %array_dereferenced2861 = load { i32, [ 0 x i32 ] }** %a_slot2789
  %elt_ptr2862 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2861, i32 0, i32 1, i32 %bop2858
  %_lhs2863 = load i32* %v2796
  store i32 %_lhs2863, i32* %elt_ptr2862
  ret void
}


define void @restoreHup ({ i32, [ 0 x i32 ] }* %a2743, i32 %i2741){

__fresh487:
  %a_slot2744 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2743, { i32, [ 0 x i32 ] }** %a_slot2744
  %i_slot2742 = alloca i32
  store i32 %i2741, i32* %i_slot2742
  %_lhs2745 = load i32* %i_slot2742
  %len_ptr2746 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2744, i32 0, i32 0
  %len2747 = load i32* %len_ptr2746
  call void @oat_array_bounds_check( i32 %len2747, i32 %_lhs2745 )
  %array_dereferenced2748 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %elt_ptr2749 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2748, i32 0, i32 1, i32 %_lhs2745
  %_lhs2750 = load i32* %elt_ptr2749
  %v2751 = alloca i32
  store i32 %_lhs2750, i32* %v2751
  br label %__cond486

__cond486:
  %_lhs2752 = load i32* %i_slot2742
  %bop2753 = icmp sgt i32 %_lhs2752, 1
  %_lhs2754 = load i32* %i_slot2742
  %bop2755 = ashr i32 %_lhs2754, 1
  %len_ptr2756 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2744, i32 0, i32 0
  %len2757 = load i32* %len_ptr2756
  call void @oat_array_bounds_check( i32 %len2757, i32 %bop2755 )
  %array_dereferenced2758 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %elt_ptr2759 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2758, i32 0, i32 1, i32 %bop2755
  %_lhs2760 = load i32* %elt_ptr2759
  %_lhs2761 = load i32* %v2751
  %bop2762 = icmp slt i32 %_lhs2760, %_lhs2761
  %bop2763 = and i1 %bop2753, %bop2762
  br i1 %bop2763, label %__body485, label %__post484

__fresh488:
  br label %__body485

__body485:
  %_lhs2764 = load i32* %i_slot2742
  %len_ptr2765 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2744, i32 0, i32 0
  %len2766 = load i32* %len_ptr2765
  call void @oat_array_bounds_check( i32 %len2766, i32 %_lhs2764 )
  %array_dereferenced2767 = load { i32, [ 0 x i32 ] }** %a_slot2744
  %elt_ptr2768 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2767