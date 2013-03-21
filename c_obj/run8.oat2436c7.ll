declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh196:
  ret void
}


define i32 @program (i32 %argc602, { i32, [ 0 x i8* ] }* %argv600){

__fresh195:
  %argc_slot603 = alloca i32
  store i32 %argc602, i32* %argc_slot603
  %argv_slot601 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv600, { i32, [ 0 x i8* ] }** %argv_slot601
  %array_ptr604 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array605 = bitcast { i32, [ 0 x i32 ] }* %array_ptr604 to { i32, [ 0 x i32 ] }* 
  %index_ptr606 = getelementptr { i32, [ 0 x i32 ] }* %array605, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr606
  %index_ptr607 = getelementptr { i32, [ 0 x i32 ] }* %array605, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr607
  %arr608 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array605, { i32, [ 0 x i32 ] }** %arr608
  %array_dereferenced609 = load { i32, [ 0 x i32 ] }** %arr608
  %len_ptr610 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced609, i32 0, i32 0
  %len611 = load i32* %len_ptr610
  call void @oat_array_bounds_check( i32 %len611, i32 1 )
  %elt_ptr612 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced609, i32 0, i32 1, i32 1
  %_lhs613 = load i32* %elt_ptr612
  ret i32 %_lhs613
}


