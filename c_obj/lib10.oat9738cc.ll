declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1904.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1904 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1904.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh359:
  ret void
}


define i32 @program (i32 %argc1902, { i32, [ 0 x i8* ] }* %argv1900){

__fresh358:
  %argc_slot1903 = alloca i32
  store i32 %argc1902, i32* %argc_slot1903
  %argv_slot1901 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1900, { i32, [ 0 x i8* ] }** %argv_slot1901
  %strval1905 = load i8** @_oat_string1904
  %ret1906 = call i32 @my_length_of_string ( i8* %strval1905 )
  ret i32 %ret1906
}


define i32 @my_length_of_string (i8* %str1894){

__fresh357:
  %str_slot1895 = alloca i8*
  store i8* %str1894, i8** %str_slot1895
  %_lhs1896 = load i8** %str_slot1895
  %ret1897 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1896 )
  %len_ptr1898 = getelementptr { i32, [ 0 x i32 ] }* %ret1897, i32 0, i32 0
  %len1899 = load i32* %len_ptr1898
  ret i32 %len1899
}


