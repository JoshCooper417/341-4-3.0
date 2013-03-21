declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh627:
  ret void
}


define i32 @program (i32 %argc1638, { i32, [ 0 x i8* ] }* %argv1636){

__fresh626:
  %argc_slot1639 = alloca i32
  store i32 %argc1638, i32* %argc_slot1639
  %argv_slot1637 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1636, { i32, [ 0 x i8* ] }** %argv_slot1637
  %array_ptr1640 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1641 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1640 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1642 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1643 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1642 to { i32, [ 0 x i32 ] }* 
  %index_ptr1644 = getelementptr { i32, [ 0 x i32 ] }* %array1643, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1644
  %index_ptr1645 = getelementptr { i32, [ 0 x i32 ] }* %array1643, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1645
  %index_ptr1646 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1641, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1643, { i32, [ 0 x i32 ] }** %index_ptr1646
  %array_ptr1647 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1648 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1647 to { i32, [ 0 x i32 ] }* 
  %index_ptr1649 = getelementptr { i32, [ 0 x i32 ] }* %array1648, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1649
  %index_ptr1650 = getelementptr { i32, [ 0 x i32 ] }* %array1648, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1650
  %index_ptr1651 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1641, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1648, { i32, [ 0 x i32 ] }** %index_ptr1651
  %array_ptr1652 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1653 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1652 to { i32, [ 0 x i32 ] }* 
  %index_ptr1654 = getelementptr { i32, [ 0 x i32 ] }* %array1653, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1654
  %index_ptr1655 = getelementptr { i32, [ 0 x i32 ] }* %array1653, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1655
  %index_ptr1656 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1641, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1653, { i32, [ 0 x i32 ] }** %index_ptr1656
  %array_ptr1657 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1658 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1657 to { i32, [ 0 x i32 ] }* 
  %index_ptr1659 = getelementptr { i32, [ 0 x i32 ] }* %array1658, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1659
  %index_ptr1660 = getelementptr { i32, [ 0 x i32 ] }* %array1658, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1660
  %index_ptr1661 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1641, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1658, { i32, [ 0 x i32 ] }** %index_ptr1661
  %arr1662 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1641, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1662
  %array_dereferenced1663 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1662
  %len_ptr1664 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1663, i32 0, i32 0
  %len1665 = load i32* %len_ptr1664
  call void @oat_array_bounds_check( i32 %len1665, i32 2 )
  %elt_ptr1666 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1663, i32 0, i32 1, i32 2
  %_lhs1667 = load { i32, [ 0 x i32 ] }** %elt_ptr1666
  %len_ptr1668 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1667, i32 0, i32 0
  %len1669 = load i32* %len_ptr1668
  %len1670 = alloca i32
  store i32 %len1669, i32* %len1670
  %_lhs1671 = load i32* %len1670
  ret i32 %_lhs1671
}


