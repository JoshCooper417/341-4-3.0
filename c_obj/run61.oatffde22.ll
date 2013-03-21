declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@s409 = global i8* zeroinitializer, align 4		; initialized by s409.init
@_oat_string407.str. = private unnamed_addr constant [ 4 x i8 ] c "341\00", align 4
@_oat_string407 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string407.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh79:
  call void @s409.init(  )
  ret void
}


define i32 @program (i32 %argc413, { i32, [ 0 x i8* ] }* %argv411){

__fresh78:
  %argc_slot414 = alloca i32
  store i32 %argc413, i32* %argc_slot414
  %argv_slot412 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv411, { i32, [ 0 x i8* ] }** %argv_slot412
  %_lhs415 = load i8** @s409
  call void @print_string( i8* %_lhs415 )
  ret i32 0
}


define void @s409.init (){

__fresh77:
  %strval408 = load i8** @_oat_string407
  store i8* %strval408, i8** @s409
  ret void
}


