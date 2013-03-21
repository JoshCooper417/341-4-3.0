declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@x486 = global i32 10, align 4
define void @oat_init (){

__fresh145:
  ret void
}


define i32 @program (i32 %argc489, { i32, [ 0 x i8* ] }* %argv487){

__fresh144:
  %argc_slot490 = alloca i32
  store i32 %argc489, i32* %argc_slot490
  %argv_slot488 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv487, { i32, [ 0 x i8* ] }** %argv_slot488
  %y491 = alloca i32
  store i32 0, i32* %y491
  %_lhs492 = load i32* @x486
  %bop493 = add i32 %_lhs492, 1
  %x494 = alloca i32
  store i32 %bop493, i32* %x494
  %_lhs495 = load i32* %x494
  store i32 %_lhs495, i32* %y491
  %_lhs496 = load i32* %y491
  ret i32 %_lhs496
}


