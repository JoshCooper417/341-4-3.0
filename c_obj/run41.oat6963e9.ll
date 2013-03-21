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


define i32 @program (i32 %argc347, { i32, [ 0 x i8* ] }* %argv345){

__fresh96:
  %argc_slot348 = alloca i32
  store i32 %argc347, i32* %argc_slot348
  %argv_slot346 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv345, { i32, [ 0 x i8* ] }** %argv_slot346
  %unop351 = sub i32 0, 3
  %unop350 = sub i32 0, 4
  %unop349 = sub i32 0, 5
  %ret352 = call i32 @f ( i32 1, i32 2, i32 3, i32 4, i32 5, i32 %unop349, i32 %unop350, i32 %unop351 )
  ret i32 %ret352
}


define i32 @f (i32 %x1328, i32 %x2326, i32 %x3324, i32 %x4322, i32 %x5320, i32 %x6318, i32 %x7316, i32 %x8314){

__fresh95:
  %x1_slot329 = alloca i32
  store i32 %x1328, i32* %x1_slot329
  %x2_slot327 = alloca i32
  store i32 %x2326, i32* %x2_slot327
  %x3_slot325 = alloca i32
  store i32 %x3324, i32* %x3_slot325
  %x4_slot323 = alloca i32
  store i32 %x4322, i32* %x4_slot323
  %x5_slot321 = alloca i32
  store i32 %x5320, i32* %x5_slot321
  %x6_slot319 = alloca i32
  store i32 %x6318, i32* %x6_slot319
  %x7_slot317 = alloca i32
  store i32 %x7316, i32* %x7_slot317
  %x8_slot315 = alloca i32
  store i32 %x8314, i32* %x8_slot315
  %_lhs330 = load i32* %x1_slot329
  %_lhs331 = load i32* %x2_slot327
  %bop332 = add i32 %_lhs330, %_lhs331
  %_lhs333 = load i32* %x3_slot325
  %bop334 = add i32 %bop332, %_lhs333
  %_lhs335 = load i32* %x4_slot323
  %bop336 = add i32 %bop334, %_lhs335
  %_lhs337 = load i32* %x5_slot321
  %bop338 = add i32 %bop336, %_lhs337
  %_lhs339 = load i32* %x6_slot319
  %bop340 = add i32 %bop338, %_lhs339
  %_lhs341 = load i32* %x7_slot317
  %bop342 = add i32 %bop340, %_lhs341
  %_lhs343 = load i32* %x8_slot315
  %bop344 = add i32 %bop342, %_lhs343
  ret i32 %bop344
}


