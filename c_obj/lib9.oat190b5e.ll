declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh284:
  ret void
}


define i32 @program (i32 %argc1848, { i32, [ 0 x i8* ] }* %argv1846){

__fresh281:
  %argc_slot1849 = alloca i32
  store i32 %argc1848, i32* %argc_slot1849
  %argv_slot1847 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1846, { i32, [ 0 x i8* ] }** %argv_slot1847
  %i1850 = alloca i32
  store i32 1, i32* %i1850
  br label %__cond280

__cond280:
  %_lhs1851 = load i32* %i1850
  %_lhs1852 = load i32* %argc_slot1849
  %bop1853 = icmp slt i32 %_lhs1851, %_lhs1852
  br i1 %bop1853, label %__body279, label %__post278

__fresh282:
  br label %__body279

__body279:
  %_lhs1854 = load i32* %i1850
  %len_ptr1855 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot1847, i32 0, i32 0
  %len1856 = load i32* %len_ptr1855
  call void @oat_array_bounds_check( i32 %len1856, i32 %_lhs1854 )
  %array_dereferenced1857 = load { i32, [ 0 x i8* ] }** %argv_slot1847
  %elt_ptr1858 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced1857, i32 0, i32 1, i32 %_lhs1854
  %_lhs1859 = load i8** %elt_ptr1858
  call void @print_string( i8* %_lhs1859 )
  %_lhs1860 = load i32* %i1850
  %bop1861 = add i32 %_lhs1860, 1
  store i32 %bop1861, i32* %i1850
  br label %__cond280

__fresh283:
  br label %__post278

__post278:
  %_lhs1862 = load i32* %argc_slot1849
  ret i32 %_lhs1862
}


