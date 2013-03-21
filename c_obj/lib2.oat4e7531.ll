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


define i32 @program (i32 %argc1678, { i32, [ 0 x i8* ] }* %argv1676){

__fresh314:
  %argc_slot1679 = alloca i32
  store i32 %argc1678, i32* %argc_slot1679
  %argv_slot1677 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1676, { i32, [ 0 x i8* ] }** %argv_slot1677
  %array_ptr1680 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1681 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1680 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1682 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1683 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1682 to { i32, [ 0 x i32 ] }* 
  %index_ptr1684 = getelementptr { i32, [ 0 x i32 ] }* %array1683, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1684
  %index_ptr1685 = getelementptr { i32, [ 0 x i32 ] }* %array1683, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1685
  %index_ptr1686 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1681, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1683, { i32, [ 0 x i32 ] }** %index_ptr1686
  %array_ptr1687 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1688 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1687 to { i32, [ 0 x i32 ] }* 
  %index_ptr1689 = getelementptr { i32, [ 0 x i32 ] }* %array1688, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1689
  %index_ptr1690 = getelementptr { i32, [ 0 x i32 ] }* %array1688, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1690
  %index_ptr1691 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1681, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1688, { i32, [ 0 x i32 ] }** %index_ptr1691
  %array_ptr1692 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1693 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1692 to { i32, [ 0 x i32 ] }* 
  %index_ptr1694 = getelementptr { i32, [ 0 x i32 ] }* %array1693, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1694
  %index_ptr1695 = getelementptr { i32, [ 0 x i32 ] }* %array1693, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1695
  %index_ptr1696 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1681, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1693, { i32, [ 0 x i32 ] }** %index_ptr1696
  %array_ptr1697 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1698 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1697 to { i32, [ 0 x i32 ] }* 
  %index_ptr1699 = getelementptr { i32, [ 0 x i32 ] }* %array1698, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1699
  %index_ptr1700 = getelementptr { i32, [ 0 x i32 ] }* %array1698, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1700
  %index_ptr1701 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1681, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1698, { i32, [ 0 x i32 ] }** %index_ptr1701
  %arr1702 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1681, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1702
  %len_ptr1703 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1702, i32 0, i32 0
  %len1704 = load i32* %len_ptr1703
  call void @oat_array_bounds_check( i32 %len1704, i32 2 )
  %array_dereferenced1705 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1702
  %elt_ptr1706 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1705, i32 0, i32 1, i32 2
  %_lhs1707 = load { i32, [ 0 x i32 ] }** %elt_ptr1706
  %len_ptr1708 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1707, i32 0, i32 0
  %len1709 = load i32* %len_ptr1708
  %len1710 = alloca i32
  store i32 %len1709, i32* %len1710
  %_lhs1711 = load i32* %len1710
  ret i32 %_lhs1711
}


