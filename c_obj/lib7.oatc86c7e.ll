declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh293:
  ret void
}


define i32 @program (i32 %argc1806, { i32, [ 0 x i8* ] }* %argv1804){

__fresh290:
  %argc_slot1807 = alloca i32
  store i32 %argc1806, i32* %argc_slot1807
  %argv_slot1805 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1804, { i32, [ 0 x i8* ] }** %argv_slot1805
  %array_ptr1808 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1809 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1808 to { i32, [ 0 x i32 ] }* 
  %index_ptr1810 = getelementptr { i32, [ 0 x i32 ] }* %array1809, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1810
  %index_ptr1811 = getelementptr { i32, [ 0 x i32 ] }* %array1809, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1811
  %index_ptr1812 = getelementptr { i32, [ 0 x i32 ] }* %array1809, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1812
  %index_ptr1813 = getelementptr { i32, [ 0 x i32 ] }* %array1809, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1813
  %index_ptr1814 = getelementptr { i32, [ 0 x i32 ] }* %array1809, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1814
  %arr11815 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1809, { i32, [ 0 x i32 ] }** %arr11815
  %_lhs1816 = load { i32, [ 0 x i32 ] }** %arr11815
  %ret1817 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1816 )
  %str1818 = alloca i8*
  store i8* %ret1817, i8** %str1818
  %_lhs1819 = load i8** %str1818
  %ret1820 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1819 )
  %arr21821 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1820, { i32, [ 0 x i32 ] }** %arr21821
  %s1822 = alloca i32
  store i32 0, i32* %s1822
  %i1823 = alloca i32
  store i32 0, i32* %i1823
  br label %__cond289

__cond289:
  %_lhs1824 = load i32* %i1823
  %bop1825 = icmp slt i32 %_lhs1824, 5
  br i1 %bop1825, label %__body288, label %__post287

__fresh291:
  br label %__body288

__body288:
  %_lhs1826 = load i32* %s1822
  %_lhs1827 = load i32* %i1823
  %len_ptr1828 = getelementptr { i32, [ 0 x i32 ] }** %arr21821, i32 0, i32 0
  %len1829 = load i32* %len_ptr1828
  call void @oat_array_bounds_check( i32 %len1829, i32 %_lhs1827 )
  %array_dereferenced1830 = load { i32, [ 0 x i32 ] }** %arr21821
  %elt_ptr1831 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1830, i32 0, i32 1, i32 %_lhs1827
  %_lhs1832 = load i32* %elt_ptr1831
  %bop1833 = add i32 %_lhs1826, %_lhs1832
  store i32 %bop1833, i32* %s1822
  %_lhs1834 = load i32* %i1823
  %bop1835 = add i32 %_lhs1834, 1
  store i32 %bop1835, i32* %i1823
  br label %__cond289

__fresh292:
  br label %__post287

__post287:
  %_lhs1836 = load i32* %s1822
  ret i32 %_lhs1836
}


