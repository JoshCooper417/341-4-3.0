declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh409:
  ret void
}


define i32 @program (i32 %argc1628, { i32, [ 0 x i8* ] }* %argv1626){

__fresh408:
  %argc_slot1629 = alloca i32
  store i32 %argc1628, i32* %argc_slot1629
  %argv_slot1627 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1626, { i32, [ 0 x i8* ] }** %argv_slot1627
  %array_ptr1630 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1631 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1630 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1632 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1633 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1632 to { i32, [ 0 x i32 ] }* 
  %index_ptr1634 = getelementptr { i32, [ 0 x i32 ] }* %array1633, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1634
  %index_ptr1635 = getelementptr { i32, [ 0 x i32 ] }* %array1633, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1635
  %index_ptr1636 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1631, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1633, { i32, [ 0 x i32 ] }** %index_ptr1636
  %array_ptr1637 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1638 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1637 to { i32, [ 0 x i32 ] }* 
  %index_ptr1639 = getelementptr { i32, [ 0 x i32 ] }* %array1638, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1639
  %index_ptr1640 = getelementptr { i32, [ 0 x i32 ] }* %array1638, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1640
  %index_ptr1641 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1631, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1638, { i32, [ 0 x i32 ] }** %index_ptr1641
  %array_ptr1642 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1643 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1642 to { i32, [ 0 x i32 ] }* 
  %index_ptr1644 = getelementptr { i32, [ 0 x i32 ] }* %array1643, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1644
  %index_ptr1645 = getelementptr { i32, [ 0 x i32 ] }* %array1643, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1645
  %index_ptr1646 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1631, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1643, { i32, [ 0 x i32 ] }** %index_ptr1646
  %array_ptr1647 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1648 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1647 to { i32, [ 0 x i32 ] }* 
  %index_ptr1649 = getelementptr { i32, [ 0 x i32 ] }* %array1648, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1649
  %index_ptr1650 = getelementptr { i32, [ 0 x i32 ] }* %array1648, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1650
  %index_ptr1651 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1631, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1648, { i32, [ 0 x i32 ] }** %index_ptr1651
  %arr1652 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1631, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1652
  %len_ptr1653 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1652, i32 0, i32 0
  %len1654 = load i32* %len_ptr1653
  call void @oat_array_bounds_check( i32 %len1654, i32 2 )
  %array_dereferenced1655 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1652
  %elt_ptr1656 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1655, i32 0, i32 1, i32 2
  %_lhs1657 = load { i32, [ 0 x i32 ] }** %elt_ptr1656
  %len_ptr1658 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1657, i32 0, i32 0
  %len1659 = load i32* %len_ptr1658
  %len1660 = alloca i32
  store i32 %len1659, i32* %len1660
  %_lhs1661 = load i32* %len1660
  ret i32 %_lhs1661
}


