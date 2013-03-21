declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i323 = global i32 8, align 4
define void @oat_init (){

__fresh65:
  ret void
}


define i32 @program (i32 %argc330, { i32, [ 0 x i8* ] }* %argv328){

__fresh64:
  %argc_slot331 = alloca i32
  store i32 %argc330, i32* %argc_slot331
  %argv_slot329 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv328, { i32, [ 0 x i8* ] }** %argv_slot329
  %ret332 = call i32 @f (  )
  ret i32 %ret332
}


define i32 @g (){

__fresh63:
  %_lhs327 = load i32* @i323
  ret i32 %_lhs327
}


define i32 @f (){

__fresh62:
  %j324 = alloca i32
  store i32 0, i32* %j324
  %ret325 = call i32 @g (  )
  store i32 %ret325, i32* %j324
  %_lhs326 = load i32* %j324
  ret i32 %_lhs326
}


