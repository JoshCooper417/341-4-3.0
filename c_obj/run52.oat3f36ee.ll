declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@x437 = global i32 10, align 4
define void @oat_init (){

__fresh114:
  ret void
}


define i32 @program (i32 %argc440, { i32, [ 0 x i8* ] }* %argv438){

__fresh113:
  %argc_slot441 = alloca i32
  store i32 %argc440, i32* %argc_slot441
  %argv_slot439 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv438, { i32, [ 0 x i8* ] }** %argv_slot439
  %y442 = alloca i32
  store i32 0, i32* %y442
  %_lhs443 = load i32* @x437
  %bop444 = add i32 %_lhs443, 1
  %x445 = alloca i32
  store i32 %bop444, i32* %x445
  %_lhs446 = load i32* %x445
  store i32 %_lhs446, i32* %y442
  %_lhs447 = load i32* %y442
  ret i32 %_lhs447
}


