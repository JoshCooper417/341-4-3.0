declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i450 = global i32 0, align 4
define void @oat_init (){

__fresh126:
  ret void
}


define i32 @program (i32 %argc469, { i32, [ 0 x i8* ] }* %argv467){

__fresh125:
  %argc_slot470 = alloca i32
  store i32 %argc469, i32* %argc_slot470
  %argv_slot468 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv467, { i32, [ 0 x i8* ] }** %argv_slot468
  %x471 = alloca i32
  store i32 3, i32* %x471
  %y472 = alloca i32
  store i32 3, i32* %y472
  %_lhs474 = load i32* %y472
  %_lhs473 = load i32* %x471
  %ret475 = call i32 @f ( i32 %_lhs473, i32 %_lhs474 )
  %_lhs476 = load i32* @i450
  %bop477 = add i32 %ret475, %_lhs476
  ret i32 %bop477
}


define i32 @f (i32 %x453, i32 %y451){

__fresh122:
  %x_slot454 = alloca i32
  store i32 %x453, i32* %x_slot454
  %y_slot452 = alloca i32
  store i32 %y451, i32* %y_slot452
  %r455 = alloca i32
  store i32 0, i32* %r455
  %_lhs456 = load i32* %x_slot454
  %bop457 = icmp sge i32 %_lhs456, 1
  br i1 %bop457, label %__then121, label %__else120

__fresh123:
  br label %__then121

__then121:
  %_lhs460 = load i32* %y_slot452
  %_lhs458 = load i32* %x_slot454
  %bop459 = sub i32 %_lhs458, 1
  %ret461 = call i32 @f ( i32 %bop459, i32 %_lhs460 )
  %bop462 = add i32 1, %ret461
  store i32 %bop462, i32* %r455
  br label %__merge119

__fresh124:
  br label %__else120

__else120:
  %_lhs463 = load i32* %x_slot454
  %_lhs464 = load i32* %y_slot452
  %bop465 = add i32 %_lhs463, %_lhs464
  store i32 %bop465, i32* %r455
  br label %__merge119

__merge119:
  %_lhs466 = load i32* %r455
  ret i32 %_lhs466
}


