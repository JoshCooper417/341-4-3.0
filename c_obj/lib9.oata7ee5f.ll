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


define i32 @program (i32 %argc1849, { i32, [ 0 x i8* ] }* %argv1847){

__fresh344:
  %argc_slot1850 = alloca i32
  store i32 %argc1849, i32* %argc_slot1850
  %argv_slot1848 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1847, { i32, [ 0 x i8* ] }** %argv_slot1848
  %i1851 = alloca i32
  store i32 1, i32* %i1851
  br label %__cond343

__cond343:
  %_lhs1852 = load i32* %i1851
  %_lhs1853 = load i32* %argc_slot1850
  %bop1854 = icmp slt i32 %_lhs1852, %_lhs1853
  br i1 %bop1854, label %__body342, label %__post341

__fresh345:
  br label %__body342

__body342:
  %_lhs1855 = load i32* %i1851
  %len_ptr1856 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot1848, i32 0, i32 0
  %len1857 = load i32* %len_ptr1856
  call void @oat_array_bounds_check( i32 %len1857, i32 %_lhs1855 )
  %array_dereferenced1858 = load { i32, [ 0 x i8* ] }** %argv_slot1848
  %elt_ptr1859 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced1858, i32 0, i32 1, i32 %_lhs1855
  %_lhs1860 = load i8** %elt_ptr1859
  call void @print_string( i8* %_lhs1860 )
  %_lhs1861 = load i32* %i1851
  %bop1862 = add i32 %_lhs1861, 1
  store i32 %bop1862, i32* %i1851
  br label %__cond343

__fresh346:
  br label %__post341

__post341:
  %_lhs1863 = load i32* %argc_slot1850
  ret i32 %_lhs1863
}


