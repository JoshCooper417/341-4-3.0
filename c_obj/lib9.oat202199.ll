declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh356:
  ret void
}


define i32 @program (i32 %argc1852, { i32, [ 0 x i8* ] }* %argv1850){

__fresh353:
  %argc_slot1853 = alloca i32
  store i32 %argc1852, i32* %argc_slot1853
  %argv_slot1851 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1850, { i32, [ 0 x i8* ] }** %argv_slot1851
  %i1854 = alloca i32
  store i32 1, i32* %i1854
  br label %__cond352

__cond352:
  %_lhs1855 = load i32* %i1854
  %_lhs1856 = load i32* %argc_slot1853
  %bop1857 = icmp slt i32 %_lhs1855, %_lhs1856
  br i1 %bop1857, label %__body351, label %__post350

__fresh354:
  br label %__body351

__body351:
  %_lhs1858 = load i32* %i1854
  %len_ptr1859 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot1851, i32 0, i32 0
  %len1860 = load i32* %len_ptr1859
  call void @oat_array_bounds_check( i32 %len1860, i32 %_lhs1858 )
  %array_dereferenced1861 = load { i32, [ 0 x i8* ] }** %argv_slot1851
  %elt_ptr1862 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced1861, i32 0, i32 1, i32 %_lhs1858
  %_lhs1863 = load i8** %elt_ptr1862
  call void @print_string( i8* %_lhs1863 )
  %_lhs1864 = load i32* %i1854
  %bop1865 = add i32 %_lhs1864, 1
  store i32 %bop1865, i32* %i1854
  br label %__cond352

__fresh355:
  br label %__post350

__post350:
  %_lhs1866 = load i32* %argc_slot1853
  ret i32 %_lhs1866
}


