declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh302:
  ret void
}


define i32 @program (i32 %argc1878, { i32, [ 0 x i8* ] }* %argv1876){

__fresh299:
  %argc_slot1879 = alloca i32
  store i32 %argc1878, i32* %argc_slot1879
  %argv_slot1877 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1876, { i32, [ 0 x i8* ] }** %argv_slot1877
  %i1880 = alloca i32
  store i32 1, i32* %i1880
  br label %__cond298

__cond298:
  %_lhs1881 = load i32* %i1880
  %_lhs1882 = load i32* %argc_slot1879
  %bop1883 = icmp slt i32 %_lhs1881, %_lhs1882
  br i1 %bop1883, label %__body297, label %__post296

__fresh300:
  br label %__body297

__body297:
  %_lhs1884 = load i32* %i1880
  %len_ptr1885 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot1877, i32 0, i32 0
  %len1886 = load i32* %len_ptr1885
  call void @oat_array_bounds_check( i32 %len1886, i32 %_lhs1884 )
  %array_dereferenced1887 = load { i32, [ 0 x i8* ] }** %argv_slot1877
  %elt_ptr1888 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced1887, i32 0, i32 1, i32 %_lhs1884
  %_lhs1889 = load i8** %elt_ptr1888
  call void @print_string( i8* %_lhs1889 )
  %_lhs1890 = load i32* %i1880
  %bop1891 = add i32 %_lhs1890, 1
  store i32 %bop1891, i32* %i1880
  br label %__cond298

__fresh301:
  br label %__post296

__post296:
  %_lhs1892 = load i32* %argc_slot1879
  ret i32 %_lhs1892
}


