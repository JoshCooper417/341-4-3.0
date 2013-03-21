declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i344 = global i32 8, align 4
define void @oat_init (){

__fresh141:
  ret void
}


define i32 @program (i32 %argc351, { i32, [ 0 x i8* ] }* %argv349){

__fresh140:
  %argc_slot352 = alloca i32
  store i32 %argc351, i32* %argc_slot352
  %argv_slot350 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv349, { i32, [ 0 x i8* ] }** %argv_slot350
  %ret353 = call i32 @f (  )
  ret i32 %ret353
}


define i32 @g (){

__fresh139:
  %_lhs348 = load i32* @i344
  ret i32 %_lhs348
}


define i32 @f (){

__fresh138:
  %j345 = alloca i32
  store i32 0, i32* %j345
  %ret346 = call i32 @g (  )
  store i32 %ret346, i32* %j345
  %_lhs347 = load i32* %j345
  ret i32 %_lhs347
}


