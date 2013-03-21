declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2750 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2750.init
@arr1729 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr1729.init
@i723 = global i32 1, align 4
define void @oat_init (){

__fresh188:
  call void @arr1729.init(  )
  call void @arr2750.init(  )
  ret void
}


define i32 @program (i32 %argc768, { i32, [ 0 x i8* ] }* %argv766){

__fresh187:
  %argc_slot769 = alloca i32
  store i32 %argc768, i32* %argc_slot769
  %argv_slot767 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv766, { i32, [ 0 x i8* ] }** %argv_slot767
  %c770 = alloca i32
  store i32 1, i32* %c770
  %ret771 = call { i32, [ 0 x i32 ] }* @g (  )
  %arr4772 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret771, { i32, [ 0 x i32 ] }** %arr4772
  %array_ptr773 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array774 = bitcast { i32, [ 0 x i32 ] }* %array_ptr773 to { i32, [ 0 x i32 ] }* 
  %index_ptr775 = getelementptr { i32, [ 0 x i32 ] }* %array774, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr775
  %index_ptr776 = getelementptr { i32, [ 0 x i32 ] }* %array774, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr776
  %index_ptr777 = getelementptr { i32, [ 0 x i32 ] }* %array774, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr777
  %index_ptr778 = getelementptr { i32, [ 0 x i32 ] }* %array774, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr778
  %arr3779 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array774, { i32, [ 0 x i32 ] }** %arr3779
  %_lhs780 = load i32* %c770
  %_lhs781 = load i32* @i723
  %bop782 = add i32 %_lhs780, %_lhs781
  store i32 %bop782, i32* %c770
  %_lhs783 = load i32* %c770
  %len_ptr784 = getelementptr { i32, [ 0 x i32 ] }** @arr1729, i32 0, i32 0
  %len785 = load i32* %len_ptr784
  call void @oat_array_bounds_check( i32 %len785, i32 1 )
  %array_dereferenced786 = load { i32, [ 0 x i32 ] }** @arr1729
  %elt_ptr787 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced786, i32 0, i32 1, i32 1
  %_lhs788 = load i32* %elt_ptr787
  %bop789 = add i32 %_lhs783, %_lhs788
  store i32 %bop789, i32* %c770
  %_lhs790 = load i32* %c770
  %len_ptr791 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2750, i32 0, i32 0
  %len792 = load i32* %len_ptr791
  call void @oat_array_bounds_check( i32 %len792, i32 1 )
  %array_dereferenced793 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2750
  %elt_ptr794 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced793, i32 0, i32 1, i32 1
  %len_ptr795 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr794, i32 0, i32 0
  %len796 = load i32* %len_ptr795
  call void @oat_array_bounds_check( i32 %len796, i32 1 )
  %array_dereferenced797 = load { i32, [ 0 x i32 ] }** %elt_ptr794
  %elt_ptr798 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced797, i32 0, i32 1, i32 1
  %_lhs799 = load i32* %elt_ptr798
  %bop800 = add i32 %_lhs790, %_lhs799
  store i32 %bop800, i32* %c770
  %_lhs801 = load i32* %c770
  %len_ptr802 = getelementptr { i32, [ 0 x i32 ] }** %arr3779, i32 0, i32 0
  %len803 = load i32* %len_ptr802
  call void @oat_array_bounds_check( i32 %len803, i32 3 )
  %array_dereferenced804 = load { i32, [ 0 x i32 ] }** %arr3779
  %elt_ptr805 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced804, i32 0, i32 1, i32 3
  %_lhs806 = load i32* %elt_ptr805
  %bop807 = add i32 %_lhs801, %_lhs806
  store i32 %bop807, i32* %c770
  %_lhs808 = load i32* %c770
  %_lhs809 = load { i32, [ 0 x i32 ] }** %arr3779
  %ret810 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs809 )
  %bop811 = add i32 %_lhs808, %ret810
  store i32 %bop811, i32* %c770
  %_lhs812 = load i32* %c770
  %len_ptr813 = getelementptr { i32, [ 0 x i32 ] }** %arr4772, i32 0, i32 0
  %len814 = load i32* %len_ptr813
  call void @oat_array_bounds_check( i32 %len814, i32 1 )
  %array_dereferenced815 = load { i32, [ 0 x i32 ] }** %arr4772
  %elt_ptr816 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced815, i32 0, i32 1, i32 1
  %_lhs817 = load i32* %elt_ptr816
  %bop818 = add i32 %_lhs812, %_lhs817
  store i32 %bop818, i32* %c770
  %_lhs819 = load i32* %c770
  ret i32 %_lhs819
}


define { i32, [ 0 x i32 ] }* @g (){

__fresh186:
  %array_ptr758 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array759 = bitcast { i32, [ 0 x i32 ] }* %array_ptr758 to { i32, [ 0 x i32 ] }* 
  %index_ptr760 = getelementptr { i32, [ 0 x i32 ] }* %array759, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr760
  %index_ptr761 = getelementptr { i32, [ 0 x i32 ] }* %array759, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr761
  %index_ptr762 = getelementptr { i32, [ 0 x i32 ] }* %array759, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr762
  %index_ptr763 = getelementptr { i32, [ 0 x i32 ] }* %array759, i32 0, i32 1, i32 3
  store i32 99, i32* %index_ptr763
  %arr764 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array759, { i32, [ 0 x i32 ] }** %arr764
  %_lhs765 = load { i32, [ 0 x i32 ] }** %arr764
  ret { i32, [ 0 x i32 ] }* %_lhs765
}


define i32 @f ({ i32, [ 0 x i32 ] }* %arr751){

__fresh185:
  %arr_slot752 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr751, { i32, [ 0 x i32 ] }** %arr_slot752
  %len_ptr753 = getelementptr { i32, [ 0 x i32 ] }** %arr_slot752, i32 0, i32 0
  %len754 = load i32* %len_ptr753
  call void @oat_array_bounds_check( i32 %len754, i32 3 )
  %array_dereferenced755 = load { i32, [ 0 x i32 ] }** %arr_slot752
  %elt_ptr756 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced755, i32 0, i32 1, i32 3
  %_lhs757 = load i32* %elt_ptr756
  ret i32 %_lhs757
}


define void @arr2750.init (){

__fresh184:
  %array_ptr730 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array731 = bitcast { i32, [ 0 x i32 ] }* %array_ptr730 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr732 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array733 = bitcast { i32, [ 0 x i32 ] }* %array_ptr732 to { i32, [ 0 x i32 ] }* 
  %index_ptr734 = getelementptr { i32, [ 0 x i32 ] }* %array733, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr734
  %index_ptr735 = getelementptr { i32, [ 0 x i32 ] }* %array733, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr735
  %index_ptr736 = getelementptr { i32, [ 0 x i32 ] }* %array733, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr736
  %index_ptr737 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array731, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array733, { i32, [ 0 x i32 ] }** %index_ptr737
  %array_ptr738 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array739 = bitcast { i32, [ 0 x i32 ] }* %array_ptr738 to { i32, [ 0 x i32 ] }* 
  %index_ptr740 = getelementptr { i32, [ 0 x i32 ] }* %array739, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr740
  %index_ptr741 = getelementptr { i32, [ 0 x i32 ] }* %array739, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr741
  %index_ptr742 = getelementptr { i32, [ 0 x i32 ] }* %array739, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr742
  %index_ptr743 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array731, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array739, { i32, [ 0 x i32 ] }** %index_ptr743
  %array_ptr744 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array745 = bitcast { i32, [ 0 x i32 ] }* %array_ptr744 to { i32, [ 0 x i32 ] }* 
  %index_ptr746 = getelementptr { i32, [ 0 x i32 ] }* %array745, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr746
  %index_ptr747 = getelementptr { i32, [ 0 x i32 ] }* %array745, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr747
  %index_ptr748 = getelementptr { i32, [ 0 x i32 ] }* %array745, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr748
  %index_ptr749 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array731, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array745, { i32, [ 0 x i32 ] }** %index_ptr749
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array731, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2750
  ret void
}


define void @arr1729.init (){

__fresh183:
  %array_ptr724 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array725 = bitcast { i32, [ 0 x i32 ] }* %array_ptr724 to { i32, [ 0 x i32 ] }* 
  %index_ptr726 = getelementptr { i32, [ 0 x i32 ] }* %array725, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr726
  %index_ptr727 = getelementptr { i32, [ 0 x i32 ] }* %array725, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr727
  %index_ptr728 = getelementptr { i32, [ 0 x i32 ] }* %array725, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr728
  store { i32, [ 0 x i32 ] }* %array725, { i32, [ 0 x i32 ] }** @arr1729
  ret void
}


