declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1065.str. = private unnamed_addr constant [ 14 x i8 ] c "Hello world!
\00", align 4
@_oat_string1065 = global i8* getelementptr inbounds ([ 14 x i8 ]* @_oat_string1065.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh119:
  ret void
}


define i32 @program (i32 %argc1063, { i32, [ 0 x i8* ] }* %argv1061){

__fresh118:
  %argc_slot1064 = alloca i32
  store i32 %argc1063, i32* %argc_slot1064
  %argv_slot1062 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1061, { i32, [ 0 x i8* ] }** %argv_slot1062
  %strval1066 = load i8** @_oat_string1065
  %str1067 = alloca i8*
  store i8* %strval1066, i8** %str1067
  %_lhs1068 = load i8** %str1067
  call void @print_string( i8* %_lhs1068 )
  ret i32 0
}


