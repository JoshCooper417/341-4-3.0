declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@s505 = global i8* zeroinitializer, align 4		; initialized by s505.init
@_oat_string503.str. = private unnamed_addr constant [ 4 x i8 ] c "341\00", align 4
@_oat_string503 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string503.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh150:
  call void @s505.init(  )
  ret void
}


define i32 @program (i32 %argc509, { i32, [ 0 x i8* ] }* %argv507){

__fresh149:
  %argc_slot510 = alloca i32
  store i32 %argc509, i32* %argc_slot510
  %argv_slot508 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv507, { i32, [ 0 x i8* ] }** %argv_slot508
  %_lhs511 = load i8** @s505
  call void @print_string( i8* %_lhs511 )
  ret i32 0
}


define void @s505.init (){

__fresh148:
  %strval504 = load i8** @_oat_string503
  store i8* %strval504, i8** @s505
  ret void
}


