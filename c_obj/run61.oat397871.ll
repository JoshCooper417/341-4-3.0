declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@s393 = global i8* zeroinitializer, align 4		; initialized by s393.init
@_oat_string391.str. = private unnamed_addr constant [ 4 x i8 ] c "341\00", align 4
@_oat_string391 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string391.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh79:
  call void @s393.init(  )
  ret void
}


define i32 @program (i32 %argc397, { i32, [ 0 x i8* ] }* %argv395){

__fresh78:
  %argc_slot398 = alloca i32
  store i32 %argc397, i32* %argc_slot398
  %argv_slot396 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv395, { i32, [ 0 x i8* ] }** %argv_slot396
  %_lhs399 = load i8** @s393
  call void @print_string( i8* %_lhs399 )
  ret i32 0
}


define void @s393.init (){

__fresh77:
  %strval392 = load i8** @_oat_string391
  store i8* %strval392, i8** @s393
  ret void
}


