declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1842.str. = private unnamed_addr constant [ 14 x i8 ] c "Hello world!
\00", align 4
@_oat_string1842 = global i8* getelementptr inbounds ([ 14 x i8 ]* @_oat_string1842.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh340:
  ret void
}


define i32 @program (i32 %argc1840, { i32, [ 0 x i8* ] }* %argv1838){

__fresh339:
  %argc_slot1841 = alloca i32
  store i32 %argc1840, i32* %argc_slot1841
  %argv_slot1839 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1838, { i32, [ 0 x i8* ] }** %argv_slot1839
  %strval1843 = load i8** @_oat_string1842
  %str1844 = alloca i8*
  store i8* %strval1843, i8** %str1844
  %_lhs1845 = load i8** %str1844
  call void @print_string( i8* %_lhs1845 )
  ret i32 0
}


