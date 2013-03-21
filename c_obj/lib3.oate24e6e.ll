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


define i32 @program (i32 %argc1695, { i32, [ 0 x i8* ] }* %argv1693){

__fresh634:
  %argc_slot1696 = alloca i32
  store i32 %argc1695, i32* %argc_slot1696
  %argv_slot1694 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1693, { i32, [ 0 x i8* ] }** %argv_slot1694
  %array_ptr1697 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1698 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1697 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1699 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1700 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1699 to { i32, [ 0 x i32 ] }* 
  %index_ptr1701 = getelementptr { i32, [ 0 x i32 ] }* %array1700, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1701
  %index_ptr1702 = getelementptr { i32, [ 0 x i32 ] }* %array1700, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1702
  %index_ptr1703 = getelementptr { i32, [ 0 x i32 ] }* %array1700, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1703
  %index_ptr1704 = getelementptr { i32, [ 0 x i32 ] }* %array1700, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1704
  %index_ptr1705 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1698, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1700, { i32, [ 0 x i32 ] }** %index_ptr1705
  %array_ptr1706 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1707 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1706 to { i32, [ 0 x i32 ] }* 
  %index_ptr1708 = getelementptr { i32, [ 0 x i32 ] }* %array1707, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1708
  %index_ptr1709 = getelementptr { i32, [ 0 x i32 ] }* %array1707, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1709
  %index_ptr1710 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1698, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1707, { i32, [ 0 x i32 ] }** %index_ptr1710
  %array_ptr1711 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1712 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1711 to { i32, [ 0 x i32 ] }* 
  %index_ptr1713 = getelementptr { i32, [ 0 x i32 ] }* %array1712, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1713
  %index_ptr1714 = getelementptr { i32, [ 0 x i32 ] }* %array1712, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1714
  %index_ptr1715 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1698, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1712, { i32, [ 0 x i32 ] }** %index_ptr1715
  %array_ptr1716 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1717 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1716 to { i32, [ 0 x i32 ] }* 
  %index_ptr1718 = getelementptr { i32, [ 0 x i32 ] }* %array1717, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1718
  %index_ptr1719 = getelementptr { i32, [ 0 x i32 ] }* %array1717, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1719
  %index_ptr1720 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1698, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1717, { i32, [ 0 x i32 ] }** %index_ptr1720
  %arr1721 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1698, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1721
  %array_dereferenced1722 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1721
  %len_ptr1723 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1722, i32 0, i32 0
  %len1724 = load i32* %len_ptr1723
  call void @oat_array_bounds_check( i32 %len1724, i32 0 )
  %elt_ptr1725 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1722, i32 0, i32 1, i32 0
  %_lhs1726 = load { i32, [ 0 x i32 ] }** %elt_ptr1725
  %len_ptr1727 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1726, i32 0, i32 0
  %len1728 = load i32* %len_ptr1727
  %len1729 = alloca i32
  store i32 %len1728, i32* %len1729
  %_lhs1730 = load i32* %len1729
  ret i32 %_lhs1730
}


