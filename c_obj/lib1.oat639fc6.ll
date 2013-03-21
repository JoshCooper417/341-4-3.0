declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh325:
  ret void
}


define i32 @program (i32 %argc1633, { i32, [ 0 x i8* ] }* %argv1631){

__fresh324:
  %argc_slot1634 = alloca i32
  store i32 %argc1633, i32* %argc_slot1634
  %argv_slot1632 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1631, { i32, [ 0 x i8* ] }** %argv_slot1632
  %array_ptr1635 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1636 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1635 to { i32, [ 0 x i32 ] }* 
  %index_ptr1637 = getelementptr { i32, [ 0 x i32 ] }* %array1636, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1637
  %index_ptr1638 = getelementptr { i32, [ 0 x i32 ] }* %array1636, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1638
  %index_ptr1639 = getelementptr { i32, [ 0 x i32 ] }* %array1636, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1639
  %arr1640 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1636, { i32, [ 0 x i32 ] }** %arr1640
  %_lhs1641 = load { i32, [ 0 x i32 ] }** %arr1640
  %len_ptr1642 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1641, i32 0, i32 0
  %len1643 = load i32* %len_ptr1642
  %len1644 = alloca i32
  store i32 %len1643, i32* %len1644
  %_lhs1645 = load i32* %len1644
  ret i32 %_lhs1645
}


