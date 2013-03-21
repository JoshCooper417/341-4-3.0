declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@x419 = global i32 10, align 4
define void @oat_init (){

__fresh91:
  ret void
}


define i32 @program (i32 %argc422, { i32, [ 0 x i8* ] }* %argv420){

__fresh90:
  %argc_slot423 = alloca i32
  store i32 %argc422, i32* %argc_slot423
  %argv_slot421 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv420, { i32, [ 0 x i8* ] }** %argv_slot421
  %y424 = alloca i32
  store i32 0, i32* %y424
  %_lhs425 = load i32* @x419
  %bop426 = add i32 %_lhs425, 1
  %x427 = alloca i32
  store i32 %bop426, i32* %x427
  %_lhs428 = load i32* %x427
  store i32 %_lhs428, i32* %y424
  %_lhs429 = load i32* %y424
  ret i32 %_lhs429
}


