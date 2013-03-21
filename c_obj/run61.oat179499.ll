declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@s401 = global i8* zeroinitializer, align 4		; initialized by s401.init
@_oat_string399.str. = private unnamed_addr constant [ 4 x i8 ] c "341\00", align 4
@_oat_string399 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string399.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh79:
  call void @s401.init(  )
  ret void
}


define i32 @program (i32 %argc405, { i32, [ 0 x i8* ] }* %argv403){

__fresh78:
  %argc_slot406 = alloca i32
  store i32 %argc405, i32* %argc_slot406
  %argv_slot404 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv403, { i32, [ 0 x i8* ] }** %argv_slot404
  %_lhs407 = load i8** @s401
  call void @print_string( i8* %_lhs407 )
  ret i32 0
}


define void @s401.init (){

__fresh77:
  %strval400 = load i8** @_oat_string399
  store i8* %strval400, i8** @s401
  ret void
}


