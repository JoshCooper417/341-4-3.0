declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh90:
  ret void
}


define i32 @program (i32 %argc362, { i32, [ 0 x i8* ] }* %argv360){

__fresh89:
  %argc_slot363 = alloca i32
  store i32 %argc362, i32* %argc_slot363
  %argv_slot361 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv360, { i32, [ 0 x i8* ] }** %argv_slot361
  %_lhs364 = load i32* %argc_slot363
  %ret365 = call i32 @f1 ( i32 %_lhs364 )
  ret i32 %ret365
}


define i32 @f9 (i32 %i357){

__fresh88:
  %i_slot358 = alloca i32
  store i32 %i357, i32* %i_slot358
  %_lhs359 = load i32* %i_slot358
  ret i32 %_lhs359
}


define i32 @f8 (i32 %i353){

__fresh87:
  %i_slot354 = alloca i32
  store i32 %i353, i32* %i_slot354
  %_lhs355 = load i32* %i_slot354
  %ret356 = call i32 @f9 ( i32 %_lhs355 )
  ret i32 %ret356
}


define i32 @f7 (i32 %i349){

__fresh86:
  %i_slot350 = alloca i32
  store i32 %i349, i32* %i_slot350
  %_lhs351 = load i32* %i_slot350
  %ret352 = call i32 @f8 ( i32 %_lhs351 )
  ret i32 %ret352
}


define i32 @f6 (i32 %i345){

__fresh85:
  %i_slot346 = alloca i32
  store i32 %i345, i32* %i_slot346
  %_lhs347 = load i32* %i_slot346
  %ret348 = call i32 @f7 ( i32 %_lhs347 )
  ret i32 %ret348
}


define i32 @f5 (i32 %i341){

__fresh84:
  %i_slot342 = alloca i32
  store i32 %i341, i32* %i_slot342
  %_lhs343 = load i32* %i_slot342
  %ret344 = call i32 @f6 ( i32 %_lhs343 )
  ret i32 %ret344
}


define i32 @f4 (i32 %i337){

__fresh83:
  %i_slot338 = alloca i32
  store i32 %i337, i32* %i_slot338
  %_lhs339 = load i32* %i_slot338
  %ret340 = call i32 @f5 ( i32 %_lhs339 )
  ret i32 %ret340
}


define i32 @f3 (i32 %i333){

__fresh82:
  %i_slot334 = alloca i32
  store i32 %i333, i32* %i_slot334
  %_lhs335 = load i32* %i_slot334
  %ret336 = call i32 @f4 ( i32 %_lhs335 )
  ret i32 %ret336
}


define i32 @f2 (i32 %i329){

__fresh81:
  %i_slot330 = alloca i32
  store i32 %i329, i32* %i_slot330
  %_lhs331 = load i32* %i_slot330
  %ret332 = call i32 @f3 ( i32 %_lhs331 )
  ret i32 %ret332
}


define i32 @f1 (i32 %i325){

__fresh80:
  %i_slot326 = alloca i32
  store i32 %i325, i32* %i_slot326
  %_lhs327 = load i32* %i_slot326
  %ret328 = call i32 @f2 ( i32 %_lhs327 )
  ret i32 %ret328
}


