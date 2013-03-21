declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i506 = global i32 0, align 4
define void @oat_init (){

__fresh126:
  ret void
}


define i32 @program (i32 %argc525, { i32, [ 0 x i8* ] }* %argv523){

__fresh125:
  %argc_slot526 = alloca i32
  store i32 %argc525, i32* %argc_slot526
  %argv_slot524 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv523, { i32, [ 0 x i8* ] }** %argv_slot524
  %x527 = alloca i32
  store i32 3, i32* %x527
  %y528 = alloca i32
  store i32 3, i32* %y528
  %_lhs530 = load i32* %y528
  %_lhs529 = load i32* %x527
  %ret531 = call i32 @f ( i32 %_lhs529, i32 %_lhs530 )
  %_lhs532 = load i32* @i506
  %bop533 = add i32 %ret531, %_lhs532
  ret i32 %bop533
}


define i32 @f (i32 %x509, i32 %y507){

__fresh122:
  %x_slot510 = alloca i32
  store i32 %x509, i32* %x_slot510
  %y_slot508 = alloca i32
  store i32 %y507, i32* %y_slot508
  %r511 = alloca i32
  store i32 0, i32* %r511
  %_lhs512 = load i32* %x_slot510
  %bop513 = icmp sge i32 %_lhs512, 1
  br i1 %bop513, label %__then121, label %__else120

__fresh123:
  br label %__then121

__then121:
  %_lhs516 = load i32* %y_slot508
  %_lhs514 = load i32* %x_slot510
  %bop515 = sub i32 %_lhs514, 1
  %ret517 = call i32 @f ( i32 %bop515, i32 %_lhs516 )
  %bop518 = add i32 1, %ret517
  store i32 %bop518, i32* %r511
  br label %__merge119

__fresh124:
  br label %__else120

__else120:
  %_lhs519 = load i32* %x_slot510
  %_lhs520 = load i32* %y_slot508
  %bop521 = add i32 %_lhs519, %_lhs520
  store i32 %bop521, i32* %r511
  br label %__merge119

__merge119:
  %_lhs522 = load i32* %r511
  ret i32 %_lhs522
}


