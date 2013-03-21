declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh97:
  ret void
}


define i32 @program (i32 %argc409, { i32, [ 0 x i8* ] }* %argv407){

__fresh96:
  %argc_slot410 = alloca i32
  store i32 %argc409, i32* %argc_slot410
  %argv_slot408 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv407, { i32, [ 0 x i8* ] }** %argv_slot408
  %unop413 = sub i32 0, 3
  %unop412 = sub i32 0, 4
  %unop411 = sub i32 0, 5
  %ret414 = call i32 @f ( i32 1, i32 2, i32 3, i32 4, i32 5, i32 %unop411, i32 %unop412, i32 %unop413 )
  ret i32 %ret414
}


define i32 @f (i32 %x1390, i32 %x2388, i32 %x3386, i32 %x4384, i32 %x5382, i32 %x6380, i32 %x7378, i32 %x8376){

__fresh95:
  %x1_slot391 = alloca i32
  store i32 %x1390, i32* %x1_slot391
  %x2_slot389 = alloca i32
  store i32 %x2388, i32* %x2_slot389
  %x3_slot387 = alloca i32
  store i32 %x3386, i32* %x3_slot387
  %x4_slot385 = alloca i32
  store i32 %x4384, i32* %x4_slot385
  %x5_slot383 = alloca i32
  store i32 %x5382, i32* %x5_slot383
  %x6_slot381 = alloca i32
  store i32 %x6380, i32* %x6_slot381
  %x7_slot379 = alloca i32
  store i32 %x7378, i32* %x7_slot379
  %x8_slot377 = alloca i32
  store i32 %x8376, i32* %x8_slot377
  %_lhs392 = load i32* %x1_slot391
  %_lhs393 = load i32* %x2_slot389
  %bop394 = add i32 %_lhs392, %_lhs393
  %_lhs395 = load i32* %x3_slot387
  %bop396 = add i32 %bop394, %_lhs395
  %_lhs397 = load i32* %x4_slot385
  %bop398 = add i32 %bop396, %_lhs397
  %_lhs399 = load i32* %x5_slot383
  %bop400 = add i32 %bop398, %_lhs399
  %_lhs401 = load i32* %x6_slot381
  %bop402 = add i32 %bop400, %_lhs401
  %_lhs403 = load i32* %x7_slot379
  %bop404 = add i32 %bop402, %_lhs403
  %_lhs405 = load i32* %x8_slot377
  %bop406 = add i32 %bop404, %_lhs405
  ret i32 %bop406
}


