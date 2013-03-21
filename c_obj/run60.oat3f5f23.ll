declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i382 = global i32 3, align 4
define void @oat_init (){

__fresh105:
  ret void
}


define i32 @program (i32 %argc385, { i32, [ 0 x i8* ] }* %argv383){

__fresh104:
  %argc_slot386 = alloca i32
  store i32 %argc385, i32* %argc_slot386
  %argv_slot384 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv383, { i32, [ 0 x i8* ] }** %argv_slot384
  store i32 341, i32* @i382
  %_lhs387 = load i32* @i382
  ret i32 %_lhs387
}


