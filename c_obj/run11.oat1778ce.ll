declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2703 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2703.init
@arr1682 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr1682.init
@i676 = global i32 1, align 4
define void @oat_init (){

__fresh259:
  call void @arr1682.init(  )
  call void @arr2703.init(  )
  ret void
}


define i32 @program (i32 %argc721, { i32, [ 0 x i8* ] }* %argv719){

__fresh258:
  %argc_slot722 = alloca i32
  store i32 %argc721, i32* %argc_slot722
  %argv_slot720 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv719, { i32, [ 0 x i8* ] }** %argv_slot720
  %c723 = alloca i32
  store i32 1, i32* %c723
  %ret724 = call { i32, [ 0 x i32 ] }* @g (  )
  %arr4725 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret724, { i32, [ 0 x i32 ] }** %arr4725
  %array_ptr726 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array727 = bitcast { i32, [ 0 x i32 ] }* %array_ptr726 to { i32, [ 0 x i32 ] }* 
  %index_ptr728 = getelementptr { i32, [ 0 x i32 ] }* %array727, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr728
  %index_ptr729 = getelementptr { i32, [ 0 x i32 ] }* %array727, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr729
  %index_ptr730 = getelementptr { i32, [ 0 x i32 ] }* %array727, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr730
  %index_ptr731 = getelementptr { i32, [ 0 x i32 ] }* %array727, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr731
  %arr3732 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array727, { i32, [ 0 x i32 ] }** %arr3732
  %_lhs733 = load i32* %c723
  %_lhs734 = load i32* @i676
  %bop735 = add i32 %_lhs733, %_lhs734
  store i32 %bop735, i32* %c723
  %_lhs736 = load i32* %c723
  %array_dereferenced737 = load { i32, [ 0 x i32 ] }** @arr1682
  %len_ptr738 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced737, i32 0, i32 0
  %len739 = load i32* %len_ptr738
  call void @oat_array_bounds_check( i32 %len739, i32 1 )
  %elt_ptr740 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced737, i32 0, i32 1, i32 1
  %_lhs741 = load i32* %elt_ptr740
  %bop742 = add i32 %_lhs736, %_lhs741
  store i32 %bop742, i32* %c723
  %_lhs743 = load i32* %c723
  %array_dereferenced744 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2703
  %len_ptr745 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced744, i32 0, i32 0
  %len746 = load i32* %len_ptr745
  call void @oat_array_bounds_check( i32 %len746, i32 1 )
  %elt_ptr747 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced744, i32 0, i32 1, i32 1
  %array_dereferenced748 = load { i32, [ 0 x i32 ] }** %elt_ptr747
  %len_ptr749 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced748, i32 0, i32 0
  %len750 = load i32* %len_ptr749
  call void @oat_array_bounds_check( i32 %len750, i32 1 )
  %elt_ptr751 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced748, i32 0, i32 1, i32 1
  %_lhs752 = load i32* %elt_ptr751
  %bop753 = add i32 %_lhs743, %_lhs752
  store i32 %bop753, i32* %c723
  %_lhs754 = load i32* %c723
  %array_dereferenced755 = load { i32, [ 0 x i32 ] }** %arr3732
  %len_ptr756 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced755, i32 0, i32 0
  %len757 = load i32* %len_ptr756
  call void @oat_array_bounds_check( i32 %len757, i32 3 )
  %elt_ptr758 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced755, i32 0, i32 1, i32 3
  %_lhs759 = load i32* %elt_ptr758
  %bop760 = add i32 %_lhs754, %_lhs759
  store i32 %bop760, i32* %c723
  %_lhs761 = load i32* %c723
  %_lhs762 = load { i32, [ 0 x i32 ] }** %arr3732
  %ret763 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs762 )
  %bop764 = add i32 %_lhs761, %ret763
  store i32 %bop764, i32* %c723
  %_lhs765 = load i32* %c723
  %array_dereferenced766 = load { i32, [ 0 x i32 ] }** %arr4725
  %len_ptr767 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced766, i32 0, i32 0
  %len768 = load i32* %len_ptr767
  call void @oat_array_bounds_check( i32 %len768, i32 1 )
  %elt_ptr769 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced766, i32 0, i32 1, i32 1
  %_lhs770 = load i32* %elt_ptr769
  %bop771 = add i32 %_lhs765, %_lhs770
  store i32 %bop771, i32* %c723
  %_lhs772 = load i32* %c723
  ret i32 %_lhs772
}


define { i32, [ 0 x i32 ] }* @g (){

__fresh257:
  %array_ptr711 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array712 = bitcast { i32, [ 0 x i32 ] }* %array_ptr711 to { i32, [ 0 x i32 ] }* 
  %index_ptr713 = getelementptr { i32, [ 0 x i32 ] }* %array712, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr713
  %index_ptr714 = getelementptr { i32, [ 0 x i32 ] }* %array712, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr714
  %index_ptr715 = getelementptr { i32, [ 0 x i32 ] }* %array712, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr715
  %index_ptr716 = getelementptr { i32, [ 0 x i32 ] }* %array712, i32 0, i32 1, i32 3
  store i32 99, i32* %index_ptr716
  %arr717 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array712, { i32, [ 0 x i32 ] }** %arr717
  %_lhs718 = load { i32, [ 0 x i32 ] }** %arr717
  ret { i32, [ 0 x i32 ] }* %_lhs718
}


define i32 @f ({ i32, [ 0 x i32 ] }* %arr704){

__fresh256:
  %arr_slot705 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr704, { i32, [ 0 x i32 ] }** %arr_slot705
  %array_dereferenced706 = load { i32, [ 0 x i32 ] }** %arr_slot705
  %len_ptr707 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced706, i32 0, i32 0
  %len708 = load i32* %len_ptr707
  call void @oat_array_bounds_check( i32 %len708, i32 3 )
  %elt_ptr709 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced706, i32 0, i32 1, i32 3
  %_lhs710 = load i32* %elt_ptr709
  ret i32 %_lhs710
}


define void @arr2703.init (){

__fresh255:
  %array_ptr683 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array684 = bitcast { i32, [ 0 x i32 ] }* %array_ptr683 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr685 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array686 = bitcast { i32, [ 0 x i32 ] }* %array_ptr685 to { i32, [ 0 x i32 ] }* 
  %index_ptr687 = getelementptr { i32, [ 0 x i32 ] }* %array686, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr687
  %index_ptr688 = getelementptr { i32, [ 0 x i32 ] }* %array686, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr688
  %index_ptr689 = getelementptr { i32, [ 0 x i32 ] }* %array686, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr689
  %index_ptr690 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array684, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array686, { i32, [ 0 x i32 ] }** %index_ptr690
  %array_ptr691 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array692 = bitcast { i32, [ 0 x i32 ] }* %array_ptr691 to { i32, [ 0 x i32 ] }* 
  %index_ptr693 = getelementptr { i32, [ 0 x i32 ] }* %array692, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr693
  %index_ptr694 = getelementptr { i32, [ 0 x i32 ] }* %array692, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr694
  %index_ptr695 = getelementptr { i32, [ 0 x i32 ] }* %array692, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr695
  %index_ptr696 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array684, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array692, { i32, [ 0 x i32 ] }** %index_ptr696
  %array_ptr697 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array698 = bitcast { i32, [ 0 x i32 ] }* %array_ptr697 to { i32, [ 0 x i32 ] }* 
  %index_ptr699 = getelementptr { i32, [ 0 x i32 ] }* %array698, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr699
  %index_ptr700 = getelementptr { i32, [ 0 x i32 ] }* %array698, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr700
  %index_ptr701 = getelementptr { i32, [ 0 x i32 ] }* %array698, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr701
  %index_ptr702 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array684, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array698, { i32, [ 0 x i32 ] }** %index_ptr702
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array684, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2703
  ret void
}


define void @arr1682.init (){

__fresh254:
  %array_ptr677 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array678 = bitcast { i32, [ 0 x i32 ] }* %array_ptr677 to { i32, [ 0 x i32 ] }* 
  %index_ptr679 = getelementptr { i32, [ 0 x i32 ] }* %array678, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr679
  %index_ptr680 = getelementptr { i32, [ 0 x i32 ] }* %array678, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr680
  %index_ptr681 = getelementptr { i32, [ 0 x i32 ] }* %array678, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr681
  store { i32, [ 0 x i32 ] }* %array678, { i32, [ 0 x i32 ] }** @arr1682
  ret void
}


