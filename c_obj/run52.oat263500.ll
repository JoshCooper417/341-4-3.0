declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@x435 = global i32 10, align 4
define void @oat_init (){

__fresh111:
  ret void
}


define i32 @program (i32 %argc438, { i32, [ 0 x i8* ] }* %argv436){

__fresh110:
  %argc_slot439 = alloca i32
  store i32 %argc438, i32* %argc_slot439
  %argv_slot437 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv436, { i32, [ 0 x i8* ] }** %argv_slot437
  %y440 = alloca i32
  store i32 0, i32* %y440
  %_lhs441 = load i32* @x435
  %bop442 = add i32 %_lhs441, 1
  %x443 = alloca i32
  store i32 %bop442, i32* %x443
  %_lhs444 = load i32* %x443
  store i32 %_lhs444, i32* %y440
  %_lhs445 = load i32* %y440
  ret i32 %_lhs445
}


