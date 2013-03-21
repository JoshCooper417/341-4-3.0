declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh319:
  ret void
}


define i32 @program (i32 %argc1643, { i32, [ 0 x i8* ] }* %argv1641){

__fresh316:
  %argc_slot1644 = alloca i32
  store i32 %argc1643, i32* %argc_slot1644
  %argv_slot1642 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1641, { i32, [ 0 x i8* ] }** %argv_slot1642
  %array_ptr1645 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array1646 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1645 to { i32, [ 0 x i32 ] }* 
  %index_ptr1647 = getelementptr { i32, [ 0 x i32 ] }* %array1646, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1647
  %index_ptr1648 = getelementptr { i32, [ 0 x i32 ] }* %array1646, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr1648
  %index_ptr1649 = getelementptr { i32, [ 0 x i32 ] }* %array1646, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr1649
  %index_ptr1650 = getelementptr { i32, [ 0 x i32 ] }* %array1646, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr1650
  %unop1651 = sub i32 0, 6
  %index_ptr1652 = getelementptr { i32, [ 0 x i32 ] }* %array1646, i32 0, i32 1, i32 4
  store i32 %unop1651, i32* %index_ptr1652
  %index_ptr1653 = getelementptr { i32, [ 0 x i32 ] }* %array1646, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr1653
  %index_ptr1654 = getelementptr { i32, [ 0 x i32 ] }* %array1646, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr1654
  %index_ptr1655 = getelementptr { i32, [ 0 x i32 ] }* %array1646, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr1655
  %unop1656 = sub i32 0, 2
  %index_ptr1657 = getelementptr { i32, [ 0 x i32 ] }* %array1646, i32 0, i32 1, i32 8
  store i32 %unop1656, i32* %index_ptr1657
  %unop1658 = sub i32 0, 5
  %index_ptr1659 = getelementptr { i32, [ 0 x i32 ] }* %array1646, i32 0, i32 1, i32 9
  store i32 %unop1658, i32* %index_ptr1659
  %index_ptr1660 = getelementptr { i32, [ 0 x i32 ] }* %array1646, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr1660
  %index_ptr1661 = getelementptr { i32, [ 0 x i32 ] }* %array1646, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr1661
  %index_ptr1662 = getelementptr { i32, [ 0 x i32 ] }* %array1646, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr1662
  %unop1663 = sub i32 0, 3
  %index_ptr1664 = getelementptr { i32, [ 0 x i32 ] }* %array1646, i32 0, i32 1, i32 13
  store i32 %unop1663, i32* %index_ptr1664
  %index_ptr1665 = getelementptr { i32, [ 0 x i32 ] }* %array1646, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr1665
  %nums1666 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1646, { i32, [ 0 x i32 ] }** %nums1666
  %i1667 = alloca i32
  store i32 0, i32* %i1667
  %_lhs1668 = load { i32, [ 0 x i32 ] }** %nums1666
  %len_ptr1669 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1668, i32 0, i32 0
  %len1670 = load i32* %len_ptr1669
  %n1671 = alloca i32
  store i32 %len1670, i32* %n1671
  %_lhs1673 = load i32* %n1671
  %bop1674 = sub i32 %_lhs1673, 1
  %_lhs1672 = load { i32, [ 0 x i32 ] }** %nums1666
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs1672, i32 0, i32 %bop1674 )
  store i32 0, i32* %i1667
  br label %__cond315

__cond315:
  %_lhs1675 = load i32* %i1667
  %_lhs1676 = load i32* %n1671
  %bop1677 = sub i32 %_lhs1676, 1
  %bop1678 = icmp sle i32 %_lhs1675, %bop1677
  br i1 %bop1678, label %__body314, label %__post313

__fresh317:
  br label %__body314

__body314:
  %_lhs1680 = load { i32, [ 0 x i32 ] }** %nums1666
  call void @print_int( { i32, [ 0 x i32 ] }* %_lhs1680 )
  %_lhs1681 = load i32* %i1667
  %bop1682 = add i32 %_lhs1681, 1
  store i32 %bop1682, i32* %i1667
  br label %__cond315

__fresh318:
  br label %__post313

__post313:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a1602, i32 %i1600, i32 %j1598){

__fresh308:
  %a_slot1603 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1602, { i32, [ 0 x i32 ] }** %a_slot1603
  %i_slot1601 = alloca i32
  store i32 %i1600, i32* %i_slot1601
  %j_slot1599 = alloca i32
  store i32 %j1598, i32* %j_slot1599
  %t1604 = alloca i32
  store i32 0, i32* %t1604
  %_lhs1606 = load { i32, [ 0 x i32 ] }** %a_slot1603
  %_lhs1608 = load { i32, [ 0 x i32 ] }** %a_slot1603
  %bop1609 = icmp slt { i32, [ 0 x i32 ] }* %_lhs1606, %_lhs1608
  br i1 %bop1609, label %__then304, label %__else303

__fresh309:
  br label %__then304

__then304:
  %_lhs1611 = load { i32, [ 0 x i32 ] }** %a_slot1603
  store { i32, [ 0 x i32 ] }* %_lhs1611, i32* %t1604
  %_lhs1614 = load { i32, [ 0 x i32 ] }** %a_slot1603
  store { i32, [ 0 x i32 ] }* %_lhs1614, { i32, [ 0 x i32 ] }** %a_slot1603
  %_lhs1616 = load i32* %t1604
  store i32 %_lhs1616, { i32, [ 0 x i32 ] }** %a_slot1603
  br label %__merge302

__fresh310:
  br label %__else303

__else303:
  br label %__merge302

__merge302:
  %_lhs1617 = load i32* %j_slot1599
  %_lhs1618 = load i32* %i_slot1601
  %bop1619 = sub i32 %_lhs1617, %_lhs1618
  %bop1620 = icmp sgt i32 %bop1619, 1
  br i1 %bop1620, label %__then307, label %__else306

__fresh311:
  br label %__then307

__then307:
  %_lhs1621 = load i32* %j_slot1599
  %_lhs1622 = load i32* %i_slot1601
  %bop1623 = sub i32 %_lhs1621, %_lhs1622
  %bop1624 = add i32 %bop1623, 1
  %bop1625 = ashr i32 %bop1624, 1
  store i32 %bop1625, i32* %t1604
  %_lhs1628 = load i32* %j_slot1599
  %_lhs1629 = load i32* %t1604
  %bop1630 = sub i32 %_lhs1628, %_lhs1629
  %_lhs1627 = load i32* %i_slot1601
  %_lhs1626 = load { i32, [ 0 x i32 ] }** %a_slot1603
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs1626, i32 %_lhs1627, i32 %bop1630 )
  %_lhs1635 = load i32* %j_slot1599
  %_lhs1632 = load i32* %i_slot1601
  %_lhs1633 = load i32* %t1604
  %bop1634 = add i32 %_lhs1632, %_lhs1633
  %_lhs1631 = load { i32, [ 0 x i32 ] }** %a_slot1603
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs1631, i32 %bop1634, i32 %_lhs1635 )
  %_lhs1638 = load i32* %j_slot1599
  %_lhs1639 = load i32* %t1604
  %bop1640 = sub i32 %_lhs1638, %_lhs1639
  %_lhs1637 = load i32* %i_slot1601
  %_lhs1636 = load { i32, [ 0 x i32 ] }** %a_slot1603
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs1636, i32 %_lhs1637, i32 %bop1640 )
  br label %__merge305

__fresh312:
  br label %__else306

__else306:
  br label %__merge305

__merge305:
  ret void
}


