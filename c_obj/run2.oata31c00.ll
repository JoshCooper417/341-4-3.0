declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i537 = global i32 0, align 4
define void @oat_init (){

__fresh126:
  ret void
}


define i32 @program (i32 %argc556, { i32, [ 0 x i8* ] }* %argv554){

__fresh125:
  %argc_slot557 = alloca i32
  store i32 %argc556, i32* %argc_slot557
  %argv_slot555 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv554, { i32, [ 0 x i8* ] }** %argv_slot555
  %x558 = alloca i32
  store i32 3, i32* %x558
  %y559 = alloca i32
  store i32 3, i32* %y559
  %_lhs561 = load i32* %y559
  %_lhs560 = load i32* %x558
  %ret562 = call i32 @f ( i32 %_lhs560, i32 %_lhs561 )
  %_lhs563 = load i32* @i537
  %bop564 = add i32 %ret562, %_lhs563
  ret i32 %bop564
}


define i32 @f (i32 %x540, i32 %y538){

__fresh122:
  %x_slot541 = alloca i32
  store i32 %x540, i32* %x_slot541
  %y_slot539 = alloca i32
  store i32 %y538, i32* %y_slot539
  %r542 = alloca i32
  store i32 0, i32* %r542
  %_lhs543 = load i32* %x_slot541
  %bop544 = icmp sge i32 %_lhs543, 1
  br i1 %bop544, label %__then121, label %__else120

__fresh123:
  br label %__then121

__then121:
  %_lhs547 = load i32* %y_slot539
  %_lhs545 = load i32* %x_slot541
  %bop546 = sub i32 %_lhs545, 1
  %ret548 = call i32 @f ( i32 %bop546, i32 %_lhs547 )
  %bop549 = add i32 1, %ret548
  store i32 %bop549, i32* %r542
  br label %__merge119

__fresh124:
  br label %__else120

__else120:
  %_lhs550 = load i32* %x_slot541
  %_lhs551 = load i32* %y_slot539
  %bop552 = add i32 %_lhs550, %_lhs551
  store i32 %bop552, i32* %r542
  br label %__merge119

__merge119:
  %_lhs553 = load i32* %r542
  ret i32 %_lhs553
}


