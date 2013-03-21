declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh327:
  ret void
}


define i32 @program (i32 %argc1648, { i32, [ 0 x i8* ] }* %argv1646){

__fresh326:
  %argc_slot1649 = alloca i32
  store i32 %argc1648, i32* %argc_slot1649
  %argv_slot1647 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1646, { i32, [ 0 x i8* ] }** %argv_slot1647
  %array_ptr1650 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1651 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1650 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1652 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1653 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1652 to { i32, [ 0 x i32 ] }* 
  %index_ptr1654 = getelementptr { i32, [ 0 x i32 ] }* %array1653, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1654
  %index_ptr1655 = getelementptr { i32, [ 0 x i32 ] }* %array1653, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1655
  %index_ptr1656 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1651, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1653, { i32, [ 0 x i32 ] }** %index_ptr1656
  %array_ptr1657 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1658 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1657 to { i32, [ 0 x i32 ] }* 
  %index_ptr1659 = getelementptr { i32, [ 0 x i32 ] }* %array1658, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1659
  %index_ptr1660 = getelementptr { i32, [ 0 x i32 ] }* %array1658, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1660
  %index_ptr1661 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1651, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1658, { i32, [ 0 x i32 ] }** %index_ptr1661
  %array_ptr1662 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1663 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1662 to { i32, [ 0 x i32 ] }* 
  %index_ptr1664 = getelementptr { i32, [ 0 x i32 ] }* %array1663, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1664
  %index_ptr1665 = getelementptr { i32, [ 0 x i32 ] }* %array1663, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1665
  %index_ptr1666 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1651, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1663, { i32, [ 0 x i32 ] }** %index_ptr1666
  %array_ptr1667 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1668 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1667 to { i32, [ 0 x i32 ] }* 
  %index_ptr1669 = getelementptr { i32, [ 0 x i32 ] }* %array1668, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1669
  %index_ptr1670 = getelementptr { i32, [ 0 x i32 ] }* %array1668, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1670
  %index_ptr1671 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1651, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1668, { i32, [ 0 x i32 ] }** %index_ptr1671
  %arr1672 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1651, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1672
  %len_ptr1673 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1672, i32 0, i32 0
  %len1674 = load i32* %len_ptr1673
  call void @oat_array_bounds_check( i32 %len1674, i32 2 )
  %array_dereferenced1675 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1672
  %elt_ptr1676 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1675, i32 0, i32 1, i32 2
  %_lhs1677 = load { i32, [ 0 x i32 ] }** %elt_ptr1676
  %len_ptr1678 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1677, i32 0, i32 0
  %len1679 = load i32* %len_ptr1678
  %len1680 = alloca i32
  store i32 %len1679, i32* %len1680
  %_lhs1681 = load i32* %len1680
  ret i32 %_lhs1681
}


