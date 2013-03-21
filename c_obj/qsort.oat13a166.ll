declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1692.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1692 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1692.str., i32 0, i32 0), align 4
@_oat_string1687.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1687 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1687.str., i32 0, i32 0), align 4
@_oat_string1683.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1683 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1683.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh238:
  ret void
}


define i32 @program (i32 %argc1669, { i32, [ 0 x i8* ] }* %argv1667){

__fresh237:
  %argc_slot1670 = alloca i32
  store i32 %argc1669, i32* %argc_slot1670
  %argv_slot1668 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1667, { i32, [ 0 x i8* ] }** %argv_slot1668
  %array_ptr1671 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array1672 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1671 to { i32, [ 0 x i32 ] }* 
  %index_ptr1673 = getelementptr { i32, [ 0 x i32 ] }* %array1672, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr1673
  %index_ptr1674 = getelementptr { i32, [ 0 x i32 ] }* %array1672, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1674
  %index_ptr1675 = getelementptr { i32, [ 0 x i32 ] }* %array1672, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr1675
  %index_ptr1676 = getelementptr { i32, [ 0 x i32 ] }* %array1672, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr1676
  %index_ptr1677 = getelementptr { i32, [ 0 x i32 ] }* %array1672, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr1677
  %index_ptr1678 = getelementptr { i32, [ 0 x i32 ] }* %array1672, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr1678
  %index_ptr1679 = getelementptr { i32, [ 0 x i32 ] }* %array1672, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr1679
  %index_ptr1680 = getelementptr { i32, [ 0 x i32 ] }* %array1672, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr1680
  %index_ptr1681 = getelementptr { i32, [ 0 x i32 ] }* %array1672, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr1681
  %a1682 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1672, { i32, [ 0 x i32 ] }** %a1682
  %strval1684 = load i8** @_oat_string1683
  call void @print_string( i8* %strval1684 )
  %_lhs1685 = load { i32, [ 0 x i32 ] }** %a1682
  %ret1686 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1685 )
  call void @print_string( i8* %ret1686 )
  %strval1688 = load i8** @_oat_string1687
  call void @print_string( i8* %strval1688 )
  %_lhs1689 = load { i32, [ 0 x i32 ] }** %a1682
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1689, i32 0, i32 8 )
  %_lhs1690 = load { i32, [ 0 x i32 ] }** %a1682
  %ret1691 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1690 )
  call void @print_string( i8* %ret1691 )
  %strval1693 = load i8** @_oat_string1692
  call void @print_string( i8* %strval1693 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a1558, i32 %l1556, i32 %r1554){

__fresh226:
  %a_slot1559 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1558, { i32, [ 0 x i32 ] }** %a_slot1559
  %l_slot1557 = alloca i32
  store i32 %l1556, i32* %l_slot1557
  %r_slot1555 = alloca i32
  store i32 %r1554, i32* %r_slot1555
  %_lhs1566 = load [ 0 x i32 ]* %elt_ptr1565
  %pivot1567 = alloca i32
  store [ 0 x i32 ] %_lhs1566, i32* %pivot1567
  %_lhs1568 = load i32* %l_slot1557
  %i1569 = alloca i32
  store i32 %_lhs1568, i32* %i1569
  %_lhs1570 = load i32* %r_slot1555
  %bop1571 = add i32 %_lhs1570, 1
  %j1572 = alloca i32
  store i32 %bop1571, i32* %j1572
  %t1573 = alloca i32
  store i32 0, i32* %t1573
  %done1574 = alloca i32
  store i32 0, i32* %done1574
  br label %__cond213

__cond213:
  %_lhs1575 = load i32* %done1574
  %bop1576 = icmp eq i32 %_lhs1575, 0
  br i1 %bop1576, label %__body212, label %__post211

__fresh227:
  br label %__body212

__body212:
  %_lhs1577 = load i32* %i1569
  %bop1578 = add i32 %_lhs1577, 1
  store i32 %bop1578, i32* %i1569
  br label %__cond216

__cond216:
  %_lhs1585 = load [ 0 x i32 ]* %elt_ptr1584
  %_lhs1586 = load i32* %pivot1567
  %bop1587 = icmp sle [ 0 x i32 ] %_lhs1585, %_lhs1586
  %_lhs1588 = load i32* %i1569
  %_lhs1589 = load i32* %r_slot1555
  %bop1590 = icmp sle i32 %_lhs1588, %_lhs1589
  %bop1591 = and i1 %bop1587, %bop1590
  br i1 %bop1591, label %__body215, label %__post214

__fresh228:
  br label %__body215

__body215:
  %_lhs1592 = load i32* %i1569
  %bop1593 = add i32 %_lhs1592, 1
  store i32 %bop1593, i32* %i1569
  br label %__cond216

__fresh229:
  br label %__post214

__post214:
  %_lhs1594 = load i32* %j1572
  %bop1595 = sub i32 %_lhs1594, 1
  store i32 %bop1595, i32* %j1572
  br label %__cond219

__cond219:
  %_lhs1602 = load [ 0 x i32 ]* %elt_ptr1601
  %_lhs1603 = load i32* %pivot1567
  %bop1604 = icmp sgt [ 0 x i32 ] %_lhs1602, %_lhs1603
  br i1 %bop1604, label %__body218, label %__post217

__fresh230:
  br label %__body218

__body218:
  %_lhs1605 = load i32* %j1572
  %bop1606 = sub i32 %_lhs1605, 1
  store i32 %bop1606, i32* %j1572
  br label %__cond219

__fresh231:
  br label %__post217

__post217:
  %_lhs1607 = load i32* %i1569
  %_lhs1608 = load i32* %j1572
  %bop1609 = icmp sge i32 %_lhs1607, %_lhs1608
  br i1 %bop1609, label %__then222, label %__else221

__fresh232:
  br label %__then222

__then222:
  store i32 1, i32* %done1574
  br label %__merge220

__fresh233:
  br label %__else221

__else221:
  br label %__merge220

__merge220:
  %_lhs1610 = load i32* %done1574
  %bop1611 = icmp eq i32 %_lhs1610, 0
  br i1 %bop1611, label %__then225, label %__else224

__fresh234:
  br label %__then225

__then225:
  %_lhs1618 = load [ 0 x i32 ]* %elt_ptr1617
  store [ 0 x i32 ] %_lhs1618, i32* %t1573
  %_lhs1631 = load [ 0 x i32 ]* %elt_ptr1630
  store [ 0 x i32 ] %_lhs1631, [ 0 x i32 ]* %elt_ptr1624
  %_lhs1638 = load i32* %t1573
  store i32 %_lhs1638, [ 0 x i32 ]* %elt_ptr1637
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
  %_lhs1645 = load [ 0 x i32 ]* %elt_ptr1644
  store [ 0 x i32 ] %_lhs1645, i32* %t1573
  %_lhs1658 = load [ 0 x i32 ]* %elt_ptr1657
  store [ 0 x i32 ] %_lhs1658, [ 0 x i32 ]* %elt_ptr1651
  %_lhs1665 = load i32* %t1573
  store i32 %_lhs1665, [ 0 x i32 ]* %elt_ptr1664
  %_lhs1666 = load i32* %j1572
  ret i32 %_lhs1666
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1536, i32 %l1534, i32 %r1532){

__fresh208:
  %a_slot1537 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1536, { i32, [ 0 x i32 ] }** %a_slot1537
  %l_slot1535 = alloca i32
  store i32 %l1534, i32* %l_slot1535
  %r_slot1533 = alloca i32
  store i32 %r1532, i32* %r_slot1533
  %j1538 = alloca i32
  store i32 0, i32* %j1538
  %_lhs1539 = load i32* %l_slot1535
  %_lhs1540 = load i32* %r_slot1533
  %bop1541 = icmp slt i32 %_lhs1539, %_lhs1540
  br i1 %bop1541, label %__then207, label %__else206

__fresh209:
  br label %__then207

__then207:
  %_lhs1544 = load i32* %r_slot1533
  %_lhs1543 = load i32* %l_slot1535
  %_lhs1542 = load { i32, [ 0 x i32 ] }** %a_slot1537
  %ret1545 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1542, i32 %_lhs1543, i32 %_lhs1544 )
  store i32 %ret1545, i32* %j1538
  %_lhs1548 = load i32* %j1538
  %bop1549 = sub i32 %_lhs1548, 1
  %_lhs1547 = load i32* %l_slot1535
  %_lhs1546 = load { i32, [ 0 x i32 ] }** %a_slot1537
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1546, i32 %_lhs1547, i32 %bop1549 )
  %_lhs1553 = load i32* %r_slot1533
  %_lhs1551 = load i32* %j1538
  %bop1552 = add i32 %_lhs1551, 1
  %_lhs1550 = load { i32, [ 0 x i32 ] }** %a_slot1537
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1550, i32 %bop1552, i32 %_lhs1553 )
  br label %__merge205

__fresh210:
  br label %__else206

__else206:
  br label %__merge205

__merge205:
  ret void
}


