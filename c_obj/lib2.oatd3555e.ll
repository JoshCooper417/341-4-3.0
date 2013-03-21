declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh261:
  ret void
}


define i32 @program (i32 %argc1677, { i32, [ 0 x i8* ] }* %argv1675){

__fresh260:
  %argc_slot1678 = alloca i32
  store i32 %argc1677, i32* %argc_slot1678
  %argv_slot1676 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1675, { i32, [ 0 x i8* ] }** %argv_slot1676
  %array_ptr1679 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1680 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1679 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1681 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1682 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1681 to { i32, [ 0 x i32 ] }* 
  %index_ptr1683 = getelementptr { i32, [ 0 x i32 ] }* %array1682, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1683
  %index_ptr1684 = getelementptr { i32, [ 0 x i32 ] }* %array1682, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1684
  %index_ptr1685 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1680, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1682, { i32, [ 0 x i32 ] }** %index_ptr1685
  %array_ptr1686 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1687 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1686 to { i32, [ 0 x i32 ] }* 
  %index_ptr1688 = getelementptr { i32, [ 0 x i32 ] }* %array1687, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1688
  %index_ptr1689 = getelementptr { i32, [ 0 x i32 ] }* %array1687, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1689
  %index_ptr1690 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1680, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1687, { i32, [ 0 x i32 ] }** %index_ptr1690
  %array_ptr1691 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1692 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1691 to { i32, [ 0 x i32 ] }* 
  %index_ptr1693 = getelementptr { i32, [ 0 x i32 ] }* %array1692, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1693
  %index_ptr1694 = getelementptr { i32, [ 0 x i32 ] }* %array1692, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1694
  %index_ptr1695 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1680, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1692, { i32, [ 0 x i32 ] }** %index_ptr1695
  %array_ptr1696 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1697 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1696 to { i32, [ 0 x i32 ] }* 
  %index_ptr1698 = getelementptr { i32, [ 0 x i32 ] }* %array1697, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1698
  %index_ptr1699 = getelementptr { i32, [ 0 x i32 ] }* %array1697, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1699
  %index_ptr1700 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1680, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1697, { i32, [ 0 x i32 ] }** %index_ptr1700
  %arr1701 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1680, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1701
  %len_ptr1702 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1701, i32 0, i32 0
  %len1703 = load i32* %len_ptr1702
  call void @oat_array_bounds_check( i32 %len1703, i32 2 )
  %array_dereferenced1704 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1701
  %elt_ptr1705 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1704, i32 0, i32 1, i32 2
  %_lhs1706 = load { i32, [ 0 x i32 ] }** %elt_ptr1705
  %len_ptr1707 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1706, i32 0, i32 0
  %len1708 = load i32* %len_ptr1707
  %len1709 = alloca i32
  store i32 %len1708, i32* %len1709
  %_lhs1710 = load i32* %len1709
  ret i32 %_lhs1710
}


