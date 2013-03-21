declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh204:
  ret void
}


define i32 @program (i32 %argc1529, { i32, [ 0 x i8* ] }* %argv1527){

__fresh203:
  %argc_slot1530 = alloca i32
  store i32 %argc1529, i32* %argc_slot1530
  %argv_slot1528 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1527, { i32, [ 0 x i8* ] }** %argv_slot1528
  %ret1531 = call i32 @f ( i32 5 )
  ret i32 %ret1531
}


define i32 @f (i32 %i1516){

__fresh200:
  %i_slot1517 = alloca i32
  store i32 %i1516, i32* %i_slot1517
  %r1518 = alloca i32
  store i32 0, i32* %r1518
  %_lhs1519 = load i32* %i_slot1517
  %bop1520 = icmp eq i32 %_lhs1519, 0
  br i1 %bop1520, label %__then199, label %__else198

__fresh201:
  br label %__then199

__then199:
  store i32 1, i32* %r1518
  br label %__merge197

__fresh202:
  br label %__else198

__else198:
  %_lhs1521 = load i32* %i_slot1517
  %_lhs1522 = load i32* %i_slot1517
  %bop1523 = sub i32 %_lhs1522, 1
  %ret1524 = call i32 @f ( i32 %bop1523 )
  %bop1525 = mul i32 %_lhs1521, %ret1524
  store i32 %bop1525, i32* %r1518
  br label %__merge197

__merge197:
  %_lhs1526 = load i32* %r1518
  ret i32 %_lhs1526
}


