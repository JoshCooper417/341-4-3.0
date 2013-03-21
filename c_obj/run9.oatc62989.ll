declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh136:
  ret void
}


define i32 @program (i32 %argc630, { i32, [ 0 x i8* ] }* %argv628){

__fresh135:
  %argc_slot631 = alloca i32
  store i32 %argc630, i32* %argc_slot631
  %argv_slot629 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv628, { i32, [ 0 x i8* ] }** %argv_slot629
  %array_ptr632 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array633 = bitcast { i32, [ 0 x i32 ] }* %array_ptr632 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr634 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array635 = bitcast { i32, [ 0 x i32 ] }* %array_ptr634 to { i32, [ 0 x i32 ] }* 
  %index_ptr636 = getelementptr { i32, [ 0 x i32 ] }* %array635, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr636
  %index_ptr637 = getelementptr { i32, [ 0 x i32 ] }* %array635, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr637
  %index_ptr638 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array633, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array635, { i32, [ 0 x i32 ] }** %index_ptr638
  %array_ptr639 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array640 = bitcast { i32, [ 0 x i32 ] }* %array_ptr639 to { i32, [ 0 x i32 ] }* 
  %index_ptr641 = getelementptr { i32, [ 0 x i32 ] }* %array640, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr641
  %index_ptr642 = getelementptr { i32, [ 0 x i32 ] }* %array640, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr642
  %index_ptr643 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array633, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array640, { i32, [ 0 x i32 ] }** %index_ptr643
  %arr644 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array633, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr644
  %_lhs645 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr644
  %len_ptr646 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs645, i32 0, i32 0
  %len647 = load i32* %len_ptr646
  call void @oat_array_bounds_check( i32 %len647, i32 1 )
  %array_dereferenced648 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr644
  %elt_ptr649 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr644, i32 0, i32 1, i32 1
  %_lhs650 = load [ 0 x { i32, [ 0 x i32 ] }* ]* %elt_ptr649
  %len_ptr651 = getelementptr [ 0 x { i32, [ 0 x i32 ] }* ] %_lhs650, i32 0, i32 0
  %len652 = load i32* %len_ptr651
  %_lhs653 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr644
  %len_ptr654 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs653, i32 0, i32 0
  %len655 = load i32* %len_ptr654
  call void @oat_array_bounds_check( i32 %len655, i32 1 )
  %array_dereferenced656 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr644
  %elt_ptr657 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr644, i32 0, i32 1, i32 1
  call void @oat_array_bounds_check( i32 %len652, i32 1 )
  %array_dereferenced658 = load [ 0 x { i32, [ 0 x i32 ] }* ]* %elt_ptr657
  %elt_ptr659 = getelementptr [ 0 x { i32, [ 0 x i32 ] }* ]* %elt_ptr657, i32 0, i32 1, i32 1
  %_lhs660 = load { i32, [ 0 x i32 ] }** %elt_ptr659
  ret { i32, [ 0 x i32 ] }* %_lhs660
}


