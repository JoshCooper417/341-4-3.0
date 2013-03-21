declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1756 = global i32 1, align 4
define void @oat_init (){

__fresh379:
  ret void
}


define i32 @program (i32 %argc1762, { i32, [ 0 x i8* ] }* %argv1760){

__fresh376:
  %argc_slot1763 = alloca i32
  store i32 %argc1762, i32* %argc_slot1763
  %argv_slot1761 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1760, { i32, [ 0 x i8* ] }** %argv_slot1761
  br label %__check374

__check374:
  %cmp_op1770 = icmp slt i32 1, %ret1764
  br i32 %cmp_op1770, label %__body375, label %__end373

__fresh377:
  br label %__body375

__body375:
  %ret1766 = call i32 @f (  )
  %elem_ptr1769 = getelementptr { i32, [ 0 x i32 ] }* %array1768, i32 0, i32 1, i32 1
  %elem_ptr1769 = load i32* %i1765
  %incr_op1771 = add i32 1, 1
  store i32 1, i32 %incr_op1771
  br label %__check374

__fresh378:
  br label %__end373

__end373:
  %b1772 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1768, { i32, [ 0 x i32 ] }** %b1772
  %_lhs1773 = load i32* @a1756
  %len_ptr1774 = getelementptr { i32, [ 0 x i32 ] }** %b1772, i32 0, i32 0
  %len1775 = load i32* %len_ptr1774
  call void @oat_array_bounds_check( i32 %len1775, i32 0 )
  %array_dereferenced1776 = load { i32, [ 0 x i32 ] }** %b1772
  %elt_ptr1777 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1776, i32 0, i32 1, i32 0
  %_lhs1778 = load i32* %elt_ptr1777
  %bop1779 = add i32 %_lhs1773, %_lhs1778
  %len_ptr1780 = getelementptr { i32, [ 0 x i32 ] }** %b1772, i32 0, i32 0
  %len1781 = load i32* %len_ptr1780
  call void @oat_array_bounds_check( i32 %len1781, i32 1 )
  %array_dereferenced1782 = load { i32, [ 0 x i32 ] }** %b1772
  %elt_ptr1783 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1782, i32 0, i32 1, i32 1
  %_lhs1784 = load i32* %elt_ptr1783
  %bop1785 = add i32 %bop1779, %_lhs1784
  ret i32 %bop1785
}


define i32 @f (){

__fresh372:
  %_lhs1757 = load i32* @a1756
  %bop1758 = add i32 %_lhs1757, 1
  store i32 %bop1758, i32* @a1756
  %_lhs1759 = load i32* @a1756
  ret i32 %_lhs1759
}


