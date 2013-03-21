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


define i32 @program (i32 %argc1623, { i32, [ 0 x i8* ] }* %argv1621){

__fresh623:
  %argc_slot1624 = alloca i32
  store i32 %argc1623, i32* %argc_slot1624
  %argv_slot1622 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1621, { i32, [ 0 x i8* ] }** %argv_slot1622
  %array_ptr1625 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1626 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1625 to { i32, [ 0 x i32 ] }* 
  %index_ptr1627 = getelementptr { i32, [ 0 x i32 ] }* %array1626, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1627
  %index_ptr1628 = getelementptr { i32, [ 0 x i32 ] }* %array1626, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1628
  %index_ptr1629 = getelementptr { i32, [ 0 x i32 ] }* %array1626, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1629
  %arr1630 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1626, { i32, [ 0 x i32 ] }** %arr1630
  %_lhs1631 = load { i32, [ 0 x i32 ] }** %arr1630
  %len_ptr1632 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1631, i32 0, i32 0
  %len1633 = load i32* %len_ptr1632
  %len1634 = alloca i32
  store i32 %len1633, i32* %len1634
  %_lhs1635 = load i32* %len1634
  ret i32 %_lhs1635
}


