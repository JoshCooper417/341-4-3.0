declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh674:
  ret void
}


define i32 @program (i32 %argc1787, { i32, [ 0 x i8* ] }* %argv1785){

__fresh671:
  %argc_slot1788 = alloca i32
  store i32 %argc1787, i32* %argc_slot1788
  %argv_slot1786 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1785, { i32, [ 0 x i8* ] }** %argv_slot1786
  %array_ptr1789 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1790 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1789 to { i32, [ 0 x i32 ] }* 
  %index_ptr1791 = getelementptr { i32, [ 0 x i32 ] }* %array1790, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1791
  %index_ptr1792 = getelementptr { i32, [ 0 x i32 ] }* %array1790, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1792
  %index_ptr1793 = getelementptr { i32, [ 0 x i32 ] }* %array1790, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1793
  %index_ptr1794 = getelementptr { i32, [ 0 x i32 ] }* %array1790, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1794
  %index_ptr1795 = getelementptr { i32, [ 0 x i32 ] }* %array1790, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1795
  %arr11796 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1790, { i32, [ 0 x i32 ] }** %arr11796
  %_lhs1797 = load { i32, [ 0 x i32 ] }** %arr11796
  %ret1798 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1797 )
  %str1799 = alloca i8*
  store i8* %ret1798, i8** %str1799
  %_lhs1800 = load i8** %str1799
  %ret1801 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1800 )
  %arr21802 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1801, { i32, [ 0 x i32 ] }** %arr21802
  %s1803 = alloca i32
  store i32 0, i32* %s1803
  %i1804 = alloca i32
  store i32 0, i32* %i1804
  br label %__cond670

__cond670:
  %_lhs1805 = load i32* %i1804
  %bop1806 = icmp slt i32 %_lhs1805, 5
  br i1 %bop1806, label %__body669, label %__post668

__fresh672:
  br label %__body669

__body669:
  %_lhs1807 = load i32* %s1803
  %_lhs1808 = load i32* %i1804
  %array_dereferenced1809 = load { i32, [ 0 x i32 ] }** %arr21802
  %len_ptr1810 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1809, i32 0, i32 0
  %len1811 = load i32* %len_ptr1810
  call void @oat_array_bounds_check( i32 %len1811, i32 %_lhs1808 )
  %elt_ptr1812 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1809, i32 0, i32 1, i32 %_lhs1808
  %_lhs1813 = load i32* %elt_ptr1812
  %bop1814 = add i32 %_lhs1807, %_lhs1813
  store i32 %bop1814, i32* %s1803
  %_lhs1815 = load i32* %i1804
  %bop1816 = add i32 %_lhs1815, 1
  store i32 %bop1816, i32* %i1804
  br label %__cond670

__fresh673:
  br label %__post668

__post668:
  %_lhs1817 = load i32* %s1803
  ret i32 %_lhs1817
}


