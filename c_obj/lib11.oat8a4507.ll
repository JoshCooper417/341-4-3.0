declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1882.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1882 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1882.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh362:
  ret void
}


define i32 @program (i32 %argc1880, { i32, [ 0 x i8* ] }* %argv1878){

__fresh357:
  %argc_slot1881 = alloca i32
  store i32 %argc1880, i32* %argc_slot1881
  %argv_slot1879 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1878, { i32, [ 0 x i8* ] }** %argv_slot1879
  %strval1883 = load i8** @_oat_string1882
  %ret1884 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1883 )
  %arr1885 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1884, { i32, [ 0 x i32 ] }** %arr1885
  %sum1886 = alloca i32
  store i32 0, i32* %sum1886
  %i1887 = alloca i32
  store i32 0, i32* %i1887
  br label %__cond353

__cond353:
  %_lhs1888 = load i32* %i1887
  %bop1889 = icmp slt i32 %_lhs1888, 10
  br i1 %bop1889, label %__body352, label %__post351

__fresh358:
  br label %__body352

__body352:
  %_lhs1890 = load i32* %i1887
  %len_ptr1891 = getelementptr { i32, [ 0 x i32 ] }** %arr1885, i32 0, i32 0
  %len1892 = load i32* %len_ptr1891
  call void @oat_array_bounds_check( i32 %len1892, i32 %_lhs1890 )
  %array_dereferenced1893 = load { i32, [ 0 x i32 ] }** %arr1885
  %elt_ptr1894 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1893, i32 0, i32 1, i32 %_lhs1890
  %_lhs1895 = load i32* %i1887
  store i32 %_lhs1895, i32* %elt_ptr1894
  %_lhs1896 = load i32* %i1887
  %bop1897 = add i32 %_lhs1896, 1
  store i32 %bop1897, i32* %i1887
  br label %__cond353

__fresh359:
  br label %__post351

__post351:
  %i1898 = alloca i32
  store i32 0, i32* %i1898
  br label %__cond356

__cond356:
  %_lhs1899 = load i32* %i1898
  %bop1900 = icmp slt i32 %_lhs1899, 10
  br i1 %bop1900, label %__body355, label %__post354

__fresh360:
  br label %__body355

__body355:
  %_lhs1901 = load i32* %sum1886
  %_lhs1902 = load i32* %i1898
  %len_ptr1903 = getelementptr { i32, [ 0 x i32 ] }** %arr1885, i32 0, i32 0
  %len1904 = load i32* %len_ptr1903
  call void @oat_array_bounds_check( i32 %len1904, i32 %_lhs1902 )
  %array_dereferenced1905 = load { i32, [ 0 x i32 ] }** %arr1885
  %elt_ptr1906 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1905, i32 0, i32 1, i32 %_lhs1902
  %_lhs1907 = load i32* %elt_ptr1906
  %bop1908 = add i32 %_lhs1901, %_lhs1907
  store i32 %bop1908, i32* %sum1886
  %_lhs1909 = load i32* %i1898
  %bop1910 = add i32 %_lhs1909, 1
  store i32 %bop1910, i32* %i1898
  br label %__cond356

__fresh361:
  br label %__post354

__post354:
  %_lhs1911 = load i32* %sum1886
  ret i32 %_lhs1911
}


