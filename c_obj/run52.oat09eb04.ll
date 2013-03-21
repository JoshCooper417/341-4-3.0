declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@x382 = global i32 10, align 4
define void @oat_init (){

__fresh74:
  ret void
}


define i32 @program (i32 %argc385, { i32, [ 0 x i8* ] }* %argv383){

__fresh73:
  %argc_slot386 = alloca i32
  store i32 %argc385, i32* %argc_slot386
  %argv_slot384 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv383, { i32, [ 0 x i8* ] }** %argv_slot384
  %y387 = alloca i32
  store i32 0, i32* %y387
  %_lhs388 = load i32* @x382
  %bop389 = add i32 %_lhs388, 1
  %x390 = alloca i32
  store i32 %bop389, i32* %x390
  %_lhs391 = load i32* %x390
  store i32 %_lhs391, i32* %y387
  %_lhs392 = load i32* %y387
  ret i32 %_lhs392
}


