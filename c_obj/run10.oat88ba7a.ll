declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr628 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr628.init
define void @oat_init (){

__fresh140:
  call void @garr628.init(  )
  ret void
}


define i32 @program (i32 %argc634, { i32, [ 0 x i8* ] }* %argv632){

__fresh139:
  %argc_slot635 = alloca i32
  store i32 %argc634, i32* %argc_slot635
  %argv_slot633 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv632, { i32, [ 0 x i8* ] }** %argv_slot633
  %len_ptr636 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr628, i32 0, i32 0
  %len637 = load i32* %len_ptr636
  call void @oat_array_bounds_check( i32 %len637, i32 1 )
  %array_dereferenced638 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr628
  %elt_ptr639 = getelementptr i32 %array_dereferenced638, i32 0, i32 1, i32 1
  %_lhs640 = load { i32, [ 0 x i32 ] }** %elt_ptr639
  %ret641 = call { i32, [ 0 x i32 ] }* @f ( { i32, [ 0 x i32 ] }* %_lhs640 )
  %arr642 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret641, { i32, [ 0 x i32 ] }** %arr642
  %len_ptr643 = getelementptr { i32, [ 0 x i32 ] }** %arr642, i32 0, i32 0
  %len644 = load i32* %len_ptr643
  call void @oat_array_bounds_check( i32 %len644, i32 1 )
  %array_dereferenced645 = load { i32, [ 0 x i32 ] }** %arr642
  %elt_ptr646 = getelementptr i32 %array_dereferenced645, i32 0, i32 1, i32 1
  %_lhs647 = load i32* %elt_ptr646
  ret i32 %_lhs647
}


define { i32, [ 0 x i32 ] }* @f ({ i32, [ 0 x i32 ] }* %arr629){

__fresh138:
  %arr_slot630 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr629, { i32, [ 0 x i32 ] }** %arr_slot630
  %_lhs631 = load { i32, [ 0 x i32 ] }** %arr_slot630
  ret { i32, [ 0 x i32 ] }* %_lhs631
}


define void @garr628.init (){

__fresh137:
  %array_ptr614 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array615 = bitcast { i32, [ 0 x i32 ] }* %array_ptr614 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr616 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array617 = bitcast { i32, [ 0 x i32 ] }* %array_ptr616 to { i32, [ 0 x i32 ] }* 
  %index_ptr618 = getelementptr { i32, [ 0 x i32 ] }* %array617, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr618
  %index_ptr619 = getelementptr { i32, [ 0 x i32 ] }* %array617, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr619
  %index_ptr620 = getelementptr { i32, [ 0 x i32 ] }* %array617, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr620
  %index_ptr621 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array615, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array617, { i32, [ 0 x i32 ] }** %index_ptr621
  %array_ptr622 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array623 = bitcast { i32, [ 0 x i32 ] }* %array_ptr622 to { i32, [ 0 x i32 ] }* 
  %index_ptr624 = getelementptr { i32, [ 0 x i32 ] }* %array623, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr624
  %index_ptr625 = getelementptr { i32, [ 0 x i32 ] }* %array623, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr625
  %index_ptr626 = getelementptr { i32, [ 0 x i32 ] }* %array623, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr626
  %index_ptr627 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array615, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array623, { i32, [ 0 x i32 ] }** %index_ptr627
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array615, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr628
  ret void
}


