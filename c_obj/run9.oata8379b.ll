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


define i32 @program (i32 %argc657, { i32, [ 0 x i8* ] }* %argv655){

__fresh177:
  %argc_slot658 = alloca i32
  store i32 %argc657, i32* %argc_slot658
  %argv_slot656 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv655, { i32, [ 0 x i8* ] }** %argv_slot656
  %array_ptr659 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array660 = bitcast { i32, [ 0 x i32 ] }* %array_ptr659 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr661 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array662 = bitcast { i32, [ 0 x i32 ] }* %array_ptr661 to { i32, [ 0 x i32 ] }* 
  %index_ptr663 = getelementptr { i32, [ 0 x i32 ] }* %array662, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr663
  %index_ptr664 = getelementptr { i32, [ 0 x i32 ] }* %array662, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr664
  %index_ptr665 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array660, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array662, { i32, [ 0 x i32 ] }** %index_ptr665
  %array_ptr666 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array667 = bitcast { i32, [ 0 x i32 ] }* %array_ptr666 to { i32, [ 0 x i32 ] }* 
  %index_ptr668 = getelementptr { i32, [ 0 x i32 ] }* %array667, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr668
  %index_ptr669 = getelementptr { i32, [ 0 x i32 ] }* %array667, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr669
  %index_ptr670 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array660, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array667, { i32, [ 0 x i32 ] }** %index_ptr670
  %arr671 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array660, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr671
  %len_ptr672 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr671, i32 0, i32 0
  %len673 = load i32* %len_ptr672
  call void @oat_array_bounds_check( i32 %len673, i32 1 )
  %array_dereferenced674 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr671
  %elt_ptr675 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced674, i32 0, i32 1, i32 1
  %len_ptr676 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr675, i32 0, i32 0
  %len677 = load i32* %len_ptr676
  call void @oat_array_bounds_check( i32 %len677, i32 1 )
  %array_dereferenced678 = load { i32, [ 0 x i32 ] }** %elt_ptr675
  %elt_ptr679 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced678, i32 0, i32 1, i32 1
  %_lhs680 = load i32* %elt_ptr679
  ret i32 %_lhs680
}


