declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@s458 = global i8* zeroinitializer, align 4		; initialized by s458.init
@_oat_string456.str. = private unnamed_addr constant [ 4 x i8 ] c "341\00", align 4
@_oat_string456 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string456.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh180:
  call void @s458.init(  )
  ret void
}


define i32 @program (i32 %argc462, { i32, [ 0 x i8* ] }* %argv460){

__fresh179:
  %argc_slot463 = alloca i32
  store i32 %argc462, i32* %argc_slot463
  %argv_slot461 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv460, { i32, [ 0 x i8* ] }** %argv_slot461
  %_lhs464 = load i8** @s458
  call void @print_string( i8* %_lhs464 )
  ret i32 0
}


define void @s458.init (){

__fresh178:
  %strval457 = load i8** @_oat_string456
  store i8* %strval457, i8** @s458
  ret void
}


