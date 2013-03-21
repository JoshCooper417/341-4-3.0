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


define i32 @program (i32 %argc1818, { i32, [ 0 x i8* ] }* %argv1816){

__fresh678:
  %argc_slot1819 = alloca i32
  store i32 %argc1818, i32* %argc_slot1819
  %argv_slot1817 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1816, { i32, [ 0 x i8* ] }** %argv_slot1817
  %array_ptr1820 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1821 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1820 to { i32, [ 0 x i32 ] }* 
  %index_ptr1822 = getelementptr { i32, [ 0 x i32 ] }* %array1821, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1822
  %index_ptr1823 = getelementptr { i32, [ 0 x i32 ] }* %array1821, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1823
  %index_ptr1824 = getelementptr { i32, [ 0 x i32 ] }* %array1821, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1824
  %index_ptr1825 = getelementptr { i32, [ 0 x i32 ] }* %array1821, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1825
  %index_ptr1826 = getelementptr { i32, [ 0 x i32 ] }* %array1821, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1826
  %arr11827 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1821, { i32, [ 0 x i32 ] }** %arr11827
  %_lhs1828 = load { i32, [ 0 x i32 ] }** %arr11827
  %ret1829 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1828 )
  %str1830 = alloca i8*
  store i8* %ret1829, i8** %str1830
  %_lhs1831 = load i8** %str1830
  %ret1832 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1831 )
  %arr21833 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1832, { i32, [ 0 x i32 ] }** %arr21833
  %s1834 = alloca i32
  store i32 0, i32* %s1834
  %i1835 = alloca i32
  store i32 0, i32* %i1835
  br label %__cond677

__cond677:
  %_lhs1836 = load i32* %i1835
  %bop1837 = icmp slt i32 %_lhs1836, 5
  br i1 %bop1837, label %__body676, label %__post675

__fresh679:
  br label %__body676

__body676:
  %_lhs1838 = load i32* %s1834
  %_lhs1839 = load i32* %i1835
  %array_dereferenced1840 = load { i32, [ 0 x i32 ] }** %arr21833
  %len_ptr1841 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1840, i32 0, i32 0
  %len1842 = load i32* %len_ptr1841
  call void @oat_array_bounds_check( i32 %len1842, i32 %_lhs1839 )
  %elt_ptr1843 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1840, i32 0, i32 1, i32 %_lhs1839
  %_lhs1844 = load i32* %elt_ptr1843
  %bop1845 = add i32 %_lhs1838, %_lhs1844
  store i32 %bop1845, i32* %s1834
  %_lhs1846 = load i32* %i1835
  %bop1847 = add i32 %_lhs1846, 1
  store i32 %bop1847, i32* %i1835
  br label %__cond677

__fresh680:
  br label %__post675

__post675:
  %_lhs1848 = load i32* %s1834
  ret i32 %_lhs1848
}


