declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2742 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2742.init
@arr1721 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr1721.init
@i715 = global i32 1, align 4
define void @oat_init (){

__fresh188:
  call void @arr1721.init(  )
  call void @arr2742.init(  )
  ret void
}


define i32 @program (i32 %argc760, { i32, [ 0 x i8* ] }* %argv758){

__fresh187:
  %argc_slot761 = alloca i32
  store i32 %argc760, i32* %argc_slot761
  %argv_slot759 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv758, { i32, [ 0 x i8* ] }** %argv_slot759
  %c762 = alloca i32
  store i32 1, i32* %c762
  %ret763 = call { i32, [ 0 x i32 ] }* @g (  )
  %arr4764 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret763, { i32, [ 0 x i32 ] }** %arr4764
  %array_ptr765 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array766 = bitcast { i32, [ 0 x i32 ] }* %array_ptr765 to { i32, [ 0 x i32 ] }* 
  %index_ptr767 = getelementptr { i32, [ 0 x i32 ] }* %array766, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr767
  %index_ptr768 = getelementptr { i32, [ 0 x i32 ] }* %array766, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr768
  %index_ptr769 = getelementptr { i32, [ 0 x i32 ] }* %array766, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr769
  %index_ptr770 = getelementptr { i32, [ 0 x i32 ] }* %array766, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr770
  %arr3771 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array766, { i32, [ 0 x i32 ] }** %arr3771
  %_lhs772 = load i32* %c762
  %_lhs773 = load i32* @i715
  %bop774 = add i32 %_lhs772, %_lhs773
  store i32 %bop774, i32* %c762
  %_lhs775 = load i32* %c762
  %len_ptr776 = getelementptr { i32, [ 0 x i32 ] }** @arr1721, i32 0, i32 0
  %len777 = load i32* %len_ptr776
  call void @oat_array_bounds_check( i32 %len777, i32 1 )
  %array_dereferenced778 = load { i32, [ 0 x i32 ] }** @arr1721
  %elt_ptr779 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced778, i32 0, i32 1, i32 1
  %_lhs780 = load i32* %elt_ptr779
  %bop781 = add i32 %_lhs775, %_lhs780
  store i32 %bop781, i32* %c762
  %_lhs782 = load i32* %c762
  %len_ptr783 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2742, i32 0, i32 0
  %len784 = load i32* %len_ptr783
  call void @oat_array_bounds_check( i32 %len784, i32 1 )
  %array_dereferenced785 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2742
  %elt_ptr786 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced785, i32 0, i32 1, i32 1
  %len_ptr787 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr786, i32 0, i32 0
  %len788 = load i32* %len_ptr787
  call void @oat_array_bounds_check( i32 %len788, i32 1 )
  %array_dereferenced789 = load { i32, [ 0 x i32 ] }** %elt_ptr786
  %elt_ptr790 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced789, i32 0, i32 1, i32 1
  %_lhs791 = load i32* %elt_ptr790
  %bop792 = add i32 %_lhs782, %_lhs791
  store i32 %bop792, i32* %c762
  %_lhs793 = load i32* %c762
  %len_ptr794 = getelementptr { i32, [ 0 x i32 ] }** %arr3771, i32 0, i32 0
  %len795 = load i32* %len_ptr794
  call void @oat_array_bounds_check( i32 %len795, i32 3 )
  %array_dereferenced796 = load { i32, [ 0 x i32 ] }** %arr3771
  %elt_ptr797 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced796, i32 0, i32 1, i32 3
  %_lhs798 = load i32* %elt_ptr797
  %bop799 = add i32 %_lhs793, %_lhs798
  store i32 %bop799, i32* %c762
  %_lhs800 = load i32* %c762
  %_lhs801 = load { i32, [ 0 x i32 ] }** %arr3771
  %ret802 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs801 )
  %bop803 = add i32 %_lhs800, %ret802
  store i32 %bop803, i32* %c762
  %_lhs804 = load i32* %c762
  %len_ptr805 = getelementptr { i32, [ 0 x i32 ] }** %arr4764, i32 0, i32 0
  %len806 = load i32* %len_ptr805
  call void @oat_array_bounds_check( i32 %len806, i32 1 )
  %array_dereferenced807 = load { i32, [ 0 x i32 ] }** %arr4764
  %elt_ptr808 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced807, i32 0, i32 1, i32 1
  %_lhs809 = load i32* %elt_ptr808
  %bop810 = add i32 %_lhs804, %_lhs809
  store i32 %bop810, i32* %c762
  %_lhs811 = load i32* %c762
  ret i32 %_lhs811
}


define { i32, [ 0 x i32 ] }* @g (){

__fresh186:
  %array_ptr750 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array751 = bitcast { i32, [ 0 x i32 ] }* %array_ptr750 to { i32, [ 0 x i32 ] }* 
  %index_ptr752 = getelementptr { i32, [ 0 x i32 ] }* %array751, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr752
  %index_ptr753 = getelementptr { i32, [ 0 x i32 ] }* %array751, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr753
  %index_ptr754 = getelementptr { i32, [ 0 x i32 ] }* %array751, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr754
  %index_ptr755 = getelementptr { i32, [ 0 x i32 ] }* %array751, i32 0, i32 1, i32 3
  store i32 99, i32* %index_ptr755
  %arr756 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array751, { i32, [ 0 x i32 ] }** %arr756
  %_lhs757 = load { i32, [ 0 x i32 ] }** %arr756
  ret { i32, [ 0 x i32 ] }* %_lhs757
}


define i32 @f ({ i32, [ 0 x i32 ] }* %arr743){

__fresh185:
  %arr_slot744 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr743, { i32, [ 0 x i32 ] }** %arr_slot744
  %len_ptr745 = getelementptr { i32, [ 0 x i32 ] }** %arr_slot744, i32 0, i32 0
  %len746 = load i32* %len_ptr745
  call void @oat_array_bounds_check( i32 %len746, i32 3 )
  %array_dereferenced747 = load { i32, [ 0 x i32 ] }** %arr_slot744
  %elt_ptr748 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced747, i32 0, i32 1, i32 3
  %_lhs749 = load i32* %elt_ptr748
  ret i32 %_lhs749
}


define void @arr2742.init (){

__fresh184:
  %array_ptr722 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array723 = bitcast { i32, [ 0 x i32 ] }* %array_ptr722 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr724 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array725 = bitcast { i32, [ 0 x i32 ] }* %array_ptr724 to { i32, [ 0 x i32 ] }* 
  %index_ptr726 = getelementptr { i32, [ 0 x i32 ] }* %array725, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr726
  %index_ptr727 = getelementptr { i32, [ 0 x i32 ] }* %array725, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr727
  %index_ptr728 = getelementptr { i32, [ 0 x i32 ] }* %array725, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr728
  %index_ptr729 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array723, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array725, { i32, [ 0 x i32 ] }** %index_ptr729
  %array_ptr730 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array731 = bitcast { i32, [ 0 x i32 ] }* %array_ptr730 to { i32, [ 0 x i32 ] }* 
  %index_ptr732 = getelementptr { i32, [ 0 x i32 ] }* %array731, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr732
  %index_ptr733 = getelementptr { i32, [ 0 x i32 ] }* %array731, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr733
  %index_ptr734 = getelementptr { i32, [ 0 x i32 ] }* %array731, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr734
  %index_ptr735 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array723, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array731, { i32, [ 0 x i32 ] }** %index_ptr735
  %array_ptr736 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array737 = bitcast { i32, [ 0 x i32 ] }* %array_ptr736 to { i32, [ 0 x i32 ] }* 
  %index_ptr738 = getelementptr { i32, [ 0 x i32 ] }* %array737, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr738
  %index_ptr739 = getelementptr { i32, [ 0 x i32 ] }* %array737, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr739
  %index_ptr740 = getelementptr { i32, [ 0 x i32 ] }* %array737, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr740
  %index_ptr741 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array723, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array737, { i32, [ 0 x i32 ] }** %index_ptr741
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array723, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2742
  ret void
}


define void @arr1721.init (){

__fresh183:
  %array_ptr716 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array717 = bitcast { i32, [ 0 x i32 ] }* %array_ptr716 to { i32, [ 0 x i32 ] }* 
  %index_ptr718 = getelementptr { i32, [ 0 x i32 ] }* %array717, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr718
  %index_ptr719 = getelementptr { i32, [ 0 x i32 ] }* %array717, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr719
  %index_ptr720 = getelementptr { i32, [ 0 x i32 ] }* %array717, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr720
  store { i32, [ 0 x i32 ] }* %array717, { i32, [ 0 x i32 ] }** @arr1721
  ret void
}


