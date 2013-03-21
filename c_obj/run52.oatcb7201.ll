declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@x374 = global i32 10, align 4
define void @oat_init (){

__fresh74:
  ret void
}


define i32 @program (i32 %argc377, { i32, [ 0 x i8* ] }* %argv375){

__fresh73:
  %argc_slot378 = alloca i32
  store i32 %argc377, i32* %argc_slot378
  %argv_slot376 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv375, { i32, [ 0 x i8* ] }** %argv_slot376
  %y379 = alloca i32
  store i32 0, i32* %y379
  %_lhs380 = load i32* @x374
  %bop381 = add i32 %_lhs380, 1
  %x382 = alloca i32
  store i32 %bop381, i32* %x382
  %_lhs383 = load i32* %x382
  store i32 %_lhs383, i32* %y379
  %_lhs384 = load i32* %y379
  ret i32 %_lhs384
}


