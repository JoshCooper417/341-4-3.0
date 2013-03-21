declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2724 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2724.init
@arr1703 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr1703.init
@i697 = global i32 1, align 4
define void @oat_init (){

__fresh146:
  call void @arr1703.init(  )
  call void @arr2724.init(  )
  ret void
}


define i32 @program (i32 %argc743, { i32, [ 0 x i8* ] }* %argv741){

__fresh145:
  %argc_slot744 = alloca i32
  store i32 %argc743, i32* %argc_slot744
  %argv_slot742 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv741, { i32, [ 0 x i8* ] }** %argv_slot742
  %c745 = alloca i32
  store i32 1, i32* %c745
  %ret746 = call { i32, [ 0 x i32 ] }* @g (  )
  %arr4747 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret746, { i32, [ 0 x i32 ] }** %arr4747
  %array_ptr748 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array749 = bitcast { i32, [ 0 x i32 ] }* %array_ptr748 to { i32, [ 0 x i32 ] }* 
  %index_ptr750 = getelementptr { i32, [ 0 x i32 ] }* %array749, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr750
  %index_ptr751 = getelementptr { i32, [ 0 x i32 ] }* %array749, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr751
  %index_ptr752 = getelementptr { i32, [ 0 x i32 ] }* %array749, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr752
  %index_ptr753 = getelementptr { i32, [ 0 x i32 ] }* %array749, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr753
  %arr3754 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array749, { i32, [ 0 x i32 ] }** %arr3754
  %_lhs755 = load i32* %c745
  %_lhs756 = load i32* @i697
  %bop757 = add i32 %_lhs755, %_lhs756
  store i32 %bop757, i32* %c745
  %_lhs758 = load i32* %c745
  %_lhs759 = load { i32, [ 0 x i32 ] }** @arr1703
  %len_ptr760 = getelementptr { i32, [ 0 x i32 ] }* %_lhs759, i32 0, i32 0
  %len761 = load i32* %len_ptr760
  call void @oat_array_bounds_check( i32 %len761, i32 1 )
  %array_dereferenced762 = load { i32, [ 0 x i32 ] }** @arr1703
  %_lhs764 = load i32* %elt_ptr763
  %bop765 = add i32 %_lhs758, %_lhs764
  store i32 %bop765, i32* %c745
  %_lhs766 = load i32* %c745
  %_lhs767 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2724
  %len_ptr768 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs767, i32 0, i32 0
  %len769 = load i32* %len_ptr768
  call void @oat_array_bounds_check( i32 %len769, i32 1 )
  %array_dereferenced770 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2724
  %_lhs772 = load { i32, [ 0 x i32 ] }** %elt_ptr771
  %len_ptr773 = getelementptr { i32, [ 0 x i32 ] }* %_lhs772, i32 0, i32 0
  %len774 = load i32* %len_ptr773
  %_lhs775 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2724
  %len_ptr776 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs775, i32 0, i32 0
  %len777 = load i32* %len_ptr776
  call void @oat_array_bounds_check( i32 %len777, i32 1 )
  %array_dereferenced778 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2724
  call void @oat_array_bounds_check( i32 %len774, i32 1 )
  %array_dereferenced780 = load { i32, [ 0 x i32 ] }** %elt_ptr779
  %_lhs782 = load i32* %elt_ptr781
  %bop783 = add i32 %_lhs766, %_lhs782
  store i32 %bop783, i32* %c745
  %_lhs784 = load i32* %c745
  %_lhs785 = load { i32, [ 0 x i32 ] }** %arr3754
  %len_ptr786 = getelementptr { i32, [ 0 x i32 ] }* %_lhs785, i32 0, i32 0
  %len787 = load i32* %len_ptr786
  call void @oat_array_bounds_check( i32 %len787, i32 3 )
  %array_dereferenced788 = load { i32, [ 0 x i32 ] }** %arr3754
  %_lhs790 = load i32* %elt_ptr789
  %bop791 = add i32 %_lhs784, %_lhs790
  store i32 %bop791, i32* %c745
  %_lhs792 = load i32* %c745
  %_lhs793 = load { i32, [ 0 x i32 ] }** %arr3754
  %ret794 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs793 )
  %bop795 = add i32 %_lhs792, %ret794
  store i32 %bop795, i32* %c745
  %_lhs796 = load i32* %c745
  %_lhs797 = load { i32, [ 0 x i32 ] }** %arr4747
  %len_ptr798 = getelementptr { i32, [ 0 x i32 ] }* %_lhs797, i32 0, i32 0
  %len799 = load i32* %len_ptr798
  call void @oat_array_bounds_check( i32 %len799, i32 1 )
  %array_dereferenced800 = load { i32, [ 0 x i32 ] }** %arr4747
  %_lhs802 = load i32* %elt_ptr801
  %bop803 = add i32 %_lhs796, %_lhs802
  store i32 %bop803, i32* %c745
  %_lhs804 = load i32* %c745
  ret i32 %_lhs804
}


define { i32, [ 0 x i32 ] }* @g (){

__fresh144:
  %array_ptr733 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array734 = bitcast { i32, [ 0 x i32 ] }* %array_ptr733 to { i32, [ 0 x i32 ] }* 
  %index_ptr735 = getelementptr { i32, [ 0 x i32 ] }* %array734, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr735
  %index_ptr736 = getelementptr { i32, [ 0 x i32 ] }* %array734, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr736
  %index_ptr737 = getelementptr { i32, [ 0 x i32 ] }* %array734, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr737
  %index_ptr738 = getelementptr { i32, [ 0 x i32 ] }* %array734, i32 0, i32 1, i32 3
  store i32 99, i32* %index_ptr738
  %arr739 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array734, { i32, [ 0 x i32 ] }** %arr739
  %_lhs740 = load { i32, [ 0 x i32 ] }** %arr739
  ret { i32, [ 0 x i32 ] }* %_lhs740
}


define i32 @f ({ i32, [ 0 x i32 ] }* %arr725){

__fresh143:
  %arr_slot726 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr725, { i32, [ 0 x i32 ] }** %arr_slot726
  %_lhs727 = load { i32, [ 0 x i32 ] }** %arr_slot726
  %len_ptr728 = getelementptr { i32, [ 0 x i32 ] }* %_lhs727, i32 0, i32 0
  %len729 = load i32* %len_ptr728
  call void @oat_array_bounds_check( i32 %len729, i32 3 )
  %array_dereferenced730 = load { i32, [ 0 x i32 ] }** %arr_slot726
  %_lhs732 = load i32* %elt_ptr731
  ret i32 %_lhs732
}


define void @arr2724.init (){

__fresh142:
  %array_ptr704 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array705 = bitcast { i32, [ 0 x i32 ] }* %array_ptr704 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr706 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array707 = bitcast { i32, [ 0 x i32 ] }* %array_ptr706 to { i32, [ 0 x i32 ] }* 
  %index_ptr708 = getelementptr { i32, [ 0 x i32 ] }* %array707, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr708
  %index_ptr709 = getelementptr { i32, [ 0 x i32 ] }* %array707, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr709
  %index_ptr710 = getelementptr { i32, [ 0 x i32 ] }* %array707, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr710
  %index_ptr711 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array705, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array707, { i32, [ 0 x i32 ] }** %index_ptr711
  %array_ptr712 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array713 = bitcast { i32, [ 0 x i32 ] }* %array_ptr712 to { i32, [ 0 x i32 ] }* 
  %index_ptr714 = getelementptr { i32, [ 0 x i32 ] }* %array713, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr714
  %index_ptr715 = getelementptr { i32, [ 0 x i32 ] }* %array713, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr715
  %index_ptr716 = getelementptr { i32, [ 0 x i32 ] }* %array713, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr716
  %index_ptr717 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array705, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array713, { i32, [ 0 x i32 ] }** %index_ptr717
  %array_ptr718 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array719 = bitcast { i32, [ 0 x i32 ] }* %array_ptr718 to { i32, [ 0 x i32 ] }* 
  %index_ptr720 = getelementptr { i32, [ 0 x i32 ] }* %array719, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr720
  %index_ptr721 = getelementptr { i32, [ 0 x i32 ] }* %array719, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr721
  %index_ptr722 = getelementptr { i32, [ 0 x i32 ] }* %array719, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr722
  %index_ptr723 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array705, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array719, { i32, [ 0 x i32 ] }** %index_ptr723
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array705, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2724
  ret void
}


define void @arr1703.init (){

__fresh141:
  %array_ptr698 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array699 = bitcast { i32, [ 0 x i32 ] }* %array_ptr698 to { i32, [ 0 x i32 ] }* 
  %index_ptr700 = getelementptr { i32, [ 0 x i32 ] }* %array699, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr700
  %index_ptr701 = getelementptr { i32, [ 0 x i32 ] }* %array699, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr701
  %index_ptr702 = getelementptr { i32, [ 0 x i32 ] }* %array699, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr702
  store { i32, [ 0 x i32 ] }* %array699, { i32, [ 0 x i32 ] }** @arr1703
  ret void
}


