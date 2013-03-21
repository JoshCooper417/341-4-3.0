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


define i32 @program (i32 %argc1879, { i32, [ 0 x i8* ] }* %argv1877){

__fresh353:
  %argc_slot1880 = alloca i32
  store i32 %argc1879, i32* %argc_slot1880
  %argv_slot1878 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1877, { i32, [ 0 x i8* ] }** %argv_slot1878
  %i1881 = alloca i32
  store i32 1, i32* %i1881
  br label %__cond352

__cond352:
  %_lhs1882 = load i32* %i1881
  %_lhs1883 = load i32* %argc_slot1880
  %bop1884 = icmp slt i32 %_lhs1882, %_lhs1883
  br i1 %bop1884, label %__body351, label %__post350

__fresh354:
  br label %__body351

__body351:
  %_lhs1885 = load i32* %i1881
  %len_ptr1886 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot1878, i32 0, i32 0
  %len1887 = load i32* %len_ptr1886
  call void @oat_array_bounds_check( i32 %len1887, i32 %_lhs1885 )
  %array_dereferenced1888 = load { i32, [ 0 x i8* ] }** %argv_slot1878
  %elt_ptr1889 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced1888, i32 0, i32 1, i32 %_lhs1885
  %_lhs1890 = load i8** %elt_ptr1889
  call void @print_string( i8* %_lhs1890 )
  %_lhs1891 = load i32* %i1881
  %bop1892 = add i32 %_lhs1891, 1
  store i32 %bop1892, i32* %i1881
  br label %__cond352

__fresh355:
  br label %__post350

__post350:
  %_lhs1893 = load i32* %argc_slot1880
  ret i32 %_lhs1893
}


