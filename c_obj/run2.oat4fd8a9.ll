declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i440 = global i32 0, align 4
define void @oat_init (){

__fresh89:
  ret void
}


define i32 @program (i32 %argc459, { i32, [ 0 x i8* ] }* %argv457){

__fresh88:
  %argc_slot460 = alloca i32
  store i32 %argc459, i32* %argc_slot460
  %argv_slot458 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv457, { i32, [ 0 x i8* ] }** %argv_slot458
  %x461 = alloca i32
  store i32 3, i32* %x461
  %y462 = alloca i32
  store i32 3, i32* %y462
  %_lhs464 = load i32* %y462
  %_lhs463 = load i32* %x461
  %ret465 = call i32 @f ( i32 %_lhs463, i32 %_lhs464 )
  %_lhs466 = load i32* @i440
  %bop467 = add i32 %ret465, %_lhs466
  ret i32 %bop467
}


define i32 @f (i32 %x443, i32 %y441){

__fresh85:
  %x_slot444 = alloca i32
  store i32 %x443, i32* %x_slot444
  %y_slot442 = alloca i32
  store i32 %y441, i32* %y_slot442
  %r445 = alloca i32
  store i32 0, i32* %r445
  %_lhs446 = load i32* %x_slot444
  %bop447 = icmp sge i32 %_lhs446, 1
  br i1 %bop447, label %__then84, label %__else83

__fresh86:
  br label %__then84

__then84:
  %_lhs450 = load i32* %y_slot442
  %_lhs448 = load i32* %x_slot444
  %bop449 = sub i32 %_lhs448, 1
  %ret451 = call i32 @f ( i32 %bop449, i32 %_lhs450 )
  %bop452 = add i32 1, %ret451
  store i32 %bop452, i32* %r445
  br label %__merge82

__fresh87:
  br label %__else83

__else83:
  %_lhs453 = load i32* %x_slot444
  %_lhs454 = load i32* %y_slot442
  %bop455 = add i32 %_lhs453, %_lhs454
  store i32 %bop455, i32* %r445
  br label %__merge82

__merge82:
  %_lhs456 = load i32* %r445
  ret i32 %_lhs456
}


