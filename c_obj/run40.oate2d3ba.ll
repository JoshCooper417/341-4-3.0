declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i366 = global i32 8, align 4
define void @oat_init (){

__fresh94:
  ret void
}


define i32 @program (i32 %argc373, { i32, [ 0 x i8* ] }* %argv371){

__fresh93:
  %argc_slot374 = alloca i32
  store i32 %argc373, i32* %argc_slot374
  %argv_slot372 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv371, { i32, [ 0 x i8* ] }** %argv_slot372
  %ret375 = call i32 @f (  )
  ret i32 %ret375
}


define i32 @g (){

__fresh92:
  %_lhs370 = load i32* @i366
  ret i32 %_lhs370
}


define i32 @f (){

__fresh91:
  %j367 = alloca i32
  store i32 0, i32* %j367
  %ret368 = call i32 @g (  )
  store i32 %ret368, i32* %j367
  %_lhs369 = load i32* %j367
  ret i32 %_lhs369
}


