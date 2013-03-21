declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@x390 = global i32 10, align 4
define void @oat_init (){

__fresh74:
  ret void
}


define i32 @program (i32 %argc393, { i32, [ 0 x i8* ] }* %argv391){

__fresh73:
  %argc_slot394 = alloca i32
  store i32 %argc393, i32* %argc_slot394
  %argv_slot392 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv391, { i32, [ 0 x i8* ] }** %argv_slot392
  %y395 = alloca i32
  store i32 0, i32* %y395
  %_lhs396 = load i32* @x390
  %bop397 = add i32 %_lhs396, 1
  %x398 = alloca i32
  store i32 %bop397, i32* %x398
  %_lhs399 = load i32* %x398
  store i32 %_lhs399, i32* %y395
  %_lhs400 = load i32* %y395
  ret i32 %_lhs400
}


