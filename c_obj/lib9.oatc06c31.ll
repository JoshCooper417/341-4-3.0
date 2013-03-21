declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh209:
  ret void
}


define i32 @program (i32 %argc1549, { i32, [ 0 x i8* ] }* %argv1547){

__fresh206:
  %argc_slot1550 = alloca i32
  store i32 %argc1549, i32* %argc_slot1550
  %argv_slot1548 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1547, { i32, [ 0 x i8* ] }** %argv_slot1548
  %i1551 = alloca i32
  store i32 1, i32* %i1551
  br label %__cond205

__cond205:
  %_lhs1552 = load i32* %i1551
  %_lhs1553 = load i32* %argc_slot1550
  %bop1554 = icmp slt i32 %_lhs1552, %_lhs1553
  br i1 %bop1554, label %__body204, label %__post203

__fresh207:
  br label %__body204

__body204:
  %_lhs1555 = load i32* %i1551
  %len_ptr1556 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot1548, i32 0, i32 0
  %len1557 = load i32* %len_ptr1556
  call void @oat_array_bounds_check( i32 %len1557, i32 %_lhs1555 )
  %array_dereferenced1558 = load { i32, [ 0 x i8* ] }** %argv_slot1548
  %elt_ptr1559 = getelementptr i32 %array_dereferenced1558, i32 0, i32 1, i32 %_lhs1555
  %_lhs1560 = load i32* %elt_ptr1559
  call void @print_string( i32 %_lhs1560 )
  %_lhs1561 = load i32* %i1551
  %bop1562 = add i32 %_lhs1561, 1
  store i32 %bop1562, i32* %i1551
  br label %__cond205

__fresh208:
  br label %__post203

__post203:
  %_lhs1563 = load i32* %argc_slot1550
  ret i32 %_lhs1563
}


