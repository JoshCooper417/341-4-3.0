declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@x478 = global i32 10, align 4
define void @oat_init (){

__fresh145:
  ret void
}


define i32 @program (i32 %argc481, { i32, [ 0 x i8* ] }* %argv479){

__fresh144:
  %argc_slot482 = alloca i32
  store i32 %argc481, i32* %argc_slot482
  %argv_slot480 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv479, { i32, [ 0 x i8* ] }** %argv_slot480
  %y483 = alloca i32
  store i32 0, i32* %y483
  %_lhs484 = load i32* @x478
  %bop485 = add i32 %_lhs484, 1
  %x486 = alloca i32
  store i32 %bop485, i32* %x486
  %_lhs487 = load i32* %x486
  store i32 %_lhs487, i32* %y483
  %_lhs488 = load i32* %y483
  ret i32 %_lhs488
}


