declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1903.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1903 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1903.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh305:
  ret void
}


define i32 @program (i32 %argc1901, { i32, [ 0 x i8* ] }* %argv1899){

__fresh304:
  %argc_slot1902 = alloca i32
  store i32 %argc1901, i32* %argc_slot1902
  %argv_slot1900 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1899, { i32, [ 0 x i8* ] }** %argv_slot1900
  %strval1904 = load i8** @_oat_string1903
  %ret1905 = call i32 @my_length_of_string ( i8* %strval1904 )
  ret i32 %ret1905
}


define i32 @my_length_of_string (i8* %str1893){

__fresh303:
  %str_slot1894 = alloca i8*
  store i8* %str1893, i8** %str_slot1894
  %_lhs1895 = load i8** %str_slot1894
  %ret1896 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1895 )
  %len_ptr1897 = getelementptr { i32, [ 0 x i32 ] }* %ret1896, i32 0, i32 0
  %len1898 = load i32* %len_ptr1897
  ret i32 %len1898
}


