declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh142:
  ret void
}


define i32 @program (i32 %argc600, { i32, [ 0 x i8* ] }* %argv598){

__fresh141:
  %argc_slot601 = alloca i32
  store i32 %argc600, i32* %argc_slot601
  %argv_slot599 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv598, { i32, [ 0 x i8* ] }** %argv_slot599
  %array_ptr602 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array603 = bitcast { i32, [ 0 x i32 ] }* %array_ptr602 to { i32, [ 0 x i32 ] }* 
  %index_ptr604 = getelementptr { i32, [ 0 x i32 ] }* %array603, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr604
  %index_ptr605 = getelementptr { i32, [ 0 x i32 ] }* %array603, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr605
  %arr606 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array603, { i32, [ 0 x i32 ] }** %arr606
  %len_ptr607 = getelementptr { i32, [ 0 x i32 ] }** %arr606, i32 0, i32 0
  %len608 = load i32* %len_ptr607
  call void @oat_array_bounds_check( i32 %len608, i32 1 )
  %array_dereferenced609 = load { i32, [ 0 x i32 ] }** %arr606
  %elt_ptr610 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced609, i32 0, i32 1, i32 1
  %_lhs611 = load i32* %elt_ptr610
  ret i32 %_lhs611
}


