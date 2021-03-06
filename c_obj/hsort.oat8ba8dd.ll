declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@n2610 = global i32 8, align 4
@b2609 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by b2609.init
define void @oat_init (){

__fresh523:
  call void @b2609.init(  )
  ret void
}


define void @restoreHdown ({ i32, [ 0 x i32 ] }* %a2762, i32 %i2760, i32 %n2758){

__fresh514:
  %a_slot2763 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2762, { i32, [ 0 x i32 ] }** %a_slot2763
  %i_slot2761 = alloca i32
  store i32 %i2760, i32* %i_slot2761
  %n_slot2759 = alloca i32
  store i32 %n2758, i32* %n_slot2759
  %_lhs2764 = load i32* %i_slot2761
  %len_ptr2765 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2763, i32 0, i32 0
  %len2766 = load i32* %len_ptr2765
  call void @oat_array_bounds_check( i32 %len2766, i32 %_lhs2764 )
  %array_dereferenced2767 = load { i32, [ 0 x i32 ] }** %a_slot2763
  %elt_ptr2768 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2767, i32 0, i32 1, i32 %_lhs2764
  %_lhs2769 = load i32* %elt_ptr2768
  %v2770 = alloca i32
  store i32 %_lhs2769, i32* %v2770
  %_lhs2771 = load i32* %i_slot2761
  %bop2772 = mul i32 %_lhs2771, 2
  %j2773 = alloca i32
  store i32 %bop2772, i32* %j2773
  %done2774 = alloca i32
  store i32 0, i32* %done2774
  br label %__cond504

__cond504:
  %_lhs2775 = load i32* %j2773
  %_lhs2776 = load i32* %n_slot2759
  %bop2777 = icmp sle i32 %_lhs2775, %_lhs2776
  %_lhs2778 = load i32* %done2774
  %bop2779 = icmp eq i32 %_lhs2778, 0
  %bop2780 = and i1 %bop2777, %bop2779
  br i1 %bop2780, label %__body503, label %__post502

__fresh515:
  br label %__body503

__body503:
  %_lhs2781 = load i32* %j2773
  %_lhs2782 = load i32* %n_slot2759
  %bop2783 = icmp slt i32 %_lhs2781, %_lhs2782
  %_lhs2784 = load i32* %j2773
  %len_ptr2785 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2763, i32 0, i32 0
  %len2786 = load i32* %len_ptr2785
  call void @oat_array_bounds_check( i32 %len2786, i32 %_lhs2784 )
  %array_dereferenced2787 = load { i32, [ 0 x i32 ] }** %a_slot2763
  %elt_ptr2788 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2787, i32 0, i32 1, i32 %_lhs2784
  %_lhs2789 = load i32* %elt_ptr2788
  %_lhs2790 = load i32* %j2773
  %bop2791 = add i32 %_lhs2790, 1
  %len_ptr2792 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2763, i32 0, i32 0
  %len2793 = load i32* %len_ptr2792
  call void @oat_array_bounds_check( i32 %len2793, i32 %bop2791 )
  %array_dereferenced2794 = load { i32, [ 0 x i32 ] }** %a_slot2763
  %elt_ptr2795 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2794, i32 0, i32 1, i32 %bop2791
  %_lhs2796 = load i32* %elt_ptr2795
  %bop2797 = icmp slt i32 %_lhs2789, %_lhs2796
  %bop2798 = and i1 %bop2783, %bop2797
  br i1 %bop2798, label %__then507, label %__else506

__fresh516:
  br label %__then507

__then507:
  %_lhs2799 = load i32* %j2773
  %bop2800 = add i32 %_lhs2799, 1
  store i32 %bop2800, i32* %j2773
  br label %__merge505

__fresh517:
  br label %__else506

__else506:
  br label %__merge505

__merge505:
  %_lhs2801 = load i32* %j2773
  %len_ptr2802 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2763, i32 0, i32 0
  %len2803 = load i32* %len_ptr2802
  call void @oat_array_bounds_check( i32 %len2803, i32 %_lhs2801 )
  %array_dereferenced2804 = load { i32, [ 0 x i32 ] }** %a_slot2763
  %elt_ptr2805 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2804, i32 0, i32 1, i32 %_lhs2801
  %_lhs2806 = load i32* %elt_ptr2805
  %_lhs2807 = load i32* %j2773
  %bop2808 = ashr i32 %_lhs2807, 1
  %len_ptr2809 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2763, i32 0, i32 0
  %len2810 = load i32* %len_ptr2809
  call void @oat_array_bounds_check( i32 %len2810, i32 %bop2808 )
  %array_dereferenced2811 = load { i32, [ 0 x i32 ] }** %a_slot2763
  %elt_ptr2812 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2811, i32 0, i32 1, i32 %bop2808
  %_lhs2813 = load i32* %elt_ptr2812
  %bop2814 = icmp slt i32 %_lhs2806, %_lhs2813
  br i1 %bop2814, label %__then510, label %__else509

__fresh518:
  br label %__then510

__then510:
  store i32 1, i32* %done2774
  br label %__merge508

__fresh519:
  br label %__else509

__else509:
  br label %__merge508

__merge508:
  %_lhs2815 = load i32* %done2774
  %bop2816 = icmp eq i32 %_lhs2815, 0
  br i1 %bop2816, label %__then513, label %__else512

__fresh520:
  br label %__then513

__then513:
  %_lhs2817 = load i32* %j2773
  %bop2818 = ashr i32 %_lhs2817, 1
  %len_ptr2819 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2763, i32 0, i32 0
  %len2820 = load i32* %len_ptr2819
  call void @oat_array_bounds_check( i32 %len2820, i32 %bop2818 )
  %array_dereferenced2821 = load { i32, [ 0 x i32 ] }** %a_slot2763
  %elt_ptr2822 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2821, i32 0, i32 1, i32 %bop2818
  %_lhs2823 = load i32* %j2773
  %len_ptr2824 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2763, i32 0, i32 0
  %len2825 = load i32* %len_ptr2824
  call void @oat_array_bounds_check( i32 %len2825, i32 %_lhs2823 )
  %array_dereferenced2826 = load { i32, [ 0 x i32 ] }** %a_slot2763
  %elt_ptr2827 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2826, i32 0, i32 1, i32 %_lhs2823
  %_lhs2828 = load i32* %elt_ptr2827
  store i32 %_lhs2828, i32* %elt_ptr2822
  %_lhs2829 = load i32* %j2773
  %bop2830 = mul i32 %_lhs2829, 2
  store i32 %bop2830, i32* %j2773
  br label %__merge511

__fresh521:
  br label %__else512

__else512:
  br label %__merge511

__merge511:
  br label %__cond504

__fresh522:
  br label %__post502

__post502:
  %_lhs2831 = load i32* %j2773
  %bop2832 = ashr i32 %_lhs2831, 1
  %len_ptr2833 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2763, i32 0, i32 0
  %len2834 = load i32* %len_ptr2833
  call void @oat_array_bounds_check( i32 %len2834, i32 %bop2832 )
  %array_dereferenced2835 = load { i32, [ 0 x i32 ] }** %a_slot2763
  %elt_ptr2836 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2835, i32 0, i32 1, i32 %bop2832
  %_lhs2837 = load i32* %v2770
  store i32 %_lhs2837, i32* %elt_ptr2836
  ret void
}


define void @restoreHup ({ i32, [ 0 x i32 ] }* %a2717, i32 %i2715){

__fresh499:
  %a_slot2718 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2717, { i32, [ 0 x i32 ] }** %a_slot2718
  %i_slot2716 = alloca i32
  store i32 %i2715, i32* %i_slot2716
  %_lhs2719 = load i32* %i_slot2716
  %len_ptr2720 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2718, i32 0, i32 0
  %len2721 = load i32* %len_ptr2720
  call void @oat_array_bounds_check( i32 %len2721, i32 %_lhs2719 )
  %array_dereferenced2722 = load { i32, [ 0 x i32 ] }** %a_slot2718
  %elt_ptr2723 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2722, i32 0, i32 1, i32 %_lhs2719
  %_lhs2724 = load i32* %elt_ptr2723
  %v2725 = alloca i32
  store i32 %_lhs2724, i32* %v2725
  br label %__cond498

__cond498:
  %_lhs2726 = load i32* %i_slot2716
  %bop2727 = icmp sgt i32 %_lhs2726, 1
  %_lhs2728 = load i32* %i_slot2716
  %bop2729 = ashr i32 %_lhs2728, 1
  %len_ptr2730 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2718, i32 0, i32 0
  %len2731 = load i32* %len_ptr2730
  call void @oat_array_bounds_check( i32 %len2731, i32 %bop2729 )
  %array_dereferenced2732 = load { i32, [ 0 x i32 ] }** %a_slot2718
  %elt_ptr2733 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2732, i32 0, i32 1, i32 %bop2729
  %_lhs2734 = load i32* %elt_ptr2733
  %_lhs2735 = load i32* %v2725
  %bop2736 = icmp slt i32 %_lhs2734, %_lhs2735
  %bop2737 = and i1 %bop2727, %bop2736
  br i1 %bop2737, label %__body497, label %__post496

__fresh500:
  br label %__body497

__body497:
  %_lhs2738 = load i32* %i_slot2716
  %len_ptr2739 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2718, i32 0, i32 0
  %len2740 = load i32* %len_ptr2739
  call void @oat_array_bounds_check( i32 %len2740, i32 %_lhs2738 )
  %array_dereferenced2741 = load { i32, [ 0 x i32 ] }** %a_slot2718
  %elt_ptr2742 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2741