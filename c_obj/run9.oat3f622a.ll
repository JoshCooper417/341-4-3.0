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


define i32 @program (i32 %argc616, { i32, [ 0 x i8* ] }* %argv614){

__fresh143:
  %argc_slot617 = alloca i32
  store i32 %argc616, i32* %argc_slot617
  %argv_slot615 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv614, { i32, [ 0 x i8* ] }** %argv_slot615
  %array_ptr618 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array619 = bitcast { i32, [ 0 x i32 ] }* %array_ptr618 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr620 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array621 = bitcast { i32, [ 0 x i32 ] }* %array_ptr620 to { i32, [ 0 x i32 ] }* 
  %index_ptr622 = getelementptr { i32, [ 0 x i32 ] }* %array621, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr622
  %index_ptr623 = getelementptr { i32, [ 0 x i32 ] }* %array621, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr623
  %index_ptr624 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array619, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array621, { i32, [ 0 x i32 ] }** %index_ptr624
  %array_ptr625 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array626 = bitcast { i32, [ 0 x i32 ] }* %array_ptr625 to { i32, [ 0 x i32 ] }* 
  %index_ptr627 = getelementptr { i32, [ 0 x i32 ] }* %array626, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr627
  %index_ptr628 = getelementptr { i32, [ 0 x i32 ] }* %array626, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr628
  %index_ptr629 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array619, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array626, { i32, [ 0 x i32 ] }** %index_ptr629
  %arr630 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array619, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr630
  %len_ptr631 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr630, i32 0, i32 0
  %len632 = load i32* %len_ptr631
  call void @oat_array_bounds_check( i32 %len632, i32 1 )
  %array_dereferenced633 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr630
  %elt_ptr634 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced633, i32 0, i32 1, i32 1
  %len_ptr635 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr634, i32 0, i32 0
  %len636 = load i32* %len_ptr635
  call void @oat_array_bounds_check( i32 %len636, i32 1 )
  %array_dereferenced637 = load { i32, [ 0 x i32 ] }** %elt_ptr634
  %elt_ptr638 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced637, i32 0, i32 1, i32 1
  %_lhs639 = load i32* %elt_ptr638
  ret i32 %_lhs639
}


