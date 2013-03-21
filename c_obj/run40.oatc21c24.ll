declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i315 = global i32 8, align 4
define void @oat_init (){

__fresh65:
  ret void
}


define i32 @program (i32 %argc322, { i32, [ 0 x i8* ] }* %argv320){

__fresh64:
  %argc_slot323 = alloca i32
  store i32 %argc322, i32* %argc_slot323
  %argv_slot321 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv320, { i32, [ 0 x i8* ] }** %argv_slot321
  %ret324 = call i32 @f (  )
  ret i32 %ret324
}


define i32 @g (){

__fresh63:
  %_lhs319 = load i32* @i315
  ret i32 %_lhs319
}


define i32 @f (){

__fresh62:
  %j316 = alloca i32
  store i32 0, i32* %j316
  %ret317 = call i32 @g (  )
  store i32 %ret317, i32* %j316
  %_lhs318 = load i32* %j316
  ret i32 %_lhs318
}


