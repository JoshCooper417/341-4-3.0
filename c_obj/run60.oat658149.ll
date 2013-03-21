declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i450 = global i32 3, align 4
define void @oat_init (){

__fresh177:
  ret void
}


define i32 @program (i32 %argc453, { i32, [ 0 x i8* ] }* %argv451){

__fresh176:
  %argc_slot454 = alloca i32
  store i32 %argc453, i32* %argc_slot454
  %argv_slot452 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv451, { i32, [ 0 x i8* ] }** %argv_slot452
  store i32 341, i32* @i450
  %_lhs455 = load i32* @i450
  ret i32 %_lhs455
}


