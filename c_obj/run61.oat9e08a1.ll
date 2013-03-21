declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@s430 = global i8* zeroinitializer, align 4		; initialized by s430.init
@_oat_string428.str. = private unnamed_addr constant [ 4 x i8 ] c "341\00", align 4
@_oat_string428 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string428.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh108:
  call void @s430.init(  )
  ret void
}


define i32 @program (i32 %argc434, { i32, [ 0 x i8* ] }* %argv432){

__fresh107:
  %argc_slot435 = alloca i32
  store i32 %argc434, i32* %argc_slot435
  %argv_slot433 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv432, { i32, [ 0 x i8* ] }** %argv_slot433
  %_lhs436 = load i8** @s430
  call void @print_string( i8* %_lhs436 )
  ret i32 0
}


define void @s430.init (){

__fresh106:
  %strval429 = load i8** @_oat_string428
  store i8* %strval429, i8** @s430
  ret void
}


