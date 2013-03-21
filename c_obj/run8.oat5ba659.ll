declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh160:
  ret void
}


define i32 @program (i32 %argc651, { i32, [ 0 x i8* ] }* %argv649){

__fresh159:
  %argc_slot652 = alloca i32
  store i32 %argc651, i32* %argc_slot652
  %argv_slot650 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv649, { i32, [ 0 x i8* ] }** %argv_slot650
  %array_ptr653 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array654 = bitcast { i32, [ 0 x i32 ] }* %array_ptr653 to { i32, [ 0 x i32 ] }* 
  %index_ptr655 = getelementptr { i32, [ 0 x i32 ] }* %array654, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr655
  %index_ptr656 = getelementptr { i32, [ 0 x i32 ] }* %array654, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr656
  %arr657 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array654, { i32, [ 0 x i32 ] }** %arr657
  %len_ptr658 = getelementptr { i32, [ 0 x i32 ] }** %arr657, i32 0, i32 0
  %len659 = load i32* %len_ptr658
  call void @oat_array_bounds_check( i32 %len659, i32 1 )
  %array_dereferenced660 = load { i32, [ 0 x i32 ] }** %arr657
  %elt_ptr661 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced660, i32 0, i32 1, i32 1
  %_lhs662 = load i32* %elt_ptr661
  ret i32 %_lhs662
}


