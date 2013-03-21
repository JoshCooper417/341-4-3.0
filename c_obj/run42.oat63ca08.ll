declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh7:
  ret void
}


define i32 @program (i32 %argc3, { i32, [ 0 x i8* ] }* %argv1){

__fresh6:
  %argc_slot4 = alloca i32
  store i32 %argc3, i32* %argc_slot4
  %argv_slot2 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1, { i32, [ 0 x i8* ] }** %argv_slot2
  store i32 1, i32* %i5
  %a119 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array14, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a119
  %len_ptr20 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a119, i32 0, i32 0
  %len21 = load i32* %len_ptr20
  call void @oat_array_bounds_check( i32 %len21, i32 0 )
  %array_dereferenced22 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a119
  %elt_ptr23 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced22, i32 0, i32 1, i32 0
  %len_ptr24 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr23, i32 0, i32 0
  %len25 = load i32* %len_ptr24
  call void @oat_array_bounds_check( i32 %len25, i32 0 )
  %array_dereferenced26 = load { i32, [ 0 x i32 ] }** %elt_ptr23
  %elt_ptr27 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced26, i32 0, i32 1, i32 0
  %_lhs28 = load i32* %elt_ptr27
  ret i32 %_lhs28
}


