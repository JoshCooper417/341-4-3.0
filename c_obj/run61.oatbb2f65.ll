declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@s456 = global i8* zeroinitializer, align 4		; initialized by s456.init
@_oat_string454.str. = private unnamed_addr constant [ 4 x i8 ] c "341\00", align 4
@_oat_string454 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string454.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh119:
  call void @s456.init(  )
  ret void
}


define i32 @program (i32 %argc460, { i32, [ 0 x i8* ] }* %argv458){

__fresh118:
  %argc_slot461 = alloca i32
  store i32 %argc460, i32* %argc_slot461
  %argv_slot459 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv458, { i32, [ 0 x i8* ] }** %argv_slot459
  %_lhs462 = load i8** @s456
  call void @print_string( i8* %_lhs462 )
  ret i32 0
}


define void @s456.init (){

__fresh117:
  %strval455 = load i8** @_oat_string454
  store i8* %strval455, i8** @s456
  ret void
}


