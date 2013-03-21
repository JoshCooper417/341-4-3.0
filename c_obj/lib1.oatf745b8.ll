declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh471:
  ret void
}


define i32 @program (i32 %argc1613, { i32, [ 0 x i8* ] }* %argv1611){

__fresh470:
  %argc_slot1614 = alloca i32
  store i32 %argc1613, i32* %argc_slot1614
  %argv_slot1612 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1611, { i32, [ 0 x i8* ] }** %argv_slot1612
  %array_ptr1615 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1616 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1615 to { i32, [ 0 x i32 ] }* 
  %index_ptr1617 = getelementptr { i32, [ 0 x i32 ] }* %array1616, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1617
  %index_ptr1618 = getelementptr { i32, [ 0 x i32 ] }* %array1616, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1618
  %index_ptr1619 = getelementptr { i32, [ 0 x i32 ] }* %array1616, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1619
  %arr1620 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1616, { i32, [ 0 x i32 ] }** %arr1620
  %_lhs1621 = load { i32, [ 0 x i32 ] }** %arr1620
  %len_ptr1622 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1621, i32 0, i32 0
  %len1623 = load i32* %len_ptr1622
  %len1624 = alloca i32
  store i32 %len1623, i32* %len1624
  %_lhs1625 = load i32* %len1624
  ret i32 %_lhs1625
}


