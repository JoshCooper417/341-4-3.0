declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh237:
  ret void
}


define i32 @program (i32 %argc618, { i32, [ 0 x i8* ] }* %argv616){

__fresh236:
  %argc_slot619 = alloca i32
  store i32 %argc618, i32* %argc_slot619
  %argv_slot617 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv616, { i32, [ 0 x i8* ] }** %argv_slot617
  %array_ptr620 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array621 = bitcast { i32, [ 0 x i32 ] }* %array_ptr620 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr622 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array623 = bitcast { i32, [ 0 x i32 ] }* %array_ptr622 to { i32, [ 0 x i32 ] }* 
  %index_ptr624 = getelementptr { i32, [ 0 x i32 ] }* %array623, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr624
  %index_ptr625 = getelementptr { i32, [ 0 x i32 ] }* %array623, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr625
  %index_ptr626 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array621, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array623, { i32, [ 0 x i32 ] }** %index_ptr626
  %array_ptr627 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array628 = bitcast { i32, [ 0 x i32 ] }* %array_ptr627 to { i32, [ 0 x i32 ] }* 
  %index_ptr629 = getelementptr { i32, [ 0 x i32 ] }* %array628, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr629
  %index_ptr630 = getelementptr { i32, [ 0 x i32 ] }* %array628, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr630
  %index_ptr631 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array621, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array628, { i32, [ 0 x i32 ] }** %index_ptr631
  %arr632 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array621, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr632
  %array_dereferenced633 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr632
  %len_ptr634 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced633, i32 0, i32 0
  %len635 = load i32* %len_ptr634
  call void @oat_array_bounds_check( i32 %len635, i32 1 )
  %elt_ptr636 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced633, i32 0, i32 1, i32 1
  %array_dereferenced637 = load { i32, [ 0 x i32 ] }** %elt_ptr636
  %len_ptr638 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced637, i32 0, i32 0
  %len639 = load i32* %len_ptr638
  call void @oat_array_bounds_check( i32 %len639, i32 1 )
  %elt_ptr640 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced637, i32 0, i32 1, i32 1
  %_lhs641 = load i32* %elt_ptr640
  ret i32 %_lhs641
}


