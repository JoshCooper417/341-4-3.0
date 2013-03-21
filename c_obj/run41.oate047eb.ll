declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh68:
  ret void
}


define i32 @program (i32 %argc358, { i32, [ 0 x i8* ] }* %argv356){

__fresh67:
  %argc_slot359 = alloca i32
  store i32 %argc358, i32* %argc_slot359
  %argv_slot357 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv356, { i32, [ 0 x i8* ] }** %argv_slot357
  %unop362 = sub i32 0, 3
  %unop361 = sub i32 0, 4
  %unop360 = sub i32 0, 5
  %ret363 = call i32 @f ( i32 1, i32 2, i32 3, i32 4, i32 5, i32 %unop360, i32 %unop361, i32 %unop362 )
  ret i32 %ret363
}


define i32 @f (i32 %x1339, i32 %x2337, i32 %x3335, i32 %x4333, i32 %x5331, i32 %x6329, i32 %x7327, i32 %x8325){

__fresh66:
  %x1_slot340 = alloca i32
  store i32 %x1339, i32* %x1_slot340
  %x2_slot338 = alloca i32
  store i32 %x2337, i32* %x2_slot338
  %x3_slot336 = alloca i32
  store i32 %x3335, i32* %x3_slot336
  %x4_slot334 = alloca i32
  store i32 %x4333, i32* %x4_slot334
  %x5_slot332 = alloca i32
  store i32 %x5331, i32* %x5_slot332
  %x6_slot330 = alloca i32
  store i32 %x6329, i32* %x6_slot330
  %x7_slot328 = alloca i32
  store i32 %x7327, i32* %x7_slot328
  %x8_slot326 = alloca i32
  store i32 %x8325, i32* %x8_slot326
  %_lhs341 = load i32* %x1_slot340
  %_lhs342 = load i32* %x2_slot338
  %bop343 = add i32 %_lhs341, %_lhs342
  %_lhs344 = load i32* %x3_slot336
  %bop345 = add i32 %bop343, %_lhs344
  %_lhs346 = load i32* %x4_slot334
  %bop347 = add i32 %bop345, %_lhs346
  %_lhs348 = load i32* %x5_slot332
  %bop349 = add i32 %bop347, %_lhs348
  %_lhs350 = load i32* %x6_slot330
  %bop351 = add i32 %bop349, %_lhs350
  %_lhs352 = load i32* %x7_slot328
  %bop353 = add i32 %bop351, %_lhs352
  %_lhs354 = load i32* %x8_slot326
  %bop355 = add i32 %bop353, %_lhs354
  ret i32 %bop355
}


