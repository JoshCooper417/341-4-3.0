declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh206:
  ret void
}


define i32 @program (i32 %argc958, { i32, [ 0 x i8* ] }* %argv956){

__fresh205:
  %argc_slot959 = alloca i32
  store i32 %argc958, i32* %argc_slot959
  %argv_slot957 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv956, { i32, [ 0 x i8* ] }** %argv_slot957
  %x960 = alloca i32
  store i32 10, i32* %x960
  store i32 1, i32* %i961
  %a980 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array975, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a980
  %_lhs981 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a980
  %b982 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs981, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b982
  %len_ptr983 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b982, i32 0, i32 0
  %len984 = load i32* %len_ptr983
  call void @oat_array_bounds_check( i32 %len984, i32 2 )
  %array_dereferenced985 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b982
  %elt_ptr986 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced985, i32 0, i32 1, i32 2
  %len_ptr987 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr986, i32 0, i32 0
  %len988 = load i32* %len_ptr987
  call void @oat_array_bounds_check( i32 %len988, i32 1 )
  %array_dereferenced989 = load { i32, [ 0 x i32 ] }** %elt_ptr986
  %elt_ptr990 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced989, i32 0, i32 1, i32 1
  %_lhs991 = load i32* %elt_ptr990
  ret i32 %_lhs991
}


