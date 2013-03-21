declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh313:
  ret void
}


define i32 @program (i32 %argc1636, { i32, [ 0 x i8* ] }* %argv1634){

__fresh312:
  %argc_slot1637 = alloca i32
  store i32 %argc1636, i32* %argc_slot1637
  %argv_slot1635 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1634, { i32, [ 0 x i8* ] }** %argv_slot1635
  %array_ptr1638 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1639 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1638 to { i32, [ 0 x i32 ] }* 
  %index_ptr1640 = getelementptr { i32, [ 0 x i32 ] }* %array1639, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1640
  %index_ptr1641 = getelementptr { i32, [ 0 x i32 ] }* %array1639, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1641
  %index_ptr1642 = getelementptr { i32, [ 0 x i32 ] }* %array1639, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1642
  %arr1643 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1639, { i32, [ 0 x i32 ] }** %arr1643
  %_lhs1644 = load { i32, [ 0 x i32 ] }** %arr1643
  %len_ptr1645 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1644, i32 0, i32 0
  %len1646 = load i32* %len_ptr1645
  %len1647 = alloca i32
  store i32 %len1646, i32* %len1647
  %_lhs1648 = load i32* %len1647
  ret i32 %_lhs1648
}


