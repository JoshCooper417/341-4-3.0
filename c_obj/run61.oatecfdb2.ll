declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@s497 = global i8* zeroinitializer, align 4		; initialized by s497.init
@_oat_string495.str. = private unnamed_addr constant [ 4 x i8 ] c "341\00", align 4
@_oat_string495 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string495.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh150:
  call void @s497.init(  )
  ret void
}


define i32 @program (i32 %argc501, { i32, [ 0 x i8* ] }* %argv499){

__fresh149:
  %argc_slot502 = alloca i32
  store i32 %argc501, i32* %argc_slot502
  %argv_slot500 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv499, { i32, [ 0 x i8* ] }** %argv_slot500
  %_lhs503 = load i8** @s497
  call void @print_string( i8* %_lhs503 )
  ret i32 0
}


define void @s497.init (){

__fresh148:
  %strval496 = load i8** @_oat_string495
  store i8* %strval496, i8** @s497
  ret void
}


