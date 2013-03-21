declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i431 = global i32 0, align 4
define void @oat_init (){

__fresh89:
  ret void
}


define i32 @program (i32 %argc450, { i32, [ 0 x i8* ] }* %argv448){

__fresh88:
  %argc_slot451 = alloca i32
  store i32 %argc450, i32* %argc_slot451
  %argv_slot449 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv448, { i32, [ 0 x i8* ] }** %argv_slot449
  %x452 = alloca i32
  store i32 3, i32* %x452
  %y453 = alloca i32
  store i32 3, i32* %y453
  %_lhs455 = load i32* %y453
  %_lhs454 = load i32* %x452
  %ret456 = call i32 @f ( i32 %_lhs454, i32 %_lhs455 )
  %_lhs457 = load i32* @i431
  %bop458 = add i32 %ret456, %_lhs457
  ret i32 %bop458
}


define i32 @f (i32 %x434, i32 %y432){

__fresh85:
  %x_slot435 = alloca i32
  store i32 %x434, i32* %x_slot435
  %y_slot433 = alloca i32
  store i32 %y432, i32* %y_slot433
  %r436 = alloca i32
  store i32 0, i32* %r436
  %_lhs437 = load i32* %x_slot435
  %bop438 = icmp sge i32 %_lhs437, 1
  br i1 %bop438, label %__then84, label %__else83

__fresh86:
  br label %__then84

__then84:
  %_lhs441 = load i32* %y_slot433
  %_lhs439 = load i32* %x_slot435
  %bop440 = sub i32 %_lhs439, 1
  %ret442 = call i32 @f ( i32 %bop440, i32 %_lhs441 )
  %bop443 = add i32 1, %ret442
  store i32 %bop443, i32* %r436
  br label %__merge82

__fresh87:
  br label %__else83

__else83:
  %_lhs444 = load i32* %x_slot435
  %_lhs445 = load i32* %y_slot433
  %bop446 = add i32 %_lhs444, %_lhs445
  store i32 %bop446, i32* %r436
  br label %__merge82

__merge82:
  %_lhs447 = load i32* %r436
  ret i32 %_lhs447
}


