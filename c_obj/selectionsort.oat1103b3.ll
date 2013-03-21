declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh343:
  ret void
}


define i32 @program (i32 %argc1734, { i32, [ 0 x i8* ] }* %argv1732){

__fresh340:
  %argc_slot1735 = alloca i32
  store i32 %argc1734, i32* %argc_slot1735
  %argv_slot1733 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1732, { i32, [ 0 x i8* ] }** %argv_slot1733
  %array_ptr1736 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array1737 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1736 to { i32, [ 0 x i32 ] }* 
  %index_ptr1738 = getelementptr { i32, [ 0 x i32 ] }* %array1737, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr1738
  %index_ptr1739 = getelementptr { i32, [ 0 x i32 ] }* %array1737, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr1739
  %index_ptr1740 = getelementptr { i32, [ 0 x i32 ] }* %array1737, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr1740
  %index_ptr1741 = getelementptr { i32, [ 0 x i32 ] }* %array1737, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr1741
  %index_ptr1742 = getelementptr { i32, [ 0 x i32 ] }* %array1737, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr1742
  %index_ptr1743 = getelementptr { i32, [ 0 x i32 ] }* %array1737, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr1743
  %index_ptr1744 = getelementptr { i32, [ 0 x i32 ] }* %array1737, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr1744
  %index_ptr1745 = getelementptr { i32, [ 0 x i32 ] }* %array1737, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr1745
  %ar1746 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1737, { i32, [ 0 x i32 ] }** %ar1746
  %_lhs1747 = load { i32, [ 0 x i32 ] }** %ar1746
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs1747, i32 8 )
  %i1748 = alloca i32
  store i32 0, i32* %i1748
  br label %__cond339

__cond339:
  %_lhs1749 = load i32* %i1748
  %bop1750 = icmp slt i32 %_lhs1749, 8
  br i1 %bop1750, label %__body338, label %__post337

__fresh341:
  br label %__body338

__body338:
  %_lhs1752 = load { i32, [ 0 x i32 ] }** %ar1746
  call void @print_int( { i32, [ 0 x i32 ] }* %_lhs1752 )
  %_lhs1753 = load i32* %i1748
  %bop1754 = add i32 %_lhs1753, 1
  store i32 %bop1754, i32* %i1748
  br label %__cond339

__fresh342:
  br label %__post337

__post337:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a1711, i32 %s1709){

__fresh334:
  %a_slot1712 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1711, { i32, [ 0 x i32 ] }** %a_slot1712
  %s_slot1710 = alloca i32
  store i32 %s1709, i32* %s_slot1710
  %t1713 = alloca i32
  store i32 0, i32* %t1713
  %mi1714 = alloca i32
  store i32 0, i32* %mi1714
  %i1715 = alloca i32
  store i32 0, i32* %i1715
  br label %__cond333

__cond333:
  %_lhs1716 = load i32* %i1715
  %_lhs1717 = load i32* %s_slot1710
  %bop1718 = icmp slt i32 %_lhs1716, %_lhs1717
  br i1 %bop1718, label %__body332, label %__post331

__fresh335:
  br label %__body332

__body332:
  %_lhs1721 = load i32* %s_slot1710
  %_lhs1720 = load i32* %i1715
  %_lhs1719 = load { i32, [ 0 x i32 ] }** %a_slot1712
  %ret1722 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs1719, i32 %_lhs1720, i32 %_lhs1721 )
  store i32 %ret1722, i32* %mi1714
  %_lhs1724 = load { i32, [ 0 x i32 ] }** %a_slot1712
  store { i32, [ 0 x i32 ] }* %_lhs1724, i32* %t1713
  %_lhs1727 = load { i32, [ 0 x i32 ] }** %a_slot1712
  store { i32, [ 0 x i32 ] }* %_lhs1727, { i32, [ 0 x i32 ] }** %a_slot1712
  %_lhs1729 = load i32* %t1713
  store i32 %_lhs1729, { i32, [ 0 x i32 ] }** %a_slot1712
  %_lhs1730 = load i32* %i1715
  %bop1731 = add i32 %_lhs1730, 1
  store i32 %bop1731, i32* %i1715
  br label %__cond333

__fresh336:
  br label %__post331

__post331:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a1687, i32 %s1685, i32 %b1683){

__fresh326:
  %a_slot1688 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1687, { i32, [ 0 x i32 ] }** %a_slot1688
  %s_slot1686 = alloca i32
  store i32 %s1685, i32* %s_slot1686
  %b_slot1684 = alloca i32
  store i32 %b1683, i32* %b_slot1684
  %_lhs1689 = load i32* %s_slot1686
  %i1690 = alloca i32
  store i32 %_lhs1689, i32* %i1690
  %_lhs1692 = load { i32, [ 0 x i32 ] }** %a_slot1688
  %min1693 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs1692, i32* %min1693
  %_lhs1694 = load i32* %s_slot1686
  %mi1695 = alloca i32
  store i32 %_lhs1694, i32* %mi1695
  br label %__cond322

__cond322:
  %_lhs1696 = load i32* %i1690
  %_lhs1697 = load i32* %b_slot1684
  %bop1698 = icmp slt i32 %_lhs1696, %_lhs1697
  br i1 %bop1698, label %__body321, label %__post320

__fresh327:
  br label %__body321

__body321:
  %_lhs1700 = load { i32, [ 0 x i32 ] }** %a_slot1688
  %_lhs1701 = load i32* %min1693
  %bop1702 = icmp slt { i32, [ 0 x i32 ] }* %_lhs1700, %_lhs1701
  br i1 %bop1702, label %__then325, label %__else324

__fresh328:
  br label %__then325

__then325:
  %_lhs1704 = load { i32, [ 0 x i32 ] }** %a_slot1688
  store { i32, [ 0 x i32 ] }* %_lhs1704, i32* %min1693
  %_lhs1705 = load i32* %i1690
  store i32 %_lhs1705, i32* %mi1695
  br label %__merge323

__fresh329:
  br label %__else324

__else324:
  br label %__merge323

__merge323:
  %_lhs1706 = load i32* %i1690
  %bop1707 = add i32 %_lhs1706, 1
  store i32 %bop1707, i32* %i1690
  br label %__cond322

__fresh330:
  br label %__post320

__post320:
  %_lhs1708 = load i32* %mi1695
  ret i32 %_lhs1708
}


