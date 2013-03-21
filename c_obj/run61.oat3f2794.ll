declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@s436 = global i8* zeroinitializer, align 4		; initialized by s436.init
@_oat_string434.str. = private unnamed_addr constant [ 4 x i8 ] c "341\00", align 4
@_oat_string434 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string434.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh96:
  call void @s436.init(  )
  ret void
}


define i32 @program (i32 %argc440, { i32, [ 0 x i8* ] }* %argv438){

__fresh95:
  %argc_slot441 = alloca i32
  store i32 %argc440, i32* %argc_slot441
  %argv_slot439 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv438, { i32, [ 0 x i8* ] }** %argv_slot439
  %_lhs442 = load i8** @s436
  call void @print_string( i8* %_lhs442 )
  ret i32 0
}


define void @s436.init (){

__fresh94:
  %strval435 = load i8** @_oat_string434
  store i8* %strval435, i8** @s436
  ret void
}


