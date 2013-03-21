declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr635 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr635.init
define void @oat_init (){

__fresh158:
  call void @arr635.init(  )
  ret void
}


define i32 @program (i32 %argc638, { i32, [ 0 x i8* ] }* %argv636){

__fresh157:
  %argc_slot639 = alloca i32
  store i32 %argc638, i32* %argc_slot639
  %argv_slot637 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv636, { i32, [ 0 x i8* ] }** %argv_slot637
  %len_ptr640 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr635, i32 0, i32 0
  %len641 = load i32* %len_ptr640
  call void @oat_array_bounds_check( i32 %len641, i32 1 )
  %array_dereferenced642 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr635
  %elt_ptr643 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced642, i32 0, i32 1, i32 1
  %len_ptr644 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr643, i32 0, i32 0
  %len645 = load i32* %len_ptr644
  call void @oat_array_bounds_check( i32 %len645, i32 1 )
  %array_dereferenced646 = load { i32, [ 0 x i32 ] }** %elt_ptr643
  %elt_ptr647 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced646, i32 0, i32 1, i32 1
  %_lhs648 = load i32* %elt_ptr647
  ret i32 %_lhs648
}


define void @arr635.init (){

__fresh156:
  %array_ptr623 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array624 = bitcast { i32, [ 0 x i32 ] }* %array_ptr623 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr625 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array626 = bitcast { i32, [ 0 x i32 ] }* %array_ptr625 to { i32, [ 0 x i32 ] }* 
  %index_ptr627 = getelementptr { i32, [ 0 x i32 ] }* %array626, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr627
  %index_ptr628 = getelementptr { i32, [ 0 x i32 ] }* %array626, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr628
  %index_ptr629 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array624, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array626, { i32, [ 0 x i32 ] }** %index_ptr629
  %array_ptr630 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array631 = bitcast { i32, [ 0 x i32 ] }* %array_ptr630 to { i32, [ 0 x i32 ] }* 
  %index_ptr632 = getelementptr { i32, [ 0 x i32 ] }* %array631, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr632
  %index_ptr633 = getelementptr { i32, [ 0 x i32 ] }* %array631, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr633
  %index_ptr634 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array624, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array631, { i32, [ 0 x i32 ] }** %index_ptr634
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array624, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr635
  ret void
}


