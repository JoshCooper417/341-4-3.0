declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1742 = global i32 1, align 4
define void @oat_init (){

__fresh283:
  ret void
}


define i32 @program (i32 %argc1748, { i32, [ 0 x i8* ] }* %argv1746){

__fresh282:
  %argc_slot1749 = alloca i32
  store i32 %argc1748, i32* %argc_slot1749
  %argv_slot1747 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1746, { i32, [ 0 x i8* ] }** %argv_slot1747
  store i32 1, i32* %i1751
  %b1759 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1754, { i32, [ 0 x i32 ] }** %b1759
  %_lhs1760 = load i32* @a1742
  %len_ptr1761 = getelementptr { i32, [ 0 x i32 ] }** %b1759, i32 0, i32 0
  %len1762 = load i32* %len_ptr1761
  call void @oat_array_bounds_check( i32 %len1762, i32 0 )
  %array_dereferenced1763 = load { i32, [ 0 x i32 ] }** %b1759
  %elt_ptr1764 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1763, i32 0, i32 1, i32 0
  %_lhs1765 = load i32* %elt_ptr1764
  %bop1766 = add i32 %_lhs1760, %_lhs1765
  %len_ptr1767 = getelementptr { i32, [ 0 x i32 ] }** %b1759, i32 0, i32 0
  %len1768 = load i32* %len_ptr1767
  call void @oat_array_bounds_check( i32 %len1768, i32 1 )
  %array_dereferenced1769 = load { i32, [ 0 x i32 ] }** %b1759
  %elt_ptr1770 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1769, i32 0, i32 1, i32 1
  %_lhs1771 = load i32* %elt_ptr1770
  %bop1772 = add i32 %bop1766, %_lhs1771
  ret i32 %bop1772
}


define i32 @f (){

__fresh278:
  %_lhs1743 = load i32* @a1742
  %bop1744 = add i32 %_lhs1743, 1
  store i32 %bop1744, i32* @a1742
  %_lhs1745 = load i32* @a1742
  ret i32 %_lhs1745
}


