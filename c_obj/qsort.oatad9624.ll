declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1703.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1703 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1703.str., i32 0, i32 0), align 4
@_oat_string1698.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1698 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1698.str., i32 0, i32 0), align 4
@_oat_string1694.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1694 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1694.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh238:
  ret void
}


define i32 @program (i32 %argc1680, { i32, [ 0 x i8* ] }* %argv1678){

__fresh237:
  %argc_slot1681 = alloca i32
  store i32 %argc1680, i32* %argc_slot1681
  %argv_slot1679 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1678, { i32, [ 0 x i8* ] }** %argv_slot1679
  %array_ptr1682 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array1683 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1682 to { i32, [ 0 x i32 ] }* 
  %index_ptr1684 = getelementptr { i32, [ 0 x i32 ] }* %array1683, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr1684
  %index_ptr1685 = getelementptr { i32, [ 0 x i32 ] }* %array1683, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1685
  %index_ptr1686 = getelementptr { i32, [ 0 x i32 ] }* %array1683, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr1686
  %index_ptr1687 = getelementptr { i32, [ 0 x i32 ] }* %array1683, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr1687
  %index_ptr1688 = getelementptr { i32, [ 0 x i32 ] }* %array1683, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr1688
  %index_ptr1689 = getelementptr { i32, [ 0 x i32 ] }* %array1683, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr1689
  %index_ptr1690 = getelementptr { i32, [ 0 x i32 ] }* %array1683, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr1690
  %index_ptr1691 = getelementptr { i32, [ 0 x i32 ] }* %array1683, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr1691
  %index_ptr1692 = getelementptr { i32, [ 0 x i32 ] }* %array1683, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr1692
  %a1693 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1683, { i32, [ 0 x i32 ] }** %a1693
  %strval1695 = load i8** @_oat_string1694
  call void @print_string( i8* %strval1695 )
  %_lhs1696 = load { i32, [ 0 x i32 ] }** %a1693
  %ret1697 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1696 )
  call void @print_string( i8* %ret1697 )
  %strval1699 = load i8** @_oat_string1698
  call void @print_string( i8* %strval1699 )
  %_lhs1700 = load { i32, [ 0 x i32 ] }** %a1693
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1700, i32 0, i32 8 )
  %_lhs1701 = load { i32, [ 0 x i32 ] }** %a1693
  %ret1702 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1701 )
  call void @print_string( i8* %ret1702 )
  %strval1704 = load i8** @_oat_string1703
  call void @print_string( i8* %strval1704 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a1569, i32 %l1567, i32 %r1565){

__fresh226:
  %a_slot1570 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1569, { i32, [ 0 x i32 ] }** %a_slot1570
  %l_slot1568 = alloca i32
  store i32 %l1567, i32* %l_slot1568
  %r_slot1566 = alloca i32
  store i32 %r1565, i32* %r_slot1566
  %_lhs1571 = load i32* %l_slot1568
  %_lhs1572 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %len_ptr1573 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1572, i32 0, i32 0
  %len1574 = load i32* %len_ptr1573
  call void @oat_array_bounds_check( i32 %len1574, i32 %_lhs1571 )
  %array_dereferenced1575 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %elt_ptr1576 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1570, i32 0, i32 1, i32 %_lhs1571
  %_lhs1577 = load [ 0 x i32 ]* %elt_ptr1576
  %pivot1578 = alloca i32
  store [ 0 x i32 ] %_lhs1577, i32* %pivot1578
  %_lhs1579 = load i32* %l_slot1568
  %i1580 = alloca i32
  store i32 %_lhs1579, i32* %i1580
  %_lhs1581 = load i32* %r_slot1566
  %bop1582 = add i32 %_lhs1581, 1
  %j1583 = alloca i32
  store i32 %bop1582, i32* %j1583
  %t1584 = alloca i32
  store i32 0, i32* %t1584
  %done1585 = alloca i32
  store i32 0, i32* %done1585
  br label %__cond213

__cond213:
  %_lhs1586 = load i32* %done1585
  %bop1587 = icmp eq i32 %_lhs1586, 0
  br i1 %bop1587, label %__body212, label %__post211

__fresh227:
  br label %__body212

__body212:
  %_lhs1588 = load i32* %i1580
  %bop1589 = add i32 %_lhs1588, 1
  store i32 %bop1589, i32* %i1580
  br label %__cond216

__cond216:
  %_lhs1590 = load i32* %i1580
  %_lhs1591 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %len_ptr1592 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1591, i32 0, i32 0
  %len1593 = load i32* %len_ptr1592
  call void @oat_array_bounds_check( i32 %len1593, i32 %_lhs1590 )
  %array_dereferenced1594 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %elt_ptr1595 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1570, i32 0, i32 1, i32 %_lhs1590
  %_lhs1596 = load [ 0 x i32 ]* %elt_ptr1595
  %_lhs1597 = load i32* %pivot1578
  %bop1598 = icmp sle [ 0 x i32 ] %_lhs1596, %_lhs1597
  %_lhs1599 = load i32* %i1580
  %_lhs1600 = load i32* %r_slot1566
  %bop1601 = icmp sle i32 %_lhs1599, %_lhs1600
  %bop1602 = and i1 %bop1598, %bop1601
  br i1 %bop1602, label %__body215, label %__post214

__fresh228:
  br label %__body215

__body215:
  %_lhs1603 = load i32* %i1580
  %bop1604 = add i32 %_lhs1603, 1
  store i32 %bop1604, i32* %i1580
  br label %__cond216

__fresh229:
  br label %__post214

__post214:
  %_lhs1605 = load i32* %j1583
  %bop1606 = sub i32 %_lhs1605, 1
  store i32 %bop1606, i32* %j1583
  br label %__cond219

__cond219:
  %_lhs1607 = load i32* %j1583
  %_lhs1608 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %len_ptr1609 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1608, i32 0, i32 0
  %len1610 = load i32* %len_ptr1609
  call void @oat_array_bounds_check( i32 %len1610, i32 %_lhs1607 )
  %array_dereferenced1611 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %elt_ptr1612 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1570, i32 0, i32 1, i32 %_lhs1607
  %_lhs1613 = load [ 0 x i32 ]* %elt_ptr1612
  %_lhs1614 = load i32* %pivot1578
  %bop1615 = icmp sgt [ 0 x i32 ] %_lhs1613, %_lhs1614
  br i1 %bop1615, label %__body218, label %__post217

__fresh230:
  br label %__body218

__body218:
  %_lhs1616 = load i32* %j1583
  %bop1617 = sub i32 %_lhs1616, 1
  store i32 %bop1617, i32* %j1583
  br label %__cond219

__fresh231:
  br label %__post217

__post217:
  %_lhs1618 = load i32* %i1580
  %_lhs1619 = load i32* %j1583
  %bop1620 = icmp sge i32 %_lhs1618, %_lhs1619
  br i1 %bop1620, label %__then222, label %__else221

__fresh232:
  br label %__then222

__then222:
  store i32 1, i32* %done1585
  br label %__merge220

__fresh233:
  br label %__else221

__else221:
  br label %__merge220

__merge220:
  %_lhs1621 = load i32* %done1585
  %bop1622 = icmp eq i32 %_lhs1621, 0
  br i1 %bop1622, label %__then225, label %__else224

__fresh234:
  br label %__then225

__then225:
  %_lhs1623 = load i32* %i1580
  %_lhs1624 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %len_ptr1625 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1624, i32 0, i32 0
  %len1626 = load i32* %len_ptr1625
  call void @oat_array_bounds_check( i32 %len1626, i32 %_lhs1623 )
  %array_dereferenced1627 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %elt_ptr1628 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1570, i32 0, i32 1, i32 %_lhs1623
  %_lhs1629 = load [ 0 x i32 ]* %elt_ptr1628
  store [ 0 x i32 ] %_lhs1629, i32* %t1584
  %_lhs1630 = load i32* %i1580
  %_lhs1631 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %len_ptr1632 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1631, i32 0, i32 0
  %len1633 = load i32* %len_ptr1632
  call void @oat_array_bounds_check( i32 %len1633, i32 %_lhs1630 )
  %array_dereferenced1634 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %elt_ptr1635 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1570, i32 0, i32 1, i32 %_lhs1630
  %_lhs1636 = load i32* %j1583
  %_lhs1637 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %len_ptr1638 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1637, i32 0, i32 0
  %len1639 = load i32* %len_ptr1638
  call void @oat_array_bounds_check( i32 %len1639, i32 %_lhs1636 )
  %array_dereferenced1640 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %elt_ptr1641 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1570, i32 0, i32 1, i32 %_lhs1636
  %_lhs1642 = load [ 0 x i32 ]* %elt_ptr1641
  store [ 0 x i32 ] %_lhs1642, [ 0 x i32 ]* %elt_ptr1635
  %_lhs1643 = load i32* %j1583
  %_lhs1644 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %len_ptr1645 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1644, i32 0, i32 0
  %len1646 = load i32* %len_ptr1645
  call void @oat_array_bounds_check( i32 %len1646, i32 %_lhs1643 )
  %array_dereferenced1647 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %elt_ptr1648 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1570, i32 0, i32 1, i32 %_lhs1643
  %_lhs1649 = load i32* %t1584
  store i32 %_lhs1649, [ 0 x i32 ]* %elt_ptr1648
  br label %__merge223

__fresh235:
  br label %__else224

__else224:
  br label %__merge223

__merge223:
  br label %__cond213

__fresh236:
  br label %__post211

__post211:
  %_lhs1650 = load i32* %l_slot1568
  %_lhs1651 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %len_ptr1652 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1651, i32 0, i32 0
  %len1653 = load i32* %len_ptr1652
  call void @oat_array_bounds_check( i32 %len1653, i32 %_lhs1650 )
  %array_dereferenced1654 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %elt_ptr1655 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1570, i32 0, i32 1, i32 %_lhs1650
  %_lhs1656 = load [ 0 x i32 ]* %elt_ptr1655
  store [ 0 x i32 ] %_lhs1656, i32* %t1584
  %_lhs1657 = load i32* %l_slot1568
  %_lhs1658 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %len_ptr1659 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1658, i32 0, i32 0
  %len1660 = load i32* %len_ptr1659
  call void @oat_array_bounds_check( i32 %len1660, i32 %_lhs1657 )
  %array_dereferenced1661 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %elt_ptr1662 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1570, i32 0, i32 1, i32 %_lhs1657
  %_lhs1663 = load i32* %j1583
  %_lhs1664 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %len_ptr1665 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1664, i32 0, i32 0
  %len1666 = load i32* %len_ptr1665
  call void @oat_array_bounds_check( i32 %len1666, i32 %_lhs1663 )
  %array_dereferenced1667 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %elt_ptr1668 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1570, i32 0, i32 1, i32 %_lhs1663
  %_lhs1669 = load [ 0 x i32 ]* %elt_ptr1668
  store [ 0 x i32 ] %_lhs1669, [ 0 x i32 ]* %elt_ptr1662
  %_lhs1670 = load i32* %j1583
  %_lhs1671 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %len_ptr1672 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1671, i32 0, i32 0
  %len1673 = load i32* %len_ptr1672
  call void @oat_array_bounds_check( i32 %len1673, i32 %_lhs1670 )
  %array_dereferenced1674 = load { i32, [ 0 x i32 ] }** %a_slot1570
  %elt_ptr1675 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1570, i32 0, i32 1, i32 %_lhs1670
  %_lhs1676 = load i32* %t1584
  store i32 %_lhs1676, [ 0 x i32 ]* %elt_ptr1675
  %_lhs1677 = load i32* %j1583
  ret i32 %_lhs1677
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1547, i32 %l1545, i32 %r1543){

__fresh208:
  %a_slot1548 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1547, { i32, [ 0 x i32 ] }** %a_slot1548
  %l_slot1546 = alloca i32
  store i32 %l1545, i32* %l_slot1546
  %r_slot1544 = alloca i32
  store i32 %r1543, i32* %r_slot1544
  %j1549 = alloca i32
  store i32 0, i32* %j1549
  %_lhs1550 = load i32* %l_slot1546
  %_lhs1551 = load i32* %r_slot1544
  %bop1552 = icmp slt i32 %_lhs1550, %_lhs1551
  br i1 %bop1552, label %__then207, label %__else206

__fresh209:
  br label %__then207

__then207:
  %_lhs1555 = load i32* %r_slot1544
  %_lhs1554 = load i32* %l_slot1546
  %_lhs1553 = load { i32, [ 0 x i32 ] }** %a_slot1548
  %ret1556 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1553, i32 %_lhs1554, i32 %_lhs1555 )
  store i32 %ret1556, i32* %j1549
  %_lhs1559 = load i32* %j1549
  %bop1560 = sub i32 %_lhs1559, 1
  %_lhs1558 = load i32* %l_slot1546
  %_lhs1557 = load { i32, [ 0 x i32 ] }** %a_slot1548
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1557, i32 %_lhs1558, i32 %bop1560 )
  %_lhs1564 = load i32* %r_slot1544
  %_lhs1562 = load i32* %j1549
  %bop1563 = add i32 %_lhs1562, 1
  %_lhs1561 = load { i32, [ 0 x i32 ] }** %a_slot1548
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1561, i32 %bop1563, i32 %_lhs1564 )
  br label %__merge205

__fresh210:
  br label %__else206

__else206:
  br label %__merge205

__merge205:
  ret void
}


