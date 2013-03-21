declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2675 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2675.init
@arr1654 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr1654.init
@i648 = global i32 1, align 4
define void @oat_init (){

__fresh146:
  call void @arr1654.init(  )
  call void @arr2675.init(  )
  ret void
}


define i32 @program (i32 %argc693, { i32, [ 0 x i8* ] }* %argv691){

__fresh145:
  %argc_slot694 = alloca i32
  store i32 %argc693, i32* %argc_slot694
  %argv_slot692 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv691, { i32, [ 0 x i8* ] }** %argv_slot692
  %c695 = alloca i32
  store i32 1, i32* %c695
  %ret696 = call { i32, [ 0 x i32 ] }* @g (  )
  %arr4697 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret696, { i32, [ 0 x i32 ] }** %arr4697
  %array_ptr698 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array699 = bitcast { i32, [ 0 x i32 ] }* %array_ptr698 to { i32, [ 0 x i32 ] }* 
  %index_ptr700 = getelementptr { i32, [ 0 x i32 ] }* %array699, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr700
  %index_ptr701 = getelementptr { i32, [ 0 x i32 ] }* %array699, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr701
  %index_ptr702 = getelementptr { i32, [ 0 x i32 ] }* %array699, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr702
  %index_ptr703 = getelementptr { i32, [ 0 x i32 ] }* %array699, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr703
  %arr3704 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array699, { i32, [ 0 x i32 ] }** %arr3704
  %_lhs705 = load i32* %c695
  %_lhs706 = load i32* @i648
  %bop707 = add i32 %_lhs705, %_lhs706
  store i32 %bop707, i32* %c695
  %_lhs708 = load i32* %c695
  %len_ptr709 = getelementptr { i32, [ 0 x i32 ] }** @arr1654, i32 0, i32 0
  %len710 = load i32* %len_ptr709
  call void @oat_array_bounds_check( i32 %len710, i32 1 )
  %array_dereferenced711 = load { i32, [ 0 x i32 ] }** @arr1654
  %elt_ptr712 = getelementptr i32 %array_dereferenced711, i32 0, i32 1, i32 1
  %_lhs713 = load i32* %elt_ptr712
  %bop714 = add i32 %_lhs708, %_lhs713
  store i32 %bop714, i32* %c695
  %_lhs715 = load i32* %c695
  %len_ptr716 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2675, i32 0, i32 0
  %len717 = load i32* %len_ptr716
  call void @oat_array_bounds_check( i32 %len717, i32 1 )
  %array_dereferenced718 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2675
  %elt_ptr719 = getelementptr i32 %array_dereferenced718, i32 0, i32 1, i32 1
  %len_ptr720 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr719, i32 0, i32 0
  %len721 = load i32* %len_ptr720
  %len_ptr716 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2675, i32 0, i32 0
  %len717 = load i32* %len_ptr716
  call void @oat_array_bounds_check( i32 %len717, i32 1 )
  %array_dereferenced718 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2675
  %elt_ptr719 = getelementptr i32 %array_dereferenced718, i32 0, i32 1, i32 1
  call void @oat_array_bounds_check( i32 %len721, i32 1 )
  %array_dereferenced722 = load { i32, [ 0 x i32 ] }** %elt_ptr719
  %elt_ptr723 = getelementptr i32 %array_dereferenced722, i32 0, i32 1, i32 1
  %_lhs724 = load i32* %elt_ptr723
  %bop725 = add i32 %_lhs715, %_lhs724
  store i32 %bop725, i32* %c695
  %_lhs726 = load i32* %c695
  %len_ptr727 = getelementptr { i32, [ 0 x i32 ] }** %arr3704, i32 0, i32 0
  %len728 = load i32* %len_ptr727
  call void @oat_array_bounds_check( i32 %len728, i32 3 )
  %array_dereferenced729 = load { i32, [ 0 x i32 ] }** %arr3704
  %elt_ptr730 = getelementptr i32 %array_dereferenced729, i32 0, i32 1, i32 3
  %_lhs731 = load i32* %elt_ptr730
  %bop732 = add i32 %_lhs726, %_lhs731
  store i32 %bop732, i32* %c695
  %_lhs733 = load i32* %c695
  %_lhs734 = load { i32, [ 0 x i32 ] }** %arr3704
  %ret735 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs734 )
  %bop736 = add i32 %_lhs733, %ret735
  store i32 %bop736, i32* %c695
  %_lhs737 = load i32* %c695
  %len_ptr738 = getelementptr { i32, [ 0 x i32 ] }** %arr4697, i32 0, i32 0
  %len739 = load i32* %len_ptr738
  call void @oat_array_bounds_check( i32 %len739, i32 1 )
  %array_dereferenced740 = load { i32, [ 0 x i32 ] }** %arr4697
  %elt_ptr741 = getelementptr i32 %array_dereferenced740, i32 0, i32 1, i32 1
  %_lhs742 = load i32* %elt_ptr741
  %bop743 = add i32 %_lhs737, %_lhs742
  store i32 %bop743, i32* %c695
  %_lhs744 = load i32* %c695
  ret i32 %_lhs744
}


define { i32, [ 0 x i32 ] }* @g (){

__fresh144:
  %array_ptr683 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array684 = bitcast { i32, [ 0 x i32 ] }* %array_ptr683 to { i32, [ 0 x i32 ] }* 
  %index_ptr685 = getelementptr { i32, [ 0 x i32 ] }* %array684, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr685
  %index_ptr686 = getelementptr { i32, [ 0 x i32 ] }* %array684, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr686
  %index_ptr687 = getelementptr { i32, [ 0 x i32 ] }* %array684, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr687
  %index_ptr688 = getelementptr { i32, [ 0 x i32 ] }* %array684, i32 0, i32 1, i32 3
  store i32 99, i32* %index_ptr688
  %arr689 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array684, { i32, [ 0 x i32 ] }** %arr689
  %_lhs690 = load { i32, [ 0 x i32 ] }** %arr689
  ret { i32, [ 0 x i32 ] }* %_lhs690
}


define i32 @f ({ i32, [ 0 x i32 ] }* %arr676){

__fresh143:
  %arr_slot677 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr676, { i32, [ 0 x i32 ] }** %arr_slot677
  %len_ptr678 = getelementptr { i32, [ 0 x i32 ] }** %arr_slot677, i32 0, i32 0
  %len679 = load i32* %len_ptr678
  call void @oat_array_bounds_check( i32 %len679, i32 3 )
  %array_dereferenced680 = load { i32, [ 0 x i32 ] }** %arr_slot677
  %elt_ptr681 = getelementptr i32 %array_dereferenced680, i32 0, i32 1, i32 3
  %_lhs682 = load i32* %elt_ptr681
  ret i32 %_lhs682
}


define void @arr2675.init (){

__fresh142:
  %array_ptr655 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array656 = bitcast { i32, [ 0 x i32 ] }* %array_ptr655 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr657 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array658 = bitcast { i32, [ 0 x i32 ] }* %array_ptr657 to { i32, [ 0 x i32 ] }* 
  %index_ptr659 = getelementptr { i32, [ 0 x i32 ] }* %array658, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr659
  %index_ptr660 = getelementptr { i32, [ 0 x i32 ] }* %array658, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr660
  %index_ptr661 = getelementptr { i32, [ 0 x i32 ] }* %array658, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr661
  %index_ptr662 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array656, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array658, { i32, [ 0 x i32 ] }** %index_ptr662
  %array_ptr663 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array664 = bitcast { i32, [ 0 x i32 ] }* %array_ptr663 to { i32, [ 0 x i32 ] }* 
  %index_ptr665 = getelementptr { i32, [ 0 x i32 ] }* %array664, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr665
  %index_ptr666 = getelementptr { i32, [ 0 x i32 ] }* %array664, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr666
  %index_ptr667 = getelementptr { i32, [ 0 x i32 ] }* %array664, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr667
  %index_ptr668 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array656, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array664, { i32, [ 0 x i32 ] }** %index_ptr668
  %array_ptr669 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array670 = bitcast { i32, [ 0 x i32 ] }* %array_ptr669 to { i32, [ 0 x i32 ] }* 
  %index_ptr671 = getelementptr { i32, [ 0 x i32 ] }* %array670, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr671
  %index_ptr672 = getelementptr { i32, [ 0 x i32 ] }* %array670, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr672
  %index_ptr673 = getelementptr { i32, [ 0 x i32 ] }* %array670, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr673
  %index_ptr674 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array656, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array670, { i32, [ 0 x i32 ] }** %index_ptr674
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array656, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2675
  ret void
}


define void @arr1654.init (){

__fresh141:
  %array_ptr649 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array650 = bitcast { i32, [ 0 x i32 ] }* %array_ptr649 to { i32, [ 0 x i32 ] }* 
  %index_ptr651 = getelementptr { i32, [ 0 x i32 ] }* %array650, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr651
  %index_ptr652 = getelementptr { i32, [ 0 x i32 ] }* %array650, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr652
  %index_ptr653 = getelementptr { i32, [ 0 x i32 ] }* %array650, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr653
  store { i32, [ 0 x i32 ] }* %array650, { i32, [ 0 x i32 ] }** @arr1654
  ret void
}


