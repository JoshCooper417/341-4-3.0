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


define i32 @program (i32 %argc366, { i32, [ 0 x i8* ] }* %argv364){

__fresh67:
  %argc_slot367 = alloca i32
  store i32 %argc366, i32* %argc_slot367
  %argv_slot365 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv364, { i32, [ 0 x i8* ] }** %argv_slot365
  %unop370 = sub i32 0, 3
  %unop369 = sub i32 0, 4
  %unop368 = sub i32 0, 5
  %ret371 = call i32 @f ( i32 1, i32 2, i32 3, i32 4, i32 5, i32 %unop368, i32 %unop369, i32 %unop370 )
  ret i32 %ret371
}


define i32 @f (i32 %x1347, i32 %x2345, i32 %x3343, i32 %x4341, i32 %x5339, i32 %x6337, i32 %x7335, i32 %x8333){

__fresh66:
  %x1_slot348 = alloca i32
  store i32 %x1347, i32* %x1_slot348
  %x2_slot346 = alloca i32
  store i32 %x2345, i32* %x2_slot346
  %x3_slot344 = alloca i32
  store i32 %x3343, i32* %x3_slot344
  %x4_slot342 = alloca i32
  store i32 %x4341, i32* %x4_slot342
  %x5_slot340 = alloca i32
  store i32 %x5339, i32* %x5_slot340
  %x6_slot338 = alloca i32
  store i32 %x6337, i32* %x6_slot338
  %x7_slot336 = alloca i32
  store i32 %x7335, i32* %x7_slot336
  %x8_slot334 = alloca i32
  store i32 %x8333, i32* %x8_slot334
  %_lhs349 = load i32* %x1_slot348
  %_lhs350 = load i32* %x2_slot346
  %bop351 = add i32 %_lhs349, %_lhs350
  %_lhs352 = load i32* %x3_slot344
  %bop353 = add i32 %bop351, %_lhs352
  %_lhs354 = load i32* %x4_slot342
  %bop355 = add i32 %bop353, %_lhs354
  %_lhs356 = load i32* %x5_slot340
  %bop357 = add i32 %bop355, %_lhs356
  %_lhs358 = load i32* %x6_slot338
  %bop359 = add i32 %bop357, %_lhs358
  %_lhs360 = load i32* %x7_slot336
  %bop361 = add i32 %bop359, %_lhs360
  %_lhs362 = load i32* %x8_slot334
  %bop363 = add i32 %bop361, %_lhs362
  ret i32 %bop363
}


