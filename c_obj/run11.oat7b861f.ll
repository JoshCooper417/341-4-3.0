declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2699 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2699.init
@arr1678 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr1678.init
@i672 = global i32 1, align 4
define void @oat_init (){

__fresh154:
  call void @arr1678.init(  )
  call void @arr2699.init(  )
  ret void
}


define i32 @program (i32 %argc717, { i32, [ 0 x i8* ] }* %argv715){

__fresh153:
  %argc_slot718 = alloca i32
  store i32 %argc717, i32* %argc_slot718
  %argv_slot716 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv715, { i32, [ 0 x i8* ] }** %argv_slot716
  %c719 = alloca i32
  store i32 1, i32* %c719
  %ret720 = call { i32, [ 0 x i32 ] }* @g (  )
  %arr4721 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret720, { i32, [ 0 x i32 ] }** %arr4721
  %array_ptr722 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array723 = bitcast { i32, [ 0 x i32 ] }* %array_ptr722 to { i32, [ 0 x i32 ] }* 
  %index_ptr724 = getelementptr { i32, [ 0 x i32 ] }* %array723, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr724
  %index_ptr725 = getelementptr { i32, [ 0 x i32 ] }* %array723, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr725
  %index_ptr726 = getelementptr { i32, [ 0 x i32 ] }* %array723, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr726
  %index_ptr727 = getelementptr { i32, [ 0 x i32 ] }* %array723, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr727
  %arr3728 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array723, { i32, [ 0 x i32 ] }** %arr3728
  %_lhs729 = load i32* %c719
  %_lhs730 = load i32* @i672
  %bop731 = add i32 %_lhs729, %_lhs730
  store i32 %bop731, i32* %c719
  %_lhs732 = load i32* %c719
  %len_ptr733 = getelementptr { i32, [ 0 x i32 ] }** @arr1678, i32 0, i32 0
  %len734 = load i32* %len_ptr733
  call void @oat_array_bounds_check( i32 %len734, i32 1 )
  %array_dereferenced735 = load { i32, [ 0 x i32 ] }** @arr1678
  %elt_ptr736 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced735, i32 0, i32 1, i32 1
  %_lhs737 = load i32* %elt_ptr736
  %bop738 = add i32 %_lhs732, %_lhs737
  store i32 %bop738, i32* %c719
  %_lhs739 = load i32* %c719
  %len_ptr740 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2699, i32 0, i32 0
  %len741 = load i32* %len_ptr740
  call void @oat_array_bounds_check( i32 %len741, i32 1 )
  %array_dereferenced742 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2699
  %elt_ptr743 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced742, i32 0, i32 1, i32 1
  %len_ptr744 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr743, i32 0, i32 0
  %len745 = load i32* %len_ptr744
  call void @oat_array_bounds_check( i32 %len745, i32 1 )
  %array_dereferenced746 = load { i32, [ 0 x i32 ] }** %elt_ptr743
  %elt_ptr747 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced746, i32 0, i32 1, i32 1
  %_lhs748 = load i32* %elt_ptr747
  %bop749 = add i32 %_lhs739, %_lhs748
  store i32 %bop749, i32* %c719
  %_lhs750 = load i32* %c719
  %len_ptr751 = getelementptr { i32, [ 0 x i32 ] }** %arr3728, i32 0, i32 0
  %len752 = load i32* %len_ptr751
  call void @oat_array_bounds_check( i32 %len752, i32 3 )
  %array_dereferenced753 = load { i32, [ 0 x i32 ] }** %arr3728
  %elt_ptr754 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced753, i32 0, i32 1, i32 3
  %_lhs755 = load i32* %elt_ptr754
  %bop756 = add i32 %_lhs750, %_lhs755
  store i32 %bop756, i32* %c719
  %_lhs757 = load i32* %c719
  %_lhs758 = load { i32, [ 0 x i32 ] }** %arr3728
  %ret759 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs758 )
  %bop760 = add i32 %_lhs757, %ret759
  store i32 %bop760, i32* %c719
  %_lhs761 = load i32* %c719
  %len_ptr762 = getelementptr { i32, [ 0 x i32 ] }** %arr4721, i32 0, i32 0
  %len763 = load i32* %len_ptr762
  call void @oat_array_bounds_check( i32 %len763, i32 1 )
  %array_dereferenced764 = load { i32, [ 0 x i32 ] }** %arr4721
  %elt_ptr765 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced764, i32 0, i32 1, i32 1
  %_lhs766 = load i32* %elt_ptr765
  %bop767 = add i32 %_lhs761, %_lhs766
  store i32 %bop767, i32* %c719
  %_lhs768 = load i32* %c719
  ret i32 %_lhs768
}


define { i32, [ 0 x i32 ] }* @g (){

__fresh152:
  %array_ptr707 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array708 = bitcast { i32, [ 0 x i32 ] }* %array_ptr707 to { i32, [ 0 x i32 ] }* 
  %index_ptr709 = getelementptr { i32, [ 0 x i32 ] }* %array708, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr709
  %index_ptr710 = getelementptr { i32, [ 0 x i32 ] }* %array708, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr710
  %index_ptr711 = getelementptr { i32, [ 0 x i32 ] }* %array708, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr711
  %index_ptr712 = getelementptr { i32, [ 0 x i32 ] }* %array708, i32 0, i32 1, i32 3
  store i32 99, i32* %index_ptr712
  %arr713 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array708, { i32, [ 0 x i32 ] }** %arr713
  %_lhs714 = load { i32, [ 0 x i32 ] }** %arr713
  ret { i32, [ 0 x i32 ] }* %_lhs714
}


define i32 @f ({ i32, [ 0 x i32 ] }* %arr700){

__fresh151:
  %arr_slot701 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr700, { i32, [ 0 x i32 ] }** %arr_slot701
  %len_ptr702 = getelementptr { i32, [ 0 x i32 ] }** %arr_slot701, i32 0, i32 0
  %len703 = load i32* %len_ptr702
  call void @oat_array_bounds_check( i32 %len703, i32 3 )
  %array_dereferenced704 = load { i32, [ 0 x i32 ] }** %arr_slot701
  %elt_ptr705 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced704, i32 0, i32 1, i32 3
  %_lhs706 = load i32* %elt_ptr705
  ret i32 %_lhs706
}


define void @arr2699.init (){

__fresh150:
  %array_ptr679 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array680 = bitcast { i32, [ 0 x i32 ] }* %array_ptr679 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr681 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array682 = bitcast { i32, [ 0 x i32 ] }* %array_ptr681 to { i32, [ 0 x i32 ] }* 
  %index_ptr683 = getelementptr { i32, [ 0 x i32 ] }* %array682, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr683
  %index_ptr684 = getelementptr { i32, [ 0 x i32 ] }* %array682, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr684
  %index_ptr685 = getelementptr { i32, [ 0 x i32 ] }* %array682, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr685
  %index_ptr686 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array680, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array682, { i32, [ 0 x i32 ] }** %index_ptr686
  %array_ptr687 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array688 = bitcast { i32, [ 0 x i32 ] }* %array_ptr687 to { i32, [ 0 x i32 ] }* 
  %index_ptr689 = getelementptr { i32, [ 0 x i32 ] }* %array688, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr689
  %index_ptr690 = getelementptr { i32, [ 0 x i32 ] }* %array688, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr690
  %index_ptr691 = getelementptr { i32, [ 0 x i32 ] }* %array688, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr691
  %index_ptr692 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array680, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array688, { i32, [ 0 x i32 ] }** %index_ptr692
  %array_ptr693 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array694 = bitcast { i32, [ 0 x i32 ] }* %array_ptr693 to { i32, [ 0 x i32 ] }* 
  %index_ptr695 = getelementptr { i32, [ 0 x i32 ] }* %array694, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr695
  %index_ptr696 = getelementptr { i32, [ 0 x i32 ] }* %array694, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr696
  %index_ptr697 = getelementptr { i32, [ 0 x i32 ] }* %array694, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr697
  %index_ptr698 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array680, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array694, { i32, [ 0 x i32 ] }** %index_ptr698
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array680, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2699
  ret void
}


define void @arr1678.init (){

__fresh149:
  %array_ptr673 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array674 = bitcast { i32, [ 0 x i32 ] }* %array_ptr673 to { i32, [ 0 x i32 ] }* 
  %index_ptr675 = getelementptr { i32, [ 0 x i32 ] }* %array674, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr675
  %index_ptr676 = getelementptr { i32, [ 0 x i32 ] }* %array674, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr676
  %index_ptr677 = getelementptr { i32, [ 0 x i32 ] }* %array674, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr677
  store { i32, [ 0 x i32 ] }* %array674, { i32, [ 0 x i32 ] }** @arr1678
  ret void
}


