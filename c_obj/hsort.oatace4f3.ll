declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@n2611 = global i32 8, align 4
@b2610 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by b2610.init
define void @oat_init (){

__fresh568:
  call void @b2610.init(  )
  ret void
}


define void @restoreHdown ({ i32, [ 0 x i32 ] }* %a2763, i32 %i2761, i32 %n2759){

__fresh559:
  %a_slot2764 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2763, { i32, [ 0 x i32 ] }** %a_slot2764
  %i_slot2762 = alloca i32
  store i32 %i2761, i32* %i_slot2762
  %n_slot2760 = alloca i32
  store i32 %n2759, i32* %n_slot2760
  %_lhs2765 = load i32* %i_slot2762
  %len_ptr2766 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2764, i32 0, i32 0
  %len2767 = load i32* %len_ptr2766
  call void @oat_array_bounds_check( i32 %len2767, i32 %_lhs2765 )
  %array_dereferenced2768 = load { i32, [ 0 x i32 ] }** %a_slot2764
  %elt_ptr2769 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2768, i32 0, i32 1, i32 %_lhs2765
  %_lhs2770 = load i32* %elt_ptr2769
  %v2771 = alloca i32
  store i32 %_lhs2770, i32* %v2771
  %_lhs2772 = load i32* %i_slot2762
  %bop2773 = mul i32 %_lhs2772, 2
  %j2774 = alloca i32
  store i32 %bop2773, i32* %j2774
  %done2775 = alloca i32
  store i32 0, i32* %done2775
  br label %__cond549

__cond549:
  %_lhs2776 = load i32* %j2774
  %_lhs2777 = load i32* %n_slot2760
  %bop2778 = icmp sle i32 %_lhs2776, %_lhs2777
  %_lhs2779 = load i32* %done2775
  %bop2780 = icmp eq i32 %_lhs2779, 0
  %bop2781 = and i1 %bop2778, %bop2780
  br i1 %bop2781, label %__body548, label %__post547

__fresh560:
  br label %__body548

__body548:
  %_lhs2782 = load i32* %j2774
  %_lhs2783 = load i32* %n_slot2760
  %bop2784 = icmp slt i32 %_lhs2782, %_lhs2783
  %_lhs2785 = load i32* %j2774
  %len_ptr2786 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2764, i32 0, i32 0
  %len2787 = load i32* %len_ptr2786
  call void @oat_array_bounds_check( i32 %len2787, i32 %_lhs2785 )
  %array_dereferenced2788 = load { i32, [ 0 x i32 ] }** %a_slot2764
  %elt_ptr2789 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2788, i32 0, i32 1, i32 %_lhs2785
  %_lhs2790 = load i32* %elt_ptr2789
  %_lhs2791 = load i32* %j2774
  %bop2792 = add i32 %_lhs2791, 1
  %len_ptr2793 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2764, i32 0, i32 0
  %len2794 = load i32* %len_ptr2793
  call void @oat_array_bounds_check( i32 %len2794, i32 %bop2792 )
  %array_dereferenced2795 = load { i32, [ 0 x i32 ] }** %a_slot2764
  %elt_ptr2796 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2795, i32 0, i32 1, i32 %bop2792
  %_lhs2797 = load i32* %elt_ptr2796
  %bop2798 = icmp slt i32 %_lhs2790, %_lhs2797
  %bop2799 = and i1 %bop2784, %bop2798
  br i1 %bop2799, label %__then552, label %__else551

__fresh561:
  br label %__then552

__then552:
  %_lhs2800 = load i32* %j2774
  %bop2801 = add i32 %_lhs2800, 1
  store i32 %bop2801, i32* %j2774
  br label %__merge550

__fresh562:
  br label %__else551

__else551:
  br label %__merge550

__merge550:
  %_lhs2802 = load i32* %j2774
  %len_ptr2803 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2764, i32 0, i32 0
  %len2804 = load i32* %len_ptr2803
  call void @oat_array_bounds_check( i32 %len2804, i32 %_lhs2802 )
  %array_dereferenced2805 = load { i32, [ 0 x i32 ] }** %a_slot2764
  %elt_ptr2806 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2805, i32 0, i32 1, i32 %_lhs2802
  %_lhs2807 = load i32* %elt_ptr2806
  %_lhs2808 = load i32* %j2774
  %bop2809 = ashr i32 %_lhs2808, 1
  %len_ptr2810 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2764, i32 0, i32 0
  %len2811 = load i32* %len_ptr2810
  call void @oat_array_bounds_check( i32 %len2811, i32 %bop2809 )
  %array_dereferenced2812 = load { i32, [ 0 x i32 ] }** %a_slot2764
  %elt_ptr2813 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2812, i32 0, i32 1, i32 %bop2809
  %_lhs2814 = load i32* %elt_ptr2813
  %bop2815 = icmp slt i32 %_lhs2807, %_lhs2814
  br i1 %bop2815, label %__then555, label %__else554

__fresh563:
  br label %__then555

__then555:
  store i32 1, i32* %done2775
  br label %__merge553

__fresh564:
  br label %__else554

__else554:
  br label %__merge553

__merge553:
  %_lhs2816 = load i32* %done2775
  %bop2817 = icmp eq i32 %_lhs2816, 0
  br i1 %bop2817, label %__then558, label %__else557

__fresh565:
  br label %__then558

__then558:
  %_lhs2818 = load i32* %j2774
  %bop2819 = ashr i32 %_lhs2818, 1
  %len_ptr2820 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2764, i32 0, i32 0
  %len2821 = load i32* %len_ptr2820
  call void @oat_array_bounds_check( i32 %len2821, i32 %bop2819 )
  %array_dereferenced2822 = load { i32, [ 0 x i32 ] }** %a_slot2764
  %elt_ptr2823 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2822, i32 0, i32 1, i32 %bop2819
  %_lhs2824 = load i32* %j2774
  %len_ptr2825 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2764, i32 0, i32 0
  %len2826 = load i32* %len_ptr2825
  call void @oat_array_bounds_check( i32 %len2826, i32 %_lhs2824 )
  %array_dereferenced2827 = load { i32, [ 0 x i32 ] }** %a_slot2764
  %elt_ptr2828 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2827, i32 0, i32 1, i32 %_lhs2824
  %_lhs2829 = load i32* %elt_ptr2828
  store i32 %_lhs2829, i32* %elt_ptr2823
  %_lhs2830 = load i32* %j2774
  %bop2831 = mul i32 %_lhs2830, 2
  store i32 %bop2831, i32* %j2774
  br label %__merge556

__fresh566:
  br label %__else557

__else557:
  br label %__merge556

__merge556:
  br label %__cond549

__fresh567:
  br label %__post547

__post547:
  %_lhs2832 = load i32* %j2774
  %bop2833 = ashr i32 %_lhs2832, 1
  %len_ptr2834 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2764, i32 0, i32 0
  %len2835 = load i32* %len_ptr2834
  call void @oat_array_bounds_check( i32 %len2835, i32 %bop2833 )
  %array_dereferenced2836 = load { i32, [ 0 x i32 ] }** %a_slot2764
  %elt_ptr2837 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2836, i32 0, i32 1, i32 %bop2833
  %_lhs2838 = load i32* %v2771
  store i32 %_lhs2838, i32* %elt_ptr2837
  ret void
}


define void @restoreHup ({ i32, [ 0 x i32 ] }* %a2718, i32 %i2716){

__fresh544:
  %a_slot2719 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2718, { i32, [ 0 x i32 ] }** %a_slot2719
  %i_slot2717 = alloca i32
  store i32 %i2716, i32* %i_slot2717
  %_lhs2720 = load i32* %i_slot2717
  %len_ptr2721 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2719, i32 0, i32 0
  %len2722 = load i32* %len_ptr2721
  call void @oat_array_bounds_check( i32 %len2722, i32 %_lhs2720 )
  %array_dereferenced2723 = load { i32, [ 0 x i32 ] }** %a_slot2719
  %elt_ptr2724 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2723, i32 0, i32 1, i32 %_lhs2720
  %_lhs2725 = load i32* %elt_ptr2724
  %v2726 = alloca i32
  store i32 %_lhs2725, i32* %v2726
  br label %__cond543

__cond543:
  %_lhs2727 = load i32* %i_slot2717
  %bop2728 = icmp sgt i32 %_lhs2727, 1
  %_lhs2729 = load i32* %i_slot2717
  %bop2730 = ashr i32 %_lhs2729, 1
  %len_ptr2731 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2719, i32 0, i32 0
  %len2732 = load i32* %len_ptr2731
  call void @oat_array_bounds_check( i32 %len2732, i32 %bop2730 )
  %array_dereferenced2733 = load { i32, [ 0 x i32 ] }** %a_slot2719
  %elt_ptr2734 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2733, i32 0, i32 1, i32 %bop2730
  %_lhs2735 = load i32* %elt_ptr2734
  %_lhs2736 = load i32* %v2726
  %bop2737 = icmp slt i32 %_lhs2735, %_lhs2736
  %bop2738 = and i1 %bop2728, %bop2737
  br i1 %bop2738, label %__body542, label %__post541

__fresh545:
  br label %__body542

__body542:
  %_lhs2739 = load i32* %i_slot2717
  %len_ptr2740 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2719, i32 0, i32 0
  %len2741 = load i32* %len_ptr2740
  call void @oat_array_bounds_check( i32 %len2741, i32 %_lhs2739 )
  %array_dereferenced2742 = load { i32, [ 0 x i32 ] }** %a_slot2719
  %elt_ptr2743 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2742