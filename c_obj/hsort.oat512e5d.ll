declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@n2608 = global i32 8, align 4
@b2607 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by b2607.init
define void @oat_init (){

__fresh573:
  call void @b2607.init(  )
  ret void
}


define void @restoreHdown ({ i32, [ 0 x i32 ] }* %a2758, i32 %i2756, i32 %n2754){

__fresh564:
  %a_slot2759 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2758, { i32, [ 0 x i32 ] }** %a_slot2759
  %i_slot2757 = alloca i32
  store i32 %i2756, i32* %i_slot2757
  %n_slot2755 = alloca i32
  store i32 %n2754, i32* %n_slot2755
  %_lhs2760 = load i32* %i_slot2757
  %len_ptr2761 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2759, i32 0, i32 0
  %len2762 = load i32* %len_ptr2761
  call void @oat_array_bounds_check( i32 %len2762, i32 %_lhs2760 )
  %array_dereferenced2763 = load { i32, [ 0 x i32 ] }** %a_slot2759
  %elt_ptr2764 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2763, i32 0, i32 1, i32 %_lhs2760
  %_lhs2765 = load i32* %elt_ptr2764
  %v2766 = alloca i32
  store i32 %_lhs2765, i32* %v2766
  %_lhs2767 = load i32* %i_slot2757
  %bop2768 = mul i32 %_lhs2767, 2
  %j2769 = alloca i32
  store i32 %bop2768, i32* %j2769
  %done2770 = alloca i32
  store i32 0, i32* %done2770
  br label %__cond554

__cond554:
  %_lhs2771 = load i32* %j2769
  %_lhs2772 = load i32* %n_slot2755
  %bop2773 = icmp sle i32 %_lhs2771, %_lhs2772
  %_lhs2774 = load i32* %done2770
  %bop2775 = icmp eq i32 %_lhs2774, 0
  %bop2776 = and i1 %bop2773, %bop2775
  br i1 %bop2776, label %__body553, label %__post552

__fresh565:
  br label %__body553

__body553:
  %_lhs2777 = load i32* %j2769
  %_lhs2778 = load i32* %n_slot2755
  %bop2779 = icmp slt i32 %_lhs2777, %_lhs2778
  %_lhs2780 = load i32* %j2769
  %len_ptr2781 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2759, i32 0, i32 0
  %len2782 = load i32* %len_ptr2781
  call void @oat_array_bounds_check( i32 %len2782, i32 %_lhs2780 )
  %array_dereferenced2783 = load { i32, [ 0 x i32 ] }** %a_slot2759
  %elt_ptr2784 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2783, i32 0, i32 1, i32 %_lhs2780
  %_lhs2785 = load i32* %elt_ptr2784
  %_lhs2786 = load i32* %j2769
  %bop2787 = add i32 %_lhs2786, 1
  %len_ptr2788 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2759, i32 0, i32 0
  %len2789 = load i32* %len_ptr2788
  call void @oat_array_bounds_check( i32 %len2789, i32 %bop2787 )
  %array_dereferenced2790 = load { i32, [ 0 x i32 ] }** %a_slot2759
  %elt_ptr2791 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2790, i32 0, i32 1, i32 %bop2787
  %_lhs2792 = load i32* %elt_ptr2791
  %bop2793 = icmp slt i32 %_lhs2785, %_lhs2792
  %bop2794 = and i1 %bop2779, %bop2793
  br i1 %bop2794, label %__then557, label %__else556

__fresh566:
  br label %__then557

__then557:
  %_lhs2795 = load i32* %j2769
  %bop2796 = add i32 %_lhs2795, 1
  store i32 %bop2796, i32* %j2769
  br label %__merge555

__fresh567:
  br label %__else556

__else556:
  br label %__merge555

__merge555:
  %_lhs2797 = load i32* %j2769
  %len_ptr2798 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2759, i32 0, i32 0
  %len2799 = load i32* %len_ptr2798
  call void @oat_array_bounds_check( i32 %len2799, i32 %_lhs2797 )
  %array_dereferenced2800 = load { i32, [ 0 x i32 ] }** %a_slot2759
  %elt_ptr2801 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2800, i32 0, i32 1, i32 %_lhs2797
  %_lhs2802 = load i32* %elt_ptr2801
  %_lhs2803 = load i32* %j2769
  %bop2804 = ashr i32 %_lhs2803, 1
  %len_ptr2805 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2759, i32 0, i32 0
  %len2806 = load i32* %len_ptr2805
  call void @oat_array_bounds_check( i32 %len2806, i32 %bop2804 )
  %array_dereferenced2807 = load { i32, [ 0 x i32 ] }** %a_slot2759
  %elt_ptr2808 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2807, i32 0, i32 1, i32 %bop2804
  %_lhs2809 = load i32* %elt_ptr2808
  %bop2810 = icmp slt i32 %_lhs2802, %_lhs2809
  br i1 %bop2810, label %__then560, label %__else559

__fresh568:
  br label %__then560

__then560:
  store i32 1, i32* %done2770
  br label %__merge558

__fresh569:
  br label %__else559

__else559:
  br label %__merge558

__merge558:
  %_lhs2811 = load i32* %done2770
  %bop2812 = icmp eq i32 %_lhs2811, 0
  br i1 %bop2812, label %__then563, label %__else562

__fresh570:
  br label %__then563

__then563:
  %_lhs2813 = load i32* %j2769
  %bop2814 = ashr i32 %_lhs2813, 1
  %len_ptr2815 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2759, i32 0, i32 0
  %len2816 = load i32* %len_ptr2815
  call void @oat_array_bounds_check( i32 %len2816, i32 %bop2814 )
  %array_dereferenced2817 = load { i32, [ 0 x i32 ] }** %a_slot2759
  %elt_ptr2818 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2817, i32 0, i32 1, i32 %bop2814
  %_lhs2819 = load i32* %j2769
  %len_ptr2820 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2759, i32 0, i32 0
  %len2821 = load i32* %len_ptr2820
  call void @oat_array_bounds_check( i32 %len2821, i32 %_lhs2819 )
  %array_dereferenced2822 = load { i32, [ 0 x i32 ] }** %a_slot2759
  %elt_ptr2823 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2822, i32 0, i32 1, i32 %_lhs2819
  %_lhs2824 = load i32* %elt_ptr2823
  store i32 %_lhs2824, i32* %elt_ptr2818
  %_lhs2825 = load i32* %j2769
  %bop2826 = mul i32 %_lhs2825, 2
  store i32 %bop2826, i32* %j2769
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
  %_lhs2827 = load i32* %j2769
  %bop2828 = ashr i32 %_lhs2827, 1
  %len_ptr2829 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2759, i32 0, i32 0
  %len2830 = load i32* %len_ptr2829
  call void @oat_array_bounds_check( i32 %len2830, i32 %bop2828 )
  %array_dereferenced2831 = load { i32, [ 0 x i32 ] }** %a_slot2759
  %elt_ptr2832 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2831, i32 0, i32 1, i32 %bop2828
  %_lhs2833 = load i32* %v2766
  store i32 %_lhs2833, i32* %elt_ptr2832
  ret void
}


define void @restoreHup ({ i32, [ 0 x i32 ] }* %a2713, i32 %i2711){

__fresh549:
  %a_slot2714 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2713, { i32, [ 0 x i32 ] }** %a_slot2714
  %i_slot2712 = alloca i32
  store i32 %i2711, i32* %i_slot2712
  %_lhs2715 = load i32* %i_slot2712
  %len_ptr2716 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2714, i32 0, i32 0
  %len2717 = load i32* %len_ptr2716
  call void @oat_array_bounds_check( i32 %len2717, i32 %_lhs2715 )
  %array_dereferenced2718 = load { i32, [ 0 x i32 ] }** %a_slot2714
  %elt_ptr2719 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2718, i32 0, i32 1, i32 %_lhs2715
  %_lhs2720 = load i32* %elt_ptr2719
  %v2721 = alloca i32
  store i32 %_lhs2720, i32* %v2721
  br label %__cond548

__cond548:
  %_lhs2722 = load i32* %i_slot2712
  %bop2723 = icmp sgt i32 %_lhs2722, 1
  %_lhs2724 = load i32* %i_slot2712
  %bop2725 = ashr i32 %_lhs2724, 1
  %len_ptr2726 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2714, i32 0, i32 0
  %len2727 = load i32* %len_ptr2726
  call void @oat_array_bounds_check( i32 %len2727, i32 %bop2725 )
  %array_dereferenced2728 = load { i32, [ 0 x i32 ] }** %a_slot2714
  %elt_ptr2729 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2728, i32 0, i32 1, i32 %bop2725
  %_lhs2730 = load i32* %elt_ptr2729
  %_lhs2731 = load i32* %v2721
  %bop2732 = icmp slt i32 %_lhs2730, %_lhs2731
  %bop2733 = and i1 %bop2723, %bop2732
  br i1 %bop2733, label %__body547, label %__post546

__fresh550:
  br label %__body547

__body547:
  %_lhs2734 = load i32* %i_slot2712
  %len_ptr2735 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2714, i32 0, i32 0
  %len2736 = load i32* %len_ptr2735
  call void @oat_array_bounds_check( i32 %len2736, i32 %_lhs2734 )
  %array_dereferenced2737 = load { i32, [ 0 x i32 ] }** %a_slot2714
  %elt_ptr2738 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2737