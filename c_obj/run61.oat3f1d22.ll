declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@s390 = global i8* zeroinitializer, align 4		; initialized by s390.init
@_oat_string388.str. = private unnamed_addr constant [ 4 x i8 ] c "341\00", align 4
@_oat_string388 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string388.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh108:
  call void @s390.init(  )
  ret void
}


define i32 @program (i32 %argc394, { i32, [ 0 x i8* ] }* %argv392){

__fresh107:
  %argc_slot395 = alloca i32
  store i32 %argc394, i32* %argc_slot395
  %argv_slot393 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv392, { i32, [ 0 x i8* ] }** %argv_slot393
  %_lhs396 = load i8** @s390
  call void @print_string( i8* %_lhs396 )
  ret i32 0
}


define void @s390.init (){

__fresh106:
  %strval389 = load i8** @_oat_string388
  store i8* %strval389, i8** @s390
  ret void
}


