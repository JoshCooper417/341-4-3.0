declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2701 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2701.init
@arr1680 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr1680.init
@i674 = global i32 1, align 4
define void @oat_init (){

__fresh259:
  call void @arr1680.init(  )
  call void @arr2701.init(  )
  ret void
}


define i32 @program (i32 %argc719, { i32, [ 0 x i8* ] }* %argv717){

__fresh258:
  %argc_slot720 = alloca i32
  store i32 %argc719, i32* %argc_slot720
  %argv_slot718 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv717, { i32, [ 0 x i8* ] }** %argv_slot718
  %c721 = alloca i32
  store i32 1, i32* %c721
  %ret722 = call { i32, [ 0 x i32 ] }* @g (  )
  %arr4723 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret722, { i32, [ 0 x i32 ] }** %arr4723
  %array_ptr724 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array725 = bitcast { i32, [ 0 x i32 ] }* %array_ptr724 to { i32, [ 0 x i32 ] }* 
  %index_ptr726 = getelementptr { i32, [ 0 x i32 ] }* %array725, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr726
  %index_ptr727 = getelementptr { i32, [ 0 x i32 ] }* %array725, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr727
  %index_ptr728 = getelementptr { i32, [ 0 x i32 ] }* %array725, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr728
  %index_ptr729 = getelementptr { i32, [ 0 x i32 ] }* %array725, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr729
  %arr3730 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array725, { i32, [ 0 x i32 ] }** %arr3730
  %_lhs731 = load i32* %c721
  %_lhs732 = load i32* @i674
  %bop733 = add i32 %_lhs731, %_lhs732
  store i32 %bop733, i32* %c721
  %_lhs734 = load i32* %c721
  %array_dereferenced735 = load { i32, [ 0 x i32 ] }** @arr1680
  %len_ptr736 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced735, i32 0, i32 0
  %len737 = load i32* %len_ptr736
  call void @oat_array_bounds_check( i32 %len737, i32 1 )
  %elt_ptr738 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced735, i32 0, i32 1, i32 1
  %_lhs739 = load i32* %elt_ptr738
  %bop740 = add i32 %_lhs734, %_lhs739
  store i32 %bop740, i32* %c721
  %_lhs741 = load i32* %c721
  %array_dereferenced746 = load { i32, [ 0 x i32 ] }** %elt_ptr745
  %array_dereferenced742 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2701
  %len_ptr743 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced742, i32 0, i32 0
  %len744 = load i32* %len_ptr743
  call void @oat_array_bounds_check( i32 %len744, i32 1 )
  %elt_ptr745 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced742, i32 0, i32 1, i32 1
  %len_ptr747 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced746, i32 0, i32 0
  %len748 = load i32* %len_ptr747
  call void @oat_array_bounds_check( i32 %len748, i32 1 )
  %elt_ptr749 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced746, i32 0, i32 1, i32 1
  %_lhs750 = load i32* %elt_ptr749
  %bop751 = add i32 %_lhs741, %_lhs750
  store i32 %bop751, i32* %c721
  %_lhs752 = load i32* %c721
  %array_dereferenced753 = load { i32, [ 0 x i32 ] }** %arr3730
  %len_ptr754 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced753, i32 0, i32 0
  %len755 = load i32* %len_ptr754
  call void @oat_array_bounds_check( i32 %len755, i32 3 )
  %elt_ptr756 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced753, i32 0, i32 1, i32 3
  %_lhs757 = load i32* %elt_ptr756
  %bop758 = add i32 %_lhs752, %_lhs757
  store i32 %bop758, i32* %c721
  %_lhs759 = load i32* %c721
  %_lhs760 = load { i32, [ 0 x i32 ] }** %arr3730
  %ret761 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs760 )
  %bop762 = add i32 %_lhs759, %ret761
  store i32 %bop762, i32* %c721
  %_lhs763 = load i32* %c721
  %array_dereferenced764 = load { i32, [ 0 x i32 ] }** %arr4723
  %len_ptr765 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced764, i32 0, i32 0
  %len766 = load i32* %len_ptr765
  call void @oat_array_bounds_check( i32 %len766, i32 1 )
  %elt_ptr767 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced764, i32 0, i32 1, i32 1
  %_lhs768 = load i32* %elt_ptr767
  %bop769 = add i32 %_lhs763, %_lhs768
  store i32 %bop769, i32* %c721
  %_lhs770 = load i32* %c721
  ret i32 %_lhs770
}


define { i32, [ 0 x i32 ] }* @g (){

__fresh257:
  %array_ptr709 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array710 = bitcast { i32, [ 0 x i32 ] }* %array_ptr709 to { i32, [ 0 x i32 ] }* 
  %index_ptr711 = getelementptr { i32, [ 0 x i32 ] }* %array710, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr711
  %index_ptr712 = getelementptr { i32, [ 0 x i32 ] }* %array710, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr712
  %index_ptr713 = getelementptr { i32, [ 0 x i32 ] }* %array710, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr713
  %index_ptr714 = getelementptr { i32, [ 0 x i32 ] }* %array710, i32 0, i32 1, i32 3
  store i32 99, i32* %index_ptr714
  %arr715 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array710, { i32, [ 0 x i32 ] }** %arr715
  %_lhs716 = load { i32, [ 0 x i32 ] }** %arr715
  ret { i32, [ 0 x i32 ] }* %_lhs716
}


define i32 @f ({ i32, [ 0 x i32 ] }* %arr702){

__fresh256:
  %arr_slot703 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr702, { i32, [ 0 x i32 ] }** %arr_slot703
  %array_dereferenced704 = load { i32, [ 0 x i32 ] }** %arr_slot703
  %len_ptr705 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced704, i32 0, i32 0
  %len706 = load i32* %len_ptr705
  call void @oat_array_bounds_check( i32 %len706, i32 3 )
  %elt_ptr707 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced704, i32 0, i32 1, i32 3
  %_lhs708 = load i32* %elt_ptr707
  ret i32 %_lhs708
}


define void @arr2701.init (){

__fresh255:
  %array_ptr681 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array682 = bitcast { i32, [ 0 x i32 ] }* %array_ptr681 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr683 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array684 = bitcast { i32, [ 0 x i32 ] }* %array_ptr683 to { i32, [ 0 x i32 ] }* 
  %index_ptr685 = getelementptr { i32, [ 0 x i32 ] }* %array684, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr685
  %index_ptr686 = getelementptr { i32, [ 0 x i32 ] }* %array684, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr686
  %index_ptr687 = getelementptr { i32, [ 0 x i32 ] }* %array684, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr687
  %index_ptr688 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array682, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array684, { i32, [ 0 x i32 ] }** %index_ptr688
  %array_ptr689 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array690 = bitcast { i32, [ 0 x i32 ] }* %array_ptr689 to { i32, [ 0 x i32 ] }* 
  %index_ptr691 = getelementptr { i32, [ 0 x i32 ] }* %array690, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr691
  %index_ptr692 = getelementptr { i32, [ 0 x i32 ] }* %array690, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr692
  %index_ptr693 = getelementptr { i32, [ 0 x i32 ] }* %array690, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr693
  %index_ptr694 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array682, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array690, { i32, [ 0 x i32 ] }** %index_ptr694
  %array_ptr695 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array696 = bitcast { i32, [ 0 x i32 ] }* %array_ptr695 to { i32, [ 0 x i32 ] }* 
  %index_ptr697 = getelementptr { i32, [ 0 x i32 ] }* %array696, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr697
  %index_ptr698 = getelementptr { i32, [ 0 x i32 ] }* %array696, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr698
  %index_ptr699 = getelementptr { i32, [ 0 x i32 ] }* %array696, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr699
  %index_ptr700 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array682, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array696, { i32, [ 0 x i32 ] }** %index_ptr700
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array682, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2701
  ret void
}


define void @arr1680.init (){

__fresh254:
  %array_ptr675 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array676 = bitcast { i32, [ 0 x i32 ] }* %array_ptr675 to { i32, [ 0 x i32 ] }* 
  %index_ptr677 = getelementptr { i32, [ 0 x i32 ] }* %array676, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr677
  %index_ptr678 = getelementptr { i32, [ 0 x i32 ] }* %array676, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr678
  %index_ptr679 = getelementptr { i32, [ 0 x i32 ] }* %array676, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr679
  store { i32, [ 0 x i32 ] }* %array676, { i32, [ 0 x i32 ] }** @arr1680
  ret void
}


