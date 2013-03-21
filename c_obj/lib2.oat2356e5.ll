declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh315:
  ret void
}


define i32 @program (i32 %argc1651, { i32, [ 0 x i8* ] }* %argv1649){

__fresh314:
  %argc_slot1652 = alloca i32
  store i32 %argc1651, i32* %argc_slot1652
  %argv_slot1650 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1649, { i32, [ 0 x i8* ] }** %argv_slot1650
  %array_ptr1653 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1654 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1653 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1655 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1656 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1655 to { i32, [ 0 x i32 ] }* 
  %index_ptr1657 = getelementptr { i32, [ 0 x i32 ] }* %array1656, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1657
  %index_ptr1658 = getelementptr { i32, [ 0 x i32 ] }* %array1656, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1658
  %index_ptr1659 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1654, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1656, { i32, [ 0 x i32 ] }** %index_ptr1659
  %array_ptr1660 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1661 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1660 to { i32, [ 0 x i32 ] }* 
  %index_ptr1662 = getelementptr { i32, [ 0 x i32 ] }* %array1661, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1662
  %index_ptr1663 = getelementptr { i32, [ 0 x i32 ] }* %array1661, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1663
  %index_ptr1664 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1654, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1661, { i32, [ 0 x i32 ] }** %index_ptr1664
  %array_ptr1665 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1666 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1665 to { i32, [ 0 x i32 ] }* 
  %index_ptr1667 = getelementptr { i32, [ 0 x i32 ] }* %array1666, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1667
  %index_ptr1668 = getelementptr { i32, [ 0 x i32 ] }* %array1666, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1668
  %index_ptr1669 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1654, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1666, { i32, [ 0 x i32 ] }** %index_ptr1669
  %array_ptr1670 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1671 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1670 to { i32, [ 0 x i32 ] }* 
  %index_ptr1672 = getelementptr { i32, [ 0 x i32 ] }* %array1671, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1672
  %index_ptr1673 = getelementptr { i32, [ 0 x i32 ] }* %array1671, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1673
  %index_ptr1674 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1654, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1671, { i32, [ 0 x i32 ] }** %index_ptr1674
  %arr1675 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1654, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1675
  %len_ptr1676 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1675, i32 0, i32 0
  %len1677 = load i32* %len_ptr1676
  call void @oat_array_bounds_check( i32 %len1677, i32 2 )
  %array_dereferenced1678 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1675
  %elt_ptr1679 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1678, i32 0, i32 1, i32 2
  %_lhs1680 = load { i32, [ 0 x i32 ] }** %elt_ptr1679
  %len_ptr1681 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1680, i32 0, i32 0
  %len1682 = load i32* %len_ptr1681
  %len1683 = alloca i32
  store i32 %len1682, i32* %len1683
  %_lhs1684 = load i32* %len1683
  ret i32 %_lhs1684
}


