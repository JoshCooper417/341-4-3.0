declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@s452 = global i8* zeroinitializer, align 4		; initialized by s452.init
@_oat_string450.str. = private unnamed_addr constant [ 4 x i8 ] c "341\00", align 4
@_oat_string450 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string450.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh108:
  call void @s452.init(  )
  ret void
}


define i32 @program (i32 %argc456, { i32, [ 0 x i8* ] }* %argv454){

__fresh107:
  %argc_slot457 = alloca i32
  store i32 %argc456, i32* %argc_slot457
  %argv_slot455 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv454, { i32, [ 0 x i8* ] }** %argv_slot455
  %_lhs458 = load i8** @s452
  call void @print_string( i8* %_lhs458 )
  ret i32 0
}


define void @s452.init (){

__fresh106:
  %strval451 = load i8** @_oat_string450
  store i8* %strval451, i8** @s452
  ret void
}


