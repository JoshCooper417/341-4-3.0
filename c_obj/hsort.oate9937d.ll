declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@n2638 = global i32 8, align 4
@b2637 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by b2637.init
define void @oat_init (){

__fresh573:
  call void @b2637.init(  )
  ret void
}


define void @restoreHdown ({ i32, [ 0 x i32 ] }* %a2789, i32 %i2787, i32 %n2785){

__fresh564:
  %a_slot2790 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2789, { i32, [ 0 x i32 ] }** %a_slot2790
  %i_slot2788 = alloca i32
  store i32 %i2787, i32* %i_slot2788
  %n_slot2786 = alloca i32
  store i32 %n2785, i32* %n_slot2786
  %_lhs2791 = load i32* %i_slot2788
  %len_ptr2792 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2790, i32 0, i32 0
  %len2793 = load i32* %len_ptr2792
  call void @oat_array_bounds_check( i32 %len2793, i32 %_lhs2791 )
  %array_dereferenced2794 = load { i32, [ 0 x i32 ] }** %a_slot2790
  %elt_ptr2795 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2794, i32 0, i32 1, i32 %_lhs2791
  %_lhs2796 = load i32* %elt_ptr2795
  %v2797 = alloca i32
  store i32 %_lhs2796, i32* %v2797
  %_lhs2798 = load i32* %i_slot2788
  %bop2799 = mul i32 %_lhs2798, 2
  %j2800 = alloca i32
  store i32 %bop2799, i32* %j2800
  %done2801 = alloca i32
  store i32 0, i32* %done2801
  br label %__cond554

__cond554:
  %_lhs2802 = load i32* %j2800
  %_lhs2803 = load i32* %n_slot2786
  %bop2804 = icmp sle i32 %_lhs2802, %_lhs2803
  %_lhs2805 = load i32* %done2801
  %bop2806 = icmp eq i32 %_lhs2805, 0
  %bop2807 = and i1 %bop2804, %bop2806
  br i1 %bop2807, label %__body553, label %__post552

__fresh565:
  br label %__body553

__body553:
  %_lhs2808 = load i32* %j2800
  %_lhs2809 = load i32* %n_slot2786
  %bop2810 = icmp slt i32 %_lhs2808, %_lhs2809
  %_lhs2811 = load i32* %j2800
  %len_ptr2812 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2790, i32 0, i32 0
  %len2813 = load i32* %len_ptr2812
  call void @oat_array_bounds_check( i32 %len2813, i32 %_lhs2811 )
  %array_dereferenced2814 = load { i32, [ 0 x i32 ] }** %a_slot2790
  %elt_ptr2815 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2814, i32 0, i32 1, i32 %_lhs2811
  %_lhs2816 = load i32* %elt_ptr2815
  %_lhs2817 = load i32* %j2800
  %bop2818 = add i32 %_lhs2817, 1
  %len_ptr2819 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2790, i32 0, i32 0
  %len2820 = load i32* %len_ptr2819
  call void @oat_array_bounds_check( i32 %len2820, i32 %bop2818 )
  %array_dereferenced2821 = load { i32, [ 0 x i32 ] }** %a_slot2790
  %elt_ptr2822 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2821, i32 0, i32 1, i32 %bop2818
  %_lhs2823 = load i32* %elt_ptr2822
  %bop2824 = icmp slt i32 %_lhs2816, %_lhs2823
  %bop2825 = and i1 %bop2810, %bop2824
  br i1 %bop2825, label %__then557, label %__else556

__fresh566:
  br label %__then557

__then557:
  %_lhs2826 = load i32* %j2800
  %bop2827 = add i32 %_lhs2826, 1
  store i32 %bop2827, i32* %j2800
  br label %__merge555

__fresh567:
  br label %__else556

__else556:
  br label %__merge555

__merge555:
  %_lhs2828 = load i32* %j2800
  %len_ptr2829 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2790, i32 0, i32 0
  %len2830 = load i32* %len_ptr2829
  call void @oat_array_bounds_check( i32 %len2830, i32 %_lhs2828 )
  %array_dereferenced2831 = load { i32, [ 0 x i32 ] }** %a_slot2790
  %elt_ptr2832 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2831, i32 0, i32 1, i32 %_lhs2828
  %_lhs2833 = load i32* %elt_ptr2832
  %_lhs2834 = load i32* %j2800
  %bop2835 = ashr i32 %_lhs2834, 1
  %len_ptr2836 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2790, i32 0, i32 0
  %len2837 = load i32* %len_ptr2836
  call void @oat_array_bounds_check( i32 %len2837, i32 %bop2835 )
  %array_dereferenced2838 = load { i32, [ 0 x i32 ] }** %a_slot2790
  %elt_ptr2839 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2838, i32 0, i32 1, i32 %bop2835
  %_lhs2840 = load i32* %elt_ptr2839
  %bop2841 = icmp slt i32 %_lhs2833, %_lhs2840
  br i1 %bop2841, label %__then560, label %__else559

__fresh568:
  br label %__then560

__then560:
  store i32 1, i32* %done2801
  br label %__merge558

__fresh569:
  br label %__else559

__else559:
  br label %__merge558

__merge558:
  %_lhs2842 = load i32* %done2801
  %bop2843 = icmp eq i32 %_lhs2842, 0
  br i1 %bop2843, label %__then563, label %__else562

__fresh570:
  br label %__then563

__then563:
  %_lhs2844 = load i32* %j2800
  %bop2845 = ashr i32 %_lhs2844, 1
  %len_ptr2846 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2790, i32 0, i32 0
  %len2847 = load i32* %len_ptr2846
  call void @oat_array_bounds_check( i32 %len2847, i32 %bop2845 )
  %array_dereferenced2848 = load { i32, [ 0 x i32 ] }** %a_slot2790
  %elt_ptr2849 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2848, i32 0, i32 1, i32 %bop2845
  %_lhs2850 = load i32* %j2800
  %len_ptr2851 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2790, i32 0, i32 0
  %len2852 = load i32* %len_ptr2851
  call void @oat_array_bounds_check( i32 %len2852, i32 %_lhs2850 )
  %array_dereferenced2853 = load { i32, [ 0 x i32 ] }** %a_slot2790
  %elt_ptr2854 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2853, i32 0, i32 1, i32 %_lhs2850
  %_lhs2855 = load i32* %elt_ptr2854
  store i32 %_lhs2855, i32* %elt_ptr2849
  %_lhs2856 = load i32* %j2800
  %bop2857 = mul i32 %_lhs2856, 2
  store i32 %bop2857, i32* %j2800
  br label %__merge561

__fresh571:
  br label %__else562

__else562:
  br label %__merge561

__merge561:
  br label %__cond554

__fresh572:
  br label %__post552

__post552:
  %_lhs2858 = load i32* %j2800
  %bop2859 = ashr i32 %_lhs2858, 1
  %len_ptr2860 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2790, i32 0, i32 0
  %len2861 = load i32* %len_ptr2860
  call void @oat_array_bounds_check( i32 %len2861, i32 %bop2859 )
  %array_dereferenced2862 = load { i32, [ 0 x i32 ] }** %a_slot2790
  %elt_ptr2863 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2862, i32 0, i32 1, i32 %bop2859
  %_lhs2864 = load i32* %v2797
  store i32 %_lhs2864, i32* %elt_ptr2863
  ret void
}


define void @restoreHup ({ i32, [ 0 x i32 ] }* %a2744, i32 %i2742){

__fresh549:
  %a_slot2745 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2744, { i32, [ 0 x i32 ] }** %a_slot2745
  %i_slot2743 = alloca i32
  store i32 %i2742, i32* %i_slot2743
  %_lhs2746 = load i32* %i_slot2743
  %len_ptr2747 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2745, i32 0, i32 0
  %len2748 = load i32* %len_ptr2747
  call void @oat_array_bounds_check( i32 %len2748, i32 %_lhs2746 )
  %array_dereferenced2749 = load { i32, [ 0 x i32 ] }** %a_slot2745
  %elt_ptr2750 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2749, i32 0, i32 1, i32 %_lhs2746
  %_lhs2751 = load i32* %elt_ptr2750
  %v2752 = alloca i32
  store i32 %_lhs2751, i32* %v2752
  br label %__cond548

__cond548:
  %_lhs2753 = load i32* %i_slot2743
  %bop2754 = icmp sgt i32 %_lhs2753, 1
  %_lhs2755 = load i32* %i_slot2743
  %bop2756 = ashr i32 %_lhs2755, 1
  %len_ptr2757 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2745, i32 0, i32 0
  %len2758 = load i32* %len_ptr2757
  call void @oat_array_bounds_check( i32 %len2758, i32 %bop2756 )
  %array_dereferenced2759 = load { i32, [ 0 x i32 ] }** %a_slot2745
  %elt_ptr2760 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2759, i32 0, i32 1, i32 %bop2756
  %_lhs2761 = load i32* %elt_ptr2760
  %_lhs2762 = load i32* %v2752
  %bop2763 = icmp slt i32 %_lhs2761, %_lhs2762
  %bop2764 = and i1 %bop2754, %bop2763
  br i1 %bop2764, label %__body547, label %__post546

__fresh550:
  br label %__body547

__body547:
  %_lhs2765 = load i32* %i_slot2743
  %len_ptr2766 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2745, i32 0, i32 0
  %len2767 = load i32* %len_ptr2766
  call void @oat_array_bounds_check( i32 %len2767, i32 %_lhs2765 )
  %array_dereferenced2768 = load { i32, [ 0 x i32 ] }** %a_slot2745
  %elt_ptr2769 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2768