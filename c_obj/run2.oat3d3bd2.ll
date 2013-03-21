declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i530 = global i32 0, align 4
define void @oat_init (){

__fresh134:
  ret void
}


define i32 @program (i32 %argc549, { i32, [ 0 x i8* ] }* %argv547){

__fresh133:
  %argc_slot550 = alloca i32
  store i32 %argc549, i32* %argc_slot550
  %argv_slot548 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv547, { i32, [ 0 x i8* ] }** %argv_slot548
  %x551 = alloca i32
  store i32 3, i32* %x551
  %y552 = alloca i32
  store i32 3, i32* %y552
  %_lhs554 = load i32* %y552
  %_lhs553 = load i32* %x551
  %ret555 = call i32 @f ( i32 %_lhs553, i32 %_lhs554 )
  %_lhs556 = load i32* @i530
  %bop557 = add i32 %ret555, %_lhs556
  ret i32 %bop557
}


define i32 @f (i32 %x533, i32 %y531){

__fresh130:
  %x_slot534 = alloca i32
  store i32 %x533, i32* %x_slot534
  %y_slot532 = alloca i32
  store i32 %y531, i32* %y_slot532
  %r535 = alloca i32
  store i32 0, i32* %r535
  %_lhs536 = load i32* %x_slot534
  %bop537 = icmp sge i32 %_lhs536, 1
  br i1 %bop537, label %__then129, label %__else128

__fresh131:
  br label %__then129

__then129:
  %_lhs540 = load i32* %y_slot532
  %_lhs538 = load i32* %x_slot534
  %bop539 = sub i32 %_lhs538, 1
  %ret541 = call i32 @f ( i32 %bop539, i32 %_lhs540 )
  %bop542 = add i32 1, %ret541
  store i32 %bop542, i32* %r535
  br label %__merge127

__fresh132:
  br label %__else128

__else128:
  %_lhs543 = load i32* %x_slot534
  %_lhs544 = load i32* %y_slot532
  %bop545 = add i32 %_lhs543, %_lhs544
  store i32 %bop545, i32* %r535
  br label %__merge127

__merge127:
  %_lhs546 = load i32* %r535
  ret i32 %_lhs546
}


