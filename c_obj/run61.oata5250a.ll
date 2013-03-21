declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@s365 = global i8* zeroinitializer, align 4		; initialized by s365.init
@_oat_string363.str. = private unnamed_addr constant [ 4 x i8 ] c "341\00", align 4
@_oat_string363 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string363.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh79:
  call void @s365.init(  )
  ret void
}


define i32 @program (i32 %argc369, { i32, [ 0 x i8* ] }* %argv367){

__fresh78:
  %argc_slot370 = alloca i32
  store i32 %argc369, i32* %argc_slot370
  %argv_slot368 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv367, { i32, [ 0 x i8* ] }** %argv_slot368
  %_lhs371 = load i8** @s365
  call void @print_string( i8* %_lhs371 )
  ret i32 0
}


define void @s365.init (){

__fresh77:
  %strval364 = load i8** @_oat_string363
  store i8* %strval364, i8** @s365
  ret void
}


