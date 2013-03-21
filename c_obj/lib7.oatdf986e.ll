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


define i32 @program (i32 %argc1836, { i32, [ 0 x i8* ] }* %argv1834){

__fresh290:
  %argc_slot1837 = alloca i32
  store i32 %argc1836, i32* %argc_slot1837
  %argv_slot1835 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1834, { i32, [ 0 x i8* ] }** %argv_slot1835
  %array_ptr1838 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1839 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1838 to { i32, [ 0 x i32 ] }* 
  %index_ptr1840 = getelementptr { i32, [ 0 x i32 ] }* %array1839, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1840
  %index_ptr1841 = getelementptr { i32, [ 0 x i32 ] }* %array1839, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1841
  %index_ptr1842 = getelementptr { i32, [ 0 x i32 ] }* %array1839, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1842
  %index_ptr1843 = getelementptr { i32, [ 0 x i32 ] }* %array1839, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1843
  %index_ptr1844 = getelementptr { i32, [ 0 x i32 ] }* %array1839, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1844
  %arr11845 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1839, { i32, [ 0 x i32 ] }** %arr11845
  %_lhs1846 = load { i32, [ 0 x i32 ] }** %arr11845
  %ret1847 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1846 )
  %str1848 = alloca i8*
  store i8* %ret1847, i8** %str1848
  %_lhs1849 = load i8** %str1848
  %ret1850 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1849 )
  %arr21851 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1850, { i32, [ 0 x i32 ] }** %arr21851
  %s1852 = alloca i32
  store i32 0, i32* %s1852
  %i1853 = alloca i32
  store i32 0, i32* %i1853
  br label %__cond289

__cond289:
  %_lhs1854 = load i32* %i1853
  %bop1855 = icmp slt i32 %_lhs1854, 5
  br i1 %bop1855, label %__body288, label %__post287

__fresh291:
  br label %__body288

__body288:
  %_lhs1856 = load i32* %s1852
  %_lhs1857 = load i32* %i1853
  %len_ptr1858 = getelementptr { i32, [ 0 x i32 ] }** %arr21851, i32 0, i32 0
  %len1859 = load i32* %len_ptr1858
  call void @oat_array_bounds_check( i32 %len1859, i32 %_lhs1857 )
  %array_dereferenced1860 = load { i32, [ 0 x i32 ] }** %arr21851
  %elt_ptr1861 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1860, i32 0, i32 1, i32 %_lhs1857
  %_lhs1862 = load i32* %elt_ptr1861
  %bop1863 = add i32 %_lhs1856, %_lhs1862
  store i32 %bop1863, i32* %s1852
  %_lhs1864 = load i32* %i1853
  %bop1865 = add i32 %_lhs1864, 1
  store i32 %bop1865, i32* %i1853
  br label %__cond289

__fresh292:
  br label %__post287

__post287:
  %_lhs1866 = load i32* %s1852
  ret i32 %_lhs1866
}


