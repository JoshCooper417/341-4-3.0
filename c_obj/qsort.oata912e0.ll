declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1806.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1806 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1806.str., i32 0, i32 0), align 4
@_oat_string1801.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1801 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1801.str., i32 0, i32 0), align 4
@_oat_string1797.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1797 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1797.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh269:
  ret void
}


define i32 @program (i32 %argc1783, { i32, [ 0 x i8* ] }* %argv1781){

__fresh268:
  %argc_slot1784 = alloca i32
  store i32 %argc1783, i32* %argc_slot1784
  %argv_slot1782 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1781, { i32, [ 0 x i8* ] }** %argv_slot1782
  %array_ptr1785 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array1786 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1785 to { i32, [ 0 x i32 ] }* 
  %index_ptr1787 = getelementptr { i32, [ 0 x i32 ] }* %array1786, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr1787
  %index_ptr1788 = getelementptr { i32, [ 0 x i32 ] }* %array1786, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1788
  %index_ptr1789 = getelementptr { i32, [ 0 x i32 ] }* %array1786, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr1789
  %index_ptr1790 = getelementptr { i32, [ 0 x i32 ] }* %array1786, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr1790
  %index_ptr1791 = getelementptr { i32, [ 0 x i32 ] }* %array1786, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr1791
  %index_ptr1792 = getelementptr { i32, [ 0 x i32 ] }* %array1786, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr1792
  %index_ptr1793 = getelementptr { i32, [ 0 x i32 ] }* %array1786, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr1793
  %index_ptr1794 = getelementptr { i32, [ 0 x i32 ] }* %array1786, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr1794
  %index_ptr1795 = getelementptr { i32, [ 0 x i32 ] }* %array1786, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr1795
  %a1796 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1786, { i32, [ 0 x i32 ] }** %a1796
  %strval1798 = load i8** @_oat_string1797
  call void @print_string( i8* %strval1798 )
  %_lhs1799 = load { i32, [ 0 x i32 ] }** %a1796
  %ret1800 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1799 )
  call void @print_string( i8* %ret1800 )
  %strval1802 = load i8** @_oat_string1801
  call void @print_string( i8* %strval1802 )
  %_lhs1803 = load { i32, [ 0 x i32 ] }** %a1796
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1803, i32 0, i32 8 )
  %_lhs1804 = load { i32, [ 0 x i32 ] }** %a1796
  %ret1805 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1804 )
  call void @print_string( i8* %ret1805 )
  %strval1807 = load i8** @_oat_string1806
  call void @print_string( i8* %strval1807 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a1683, i32 %l1681, i32 %r1679){

__fresh257:
  %a_slot1684 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1683, { i32, [ 0 x i32 ] }** %a_slot1684
  %l_slot1682 = alloca i32
  store i32 %l1681, i32* %l_slot1682
  %r_slot1680 = alloca i32
  store i32 %r1679, i32* %r_slot1680
  %_lhs1685 = load i32* %l_slot1682
  %len_ptr1686 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1684, i32 0, i32 0
  %len1687 = load i32* %len_ptr1686
  call void @oat_array_bounds_check( i32 %len1687, i32 %_lhs1685 )
  %array_dereferenced1688 = load { i32, [ 0 x i32 ] }** %a_slot1684
  %elt_ptr1689 = getelementptr i32 %array_dereferenced1688, i32 0, i32 1, i32 %_lhs1685
  %_lhs1690 = load i32* %elt_ptr1689
  %pivot1691 = alloca i32
  store i32 %_lhs1690, i32* %pivot1691
  %_lhs1692 = load i32* %l_slot1682
  %i1693 = alloca i32
  store i32 %_lhs1692, i32* %i1693
  %_lhs1694 = load i32* %r_slot1680
  %bop1695 = add i32 %_lhs1694, 1
  %j1696 = alloca i32
  store i32 %bop1695, i32* %j1696
  %t1697 = alloca i32
  store i32 0, i32* %t1697
  %done1698 = alloca i32
  store i32 0, i32* %done1698
  br label %__cond244

__cond244:
  %_lhs1699 = load i32* %done1698
  %bop1700 = icmp eq i32 %_lhs1699, 0
  br i1 %bop1700, label %__body243, label %__post242

__fresh258:
  br label %__body243

__body243:
  %_lhs1701 = load i32* %i1693
  %bop1702 = add i32 %_lhs1701, 1
  store i32 %bop1702, i32* %i1693
  br label %__cond247

__cond247:
  %_lhs1703 = load i32* %i1693
  %len_ptr1704 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1684, i32 0, i32 0
  %len1705 = load i32* %len_ptr1704
  call void @oat_array_bounds_check( i32 %len1705, i32 %_lhs1703 )
  %array_dereferenced1706 = load { i32, [ 0 x i32 ] }** %a_slot1684
  %elt_ptr1707 = getelementptr i32 %array_dereferenced1706, i32 0, i32 1, i32 %_lhs1703
  %_lhs1708 = load i32* %elt_ptr1707
  %_lhs1709 = load i32* %pivot1691
  %bop1710 = icmp sle i32 %_lhs1708, %_lhs1709
  %_lhs1711 = load i32* %i1693
  %_lhs1712 = load i32* %r_slot1680
  %bop1713 = icmp sle i32 %_lhs1711, %_lhs1712
  %bop1714 = and i1 %bop1710, %bop1713
  br i1 %bop1714, label %__body246, label %__post245

__fresh259:
  br label %__body246

__body246:
  %_lhs1715 = load i32* %i1693
  %bop1716 = add i32 %_lhs1715, 1
  store i32 %bop1716, i32* %i1693
  br label %__cond247

__fresh260:
  br label %__post245

__post245:
  %_lhs1717 = load i32* %j1696
  %bop1718 = sub i32 %_lhs1717, 1
  store i32 %bop1718, i32* %j1696
  br label %__cond250

__cond250:
  %_lhs1719 = load i32* %j1696
  %len_ptr1720 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1684, i32 0, i32 0
  %len1721 = load i32* %len_ptr1720
  call void @oat_array_bounds_check( i32 %len1721, i32 %_lhs1719 )
  %array_dereferenced1722 = load { i32, [ 0 x i32 ] }** %a_slot1684
  %elt_ptr1723 = getelementptr i32 %array_dereferenced1722, i32 0, i32 1, i32 %_lhs1719
  %_lhs1724 = load i32* %elt_ptr1723
  %_lhs1725 = load i32* %pivot1691
  %bop1726 = icmp sgt i32 %_lhs1724, %_lhs1725
  br i1 %bop1726, label %__body249, label %__post248

__fresh261:
  br label %__body249

__body249:
  %_lhs1727 = load i32* %j1696
  %bop1728 = sub i32 %_lhs1727, 1
  store i32 %bop1728, i32* %j1696
  br label %__cond250

__fresh262:
  br label %__post248

__post248:
  %_lhs1729 = load i32* %i1693
  %_lhs1730 = load i32* %j1696
  %bop1731 = icmp sge i32 %_lhs1729, %_lhs1730
  br i1 %bop1731, label %__then253, label %__else252

__fresh263:
  br label %__then253

__then253:
  store i32 1, i32* %done1698
  br label %__merge251

__fresh264:
  br label %__else252

__else252:
  br label %__merge251

__merge251:
  %_lhs1732 = load i32* %done1698
  %bop1733 = icmp eq i32 %_lhs1732, 0
  br i1 %bop1733, label %__then256, label %__else255

__fresh265:
  br label %__then256

__then256:
  %_lhs1734 = load i32* %i1693
  %len_ptr1735 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1684, i32 0, i32 0
  %len1736 = load i32* %len_ptr1735
  call void @oat_array_bounds_check( i32 %len1736, i32 %_lhs1734 )
  %array_dereferenced1737 = load { i32, [ 0 x i32 ] }** %a_slot1684
  %elt_ptr1738 = getelementptr i32 %array_dereferenced1737, i32 0, i32 1, i32 %_lhs1734
  %_lhs1739 = load i32* %elt_ptr1738
  store i32 %_lhs1739, i32* %t1697
  %_lhs1740 = load i32* %i1693
  %len_ptr1741 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1684, i32 0, i32 0
  %len1742 = load i32* %len_ptr1741
  call void @oat_array_bounds_check( i32 %len1742, i32 %_lhs1740 )
  %array_dereferenced1743 = load { i32, [ 0 x i32 ] }** %a_slot1684
  %elt_ptr1744 = getelementptr i32 %array_dereferenced1743, i32 0, i32 1, i32 %_lhs1740
  %_lhs1745 = load i32* %j1696
  %len_ptr1746 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1684, i32 0, i32 0
  %len1747 = load i32* %len_ptr1746
  call void @oat_array_bounds_check( i32 %len1747, i32 %_lhs1745 )
  %array_dereferenced1748 = load { i32, [ 0 x i32 ] }** %a_slot1684
  %elt_ptr1749 = getelementptr i32 %array_dereferenced1748, i32 0, i32 1, i32 %_lhs1745
  %_lhs1750 = load i32* %elt_ptr1749
  store i32 %_lhs1750, i32* %elt_ptr1744
  %_lhs1751 = load i32* %j1696
  %len_ptr1752 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1684, i32 0, i32 0
  %len1753 = load i32* %len_ptr1752
  call void @oat_array_bounds_check( i32 %len1753, i32 %_lhs1751 )
  %array_dereferenced1754 = load { i32, [ 0 x i32 ] }** %a_slot1684
  %elt_ptr1755 = getelementptr i32 %array_dereferenced1754, i32 0, i32 1, i32 %_lhs1751
  %_lhs1756 = load i32* %t1697
  store i32 %_lhs1756, i32* %elt_ptr1755
  br label %__merge254

__fresh266:
  br label %__else255

__else255:
  br label %__merge254

__merge254:
  br label %__cond244

__fresh267:
  br label %__post242

__post242:
  %_lhs1757 = load i32* %l_slot1682
  %len_ptr1758 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1684, i32 0, i32 0
  %len1759 = load i32* %len_ptr1758
  call void @oat_array_bounds_check( i32 %len1759, i32 %_lhs1757 )
  %array_dereferenced1760 = load { i32, [ 0 x i32 ] }** %a_slot1684
  %elt_ptr1761 = getelementptr i32 %array_dereferenced1760, i32 0, i32 1, i32 %_lhs1757
  %_lhs1762 = load i32* %elt_ptr1761
  store i32 %_lhs1762, i32* %t1697
  %_lhs1763 = load i32* %l_slot1682
  %len_ptr1764 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1684, i32 0, i32 0
  %len1765 = load i32* %len_ptr1764
  call void @oat_array_bounds_check( i32 %len1765, i32 %_lhs1763 )
  %array_dereferenced1766 = load { i32, [ 0 x i32 ] }** %a_slot1684
  %elt_ptr1767 = getelementptr i32 %array_dereferenced1766, i32 0, i32 1, i32 %_lhs1763
  %_lhs1768 = load i32* %j1696
  %len_ptr1769 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1684, i32 0, i32 0
  %len1770 = load i32* %len_ptr1769
  call void @oat_array_bounds_check( i32 %len1770, i32 %_lhs1768 )
  %array_dereferenced1771 = load { i32, [ 0 x i32 ] }** %a_slot1684
  %elt_ptr1772 = getelementptr i32 %array_dereferenced1771, i32 0, i32 1, i32 %_lhs1768
  %_lhs1773 = load i32* %elt_ptr1772
  store i32 %_lhs1773, i32* %elt_ptr1767
  %_lhs1774 = load i32* %j1696
  %len_ptr1775 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1684, i32 0, i32 0
  %len1776 = load i32* %len_ptr1775
  call void @oat_array_bounds_check( i32 %len1776, i32 %_lhs1774 )
  %array_dereferenced1777 = load { i32, [ 0 x i32 ] }** %a_slot1684
  %elt_ptr1778 = getelementptr i32 %array_dereferenced1777, i32 0, i32 1, i32 %_lhs1774
  %_lhs1779 = load i32* %t1697
  store i32 %_lhs1779, i32* %elt_ptr1778
  %_lhs1780 = load i32* %j1696
  ret i32 %_lhs1780
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1661, i32 %l1659, i32 %r1657){

__fresh239:
  %a_slot1662 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1661, { i32, [ 0 x i32 ] }** %a_slot1662
  %l_slot1660 = alloca i32
  store i32 %l1659, i32* %l_slot1660
  %r_slot1658 = alloca i32
  store i32 %r1657, i32* %r_slot1658
  %j1663 = alloca i32
  store i32 0, i32* %j1663
  %_lhs1664 = load i32* %l_slot1660
  %_lhs1665 = load i32* %r_slot1658
  %bop1666 = icmp slt i32 %_lhs1664, %_lhs1665
  br i1 %bop1666, label %__then238, label %__else237

__fresh240:
  br label %__then238

__then238:
  %_lhs1669 = load i32* %r_slot1658
  %_lhs1668 = load i32* %l_slot1660
  %_lhs1667 = load { i32, [ 0 x i32 ] }** %a_slot1662
  %ret1670 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1667, i32 %_lhs1668, i32 %_lhs1669 )
  store i32 %ret1670, i32* %j1663
  %_lhs1673 = load i32* %j1663
  %bop1674 = sub i32 %_lhs1673, 1
  %_lhs1672 = load i32* %l_slot1660
  %_lhs1671 = load { i32, [ 0 x i32 ] }** %a_slot1662
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1671, i32 %_lhs1672, i32 %bop1674 )
  %_lhs1678 = load i32* %r_slot1658
  %_lhs1676 = load i32* %j1663
  %bop1677 = add i32 %_lhs1676, 1
  %_lhs1675 = load { i32, [ 0 x i32 ] }** %a_slot1662
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1675, i32 %bop1677, i32 %_lhs1678 )
  br label %__merge236

__fresh241:
  br label %__else237

__else237:
  br label %__merge236

__merge236:
  ret void
}


