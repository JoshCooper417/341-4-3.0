declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@s438 = global i8* zeroinitializer, align 4		; initialized by s438.init
@_oat_string436.str. = private unnamed_addr constant [ 4 x i8 ] c "341\00", align 4
@_oat_string436 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string436.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh96:
  call void @s438.init(  )
  ret void
}


define i32 @program (i32 %argc442, { i32, [ 0 x i8* ] }* %argv440){

__fresh95:
  %argc_slot443 = alloca i32
  store i32 %argc442, i32* %argc_slot443
  %argv_slot441 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv440, { i32, [ 0 x i8* ] }** %argv_slot441
  %_lhs444 = load i8** @s438
  call void @print_string( i8* %_lhs444 )
  ret i32 0
}


define void @s438.init (){

__fresh94:
  %strval437 = load i8** @_oat_string436
  store i8* %strval437, i8** @s438
  ret void
}


