declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh762:
  ret void
}


define i32 @program (i32 %argc3629, { i32, [ 0 x i8* ] }* %argv3627){

__fresh761:
  %argc_slot3630 = alloca i32
  store i32 %argc3629, i32* %argc_slot3630
  %argv_slot3628 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3627, { i32, [ 0 x i8* ] }** %argv_slot3628
  %array_ptr3631 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3632 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3631 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3633 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3634 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3633 to { i32, [ 0 x i32 ] }* 
  %index_ptr3635 = getelementptr { i32, [ 0 x i32 ] }* %array3634, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3635
  %index_ptr3636 = getelementptr { i32, [ 0 x i32 ] }* %array3634, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3636
  %index_ptr3637 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3632, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3634, { i32, [ 0 x i32 ] }** %index_ptr3637
  %array_ptr3638 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3639 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3638 to { i32, [ 0 x i32 ] }* 
  %index_ptr3640 = getelementptr { i32, [ 0 x i32 ] }* %array3639, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3640
  %index_ptr3641 = getelementptr { i32, [ 0 x i32 ] }* %array3639, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3641
  %index_ptr3642 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3632, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3639, { i32, [ 0 x i32 ] }** %index_ptr3642
  %a3643 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3632, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3643
  %len_ptr3644 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3643, i32 0, i32 0
  %len3645 = load i32* %len_ptr3644
  call void @oat_array_bounds_check( i32 %len3645, i32 1 )
  %array_dereferenced3646 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3643
  %elt_ptr3647 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced3646, i32 0, i32 1, i32 1
  %len_ptr3648 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr3647, i32 0, i32 0
  %len3649 = load i32* %len_ptr3648
  call void @oat_array_bounds_check( i32 %len3649, i32 3 )
  %array_dereferenced3650 = load { i32, [ 0 x i32 ] }** %elt_ptr3647
  %elt_ptr3651 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3650, i32 0, i32 1, i32 3
  %_lhs3652 = load i32* %elt_ptr3651
  ret i32 %_lhs3652
}


