declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh359:
  ret void
}


define i32 @program (i32 %argc1807, { i32, [ 0 x i8* ] }* %argv1805){

__fresh356:
  %argc_slot1808 = alloca i32
  store i32 %argc1807, i32* %argc_slot1808
  %argv_slot1806 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1805, { i32, [ 0 x i8* ] }** %argv_slot1806
  %array_ptr1809 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1810 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1809 to { i32, [ 0 x i32 ] }* 
  %index_ptr1811 = getelementptr { i32, [ 0 x i32 ] }* %array1810, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1811
  %index_ptr1812 = getelementptr { i32, [ 0 x i32 ] }* %array1810, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1812
  %index_ptr1813 = getelementptr { i32, [ 0 x i32 ] }* %array1810, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1813
  %index_ptr1814 = getelementptr { i32, [ 0 x i32 ] }* %array1810, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1814
  %index_ptr1815 = getelementptr { i32, [ 0 x i32 ] }* %array1810, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1815
  %arr11816 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1810, { i32, [ 0 x i32 ] }** %arr11816
  %_lhs1817 = load { i32, [ 0 x i32 ] }** %arr11816
  %ret1818 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1817 )
  %str1819 = alloca i8*
  store i8* %ret1818, i8** %str1819
  %_lhs1820 = load i8** %str1819
  %ret1821 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1820 )
  %arr21822 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1821, { i32, [ 0 x i32 ] }** %arr21822
  %s1823 = alloca i32
  store i32 0, i32* %s1823
  %i1824 = alloca i32
  store i32 0, i32* %i1824
  br label %__cond355

__cond355:
  %_lhs1825 = load i32* %i1824
  %bop1826 = icmp slt i32 %_lhs1825, 5
  br i1 %bop1826, label %__body354, label %__post353

__fresh357:
  br label %__body354

__body354:
  %_lhs1827 = load i32* %s1823
  %_lhs1828 = load i32* %i1824
  %len_ptr1829 = getelementptr { i32, [ 0 x i32 ] }** %arr21822, i32 0, i32 0
  %len1830 = load i32* %len_ptr1829
  call void @oat_array_bounds_check( i32 %len1830, i32 %_lhs1828 )
  %array_dereferenced1831 = load { i32, [ 0 x i32 ] }** %arr21822
  %elt_ptr1832 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1831, i32 0, i32 1, i32 %_lhs1828
  %_lhs1833 = load i32* %elt_ptr1832
  %bop1834 = add i32 %_lhs1827, %_lhs1833
  store i32 %bop1834, i32* %s1823
  %_lhs1835 = load i32* %i1824
  %bop1836 = add i32 %_lhs1835, 1
  store i32 %bop1836, i32* %i1824
  br label %__cond355

__fresh358:
  br label %__post353

__post353:
  %_lhs1837 = load i32* %s1823
  ret i32 %_lhs1837
}


