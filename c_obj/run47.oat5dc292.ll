declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1726 = global i32 1, align 4
define void @oat_init (){

__fresh371:
  ret void
}


define i32 @program (i32 %argc1732, { i32, [ 0 x i8* ] }* %argv1730){

__fresh368:
  %argc_slot1733 = alloca i32
  store i32 %argc1732, i32* %argc_slot1733
  %argv_slot1731 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1730, { i32, [ 0 x i8* ] }** %argv_slot1731
  br label %__check366

__check366:
  %cmp_op1740 = icmp slt i32 1, %ret1734
  br i32 %cmp_op1740, label %__body367, label %__end365

__fresh369:
  br label %__body367

__body367:
  %_lhs1736 = load i32* %i1735
  %elem_ptr1739 = getelementptr { i32, [ 0 x i32 ] }* %array1738, i32 0, i32 1, i32 1
  %elem_ptr1739 = load i32* %i1735
  %incr_op1741 = add i32 1, 1
  store i32 1, i32 %incr_op1741
  br label %__check366

__fresh370:
  br label %__end365

__end365:
  %b1742 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1738, { i32, [ 0 x i32 ] }** %b1742
  %_lhs1743 = load i32* @a1726
  %len_ptr1744 = getelementptr { i32, [ 0 x i32 ] }** %b1742, i32 0, i32 0
  %len1745 = load i32* %len_ptr1744
  call void @oat_array_bounds_check( i32 %len1745, i32 0 )
  %array_dereferenced1746 = load { i32, [ 0 x i32 ] }** %b1742
  %elt_ptr1747 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1746, i32 0, i32 1, i32 0
  %_lhs1748 = load i32* %elt_ptr1747
  %bop1749 = add i32 %_lhs1743, %_lhs1748
  %len_ptr1750 = getelementptr { i32, [ 0 x i32 ] }** %b1742, i32 0, i32 0
  %len1751 = load i32* %len_ptr1750
  call void @oat_array_bounds_check( i32 %len1751, i32 1 )
  %array_dereferenced1752 = load { i32, [ 0 x i32 ] }** %b1742
  %elt_ptr1753 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1752, i32 0, i32 1, i32 1
  %_lhs1754 = load i32* %elt_ptr1753
  %bop1755 = add i32 %bop1749, %_lhs1754
  ret i32 %bop1755
}


define i32 @f (){

__fresh364:
  %_lhs1727 = load i32* @a1726
  %bop1728 = add i32 %_lhs1727, 1
  store i32 %bop1728, i32* @a1726
  %_lhs1729 = load i32* @a1726
  ret i32 %_lhs1729
}


