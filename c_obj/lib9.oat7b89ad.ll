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


define i32 @program (i32 %argc1860, { i32, [ 0 x i8* ] }* %argv1858){

__fresh692:
  %argc_slot1861 = alloca i32
  store i32 %argc1860, i32* %argc_slot1861
  %argv_slot1859 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1858, { i32, [ 0 x i8* ] }** %argv_slot1859
  %i1862 = alloca i32
  store i32 1, i32* %i1862
  br label %__cond691

__cond691:
  %_lhs1863 = load i32* %i1862
  %_lhs1864 = load i32* %argc_slot1861
  %bop1865 = icmp slt i32 %_lhs1863, %_lhs1864
  br i1 %bop1865, label %__body690, label %__post689

__fresh693:
  br label %__body690

__body690:
  %_lhs1866 = load i32* %i1862
  %array_dereferenced1867 = load { i32, [ 0 x i8* ] }** %argv_slot1859
  %len_ptr1868 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced1867, i32 0, i32 0
  %len1869 = load i32* %len_ptr1868
  call void @oat_array_bounds_check( i32 %len1869, i32 %_lhs1866 )
  %elt_ptr1870 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced1867, i32 0, i32 1, i32 %_lhs1866
  %_lhs1871 = load i8** %elt_ptr1870
  call void @print_string( i8* %_lhs1871 )
  %_lhs1872 = load i32* %i1862
  %bop1873 = add i32 %_lhs1872, 1
  store i32 %bop1873, i32* %i1862
  br label %__cond691

__fresh694:
  br label %__post689

__post689:
  %_lhs1874 = load i32* %argc_slot1861
  ret i32 %_lhs1874
}


