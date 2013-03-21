declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1794 = global i32 1, align 4
define void @oat_init (){

__fresh379:
  ret void
}


define i32 @program (i32 %argc1800, { i32, [ 0 x i8* ] }* %argv1798){

__fresh376:
  %argc_slot1801 = alloca i32
  store i32 %argc1800, i32* %argc_slot1801
  %argv_slot1799 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1798, { i32, [ 0 x i8* ] }** %argv_slot1799
  store i32 1, i32 %index_op1809
  br label %__check374

__check374:
  %cmp_op1808 = icmp slt i32 %index_op1809, %ret1802
  br i32 %cmp_op1808, label %__body375, label %__end373

__fresh377:
  br label %__body375

__body375:
  %index_op1809 = load i32* %i1803
  %ret1804 = call i32 @f (  )
  %elem_ptr1807 = getelementptr { i32, [ 0 x i32 ] }* %array1806, i32 0, i32 1, i32 %index_op1809
  %elem_ptr1807 = load i32* %i1803
  %incr_op1810 = add i32 %index_op1809, 1
  store i32 %index_op1809, i32 %incr_op1810
  br label %__check374

__fresh378:
  br label %__end373

__end373:
  %b1811 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1806, { i32, [ 0 x i32 ] }** %b1811
  %_lhs1812 = load i32* @a1794
  %len_ptr1813 = getelementptr { i32, [ 0 x i32 ] }** %b1811, i32 0, i32 0
  %len1814 = load i32* %len_ptr1813
  call void @oat_array_bounds_check( i32 %len1814, i32 0 )
  %array_dereferenced1815 = load { i32, [ 0 x i32 ] }** %b1811
  %elt_ptr1816 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1815, i32 0, i32 1, i32 0
  %_lhs1817 = load i32* %elt_ptr1816
  %bop1818 = add i32 %_lhs1812, %_lhs1817
  %len_ptr1819 = getelementptr { i32, [ 0 x i32 ] }** %b1811, i32 0, i32 0
  %len1820 = load i32* %len_ptr1819
  call void @oat_array_bounds_check( i32 %len1820, i32 1 )
  %array_dereferenced1821 = load { i32, [ 0 x i32 ] }** %b1811
  %elt_ptr1822 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1821, i32 0, i32 1, i32 1
  %_lhs1823 = load i32* %elt_ptr1822
  %bop1824 = add i32 %bop1818, %_lhs1823
  ret i32 %bop1824
}


define i32 @f (){

__fresh372:
  %_lhs1795 = load i32* @a1794
  %bop1796 = add i32 %_lhs1795, 1
  store i32 %bop1796, i32* @a1794
  %_lhs1797 = load i32* @a1794
  ret i32 %_lhs1797
}


