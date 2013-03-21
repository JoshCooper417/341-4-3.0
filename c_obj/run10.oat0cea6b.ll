declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr652 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr652.init
define void @oat_init (){

__fresh148:
  call void @garr652.init(  )
  ret void
}


define i32 @program (i32 %argc658, { i32, [ 0 x i8* ] }* %argv656){

__fresh147:
  %argc_slot659 = alloca i32
  store i32 %argc658, i32* %argc_slot659
  %argv_slot657 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv656, { i32, [ 0 x i8* ] }** %argv_slot657
  %len_ptr660 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr652, i32 0, i32 0
  %len661 = load i32* %len_ptr660
  call void @oat_array_bounds_check( i32 %len661, i32 1 )
  %array_dereferenced662 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr652
  %elt_ptr663 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced662, i32 0, i32 1, i32 1
  %_lhs664 = load { i32, [ 0 x i32 ] }** %elt_ptr663
  %ret665 = call { i32, [ 0 x i32 ] }* @f ( { i32, [ 0 x i32 ] }* %_lhs664 )
  %arr666 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret665, { i32, [ 0 x i32 ] }** %arr666
  %len_ptr667 = getelementptr { i32, [ 0 x i32 ] }** %arr666, i32 0, i32 0
  %len668 = load i32* %len_ptr667
  call void @oat_array_bounds_check( i32 %len668, i32 1 )
  %array_dereferenced669 = load { i32, [ 0 x i32 ] }** %arr666
  %elt_ptr670 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced669, i32 0, i32 1, i32 1
  %_lhs671 = load i32* %elt_ptr670
  ret i32 %_lhs671
}


define { i32, [ 0 x i32 ] }* @f ({ i32, [ 0 x i32 ] }* %arr653){

__fresh146:
  %arr_slot654 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr653, { i32, [ 0 x i32 ] }** %arr_slot654
  %_lhs655 = load { i32, [ 0 x i32 ] }** %arr_slot654
  ret { i32, [ 0 x i32 ] }* %_lhs655
}


define void @garr652.init (){

__fresh145:
  %array_ptr638 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array639 = bitcast { i32, [ 0 x i32 ] }* %array_ptr638 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr640 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array641 = bitcast { i32, [ 0 x i32 ] }* %array_ptr640 to { i32, [ 0 x i32 ] }* 
  %index_ptr642 = getelementptr { i32, [ 0 x i32 ] }* %array641, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr642
  %index_ptr643 = getelementptr { i32, [ 0 x i32 ] }* %array641, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr643
  %index_ptr644 = getelementptr { i32, [ 0 x i32 ] }* %array641, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr644
  %index_ptr645 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array639, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array641, { i32, [ 0 x i32 ] }** %index_ptr645
  %array_ptr646 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array647 = bitcast { i32, [ 0 x i32 ] }* %array_ptr646 to { i32, [ 0 x i32 ] }* 
  %index_ptr648 = getelementptr { i32, [ 0 x i32 ] }* %array647, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr648
  %index_ptr649 = getelementptr { i32, [ 0 x i32 ] }* %array647, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr649
  %index_ptr650 = getelementptr { i32, [ 0 x i32 ] }* %array647, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr650
  %index_ptr651 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array639, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array647, { i32, [ 0 x i32 ] }** %index_ptr651
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array639, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr652
  ret void
}


