declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i350 = global i32 8, align 4
define void @oat_init (){

__fresh82:
  ret void
}


define i32 @program (i32 %argc357, { i32, [ 0 x i8* ] }* %argv355){

__fresh81:
  %argc_slot358 = alloca i32
  store i32 %argc357, i32* %argc_slot358
  %argv_slot356 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv355, { i32, [ 0 x i8* ] }** %argv_slot356
  %ret359 = call i32 @f (  )
  ret i32 %ret359
}


define i32 @g (){

__fresh80:
  %_lhs354 = load i32* @i350
  ret i32 %_lhs354
}


define i32 @f (){

__fresh79:
  %j351 = alloca i32
  store i32 0, i32* %j351
  %ret352 = call i32 @g (  )
  store i32 %ret352, i32* %j351
  %_lhs353 = load i32* %j351
  ret i32 %_lhs353
}


