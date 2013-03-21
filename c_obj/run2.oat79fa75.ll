declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i514 = global i32 0, align 4
define void @oat_init (){

__fresh110:
  ret void
}


define i32 @program (i32 %argc533, { i32, [ 0 x i8* ] }* %argv531){

__fresh109:
  %argc_slot534 = alloca i32
  store i32 %argc533, i32* %argc_slot534
  %argv_slot532 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv531, { i32, [ 0 x i8* ] }** %argv_slot532
  %x535 = alloca i32
  store i32 3, i32* %x535
  %y536 = alloca i32
  store i32 3, i32* %y536
  %_lhs538 = load i32* %y536
  %_lhs537 = load i32* %x535
  %ret539 = call i32 @f ( i32 %_lhs537, i32 %_lhs538 )
  %_lhs540 = load i32* @i514
  %bop541 = add i32 %ret539, %_lhs540
  ret i32 %bop541
}


define i32 @f (i32 %x517, i32 %y515){

__fresh106:
  %x_slot518 = alloca i32
  store i32 %x517, i32* %x_slot518
  %y_slot516 = alloca i32
  store i32 %y515, i32* %y_slot516
  %r519 = alloca i32
  store i32 0, i32* %r519
  %_lhs520 = load i32* %x_slot518
  %bop521 = icmp sge i32 %_lhs520, 1
  br i1 %bop521, label %__then105, label %__else104

__fresh107:
  br label %__then105

__then105:
  %_lhs524 = load i32* %y_slot516
  %_lhs522 = load i32* %x_slot518
  %bop523 = sub i32 %_lhs522, 1
  %ret525 = call i32 @f ( i32 %bop523, i32 %_lhs524 )
  %bop526 = add i32 1, %ret525
  store i32 %bop526, i32* %r519
  br label %__merge103

__fresh108:
  br label %__else104

__else104:
  %_lhs527 = load i32* %x_slot518
  %_lhs528 = load i32* %y_slot516
  %bop529 = add i32 %_lhs527, %_lhs528
  store i32 %bop529, i32* %r519
  br label %__merge103

__merge103:
  %_lhs530 = load i32* %r519
  ret i32 %_lhs530
}


