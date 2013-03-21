declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1892.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1892 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1892.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh304:
  ret void
}


define i32 @program (i32 %argc1890, { i32, [ 0 x i8* ] }* %argv1888){

__fresh301:
  %argc_slot1891 = alloca i32
  store i32 %argc1890, i32* %argc_slot1891
  %argv_slot1889 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1888, { i32, [ 0 x i8* ] }** %argv_slot1889
  %strval1893 = load i8** @_oat_string1892
  %str1894 = alloca i8*
  store i8* %strval1893, i8** %str1894
  %_lhs1895 = load i8** %str1894
  %ret1896 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1895 )
  %arr1897 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1896, { i32, [ 0 x i32 ] }** %arr1897
  %s1898 = alloca i32
  store i32 0, i32* %s1898
  %i1899 = alloca i32
  store i32 0, i32* %i1899
  br label %__cond300

__cond300:
  %_lhs1900 = load i32* %i1899
  %bop1901 = icmp slt i32 %_lhs1900, 5
  br i1 %bop1901, label %__body299, label %__post298

__fresh302:
  br label %__body299

__body299:
  %_lhs1902 = load i32* %s1898
  %_lhs1903 = load i32* %i1899
  %len_ptr1904 = getelementptr { i32, [ 0 x i32 ] }** %arr1897, i32 0, i32 0
  %len1905 = load i32* %len_ptr1904
  call void @oat_array_bounds_check( i32 %len1905, i32 %_lhs1903 )
  %array_dereferenced1906 = load { i32, [ 0 x i32 ] }** %arr1897
  %elt_ptr1907 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1906, i32 0, i32 1, i32 %_lhs1903
  %_lhs1908 = load i32* %elt_ptr1907
  %bop1909 = add i32 %_lhs1902, %_lhs1908
  store i32 %bop1909, i32* %s1898
  %_lhs1910 = load i32* %i1899
  %bop1911 = add i32 %_lhs1910, 1
  store i32 %bop1911, i32* %i1899
  br label %__cond300

__fresh303:
  br label %__post298

__post298:
  %_lhs1912 = load i32* %s1898
  ret i32 %_lhs1912
}


