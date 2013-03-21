declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1885.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1885 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1885.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh371:
  ret void
}


define i32 @program (i32 %argc1883, { i32, [ 0 x i8* ] }* %argv1881){

__fresh366:
  %argc_slot1884 = alloca i32
  store i32 %argc1883, i32* %argc_slot1884
  %argv_slot1882 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1881, { i32, [ 0 x i8* ] }** %argv_slot1882
  %strval1886 = load i8** @_oat_string1885
  %ret1887 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1886 )
  %arr1888 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1887, { i32, [ 0 x i32 ] }** %arr1888
  %sum1889 = alloca i32
  store i32 0, i32* %sum1889
  %i1890 = alloca i32
  store i32 0, i32* %i1890
  br label %__cond362

__cond362:
  %_lhs1891 = load i32* %i1890
  %bop1892 = icmp slt i32 %_lhs1891, 10
  br i1 %bop1892, label %__body361, label %__post360

__fresh367:
  br label %__body361

__body361:
  %_lhs1893 = load i32* %i1890
  %len_ptr1894 = getelementptr { i32, [ 0 x i32 ] }** %arr1888, i32 0, i32 0
  %len1895 = load i32* %len_ptr1894
  call void @oat_array_bounds_check( i32 %len1895, i32 %_lhs1893 )
  %array_dereferenced1896 = load { i32, [ 0 x i32 ] }** %arr1888
  %elt_ptr1897 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1896, i32 0, i32 1, i32 %_lhs1893
  %_lhs1898 = load i32* %i1890
  store i32 %_lhs1898, i32* %elt_ptr1897
  %_lhs1899 = load i32* %i1890
  %bop1900 = add i32 %_lhs1899, 1
  store i32 %bop1900, i32* %i1890
  br label %__cond362

__fresh368:
  br label %__post360

__post360:
  %i1901 = alloca i32
  store i32 0, i32* %i1901
  br label %__cond365

__cond365:
  %_lhs1902 = load i32* %i1901
  %bop1903 = icmp slt i32 %_lhs1902, 10
  br i1 %bop1903, label %__body364, label %__post363

__fresh369:
  br label %__body364

__body364:
  %_lhs1904 = load i32* %sum1889
  %_lhs1905 = load i32* %i1901
  %len_ptr1906 = getelementptr { i32, [ 0 x i32 ] }** %arr1888, i32 0, i32 0
  %len1907 = load i32* %len_ptr1906
  call void @oat_array_bounds_check( i32 %len1907, i32 %_lhs1905 )
  %array_dereferenced1908 = load { i32, [ 0 x i32 ] }** %arr1888
  %elt_ptr1909 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1908, i32 0, i32 1, i32 %_lhs1905
  %_lhs1910 = load i32* %elt_ptr1909
  %bop1911 = add i32 %_lhs1904, %_lhs1910
  store i32 %bop1911, i32* %sum1889
  %_lhs1912 = load i32* %i1901
  %bop1913 = add i32 %_lhs1912, 1
  store i32 %bop1913, i32* %i1901
  br label %__cond365

__fresh370:
  br label %__post363

__post363:
  %_lhs1914 = load i32* %sum1889
  ret i32 %_lhs1914
}


