declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh681:
  ret void
}


define i32 @program (i32 %argc1797, { i32, [ 0 x i8* ] }* %argv1795){

__fresh678:
  %argc_slot1798 = alloca i32
  store i32 %argc1797, i32* %argc_slot1798
  %argv_slot1796 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1795, { i32, [ 0 x i8* ] }** %argv_slot1796
  %array_ptr1799 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1800 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1799 to { i32, [ 0 x i32 ] }* 
  %index_ptr1801 = getelementptr { i32, [ 0 x i32 ] }* %array1800, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1801
  %index_ptr1802 = getelementptr { i32, [ 0 x i32 ] }* %array1800, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1802
  %index_ptr1803 = getelementptr { i32, [ 0 x i32 ] }* %array1800, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1803
  %index_ptr1804 = getelementptr { i32, [ 0 x i32 ] }* %array1800, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1804
  %index_ptr1805 = getelementptr { i32, [ 0 x i32 ] }* %array1800, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1805
  %arr11806 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1800, { i32, [ 0 x i32 ] }** %arr11806
  %_lhs1807 = load { i32, [ 0 x i32 ] }** %arr11806
  %ret1808 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1807 )
  %str1809 = alloca i8*
  store i8* %ret1808, i8** %str1809
  %_lhs1810 = load i8** %str1809
  %ret1811 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1810 )
  %arr21812 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1811, { i32, [ 0 x i32 ] }** %arr21812
  %s1813 = alloca i32
  store i32 0, i32* %s1813
  %i1814 = alloca i32
  store i32 0, i32* %i1814
  br label %__cond677

__cond677:
  %_lhs1815 = load i32* %i1814
  %bop1816 = icmp slt i32 %_lhs1815, 5
  br i1 %bop1816, label %__body676, label %__post675

__fresh679:
  br label %__body676

__body676:
  %_lhs1817 = load i32* %s1813
  %_lhs1818 = load i32* %i1814
  %array_dereferenced1819 = load { i32, [ 0 x i32 ] }** %arr21812
  %len_ptr1820 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1819, i32 0, i32 0
  %len1821 = load i32* %len_ptr1820
  call void @oat_array_bounds_check( i32 %len1821, i32 %_lhs1818 )
  %elt_ptr1822 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1819, i32 0, i32 1, i32 %_lhs1818
  %_lhs1823 = load i32* %elt_ptr1822
  %bop1824 = add i32 %_lhs1817, %_lhs1823
  store i32 %bop1824, i32* %s1813
  %_lhs1825 = load i32* %i1814
  %bop1826 = add i32 %_lhs1825, 1
  store i32 %bop1826, i32* %i1814
  br label %__cond677

__fresh680:
  br label %__post675

__post675:
  %_lhs1827 = load i32* %s1813
  ret i32 %_lhs1827
}


