declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@s454 = global i8* zeroinitializer, align 4		; initialized by s454.init
@_oat_string452.str. = private unnamed_addr constant [ 4 x i8 ] c "341\00", align 4
@_oat_string452 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string452.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh116:
  call void @s454.init(  )
  ret void
}


define i32 @program (i32 %argc458, { i32, [ 0 x i8* ] }* %argv456){

__fresh115:
  %argc_slot459 = alloca i32
  store i32 %argc458, i32* %argc_slot459
  %argv_slot457 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv456, { i32, [ 0 x i8* ] }** %argv_slot457
  %_lhs460 = load i8** @s454
  call void @print_string( i8* %_lhs460 )
  ret i32 0
}


define void @s454.init (){

__fresh114:
  %strval453 = load i8** @_oat_string452
  store i8* %strval453, i8** @s454
  ret void
}


