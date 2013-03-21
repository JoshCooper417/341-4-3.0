declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@x417 = global i32 10, align 4
define void @oat_init (){

__fresh91:
  ret void
}


define i32 @program (i32 %argc420, { i32, [ 0 x i8* ] }* %argv418){

__fresh90:
  %argc_slot421 = alloca i32
  store i32 %argc420, i32* %argc_slot421
  %argv_slot419 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv418, { i32, [ 0 x i8* ] }** %argv_slot419
  %y422 = alloca i32
  store i32 0, i32* %y422
  %_lhs423 = load i32* @x417
  %bop424 = add i32 %_lhs423, 1
  %x425 = alloca i32
  store i32 %bop424, i32* %x425
  %_lhs426 = load i32* %x425
  store i32 %_lhs426, i32* %y422
  %_lhs427 = load i32* %y422
  ret i32 %_lhs427
}


