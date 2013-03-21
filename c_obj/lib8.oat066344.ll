declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1984.str. = private unnamed_addr constant [ 14 x i8 ] c "Hello world!
\00", align 4
@_oat_string1984 = global i8* getelementptr inbounds ([ 14 x i8 ]* @_oat_string1984.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh321:
  ret void
}


define i32 @program (i32 %argc1982, { i32, [ 0 x i8* ] }* %argv1980){

__fresh320:
  %argc_slot1983 = alloca i32
  store i32 %argc1982, i32* %argc_slot1983
  %argv_slot1981 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1980, { i32, [ 0 x i8* ] }** %argv_slot1981
  %strval1985 = load i8** @_oat_string1984
  %str1986 = alloca i8*
  store i8* %strval1985, i8** %str1986
  %_lhs1987 = load i8** %str1986
  call void @print_string( i8* %_lhs1987 )
  ret i32 0
}


