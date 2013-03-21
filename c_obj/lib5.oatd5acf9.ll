declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1905.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1905 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1905.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh400:
  ret void
}


define i32 @program (i32 %argc1903, { i32, [ 0 x i8* ] }* %argv1901){

__fresh397:
  %argc_slot1904 = alloca i32
  store i32 %argc1903, i32* %argc_slot1904
  %argv_slot1902 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1901, { i32, [ 0 x i8* ] }** %argv_slot1902
  %strval1906 = load i8** @_oat_string1905
  %str1907 = alloca i8*
  store i8* %strval1906, i8** %str1907
  %_lhs1908 = load i8** %str1907
  %ret1909 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1908 )
  %arr1910 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1909, { i32, [ 0 x i32 ] }** %arr1910
  %s1911 = alloca i32
  store i32 0, i32* %s1911
  %i1912 = alloca i32
  store i32 0, i32* %i1912
  br label %__cond396

__cond396:
  %_lhs1913 = load i32* %i1912
  %bop1914 = icmp slt i32 %_lhs1913, 5
  br i1 %bop1914, label %__body395, label %__post394

__fresh398:
  br label %__body395

__body395:
  %_lhs1915 = load i32* %s1911
  %_lhs1916 = load i32* %i1912
  %len_ptr1917 = getelementptr { i32, [ 0 x i32 ] }** %arr1910, i32 0, i32 0
  %len1918 = load i32* %len_ptr1917
  call void @oat_array_bounds_check( i32 %len1918, i32 %_lhs1916 )
  %array_dereferenced1919 = load { i32, [ 0 x i32 ] }** %arr1910
  %elt_ptr1920 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1919, i32 0, i32 1, i32 %_lhs1916
  %_lhs1921 = load i32* %elt_ptr1920
  %bop1922 = add i32 %_lhs1915, %_lhs1921
  store i32 %bop1922, i32* %s1911
  %_lhs1923 = load i32* %i1912
  %bop1924 = add i32 %_lhs1923, 1
  store i32 %bop1924, i32* %i1912
  br label %__cond396

__fresh399:
  br label %__post394

__post394:
  %_lhs1925 = load i32* %s1911
  ret i32 %_lhs1925
}


