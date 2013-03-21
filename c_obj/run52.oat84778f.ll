declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@x439 = global i32 10, align 4
define void @oat_init (){

__fresh175:
  ret void
}


define i32 @program (i32 %argc442, { i32, [ 0 x i8* ] }* %argv440){

__fresh174:
  %argc_slot443 = alloca i32
  store i32 %argc442, i32* %argc_slot443
  %argv_slot441 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv440, { i32, [ 0 x i8* ] }** %argv_slot441
  %y444 = alloca i32
  store i32 0, i32* %y444
  %_lhs445 = load i32* @x439
  %bop446 = add i32 %_lhs445, 1
  %x447 = alloca i32
  store i32 %bop446, i32* %x447
  %_lhs448 = load i32* %x447
  store i32 %_lhs448, i32* %y444
  %_lhs449 = load i32* %y444
  ret i32 %_lhs449
}


