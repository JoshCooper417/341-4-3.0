declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i581 = global i32 0, align 4
define void @oat_init (){

__fresh168:
  ret void
}


define i32 @program (i32 %argc600, { i32, [ 0 x i8* ] }* %argv598){

__fresh167:
  %argc_slot601 = alloca i32
  store i32 %argc600, i32* %argc_slot601
  %argv_slot599 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv598, { i32, [ 0 x i8* ] }** %argv_slot599
  %x602 = alloca i32
  store i32 3, i32* %x602
  %y603 = alloca i32
  store i32 3, i32* %y603
  %_lhs605 = load i32* %y603
  %_lhs604 = load i32* %x602
  %ret606 = call i32 @f ( i32 %_lhs604, i32 %_lhs605 )
  %_lhs607 = load i32* @i581
  %bop608 = add i32 %ret606, %_lhs607
  ret i32 %bop608
}


define i32 @f (i32 %x584, i32 %y582){

__fresh164:
  %x_slot585 = alloca i32
  store i32 %x584, i32* %x_slot585
  %y_slot583 = alloca i32
  store i32 %y582, i32* %y_slot583
  %r586 = alloca i32
  store i32 0, i32* %r586
  %_lhs587 = load i32* %x_slot585
  %bop588 = icmp sge i32 %_lhs587, 1
  br i1 %bop588, label %__then163, label %__else162

__fresh165:
  br label %__then163

__then163:
  %_lhs591 = load i32* %y_slot583
  %_lhs589 = load i32* %x_slot585
  %bop590 = sub i32 %_lhs589, 1
  %ret592 = call i32 @f ( i32 %bop590, i32 %_lhs591 )
  %bop593 = add i32 1, %ret592
  store i32 %bop593, i32* %r586
  br label %__merge161

__fresh166:
  br label %__else162

__else162:
  %_lhs594 = load i32* %x_slot585
  %_lhs595 = load i32* %y_slot583
  %bop596 = add i32 %_lhs594, %_lhs595
  store i32 %bop596, i32* %r586
  br label %__merge161

__merge161:
  %_lhs597 = load i32* %r586
  ret i32 %_lhs597
}


