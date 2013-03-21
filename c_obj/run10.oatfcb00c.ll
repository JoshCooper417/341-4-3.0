declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr653 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr653.init
define void @oat_init (){

__fresh120:
  call void @garr653.init(  )
  ret void
}


define i32 @program (i32 %argc659, { i32, [ 0 x i8* ] }* %argv657){

__fresh119:
  %argc_slot660 = alloca i32
  store i32 %argc659, i32* %argc_slot660
  %argv_slot658 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv657, { i32, [ 0 x i8* ] }** %argv_slot658
  %_lhs661 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr653
  %len_ptr662 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs661, i32 0, i32 0
  %len663 = load i32* %len_ptr662
  call void @oat_array_bounds_check( i32 %len663, i32 1 )
  %array_dereferenced664 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr653
  %elt_ptr665 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr653, i32 0, i32 1, i32 1
  %_lhs666 = load [ 0 x { i32, [ 0 x i32 ] }* ]* %elt_ptr665
  %ret667 = call { i32, [ 0 x i32 ] }* @f ( [ 0 x { i32, [ 0 x i32 ] }* ] %_lhs666 )
  %arr668 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret667, { i32, [ 0 x i32 ] }** %arr668
  %_lhs669 = load { i32, [ 0 x i32 ] }** %arr668
  %len_ptr670 = getelementptr { i32, [ 0 x i32 ] }* %_lhs669, i32 0, i32 0
  %len671 = load i32* %len_ptr670
  call void @oat_array_bounds_check( i32 %len671, i32 1 )
  %array_dereferenced672 = load { i32, [ 0 x i32 ] }** %arr668
  %elt_ptr673 = getelementptr { i32, [ 0 x i32 ] }** %arr668, i32 0, i32 1, i32 1
  %_lhs674 = load [ 0 x i32 ]* %elt_ptr673
  ret [ 0 x i32 ] %_lhs674
}


define { i32, [ 0 x i32 ] }* @f ({ i32, [ 0 x i32 ] }* %arr654){

__fresh118:
  %arr_slot655 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr654, { i32, [ 0 x i32 ] }** %arr_slot655
  %_lhs656 = load { i32, [ 0 x i32 ] }** %arr_slot655
  ret { i32, [ 0 x i32 ] }* %_lhs656
}


define void @garr653.init (){

__fresh117:
  %array_ptr639 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array640 = bitcast { i32, [ 0 x i32 ] }* %array_ptr639 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr641 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array642 = bitcast { i32, [ 0 x i32 ] }* %array_ptr641 to { i32, [ 0 x i32 ] }* 
  %index_ptr643 = getelementptr { i32, [ 0 x i32 ] }* %array642, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr643
  %index_ptr644 = getelementptr { i32, [ 0 x i32 ] }* %array642, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr644
  %index_ptr645 = getelementptr { i32, [ 0 x i32 ] }* %array642, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr645
  %index_ptr646 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array640, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array642, { i32, [ 0 x i32 ] }** %index_ptr646
  %array_ptr647 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array648 = bitcast { i32, [ 0 x i32 ] }* %array_ptr647 to { i32, [ 0 x i32 ] }* 
  %index_ptr649 = getelementptr { i32, [ 0 x i32 ] }* %array648, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr649
  %index_ptr650 = getelementptr { i32, [ 0 x i32 ] }* %array648, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr650
  %index_ptr651 = getelementptr { i32, [ 0 x i32 ] }* %array648, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr651
  %index_ptr652 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array640, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array648, { i32, [ 0 x i32 ] }** %index_ptr652
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array640, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr653
  ret void
}


