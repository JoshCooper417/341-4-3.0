declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i391 = global i32 0, align 4
define void @oat_init (){

__fresh89:
  ret void
}


define i32 @program (i32 %argc410, { i32, [ 0 x i8* ] }* %argv408){

__fresh88:
  %argc_slot411 = alloca i32
  store i32 %argc410, i32* %argc_slot411
  %argv_slot409 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv408, { i32, [ 0 x i8* ] }** %argv_slot409
  %x412 = alloca i32
  store i32 3, i32* %x412
  %y413 = alloca i32
  store i32 3, i32* %y413
  %_lhs415 = load i32* %y413
  %_lhs414 = load i32* %x412
  %ret416 = call i32 @f ( i32 %_lhs414, i32 %_lhs415 )
  %_lhs417 = load i32* @i391
  %bop418 = add i32 %ret416, %_lhs417
  ret i32 %bop418
}


define i32 @f (i32 %x394, i32 %y392){

__fresh85:
  %x_slot395 = alloca i32
  store i32 %x394, i32* %x_slot395
  %y_slot393 = alloca i32
  store i32 %y392, i32* %y_slot393
  %r396 = alloca i32
  store i32 0, i32* %r396
  %_lhs397 = load i32* %x_slot395
  %bop398 = icmp sge i32 %_lhs397, 1
  br i1 %bop398, label %__then84, label %__else83

__fresh86:
  br label %__then84

__then84:
  %_lhs401 = load i32* %y_slot393
  %_lhs399 = load i32* %x_slot395
  %bop400 = sub i32 %_lhs399, 1
  %ret402 = call i32 @f ( i32 %bop400, i32 %_lhs401 )
  %bop403 = add i32 1, %ret402
  store i32 %bop403, i32* %r396
  br label %__merge82

__fresh87:
  br label %__else83

__else83:
  %_lhs404 = load i32* %x_slot395
  %_lhs405 = load i32* %y_slot393
  %bop406 = add i32 %_lhs404, %_lhs405
  store i32 %bop406, i32* %r396
  br label %__merge82

__merge82:
  %_lhs407 = load i32* %r396
  ret i32 %_lhs407
}


