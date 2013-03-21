declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@x371 = global i32 10, align 4
define void @oat_init (){

__fresh103:
  ret void
}


define i32 @program (i32 %argc374, { i32, [ 0 x i8* ] }* %argv372){

__fresh102:
  %argc_slot375 = alloca i32
  store i32 %argc374, i32* %argc_slot375
  %argv_slot373 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv372, { i32, [ 0 x i8* ] }** %argv_slot373
  %y376 = alloca i32
  store i32 0, i32* %y376
  %_lhs377 = load i32* @x371
  %bop378 = add i32 %_lhs377, 1
  %x379 = alloca i32
  store i32 %bop378, i32* %x379
  %_lhs380 = load i32* %x379
  store i32 %_lhs380, i32* %y376
  %_lhs381 = load i32* %y376
  ret i32 %_lhs381
}


