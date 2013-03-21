declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i573 = global i32 0, align 4
define void @oat_init (){

__fresh168:
  ret void
}


define i32 @program (i32 %argc592, { i32, [ 0 x i8* ] }* %argv590){

__fresh167:
  %argc_slot593 = alloca i32
  store i32 %argc592, i32* %argc_slot593
  %argv_slot591 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv590, { i32, [ 0 x i8* ] }** %argv_slot591
  %x594 = alloca i32
  store i32 3, i32* %x594
  %y595 = alloca i32
  store i32 3, i32* %y595
  %_lhs597 = load i32* %y595
  %_lhs596 = load i32* %x594
  %ret598 = call i32 @f ( i32 %_lhs596, i32 %_lhs597 )
  %_lhs599 = load i32* @i573
  %bop600 = add i32 %ret598, %_lhs599
  ret i32 %bop600
}


define i32 @f (i32 %x576, i32 %y574){

__fresh164:
  %x_slot577 = alloca i32
  store i32 %x576, i32* %x_slot577
  %y_slot575 = alloca i32
  store i32 %y574, i32* %y_slot575
  %r578 = alloca i32
  store i32 0, i32* %r578
  %_lhs579 = load i32* %x_slot577
  %bop580 = icmp sge i32 %_lhs579, 1
  br i1 %bop580, label %__then163, label %__else162

__fresh165:
  br label %__then163

__then163:
  %_lhs583 = load i32* %y_slot575
  %_lhs581 = load i32* %x_slot577
  %bop582 = sub i32 %_lhs581, 1
  %ret584 = call i32 @f ( i32 %bop582, i32 %_lhs583 )
  %bop585 = add i32 1, %ret584
  store i32 %bop585, i32* %r578
  br label %__merge161

__fresh166:
  br label %__else162

__else162:
  %_lhs586 = load i32* %x_slot577
  %_lhs587 = load i32* %y_slot575
  %bop588 = add i32 %_lhs586, %_lhs587
  store i32 %bop588, i32* %r578
  br label %__merge161

__merge161:
  %_lhs589 = load i32* %r578
  ret i32 %_lhs589
}


