declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh144:
  ret void
}


define i32 @program (i32 %argc614, { i32, [ 0 x i8* ] }* %argv612){

__fresh143:
  %argc_slot615 = alloca i32
  store i32 %argc614, i32* %argc_slot615
  %argv_slot613 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv612, { i32, [ 0 x i8* ] }** %argv_slot613
  %array_ptr616 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array617 = bitcast { i32, [ 0 x i32 ] }* %array_ptr616 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr618 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array619 = bitcast { i32, [ 0 x i32 ] }* %array_ptr618 to { i32, [ 0 x i32 ] }* 
  %index_ptr620 = getelementptr { i32, [ 0 x i32 ] }* %array619, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr620
  %index_ptr621 = getelementptr { i32, [ 0 x i32 ] }* %array619, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr621
  %index_ptr622 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array617, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array619, { i32, [ 0 x i32 ] }** %index_ptr622
  %array_ptr623 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array624 = bitcast { i32, [ 0 x i32 ] }* %array_ptr623 to { i32, [ 0 x i32 ] }* 
  %index_ptr625 = getelementptr { i32, [ 0 x i32 ] }* %array624, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr625
  %index_ptr626 = getelementptr { i32, [ 0 x i32 ] }* %array624, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr626
  %index_ptr627 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array617, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array624, { i32, [ 0 x i32 ] }** %index_ptr627
  %arr628 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array617, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr628
  %len_ptr629 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr628, i32 0, i32 0
  %len630 = load i32* %len_ptr629
  call void @oat_array_bounds_check( i32 %len630, i32 1 )
  %array_dereferenced631 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr628
  %elt_ptr632 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced631, i32 0, i32 1, i32 1
  %len_ptr633 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr632, i32 0, i32 0
  %len634 = load i32* %len_ptr633
  call void @oat_array_bounds_check( i32 %len634, i32 1 )
  %array_dereferenced635 = load { i32, [ 0 x i32 ] }** %elt_ptr632
  %elt_ptr636 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced635, i32 0, i32 1, i32 1
  %_lhs637 = load i32* %elt_ptr636
  ret i32 %_lhs637
}


