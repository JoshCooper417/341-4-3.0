declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh624:
  ret void
}


define i32 @program (i32 %argc1644, { i32, [ 0 x i8* ] }* %argv1642){

__fresh623:
  %argc_slot1645 = alloca i32
  store i32 %argc1644, i32* %argc_slot1645
  %argv_slot1643 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1642, { i32, [ 0 x i8* ] }** %argv_slot1643
  %array_ptr1646 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1647 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1646 to { i32, [ 0 x i32 ] }* 
  %index_ptr1648 = getelementptr { i32, [ 0 x i32 ] }* %array1647, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1648
  %index_ptr1649 = getelementptr { i32, [ 0 x i32 ] }* %array1647, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1649
  %index_ptr1650 = getelementptr { i32, [ 0 x i32 ] }* %array1647, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1650
  %arr1651 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1647, { i32, [ 0 x i32 ] }** %arr1651
  %_lhs1652 = load { i32, [ 0 x i32 ] }** %arr1651
  %len_ptr1653 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1652, i32 0, i32 0
  %len1654 = load i32* %len_ptr1653
  %len1655 = alloca i32
  store i32 %len1654, i32* %len1655
  %_lhs1656 = load i32* %len1655
  ret i32 %_lhs1656
}


