declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i534 = global i32 0, align 4
define void @oat_init (){

__fresh214:
  ret void
}


define i32 @program (i32 %argc553, { i32, [ 0 x i8* ] }* %argv551){

__fresh213:
  %argc_slot554 = alloca i32
  store i32 %argc553, i32* %argc_slot554
  %argv_slot552 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv551, { i32, [ 0 x i8* ] }** %argv_slot552
  %x555 = alloca i32
  store i32 3, i32* %x555
  %y556 = alloca i32
  store i32 3, i32* %y556
  %_lhs558 = load i32* %y556
  %_lhs557 = load i32* %x555
  %ret559 = call i32 @f ( i32 %_lhs557, i32 %_lhs558 )
  %_lhs560 = load i32* @i534
  %bop561 = add i32 %ret559, %_lhs560
  ret i32 %bop561
}


define i32 @f (i32 %x537, i32 %y535){

__fresh210:
  %x_slot538 = alloca i32
  store i32 %x537, i32* %x_slot538
  %y_slot536 = alloca i32
  store i32 %y535, i32* %y_slot536
  %r539 = alloca i32
  store i32 0, i32* %r539
  %_lhs540 = load i32* %x_slot538
  %bop541 = icmp sge i32 %_lhs540, 1
  br i1 %bop541, label %__then209, label %__else208

__fresh211:
  br label %__then209

__then209:
  %_lhs544 = load i32* %y_slot536
  %_lhs542 = load i32* %x_slot538
  %bop543 = sub i32 %_lhs542, 1
  %ret545 = call i32 @f ( i32 %bop543, i32 %_lhs544 )
  %bop546 = add i32 1, %ret545
  store i32 %bop546, i32* %r539
  br label %__merge207

__fresh212:
  br label %__else208

__else208:
  %_lhs547 = load i32* %x_slot538
  %_lhs548 = load i32* %y_slot536
  %bop549 = add i32 %_lhs547, %_lhs548
  store i32 %bop549, i32* %r539
  br label %__merge207

__merge207:
  %_lhs550 = load i32* %r539
  ret i32 %_lhs550
}


