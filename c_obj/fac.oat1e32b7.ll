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


define i32 @program (i32 %argc1540, { i32, [ 0 x i8* ] }* %argv1538){

__fresh203:
  %argc_slot1541 = alloca i32
  store i32 %argc1540, i32* %argc_slot1541
  %argv_slot1539 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1538, { i32, [ 0 x i8* ] }** %argv_slot1539
  %ret1542 = call i32 @f ( i32 5 )
  ret i32 %ret1542
}


define i32 @f (i32 %i1527){

__fresh200:
  %i_slot1528 = alloca i32
  store i32 %i1527, i32* %i_slot1528
  %r1529 = alloca i32
  store i32 0, i32* %r1529
  %_lhs1530 = load i32* %i_slot1528
  %bop1531 = icmp eq i32 %_lhs1530, 0
  br i1 %bop1531, label %__then199, label %__else198

__fresh201:
  br label %__then199

__then199:
  store i32 1, i32* %r1529
  br label %__merge197

__fresh202:
  br label %__else198

__else198:
  %_lhs1532 = load i32* %i_slot1528
  %_lhs1533 = load i32* %i_slot1528
  %bop1534 = sub i32 %_lhs1533, 1
  %ret1535 = call i32 @f ( i32 %bop1534 )
  %bop1536 = mul i32 %_lhs1532, %ret1535
  store i32 %bop1536, i32* %r1529
  br label %__merge197

__merge197:
  %_lhs1537 = load i32* %r1529
  ret i32 %_lhs1537
}


