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


define i32 @program (i32 %argc393, { i32, [ 0 x i8* ] }* %argv391){

__fresh84:
  %argc_slot394 = alloca i32
  store i32 %argc393, i32* %argc_slot394
  %argv_slot392 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv391, { i32, [ 0 x i8* ] }** %argv_slot392
  %unop397 = sub i32 0, 3
  %unop396 = sub i32 0, 4
  %unop395 = sub i32 0, 5
  %ret398 = call i32 @f ( i32 1, i32 2, i32 3, i32 4, i32 5, i32 %unop395, i32 %unop396, i32 %unop397 )
  ret i32 %ret398
}


define i32 @f (i32 %x1374, i32 %x2372, i32 %x3370, i32 %x4368, i32 %x5366, i32 %x6364, i32 %x7362, i32 %x8360){

__fresh83:
  %x1_slot375 = alloca i32
  store i32 %x1374, i32* %x1_slot375
  %x2_slot373 = alloca i32
  store i32 %x2372, i32* %x2_slot373
  %x3_slot371 = alloca i32
  store i32 %x3370, i32* %x3_slot371
  %x4_slot369 = alloca i32
  store i32 %x4368, i32* %x4_slot369
  %x5_slot367 = alloca i32
  store i32 %x5366, i32* %x5_slot367
  %x6_slot365 = alloca i32
  store i32 %x6364, i32* %x6_slot365
  %x7_slot363 = alloca i32
  store i32 %x7362, i32* %x7_slot363
  %x8_slot361 = alloca i32
  store i32 %x8360, i32* %x8_slot361
  %_lhs376 = load i32* %x1_slot375
  %_lhs377 = load i32* %x2_slot373
  %bop378 = add i32 %_lhs376, %_lhs377
  %_lhs379 = load i32* %x3_slot371
  %bop380 = add i32 %bop378, %_lhs379
  %_lhs381 = load i32* %x4_slot369
  %bop382 = add i32 %bop380, %_lhs381
  %_lhs383 = load i32* %x5_slot367
  %bop384 = add i32 %bop382, %_lhs383
  %_lhs385 = load i32* %x6_slot365
  %bop386 = add i32 %bop384, %_lhs385
  %_lhs387 = load i32* %x7_slot363
  %bop388 = add i32 %bop386, %_lhs387
  %_lhs389 = load i32* %x8_slot361
  %bop390 = add i32 %bop388, %_lhs389
  ret i32 %bop390
}


