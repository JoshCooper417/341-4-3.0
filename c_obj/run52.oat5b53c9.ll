declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@x411 = global i32 10, align 4
define void @oat_init (){

__fresh103:
  ret void
}


define i32 @program (i32 %argc414, { i32, [ 0 x i8* ] }* %argv412){

__fresh102:
  %argc_slot415 = alloca i32
  store i32 %argc414, i32* %argc_slot415
  %argv_slot413 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv412, { i32, [ 0 x i8* ] }** %argv_slot413
  %y416 = alloca i32
  store i32 0, i32* %y416
  %_lhs417 = load i32* @x411
  %bop418 = add i32 %_lhs417, 1
  %x419 = alloca i32
  store i32 %bop418, i32* %x419
  %_lhs420 = load i32* %x419
  store i32 %_lhs420, i32* %y416
  %_lhs421 = load i32* %y416
  ret i32 %_lhs421
}


