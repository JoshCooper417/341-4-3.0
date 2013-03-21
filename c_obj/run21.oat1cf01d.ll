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
  %array6 = bitcast { i32, [ 0 x i32 ] }* %array_ptr5 to { i32, [ 0 x i32 ] }* 
  %index_ptr7 = getelementptr { i32, [ 0 x i32 ] }* %array6, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr7
  %index_ptr8 = getelementptr { i32, [ 0 x i32 ] }* %array6, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr8
  %i9 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array6, { i32, [ 0 x i32 ] }** %i9
  %array_dereferenced10 = load { i32, [ 0 x i32 ] }** %i9
  %len_ptr11 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced10, i32 0, i32 0
  %len12 = load i32* %len_ptr11
  call void @oat_array_bounds_check( i32 %len12, i32 0 )
  %elt_ptr13 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced10, i32 0, i32 1, i32 0
  %_lhs14 = load i32* %elt_ptr13
  ret i32 %_lhs14
}


