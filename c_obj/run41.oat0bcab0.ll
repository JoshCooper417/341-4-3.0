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


define i32 @program (i32 %argc350, { i32, [ 0 x i8* ] }* %argv348){

__fresh67:
  %argc_slot351 = alloca i32
  store i32 %argc350, i32* %argc_slot351
  %argv_slot349 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv348, { i32, [ 0 x i8* ] }** %argv_slot349
  %unop354 = sub i32 0, 3
  %unop353 = sub i32 0, 4
  %unop352 = sub i32 0, 5
  %ret355 = call i32 @f ( i32 1, i32 2, i32 3, i32 4, i32 5, i32 %unop352, i32 %unop353, i32 %unop354 )
  ret i32 %ret355
}


define i32 @f (i32 %x1331, i32 %x2329, i32 %x3327, i32 %x4325, i32 %x5323, i32 %x6321, i32 %x7319, i32 %x8317){

__fresh66:
  %x1_slot332 = alloca i32
  store i32 %x1331, i32* %x1_slot332
  %x2_slot330 = alloca i32
  store i32 %x2329, i32* %x2_slot330
  %x3_slot328 = alloca i32
  store i32 %x3327, i32* %x3_slot328
  %x4_slot326 = alloca i32
  store i32 %x4325, i32* %x4_slot326
  %x5_slot324 = alloca i32
  store i32 %x5323, i32* %x5_slot324
  %x6_slot322 = alloca i32
  store i32 %x6321, i32* %x6_slot322
  %x7_slot320 = alloca i32
  store i32 %x7319, i32* %x7_slot320
  %x8_slot318 = alloca i32
  store i32 %x8317, i32* %x8_slot318
  %_lhs333 = load i32* %x1_slot332
  %_lhs334 = load i32* %x2_slot330
  %bop335 = add i32 %_lhs333, %_lhs334
  %_lhs336 = load i32* %x3_slot328
  %bop337 = add i32 %bop335, %_lhs336
  %_lhs338 = load i32* %x4_slot326
  %bop339 = add i32 %bop337, %_lhs338
  %_lhs340 = load i32* %x5_slot324
  %bop341 = add i32 %bop339, %_lhs340
  %_lhs342 = load i32* %x6_slot322
  %bop343 = add i32 %bop341, %_lhs342
  %_lhs344 = load i32* %x7_slot320
  %bop345 = add i32 %bop343, %_lhs344
  %_lhs346 = load i32* %x8_slot318
  %bop347 = add i32 %bop345, %_lhs346
  ret i32 %bop347
}


