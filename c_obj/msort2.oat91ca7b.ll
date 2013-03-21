declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2653.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2653 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2653.str., i32 0, i32 0), align 4
@_oat_string2649.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2649 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2649.str., i32 0, i32 0), align 4
@a2640 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2640.init
define void @oat_init (){

__fresh594:
  call void @a2640.init(  )
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2689, i32 %low2687, i32 %high2685, i32 %mid2683){

__fresh581:
  %a_slot2690 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2689, { i32, [ 0 x i32 ] }** %a_slot2690
  %low_slot2688 = alloca i32
  store i32 %low2687, i32* %low_slot2688
  %high_slot2686 = alloca i32
  store i32 %high2685, i32* %high_slot2686
  %mid_slot2684 = alloca i32
  store i32 %mid2683, i32* %mid_slot2684
  %i2691 = alloca i32
  store i32 0, i32* %i2691
  %j2692 = alloca i32
  store i32 0, i32* %j2692
  %k2693 = alloca i32
  store i32 0, i32* %k2693
  store i32 1, i32* %i2694
  %index_op2699 = load i32* %i2694
  br label %__check564

__check564:
  %cmp_op2698 = icmp slt i32 %index_op2699, 50
  br i32 %cmp_op2698, label %__body565, label %__end563

__fresh582:
  br label %__body565

__body565:
  %elem_ptr2697 = getelementptr { i32, [ 0 x i32 ] }* %array2696, i32 0, i32 1, i32 %index_op2699
  store i32 0, i32* %elem_ptr2697
  %index_op2699 = add i32 %index_op2699, 1
  br label %__check564

__fresh583:
  br label %__end563

__end563:
  %c2701 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2696, { i32, [ 0 x i32 ] }** %c2701
  %_lhs2702 = load i32* %low_slot2688
  store i32 %_lhs2702, i32* %i2691
  %_lhs2703 = load i32* %mid_slot2684
  %bop2704 = add i32 %_lhs2703, 1
  store i32 %bop2704, i32* %j2692
  %_lhs2705 = load i32* %low_slot2688
  store i32 %_lhs2705, i32* %k2693
  br label %__cond568

__cond568:
  %_lhs2706 = load i32* %i2691
  %_lhs2707 = load i32* %mid_slot2684
  %bop2708 = icmp sle i32 %_lhs2706, %_lhs2707
  %_lhs2709 = load i32* %j2692
  %_lhs2710 = load i32* %high_slot2686
  %bop2711 = icmp sle i32 %_lhs2709, %_lhs2710
  %bop2712 = and i1 %bop2708, %bop2711
  br i1 %bop2712, label %__body567, label %__post566

__fresh584:
  br label %__body567

__body567:
  %_lhs2713 = load i32* %i2691
  %len_ptr2714 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2690, i32 0, i32 0
  %len2715 = load i32* %len_ptr2714
  call void @oat_array_bounds_check( i32 %len2715, i32 %_lhs2713 )
  %array_dereferenced2716 = load { i32, [ 0 x i32 ] }** %a_slot2690
  %elt_ptr2717 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2716, i32 0, i32 1, i32 %_lhs2713
  %_lhs2718 = load i32* %elt_ptr2717
  %_lhs2719 = load i32* %j2692
  %len_ptr2720 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2690, i32 0, i32 0
  %len2721 = load i32* %len_ptr2720
  call void @oat_array_bounds_check( i32 %len2721, i32 %_lhs2719 )
  %array_dereferenced2722 = load { i32, [ 0 x i32 ] }** %a_slot2690
  %elt_ptr2723 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2722, i32 0, i32 1, i32 %_lhs2719
  %_lhs2724 = load i32* %elt_ptr2723
  %bop2725 = icmp slt i32 %_lhs2718, %_lhs2724
  br i1 %bop2725, label %__then571, label %__else570

__fresh585:
  br label %__then571

__then571:
  %_lhs2726 = load i32* %k2693
  %len_ptr2727 = getelementptr { i32, [ 0 x i32 ] }** %c2701, i32 0, i32 0
  %len2728 = load i32* %len_ptr2727
  call void @oat_array_bounds_check( i32 %len2728, i32 %_lhs2726 )
  %array_dereferenced2729 = load { i32, [ 0 x i32 ] }** %c2701
  %elt_ptr2730 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2729, i32 0, i32 1, i32 %_lhs2726
  %_lhs2731 = load i32* %i2691
  %len_ptr2732 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2690, i32 0, i32 0
  %len2733 = load i32* %len_ptr2732
  call void @oat_array_bounds_check( i32 %len2733, i32 %_lhs2731 )
  %array_dereferenced2734 = load { i32, [ 0 x i32 ] }** %a_slot2690
  %elt_ptr2735 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2734, i32 0, i32 1, i32 %_lhs2731
  %_lhs2736 = load i32* %elt_ptr2735
  store i32 %_lhs2736, i32* %elt_ptr2730
  %_lhs2737 = load i32* %k2693
  %bop2738 = add i32 %_lhs2737, 1
  store i32 %bop2738, i32* %k2693
  %_lhs2739 = load i32* %i2691
  %bop2740 = add i32 %_lhs2739, 1
  store i32 %bop2740, i32* %i2691
  br label %__merge569

__fresh586:
  br label %__else570

__else570:
  %_lhs2741 = load i32* %k2693
  %len_ptr2742 = getelementptr { i32, [ 0 x i32 ] }** %c2701, i32 0, i32 0
  %len2743 = load i32* %len_ptr2742
  call void @oat_array_bounds_check( i32 %len2743, i32 %_lhs2741 )
  %array_dereferenced2744 = load { i32, [ 0 x i32 ] }** %c2701
  %elt_ptr2745 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2744, i32 0, i32 1, i32 %_lhs2741
  %_lhs2746 = load i32* %j2692
  %len_ptr2747 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2690, i32 0, i32 0
  %len2748 = load i32* %len_ptr2747
  call void @oat_array_bounds_check( i32 %len2748, i32 %_lhs2746 )
  %array_dereferenced2749 = load { i32, [ 0 x i32 ] }** %a_slot2690
  %elt_ptr2750 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2749, i32 0, i32 1, i32 %_lhs2746
  %_lhs2751 = load i32* %elt_ptr2750
  store i32 %_lhs2751, i32* %elt_ptr2745
  %_lhs2752 = load i32* %k2693
  %bop2753 = add i32 %_lhs2752, 1
  store i32 %bop2753, i32* %k2693
  %_lhs2754 = load i32* %j2692
  %bop2755 = add i32 %_lhs2754, 1
  store i32 %bop2755, i32* %j2692
  br label %__merge569

__merge569:
  br label %__cond568

__fresh587:
  br label %__post566

__post566:
  br label %__cond574

__cond574:
  %_lhs2756 = load i32* %i2691
  %_lhs2757 = load i32* %mid_slot2684
  %bop2758 = icmp sle i32 %_lhs2756, %_lhs2757
  br i1 %bop2758, label %__body573, label %__post572

__fresh588:
  br label %__body573

__body573:
  %_lhs2759 = load i32* %k2693
  %len_ptr2760 = getelementptr { i32, [ 0 x i32 ] }** %c2701, i32 0, i32 0
  %len2761 = load i32* %len_ptr2760
  call void @oat_array_bounds_check( i32 %len2761, i32 %_lhs2759 )
  %array_dereferenced2762 = load { i32, [ 0 x i32 ] }** %c2701
  %elt_ptr2763 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2762, i32 0, i32 1, i32 %_lhs2759
  %_lhs2764 = load i32* %i2691
  %len_ptr2765 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2690, i32 0, i32 0
  %len2766 = load i32* %len_ptr2765
  call void @oat_array_bounds_check( i32 %len2766, i32 %_lhs2764 )
  %array_dereferenced2767 = load { i32, [ 0 x i32 ] }** %a_slot2690
  %elt_ptr2768 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2767, i32 0, i32 1, i32 %_lhs2764
  %_lhs2769 = load i32* %elt_ptr2768
  store i32 %_lhs2769, i32* %elt_ptr2763
  %_lhs2770 = load i32* %k2693
  %bop2771 = add i32 %_lhs2770, 1
  store i32 %bop2771, i32* %k2693
  %_lhs2772 = load i32* %i2691
  %bop2773 = add i32 %_lhs2772, 1
  store i32 %bop2773, i32* %i2691
  br label %__cond574

__fresh589:
  br label %__post572

__post572:
  br label %__cond577

__cond577:
  %_lhs2774 = load i32* %j2692
  %_lhs2775 = load i32* %high_slot2686
  %bop2776 = icmp sle i32 %_lhs2774, %_lhs2775
  br i1 %bop2776, label %__body576, label %__post575

__fresh590:
  br label %__body576

__body576:
  %_lhs2777 = load i32* %k2693
  %len_ptr2778 = getelementptr { i32, [ 0 x i32 ] }** %c2701, i32 0, i32 0
  %len2779 = load i32* %len_ptr2778
  call void @oat_array_bounds_check( i32 %len2779, i32 %_lhs2777 )
  %array_dereferenced2780 = load { i32, [ 0 x i32 ] }** %c2701
  %elt_ptr2781 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2780, i32 0, i32 1, i32 %_lhs2777
  %_lhs2782 = load i32* %j2692
  %len_ptr2783 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2690, i32 0, i32 0
  %len2784 = load i32* %len_ptr2783
  call void @oat_array_bounds_check( i32 %len2784, i32 %_lhs2782 )
  %array_dereferenced2785 = load { i32, [ 0 x i32 ] }** %a_slot2690
  %elt_ptr2786 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2785, i32 0, i32 1, i32 %_lhs2782
  %_lhs2787 = load i32* %elt_ptr2786
  store i32 %_lhs2787, i32* %elt_ptr2781
  %_lhs2788 = load i32* %k2693
  %bop2789 = add i32 %_lhs2788, 1
  store i32 %bop2789, i32* %k2693
  %_lhs2790 = load i32* %j2692
  %bop2791 = add i32 %_lhs2790, 1
  store i32 %bop2791, i32* %j2692
  br label %__cond577

__fresh591:
  br label %__post575

__post575:
  %_lhs2792 = load i32* %low_slot2688
  store i32 %_lhs2792, i32* %i2691
  br label %__cond580

__cond580:
  %_lhs2793 = load i32* %i2691
  %_lhs2794 = load i32* %k2693
  %bop2795 = icmp slt i32 %_lhs2793, %_lhs2794
  br i1 %bop2795, label %__body579, label %__post578

__fresh592:
  br label %__body579

__body579:
  %_lhs2796 = load i32* %i2691
  %len_ptr2797 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2690, i32 0, i32 0
  %len2798 = load i32* %len_ptr2797
  call void @oat_array_bounds_check( i32 %len2798, i32 %_lhs2796 )
  %array_dereferenced2799 = load { i32, [ 0 x i32 ] }** %a_slot2690
  %elt_ptr2800 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2799, i32 0, i32 1, i32 %_lhs2796
  %_lhs2801 = load i32* %i2691
  %len_ptr2802 = getelementptr { i32, [ 0 x i32 ] }** %c2701, i32 0, i32 0
  %len2803 = load i32* %len_ptr2802
  call void @oat_array_bounds_check( i32 %len2803, i32 %_lhs2801 )
  %array_dereferenced2804 = load { i32, [ 0 x i32 ] }** %c2701
  %elt_ptr2805 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2804, i32 0, i32 1, i32 %_lhs2801
  %_lhs2806 = load i32* %elt_ptr2805
  store i32 %_lhs2806, i32* %elt_ptr2800
  %_lhs2807 = load i32* %i2691
  %bop2808 = add i32 %_lhs2807, 1
  store i32 %bop2808, i32* %i2691
  br label %__cond580

__fresh593:
  br label %__post578

__post578:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2662, i32 %low2660, i32 %high2658){

__fresh560:
  %a_slot2663 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2662, { i32, [ 0 x i32 ] }** %a_slot2663
  %low_slot2661 = alloca i32
  store i32 %low2660, i32* %low_slot2661
  %high_slot2659 = alloca i32
  store i32 %high2658, i32* %high_slot2659
  %mid2664 = alloca i32
  store i32 0, i32* %mid2664
  %_lhs2665 = load i32* %low_slot2661
  %_lhs2666 = load i32* %high_slot2659
  %bop2667 = icmp slt i32 %_lhs2665, %_lhs2666
  br i1 %bop2667, label %__then559, label %__else558

__fresh561:
  br label %__then559

__then559:
  %_lhs2668 = load i32* %low_slot2661
  %_lhs2669 = load i32* %high_slot2659
  %bop2670 = add i32 %_lhs2668, %_lhs2669
  %bop2671 = ashr i32 %bop2670, 1
  store i32 %bop2671, i32* %mid2664
  %_lhs2674 = load i32* %mid2664
  %_lhs2673 = load i32* %low_slot2661
  %_lhs2672 = load { i32, [ 0 x i32 ] }** %a_slot2663
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2672, i32 %_lhs2673, i32 %_lhs2674 )
  %_lhs2678 = load i32* %high_slot2659
  %_lhs2676 = load i32* %mid2664
  %bop2677 = add i32 %_lhs2676, 1
  %_lhs2675 = load { i32, [ 0 x i32 ] }** %a_slot2663
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2675, i32 %bop2677, i32 %_lhs2678 )
  %_lhs2682 = load i32* %mid2664
  %_lhs2681 = load i32* %high_slot2659
  %_lhs2680 = load i32* %low_slot2661
  %_lhs2679 = load { i32, [ 0 x i32 ] }** %a_slot2663
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2679, i32 %_lhs2680, i32 %_lhs2681, i32 %_lhs2682 )
  br label %__merge557

__fresh562:
  br label %__else558

__else558:
  br label %__merge557

__merge557:
  ret void
}


define i32 @program (i32 %argc2643, { i32, [ 0 x i8* ] }* %argv2641){

__fresh556:
  %argc_slot2644 = alloca i32
  store i32 %argc2643, i32* %argc_slot2644
  %argv_slot2642 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2641, { i32, [ 0 x i8* ] }** %argv_slot2642
  %i2645 = alloca i32
  store i32 0, i32* %i2645
  %_lhs2646 = load { i32, [ 0 x i32 ] }** @a2640
  %ret2647 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2646 )
  call void @print_string( i8* %ret2647 )
  %_lhs2648 = load { i32, [ 0 x i32 ] }** @a2640
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2648, i32 0, i32 9 )
  %strval2650 = load i8** @_oat_string2649
  call void @print_string( i8* %strval2650 )
  %_lhs2651 = load { i32, [ 0 x i32 ] }** @a2640
  %ret2652 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2651 )
  call void @print_string( i8* %ret2652 )
  %strval2654 = load i8** @_oat_string2653
  call void @print_string( i8* %strval2654 )
  %_lhs2655 = load i32* %i2645
  ret i32 %_lhs2655
}


define void @a2640.init (){

__fresh555:
  %array_ptr2628 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2629 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2628 to { i32, [ 0 x i32 ] }* 
  %index_ptr2630 = getelementptr { i32, [ 0 x i32 ] }* %array2629, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2630
  %index_ptr2631 = getelementptr { i32, [ 0 x i32 ] }* %array2629, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2631
  %index_ptr2632 = getelementptr { i32, [ 0 x i32 ] }* %array2629, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2632
  %index_ptr2633 = getelementptr { i32, [ 0 x i32 ] }* %array2629, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2633
  %index_ptr2634 = getelementptr { i32, [ 0 x i32 ] }* %array2629, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2634
  %index_ptr2635 = getelementptr { i32, [ 0 x i32 ] }* %array2629, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2635
  %index_ptr2636 = getelementptr { i32, [ 0 x i32 ] }* %array2629, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2636
  %index_ptr2637 = getelementptr { i32, [ 0 x i32 ] }* %array2629, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2637
  %index_ptr2638 = getelementptr { i32, [ 0 x i32 ] }* %array2629, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2638
  %index_ptr2639 = getelementptr { i32, [ 0 x i32 ] }* %array2629, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2639
  store { i32, [ 0 x i32 ] }* %array2629, { i32, [ 0 x i32 ] }** @a2640
  ret void
}


