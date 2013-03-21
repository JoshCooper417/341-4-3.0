declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1763 = global i32 1, align 4
define void @oat_init (){

__fresh371:
  ret void
}


define i32 @program (i32 %argc1769, { i32, [ 0 x i8* ] }* %argv1767){

__fresh368:
  %argc_slot1770 = alloca i32
  store i32 %argc1769, i32* %argc_slot1770
  %argv_slot1768 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1767, { i32, [ 0 x i8* ] }** %argv_slot1768
  br label %__check366

__check366:
  %cmp_op1777 = icmp slt i32 %index_op1778, %ret1771
  br i32 %cmp_op1777, label %__body367, label %__end365

__fresh369:
  br label %__body367

__body367:
  %index_op1778 = load i32* %i1772
  %_lhs1773 = load i32* %i1772
  %elem_ptr1776 = getelementptr { i32, [ 0 x i32 ] }* %array1775, i32 0, i32 1, i32 %index_op1778
  store i32 %_lhs1773, i32* %elem_ptr1776
  %index_op1778 = add i32 %index_op1778, 1
  br label %__check366

__fresh370:
  br label %__end365

__end365:
  %b1780 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1775, { i32, [ 0 x i32 ] }** %b1780
  %_lhs1781 = load i32* @a1763
  %len_ptr1782 = getelementptr { i32, [ 0 x i32 ] }** %b1780, i32 0, i32 0
  %len1783 = load i32* %len_ptr1782
  call void @oat_array_bounds_check( i32 %len1783, i32 0 )
  %array_dereferenced1784 = load { i32, [ 0 x i32 ] }** %b1780
  %elt_ptr1785 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1784, i32 0, i32 1, i32 0
  %_lhs1786 = load i32* %elt_ptr1785
  %bop1787 = add i32 %_lhs1781, %_lhs1786
  %len_ptr1788 = getelementptr { i32, [ 0 x i32 ] }** %b1780, i32 0, i32 0
  %len1789 = load i32* %len_ptr1788
  call void @oat_array_bounds_check( i32 %len1789, i32 1 )
  %array_dereferenced1790 = load { i32, [ 0 x i32 ] }** %b1780
  %elt_ptr1791 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1790, i32 0, i32 1, i32 1
  %_lhs1792 = load i32* %elt_ptr1791
  %bop1793 = add i32 %bop1787, %_lhs1792
  ret i32 %bop1793
}


define i32 @f (){

__fresh364:
  %_lhs1764 = load i32* @a1763
  %bop1765 = add i32 %_lhs1764, 1
  store i32 %bop1765, i32* @a1763
  %_lhs1766 = load i32* @a1763
  ret i32 %_lhs1766
}


