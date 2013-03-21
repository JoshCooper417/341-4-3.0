declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh347:
  ret void
}


define i32 @program (i32 %argc1810, { i32, [ 0 x i8* ] }* %argv1808){

__fresh344:
  %argc_slot1811 = alloca i32
  store i32 %argc1810, i32* %argc_slot1811
  %argv_slot1809 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1808, { i32, [ 0 x i8* ] }** %argv_slot1809
  %array_ptr1812 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1813 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1812 to { i32, [ 0 x i32 ] }* 
  %index_ptr1814 = getelementptr { i32, [ 0 x i32 ] }* %array1813, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1814
  %index_ptr1815 = getelementptr { i32, [ 0 x i32 ] }* %array1813, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1815
  %index_ptr1816 = getelementptr { i32, [ 0 x i32 ] }* %array1813, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1816
  %index_ptr1817 = getelementptr { i32, [ 0 x i32 ] }* %array1813, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1817
  %index_ptr1818 = getelementptr { i32, [ 0 x i32 ] }* %array1813, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1818
  %arr11819 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1813, { i32, [ 0 x i32 ] }** %arr11819
  %_lhs1820 = load { i32, [ 0 x i32 ] }** %arr11819
  %ret1821 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1820 )
  %str1822 = alloca i8*
  store i8* %ret1821, i8** %str1822
  %_lhs1823 = load i8** %str1822
  %ret1824 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1823 )
  %arr21825 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1824, { i32, [ 0 x i32 ] }** %arr21825
  %s1826 = alloca i32
  store i32 0, i32* %s1826
  %i1827 = alloca i32
  store i32 0, i32* %i1827
  br label %__cond343

__cond343:
  %_lhs1828 = load i32* %i1827
  %bop1829 = icmp slt i32 %_lhs1828, 5
  br i1 %bop1829, label %__body342, label %__post341

__fresh345:
  br label %__body342

__body342:
  %_lhs1830 = load i32* %s1826
  %_lhs1831 = load i32* %i1827
  %len_ptr1832 = getelementptr { i32, [ 0 x i32 ] }** %arr21825, i32 0, i32 0
  %len1833 = load i32* %len_ptr1832
  call void @oat_array_bounds_check( i32 %len1833, i32 %_lhs1831 )
  %array_dereferenced1834 = load { i32, [ 0 x i32 ] }** %arr21825
  %elt_ptr1835 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1834, i32 0, i32 1, i32 %_lhs1831
  %_lhs1836 = load i32* %elt_ptr1835
  %bop1837 = add i32 %_lhs1830, %_lhs1836
  store i32 %bop1837, i32* %s1826
  %_lhs1838 = load i32* %i1827
  %bop1839 = add i32 %_lhs1838, 1
  store i32 %bop1839, i32* %i1827
  br label %__cond343

__fresh346:
  br label %__post341

__post341:
  %_lhs1840 = load i32* %s1826
  ret i32 %_lhs1840
}


