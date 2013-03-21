declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh148:
  ret void
}


define i32 @program (i32 %argc387, { i32, [ 0 x i8* ] }* %argv385){

__fresh147:
  %argc_slot388 = alloca i32
  store i32 %argc387, i32* %argc_slot388
  %argv_slot386 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv385, { i32, [ 0 x i8* ] }** %argv_slot386
  %unop391 = sub i32 0, 3
  %unop390 = sub i32 0, 4
  %unop389 = sub i32 0, 5
  %ret392 = call i32 @f ( i32 1, i32 2, i32 3, i32 4, i32 5, i32 %unop389, i32 %unop390, i32 %unop391 )
  ret i32 %ret392
}


define i32 @f (i32 %x1368, i32 %x2366, i32 %x3364, i32 %x4362, i32 %x5360, i32 %x6358, i32 %x7356, i32 %x8354){

__fresh146:
  %x1_slot369 = alloca i32
  store i32 %x1368, i32* %x1_slot369
  %x2_slot367 = alloca i32
  store i32 %x2366, i32* %x2_slot367
  %x3_slot365 = alloca i32
  store i32 %x3364, i32* %x3_slot365
  %x4_slot363 = alloca i32
  store i32 %x4362, i32* %x4_slot363
  %x5_slot361 = alloca i32
  store i32 %x5360, i32* %x5_slot361
  %x6_slot359 = alloca i32
  store i32 %x6358, i32* %x6_slot359
  %x7_slot357 = alloca i32
  store i32 %x7356, i32* %x7_slot357
  %x8_slot355 = alloca i32
  store i32 %x8354, i32* %x8_slot355
  %_lhs370 = load i32* %x1_slot369
  %_lhs371 = load i32* %x2_slot367
  %bop372 = add i32 %_lhs370, %_lhs371
  %_lhs373 = load i32* %x3_slot365
  %bop374 = add i32 %bop372, %_lhs373
  %_lhs375 = load i32* %x4_slot363
  %bop376 = add i32 %bop374, %_lhs375
  %_lhs377 = load i32* %x5_slot361
  %bop378 = add i32 %bop376, %_lhs377
  %_lhs379 = load i32* %x6_slot359
  %bop380 = add i32 %bop378, %_lhs379
  %_lhs381 = load i32* %x7_slot357
  %bop382 = add i32 %bop380, %_lhs381
  %_lhs383 = load i32* %x8_slot355
  %bop384 = add i32 %bop382, %_lhs383
  ret i32 %bop384
}


