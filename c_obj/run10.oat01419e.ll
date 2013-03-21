declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr648 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr648.init
define void @oat_init (){

__fresh120:
  call void @garr648.init(  )
  ret void
}


define i32 @program (i32 %argc654, { i32, [ 0 x i8* ] }* %argv652){

__fresh119:
  %argc_slot655 = alloca i32
  store i32 %argc654, i32* %argc_slot655
  %argv_slot653 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv652, { i32, [ 0 x i8* ] }** %argv_slot653
  %_lhs656 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr648
  %len_ptr657 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs656, i32 0, i32 0
  %len658 = load i32* %len_ptr657
  call void @oat_array_bounds_check( i32 %len658, i32 1 )
  %array_dereferenced659 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr648
  %elt_ptr660 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr648, i32 0, i32 1, i32 1
  %_lhs661 = load i32* %elt_ptr660
  %ret662 = call { i32, [ 0 x i32 ] }* @f ( i32 %_lhs661 )
  %arr663 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret662, { i32, [ 0 x i32 ] }** %arr663
  %_lhs664 = load { i32, [ 0 x i32 ] }** %arr663
  %len_ptr665 = getelementptr { i32, [ 0 x i32 ] }* %_lhs664, i32 0, i32 0
  %len666 = load i32* %len_ptr665
  call void @oat_array_bounds_check( i32 %len666, i32 1 )
  %array_dereferenced667 = load { i32, [ 0 x i32 ] }** %arr663
  %elt_ptr668 = getelementptr { i32, [ 0 x i32 ] }** %arr663, i32 0, i32 1, i32 1
  %_lhs669 = load i32* %elt_ptr668
  ret i32 %_lhs669
}


define { i32, [ 0 x i32 ] }* @f ({ i32, [ 0 x i32 ] }* %arr649){

__fresh118:
  %arr_slot650 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr649, { i32, [ 0 x i32 ] }** %arr_slot650
  %_lhs651 = load { i32, [ 0 x i32 ] }** %arr_slot650
  ret { i32, [ 0 x i32 ] }* %_lhs651
}


define void @garr648.init (){

__fresh117:
  %array_ptr634 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array635 = bitcast { i32, [ 0 x i32 ] }* %array_ptr634 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr636 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array637 = bitcast { i32, [ 0 x i32 ] }* %array_ptr636 to { i32, [ 0 x i32 ] }* 
  %index_ptr638 = getelementptr { i32, [ 0 x i32 ] }* %array637, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr638
  %index_ptr639 = getelementptr { i32, [ 0 x i32 ] }* %array637, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr639
  %index_ptr640 = getelementptr { i32, [ 0 x i32 ] }* %array637, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr640
  %index_ptr641 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array635, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array637, { i32, [ 0 x i32 ] }** %index_ptr641
  %array_ptr642 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array643 = bitcast { i32, [ 0 x i32 ] }* %array_ptr642 to { i32, [ 0 x i32 ] }* 
  %index_ptr644 = getelementptr { i32, [ 0 x i32 ] }* %array643, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr644
  %index_ptr645 = getelementptr { i32, [ 0 x i32 ] }* %array643, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr645
  %index_ptr646 = getelementptr { i32, [ 0 x i32 ] }* %array643, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr646
  %index_ptr647 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array635, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array643, { i32, [ 0 x i32 ] }** %index_ptr647
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array635, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr648
  ret void
}


