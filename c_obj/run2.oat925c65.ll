declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i532 = global i32 0, align 4
define void @oat_init (){

__fresh214:
  ret void
}


define i32 @program (i32 %argc551, { i32, [ 0 x i8* ] }* %argv549){

__fresh213:
  %argc_slot552 = alloca i32
  store i32 %argc551, i32* %argc_slot552
  %argv_slot550 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv549, { i32, [ 0 x i8* ] }** %argv_slot550
  %x553 = alloca i32
  store i32 3, i32* %x553
  %y554 = alloca i32
  store i32 3, i32* %y554
  %_lhs556 = load i32* %y554
  %_lhs555 = load i32* %x553
  %ret557 = call i32 @f ( i32 %_lhs555, i32 %_lhs556 )
  %_lhs558 = load i32* @i532
  %bop559 = add i32 %ret557, %_lhs558
  ret i32 %bop559
}


define i32 @f (i32 %x535, i32 %y533){

__fresh210:
  %x_slot536 = alloca i32
  store i32 %x535, i32* %x_slot536
  %y_slot534 = alloca i32
  store i32 %y533, i32* %y_slot534
  %r537 = alloca i32
  store i32 0, i32* %r537
  %_lhs538 = load i32* %x_slot536
  %bop539 = icmp sge i32 %_lhs538, 1
  br i1 %bop539, label %__then209, label %__else208

__fresh211:
  br label %__then209

__then209:
  %_lhs542 = load i32* %y_slot534
  %_lhs540 = load i32* %x_slot536
  %bop541 = sub i32 %_lhs540, 1
  %ret543 = call i32 @f ( i32 %bop541, i32 %_lhs542 )
  %bop544 = add i32 1, %ret543
  store i32 %bop544, i32* %r537
  br label %__merge207

__fresh212:
  br label %__else208

__else208:
  %_lhs545 = load i32* %x_slot536
  %_lhs546 = load i32* %y_slot534
  %bop547 = add i32 %_lhs545, %_lhs546
  store i32 %bop547, i32* %r537
  br label %__merge207

__merge207:
  %_lhs548 = load i32* %r537
  ret i32 %_lhs548
}


