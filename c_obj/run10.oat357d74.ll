declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr675 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr675.init
define void @oat_init (){

__fresh140:
  call void @garr675.init(  )
  ret void
}


define i32 @program (i32 %argc681, { i32, [ 0 x i8* ] }* %argv679){

__fresh139:
  %argc_slot682 = alloca i32
  store i32 %argc681, i32* %argc_slot682
  %argv_slot680 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv679, { i32, [ 0 x i8* ] }** %argv_slot680
  %_lhs683 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr675
  %len_ptr684 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs683, i32 0, i32 0
  %len685 = load i32* %len_ptr684
  call void @oat_array_bounds_check( i32 %len685, i32 1 )
  %array_dereferenced686 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr675
  %elt_ptr687 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr675, i32 0, i32 1, i32 1
  %_lhs688 = load [ 0 x { i32, [ 0 x i32 ] }* ]* %elt_ptr687
  %ret689 = call { i32, [ 0 x i32 ] }* @f ( [ 0 x { i32, [ 0 x i32 ] }* ] %_lhs688 )
  %arr690 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret689, { i32, [ 0 x i32 ] }** %arr690
  %_lhs691 = load { i32, [ 0 x i32 ] }** %arr690
  %len_ptr692 = getelementptr { i32, [ 0 x i32 ] }* %_lhs691, i32 0, i32 0
  %len693 = load i32* %len_ptr692
  call void @oat_array_bounds_check( i32 %len693, i32 1 )
  %array_dereferenced694 = load { i32, [ 0 x i32 ] }** %arr690
  %elt_ptr695 = getelementptr { i32, [ 0 x i32 ] }** %arr690, i32 0, i32 1, i32 1
  %_lhs696 = load [ 0 x i32 ]* %elt_ptr695
  ret [ 0 x i32 ] %_lhs696
}


define { i32, [ 0 x i32 ] }* @f ({ i32, [ 0 x i32 ] }* %arr676){

__fresh138:
  %arr_slot677 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr676, { i32, [ 0 x i32 ] }** %arr_slot677
  %_lhs678 = load { i32, [ 0 x i32 ] }** %arr_slot677
  ret { i32, [ 0 x i32 ] }* %_lhs678
}


define void @garr675.init (){

__fresh137:
  %array_ptr661 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array662 = bitcast { i32, [ 0 x i32 ] }* %array_ptr661 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr663 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array664 = bitcast { i32, [ 0 x i32 ] }* %array_ptr663 to { i32, [ 0 x i32 ] }* 
  %index_ptr665 = getelementptr { i32, [ 0 x i32 ] }* %array664, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr665
  %index_ptr666 = getelementptr { i32, [ 0 x i32 ] }* %array664, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr666
  %index_ptr667 = getelementptr { i32, [ 0 x i32 ] }* %array664, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr667
  %index_ptr668 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array662, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array664, { i32, [ 0 x i32 ] }** %index_ptr668
  %array_ptr669 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array670 = bitcast { i32, [ 0 x i32 ] }* %array_ptr669 to { i32, [ 0 x i32 ] }* 
  %index_ptr671 = getelementptr { i32, [ 0 x i32 ] }* %array670, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr671
  %index_ptr672 = getelementptr { i32, [ 0 x i32 ] }* %array670, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr672
  %index_ptr673 = getelementptr { i32, [ 0 x i32 ] }* %array670, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr673
  %index_ptr674 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array662, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array670, { i32, [ 0 x i32 ] }** %index_ptr674
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array662, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr675
  ret void
}


