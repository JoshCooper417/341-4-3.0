declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i517 = global i32 0, align 4
define void @oat_init (){

__fresh110:
  ret void
}


define i32 @program (i32 %argc536, { i32, [ 0 x i8* ] }* %argv534){

__fresh109:
  %argc_slot537 = alloca i32
  store i32 %argc536, i32* %argc_slot537
  %argv_slot535 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv534, { i32, [ 0 x i8* ] }** %argv_slot535
  %x538 = alloca i32
  store i32 3, i32* %x538
  %y539 = alloca i32
  store i32 3, i32* %y539
  %_lhs541 = load i32* %y539
  %_lhs540 = load i32* %x538
  %ret542 = call i32 @f ( i32 %_lhs540, i32 %_lhs541 )
  %_lhs543 = load i32* @i517
  %bop544 = add i32 %ret542, %_lhs543
  ret i32 %bop544
}


define i32 @f (i32 %x520, i32 %y518){

__fresh106:
  %x_slot521 = alloca i32
  store i32 %x520, i32* %x_slot521
  %y_slot519 = alloca i32
  store i32 %y518, i32* %y_slot519
  %r522 = alloca i32
  store i32 0, i32* %r522
  %_lhs523 = load i32* %x_slot521
  %bop524 = icmp sge i32 %_lhs523, 1
  br i1 %bop524, label %__then105, label %__else104

__fresh107:
  br label %__then105

__then105:
  %_lhs527 = load i32* %y_slot519
  %_lhs525 = load i32* %x_slot521
  %bop526 = sub i32 %_lhs525, 1
  %ret528 = call i32 @f ( i32 %bop526, i32 %_lhs527 )
  %bop529 = add i32 1, %ret528
  store i32 %bop529, i32* %r522
  br label %__merge103

__fresh108:
  br label %__else104

__else104:
  %_lhs530 = load i32* %x_slot521
  %_lhs531 = load i32* %y_slot519
  %bop532 = add i32 %_lhs530, %_lhs531
  store i32 %bop532, i32* %r522
  br label %__merge103

__merge103:
  %_lhs533 = load i32* %r522
  ret i32 %_lhs533
}


