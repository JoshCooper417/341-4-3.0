declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i304 = global i32 8, align 4
define void @oat_init (){

__fresh94:
  ret void
}


define i32 @program (i32 %argc311, { i32, [ 0 x i8* ] }* %argv309){

__fresh93:
  %argc_slot312 = alloca i32
  store i32 %argc311, i32* %argc_slot312
  %argv_slot310 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv309, { i32, [ 0 x i8* ] }** %argv_slot310
  %ret313 = call i32 @f (  )
  ret i32 %ret313
}


define i32 @g (){

__fresh92:
  %_lhs308 = load i32* @i304
  ret i32 %_lhs308
}


define i32 @f (){

__fresh91:
  %j305 = alloca i32
  store i32 0, i32* %j305
  %ret306 = call i32 @g (  )
  store i32 %ret306, i32* %j305
  %_lhs307 = load i32* %j305
  ret i32 %_lhs307
}


