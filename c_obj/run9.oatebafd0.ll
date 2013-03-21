declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh178:
  ret void
}


define i32 @program (i32 %argc665, { i32, [ 0 x i8* ] }* %argv663){

__fresh177:
  %argc_slot666 = alloca i32
  store i32 %argc665, i32* %argc_slot666
  %argv_slot664 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv663, { i32, [ 0 x i8* ] }** %argv_slot664
  %array_ptr667 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array668 = bitcast { i32, [ 0 x i32 ] }* %array_ptr667 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr669 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array670 = bitcast { i32, [ 0 x i32 ] }* %array_ptr669 to { i32, [ 0 x i32 ] }* 
  %index_ptr671 = getelementptr { i32, [ 0 x i32 ] }* %array670, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr671
  %index_ptr672 = getelementptr { i32, [ 0 x i32 ] }* %array670, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr672
  %index_ptr673 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array668, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array670, { i32, [ 0 x i32 ] }** %index_ptr673
  %array_ptr674 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array675 = bitcast { i32, [ 0 x i32 ] }* %array_ptr674 to { i32, [ 0 x i32 ] }* 
  %index_ptr676 = getelementptr { i32, [ 0 x i32 ] }* %array675, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr676
  %index_ptr677 = getelementptr { i32, [ 0 x i32 ] }* %array675, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr677
  %index_ptr678 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array668, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array675, { i32, [ 0 x i32 ] }** %index_ptr678
  %arr679 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array668, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr679
  %len_ptr680 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr679, i32 0, i32 0
  %len681 = load i32* %len_ptr680
  call void @oat_array_bounds_check( i32 %len681, i32 1 )
  %array_dereferenced682 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr679
  %elt_ptr683 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced682, i32 0, i32 1, i32 1
  %len_ptr684 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr683, i32 0, i32 0
  %len685 = load i32* %len_ptr684
  call void @oat_array_bounds_check( i32 %len685, i32 1 )
  %array_dereferenced686 = load { i32, [ 0 x i32 ] }** %elt_ptr683
  %elt_ptr687 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced686, i32 0, i32 1, i32 1
  %_lhs688 = load i32* %elt_ptr687
  ret i32 %_lhs688
}


