declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh233:
  ret void
}


define i32 @program (i32 %argc604, { i32, [ 0 x i8* ] }* %argv602){

__fresh232:
  %argc_slot605 = alloca i32
  store i32 %argc604, i32* %argc_slot605
  %argv_slot603 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv602, { i32, [ 0 x i8* ] }** %argv_slot603
  %array_ptr606 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array607 = bitcast { i32, [ 0 x i32 ] }* %array_ptr606 to { i32, [ 0 x i32 ] }* 
  %index_ptr608 = getelementptr { i32, [ 0 x i32 ] }* %array607, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr608
  %index_ptr609 = getelementptr { i32, [ 0 x i32 ] }* %array607, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr609
  %arr610 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array607, { i32, [ 0 x i32 ] }** %arr610
  %array_dereferenced611 = load { i32, [ 0 x i32 ] }** %arr610
  %len_ptr612 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced611, i32 0, i32 0
  %len613 = load i32* %len_ptr612
  call void @oat_array_bounds_check( i32 %len613, i32 1 )
  %elt_ptr614 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced611, i32 0, i32 1, i32 1
  %_lhs615 = load i32* %elt_ptr614
  ret i32 %_lhs615
}


