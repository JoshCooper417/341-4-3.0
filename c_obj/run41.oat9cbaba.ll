declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh85:
  ret void
}


define i32 @program (i32 %argc395, { i32, [ 0 x i8* ] }* %argv393){

__fresh84:
  %argc_slot396 = alloca i32
  store i32 %argc395, i32* %argc_slot396
  %argv_slot394 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv393, { i32, [ 0 x i8* ] }** %argv_slot394
  %unop399 = sub i32 0, 3
  %unop398 = sub i32 0, 4
  %unop397 = sub i32 0, 5
  %ret400 = call i32 @f ( i32 1, i32 2, i32 3, i32 4, i32 5, i32 %unop397, i32 %unop398, i32 %unop399 )
  ret i32 %ret400
}


define i32 @f (i32 %x1376, i32 %x2374, i32 %x3372, i32 %x4370, i32 %x5368, i32 %x6366, i32 %x7364, i32 %x8362){

__fresh83:
  %x1_slot377 = alloca i32
  store i32 %x1376, i32* %x1_slot377
  %x2_slot375 = alloca i32
  store i32 %x2374, i32* %x2_slot375
  %x3_slot373 = alloca i32
  store i32 %x3372, i32* %x3_slot373
  %x4_slot371 = alloca i32
  store i32 %x4370, i32* %x4_slot371
  %x5_slot369 = alloca i32
  store i32 %x5368, i32* %x5_slot369
  %x6_slot367 = alloca i32
  store i32 %x6366, i32* %x6_slot367
  %x7_slot365 = alloca i32
  store i32 %x7364, i32* %x7_slot365
  %x8_slot363 = alloca i32
  store i32 %x8362, i32* %x8_slot363
  %_lhs378 = load i32* %x1_slot377
  %_lhs379 = load i32* %x2_slot375
  %bop380 = add i32 %_lhs378, %_lhs379
  %_lhs381 = load i32* %x3_slot373
  %bop382 = add i32 %bop380, %_lhs381
  %_lhs383 = load i32* %x4_slot371
  %bop384 = add i32 %bop382, %_lhs383
  %_lhs385 = load i32* %x5_slot369
  %bop386 = add i32 %bop384, %_lhs385
  %_lhs387 = load i32* %x6_slot367
  %bop388 = add i32 %bop386, %_lhs387
  %_lhs389 = load i32* %x7_slot365
  %bop390 = add i32 %bop388, %_lhs389
  %_lhs391 = load i32* %x8_slot363
  %bop392 = add i32 %bop390, %_lhs391
  ret i32 %bop392
}


