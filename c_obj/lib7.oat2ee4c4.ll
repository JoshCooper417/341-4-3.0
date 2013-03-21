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


define i32 @program (i32 %argc1837, { i32, [ 0 x i8* ] }* %argv1835){

__fresh344:
  %argc_slot1838 = alloca i32
  store i32 %argc1837, i32* %argc_slot1838
  %argv_slot1836 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1835, { i32, [ 0 x i8* ] }** %argv_slot1836
  %array_ptr1839 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1840 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1839 to { i32, [ 0 x i32 ] }* 
  %index_ptr1841 = getelementptr { i32, [ 0 x i32 ] }* %array1840, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1841
  %index_ptr1842 = getelementptr { i32, [ 0 x i32 ] }* %array1840, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1842
  %index_ptr1843 = getelementptr { i32, [ 0 x i32 ] }* %array1840, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1843
  %index_ptr1844 = getelementptr { i32, [ 0 x i32 ] }* %array1840, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1844
  %index_ptr1845 = getelementptr { i32, [ 0 x i32 ] }* %array1840, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1845
  %arr11846 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1840, { i32, [ 0 x i32 ] }** %arr11846
  %_lhs1847 = load { i32, [ 0 x i32 ] }** %arr11846
  %ret1848 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1847 )
  %str1849 = alloca i8*
  store i8* %ret1848, i8** %str1849
  %_lhs1850 = load i8** %str1849
  %ret1851 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1850 )
  %arr21852 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1851, { i32, [ 0 x i32 ] }** %arr21852
  %s1853 = alloca i32
  store i32 0, i32* %s1853
  %i1854 = alloca i32
  store i32 0, i32* %i1854
  br label %__cond343

__cond343:
  %_lhs1855 = load i32* %i1854
  %bop1856 = icmp slt i32 %_lhs1855, 5
  br i1 %bop1856, label %__body342, label %__post341

__fresh345:
  br label %__body342

__body342:
  %_lhs1857 = load i32* %s1853
  %_lhs1858 = load i32* %i1854
  %len_ptr1859 = getelementptr { i32, [ 0 x i32 ] }** %arr21852, i32 0, i32 0
  %len1860 = load i32* %len_ptr1859
  call void @oat_array_bounds_check( i32 %len1860, i32 %_lhs1858 )
  %array_dereferenced1861 = load { i32, [ 0 x i32 ] }** %arr21852
  %elt_ptr1862 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1861, i32 0, i32 1, i32 %_lhs1858
  %_lhs1863 = load i32* %elt_ptr1862
  %bop1864 = add i32 %_lhs1857, %_lhs1863
  store i32 %bop1864, i32* %s1853
  %_lhs1865 = load i32* %i1854
  %bop1866 = add i32 %_lhs1865, 1
  store i32 %bop1866, i32* %i1854
  br label %__cond343

__fresh346:
  br label %__post341

__post341:
  %_lhs1867 = load i32* %s1853
  ret i32 %_lhs1867
}


