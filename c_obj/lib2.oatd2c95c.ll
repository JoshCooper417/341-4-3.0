declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh243:
  ret void
}


define i32 @program (i32 %argc1647, { i32, [ 0 x i8* ] }* %argv1645){

__fresh242:
  %argc_slot1648 = alloca i32
  store i32 %argc1647, i32* %argc_slot1648
  %argv_slot1646 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1645, { i32, [ 0 x i8* ] }** %argv_slot1646
  %array_ptr1649 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1650 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1649 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1651 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1652 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1651 to { i32, [ 0 x i32 ] }* 
  %index_ptr1653 = getelementptr { i32, [ 0 x i32 ] }* %array1652, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1653
  %index_ptr1654 = getelementptr { i32, [ 0 x i32 ] }* %array1652, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1654
  %index_ptr1655 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1650, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1652, { i32, [ 0 x i32 ] }** %index_ptr1655
  %array_ptr1656 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1657 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1656 to { i32, [ 0 x i32 ] }* 
  %index_ptr1658 = getelementptr { i32, [ 0 x i32 ] }* %array1657, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1658
  %index_ptr1659 = getelementptr { i32, [ 0 x i32 ] }* %array1657, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1659
  %index_ptr1660 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1650, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1657, { i32, [ 0 x i32 ] }** %index_ptr1660
  %array_ptr1661 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1662 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1661 to { i32, [ 0 x i32 ] }* 
  %index_ptr1663 = getelementptr { i32, [ 0 x i32 ] }* %array1662, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1663
  %index_ptr1664 = getelementptr { i32, [ 0 x i32 ] }* %array1662, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1664
  %index_ptr1665 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1650, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1662, { i32, [ 0 x i32 ] }** %index_ptr1665
  %array_ptr1666 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1667 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1666 to { i32, [ 0 x i32 ] }* 
  %index_ptr1668 = getelementptr { i32, [ 0 x i32 ] }* %array1667, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1668
  %index_ptr1669 = getelementptr { i32, [ 0 x i32 ] }* %array1667, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1669
  %index_ptr1670 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1650, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1667, { i32, [ 0 x i32 ] }** %index_ptr1670
  %arr1671 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1650, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1671
  %len_ptr1672 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1671, i32 0, i32 0
  %len1673 = load i32* %len_ptr1672
  call void @oat_array_bounds_check( i32 %len1673, i32 2 )
  %array_dereferenced1674 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1671
  %elt_ptr1675 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1674, i32 0, i32 1, i32 2
  %_lhs1676 = load { i32, [ 0 x i32 ] }** %elt_ptr1675
  %len_ptr1677 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1676, i32 0, i32 0
  %len1678 = load i32* %len_ptr1677
  %len1679 = alloca i32
  store i32 %len1678, i32* %len1679
  %_lhs1680 = load i32* %len1679
  ret i32 %_lhs1680
}


