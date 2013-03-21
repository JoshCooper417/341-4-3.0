declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh635:
  ret void
}


define i32 @program (i32 %argc1674, { i32, [ 0 x i8* ] }* %argv1672){

__fresh634:
  %argc_slot1675 = alloca i32
  store i32 %argc1674, i32* %argc_slot1675
  %argv_slot1673 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1672, { i32, [ 0 x i8* ] }** %argv_slot1673
  %array_ptr1676 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1677 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1676 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1678 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1679 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1678 to { i32, [ 0 x i32 ] }* 
  %index_ptr1680 = getelementptr { i32, [ 0 x i32 ] }* %array1679, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1680
  %index_ptr1681 = getelementptr { i32, [ 0 x i32 ] }* %array1679, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1681
  %index_ptr1682 = getelementptr { i32, [ 0 x i32 ] }* %array1679, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1682
  %index_ptr1683 = getelementptr { i32, [ 0 x i32 ] }* %array1679, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1683
  %index_ptr1684 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1677, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1679, { i32, [ 0 x i32 ] }** %index_ptr1684
  %array_ptr1685 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1686 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1685 to { i32, [ 0 x i32 ] }* 
  %index_ptr1687 = getelementptr { i32, [ 0 x i32 ] }* %array1686, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1687
  %index_ptr1688 = getelementptr { i32, [ 0 x i32 ] }* %array1686, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1688
  %index_ptr1689 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1677, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1686, { i32, [ 0 x i32 ] }** %index_ptr1689
  %array_ptr1690 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1691 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1690 to { i32, [ 0 x i32 ] }* 
  %index_ptr1692 = getelementptr { i32, [ 0 x i32 ] }* %array1691, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1692
  %index_ptr1693 = getelementptr { i32, [ 0 x i32 ] }* %array1691, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1693
  %index_ptr1694 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1677, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1691, { i32, [ 0 x i32 ] }** %index_ptr1694
  %array_ptr1695 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1696 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1695 to { i32, [ 0 x i32 ] }* 
  %index_ptr1697 = getelementptr { i32, [ 0 x i32 ] }* %array1696, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1697
  %index_ptr1698 = getelementptr { i32, [ 0 x i32 ] }* %array1696, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1698
  %index_ptr1699 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1677, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1696, { i32, [ 0 x i32 ] }** %index_ptr1699
  %arr1700 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1677, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1700
  %array_dereferenced1701 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1700
  %len_ptr1702 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1701, i32 0, i32 0
  %len1703 = load i32* %len_ptr1702
  call void @oat_array_bounds_check( i32 %len1703, i32 0 )
  %elt_ptr1704 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1701, i32 0, i32 1, i32 0
  %_lhs1705 = load { i32, [ 0 x i32 ] }** %elt_ptr1704
  %len_ptr1706 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1705, i32 0, i32 0
  %len1707 = load i32* %len_ptr1706
  %len1708 = alloca i32
  store i32 %len1707, i32* %len1708
  %_lhs1709 = load i32* %len1708
  ret i32 %_lhs1709
}


