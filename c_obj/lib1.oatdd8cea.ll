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


define i32 @program (i32 %argc1663, { i32, [ 0 x i8* ] }* %argv1661){

__fresh312:
  %argc_slot1664 = alloca i32
  store i32 %argc1663, i32* %argc_slot1664
  %argv_slot1662 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1661, { i32, [ 0 x i8* ] }** %argv_slot1662
  %array_ptr1665 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1666 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1665 to { i32, [ 0 x i32 ] }* 
  %index_ptr1667 = getelementptr { i32, [ 0 x i32 ] }* %array1666, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1667
  %index_ptr1668 = getelementptr { i32, [ 0 x i32 ] }* %array1666, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1668
  %index_ptr1669 = getelementptr { i32, [ 0 x i32 ] }* %array1666, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1669
  %arr1670 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1666, { i32, [ 0 x i32 ] }** %arr1670
  %_lhs1671 = load { i32, [ 0 x i32 ] }** %arr1670
  %len_ptr1672 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1671, i32 0, i32 0
  %len1673 = load i32* %len_ptr1672
  %len1674 = alloca i32
  store i32 %len1673, i32* %len1674
  %_lhs1675 = load i32* %len1674
  ret i32 %_lhs1675
}


