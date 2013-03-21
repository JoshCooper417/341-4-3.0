declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1:
  ret void
}


define i32 @program (i32 %argc3, { i32, [ 0 x i8* ] }* %argv1){

__fresh0:
  %argc_slot4 = alloca i32
  store i32 %argc3, i32* %argc_slot4
  %argv_slot2 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1, { i32, [ 0 x i8* ] }** %argv_slot2
  %array_ptr5 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array6 = bitcast { i32, [ 0 x i32 ] }* %array_ptr5 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr7 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array8 = bitcast { i32, [ 0 x i32 ] }* %array_ptr7 to { i32, [ 0 x i32 ] }* 
  %index_ptr9 = getelementptr { i32, [ 0 x i32 ] }* %array8, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr9
  %index_ptr10 = getelementptr { i32, [ 0 x i32 ] }* %array8, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr10
  %index_ptr11 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array6, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array8, { i32, [ 0 x i32 ] }** %index_ptr11
  %array_ptr12 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array13 = bitcast { i32, [ 0 x i32 ] }* %array_ptr12 to { i32, [ 0 x i32 ] }* 
  %index_ptr14 = getelementptr { i32, [ 0 x i32 ] }* %array13, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr14
  %index_ptr15 = getelementptr { i32, [ 0 x i32 ] }* %array13, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr15
  %index_ptr16 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array6, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array13, { i32, [ 0 x i32 ] }** %index_ptr16
  %arr17 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array6, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr17
  %array_dereferenced22 = load { i32, [ 0 x i32 ] }** %elt_ptr21
  %array_dereferenced18 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr17
  %len_ptr19 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced18, i32 0, i32 0
  %len20 = load i32* %len_ptr19
  call void @oat_array_bounds_check( i32 %len20, i32 1 )
  %elt_ptr21 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced18, i32 0, i32 1, i32 1
  %len_ptr23 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced22, i32 0, i32 0
  %len24 = load i32* %len_ptr23
  call void @oat_array_bounds_check( i32 %len24, i32 1 )
  %elt_ptr25 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced22, i32 0, i32 1, i32 1
  %_lhs26 = load i32* %elt_ptr25
  ret i32 %_lhs26
}


