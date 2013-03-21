declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i422 = global i32 0, align 4
define void @oat_init (){

__fresh89:
  ret void
}


define i32 @program (i32 %argc441, { i32, [ 0 x i8* ] }* %argv439){

__fresh88:
  %argc_slot442 = alloca i32
  store i32 %argc441, i32* %argc_slot442
  %argv_slot440 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv439, { i32, [ 0 x i8* ] }** %argv_slot440
  %x443 = alloca i32
  store i32 3, i32* %x443
  %y444 = alloca i32
  store i32 3, i32* %y444
  %_lhs446 = load i32* %y444
  %_lhs445 = load i32* %x443
  %ret447 = call i32 @f ( i32 %_lhs445, i32 %_lhs446 )
  %_lhs448 = load i32* @i422
  %bop449 = add i32 %ret447, %_lhs448
  ret i32 %bop449
}


define i32 @f (i32 %x425, i32 %y423){

__fresh85:
  %x_slot426 = alloca i32
  store i32 %x425, i32* %x_slot426
  %y_slot424 = alloca i32
  store i32 %y423, i32* %y_slot424
  %r427 = alloca i32
  store i32 0, i32* %r427
  %_lhs428 = load i32* %x_slot426
  %bop429 = icmp sge i32 %_lhs428, 1
  br i1 %bop429, label %__then84, label %__else83

__fresh86:
  br label %__then84

__then84:
  %_lhs432 = load i32* %y_slot424
  %_lhs430 = load i32* %x_slot426
  %bop431 = sub i32 %_lhs430, 1
  %ret433 = call i32 @f ( i32 %bop431, i32 %_lhs432 )
  %bop434 = add i32 1, %ret433
  store i32 %bop434, i32* %r427
  br label %__merge82

__fresh87:
  br label %__else83

__else83:
  %_lhs435 = load i32* %x_slot426
  %_lhs436 = load i32* %y_slot424
  %bop437 = add i32 %_lhs435, %_lhs436
  store i32 %bop437, i32* %r427
  br label %__merge82

__merge82:
  %_lhs438 = load i32* %r427
  ret i32 %_lhs438
}


