declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh235:
  ret void
}


define i32 @program (i32 %argc1654, { i32, [ 0 x i8* ] }* %argv1652){

__fresh234:
  %argc_slot1655 = alloca i32
  store i32 %argc1654, i32* %argc_slot1655
  %argv_slot1653 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1652, { i32, [ 0 x i8* ] }** %argv_slot1653
  %ret1656 = call i32 @f ( i32 5 )
  ret i32 %ret1656
}


define i32 @f (i32 %i1641){

__fresh231:
  %i_slot1642 = alloca i32
  store i32 %i1641, i32* %i_slot1642
  %r1643 = alloca i32
  store i32 0, i32* %r1643
  %_lhs1644 = load i32* %i_slot1642
  %bop1645 = icmp eq i32 %_lhs1644, 0
  br i1 %bop1645, label %__then230, label %__else229

__fresh232:
  br label %__then230

__then230:
  store i32 1, i32* %r1643
  br label %__merge228

__fresh233:
  br label %__else229

__else229:
  %_lhs1646 = load i32* %i_slot1642
  %_lhs1647 = load i32* %i_slot1642
  %bop1648 = sub i32 %_lhs1647, 1
  %ret1649 = call i32 @f ( i32 %bop1648 )
  %bop1650 = mul i32 %_lhs1646, %ret1649
  store i32 %bop1650, i32* %r1643
  br label %__merge228

__merge228:
  %_lhs1651 = load i32* %r1643
  ret i32 %_lhs1651
}


