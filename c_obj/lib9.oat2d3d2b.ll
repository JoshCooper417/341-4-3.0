declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh695:
  ret void
}


define i32 @program (i32 %argc1839, { i32, [ 0 x i8* ] }* %argv1837){

__fresh692:
  %argc_slot1840 = alloca i32
  store i32 %argc1839, i32* %argc_slot1840
  %argv_slot1838 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1837, { i32, [ 0 x i8* ] }** %argv_slot1838
  %i1841 = alloca i32
  store i32 1, i32* %i1841
  br label %__cond691

__cond691:
  %_lhs1842 = load i32* %i1841
  %_lhs1843 = load i32* %argc_slot1840
  %bop1844 = icmp slt i32 %_lhs1842, %_lhs1843
  br i1 %bop1844, label %__body690, label %__post689

__fresh693:
  br label %__body690

__body690:
  %_lhs1845 = load i32* %i1841
  %array_dereferenced1846 = load { i32, [ 0 x i8* ] }** %argv_slot1838
  %len_ptr1847 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced1846, i32 0, i32 0
  %len1848 = load i32* %len_ptr1847
  call void @oat_array_bounds_check( i32 %len1848, i32 %_lhs1845 )
  %elt_ptr1849 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced1846, i32 0, i32 1, i32 %_lhs1845
  %_lhs1850 = load i8** %elt_ptr1849
  call void @print_string( i8* %_lhs1850 )
  %_lhs1851 = load i32* %i1841
  %bop1852 = add i32 %_lhs1851, 1
  store i32 %bop1852, i32* %i1841
  br label %__cond691

__fresh694:
  br label %__post689

__post689:
  %_lhs1853 = load i32* %argc_slot1840
  ret i32 %_lhs1853
}


