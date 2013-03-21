declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh458:
  ret void
}


define i32 @program (i32 %argc2137, { i32, [ 0 x i8* ] }* %argv2135){

__fresh457:
  %argc_slot2138 = alloca i32
  store i32 %argc2137, i32* %argc_slot2138
  %argv_slot2136 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2135, { i32, [ 0 x i8* ] }** %argv_slot2136
  %ret2139 = call i32 @f ( i32 5 )
  ret i32 %ret2139
}


define i32 @f (i32 %i2124){

__fresh454:
  %i_slot2125 = alloca i32
  store i32 %i2124, i32* %i_slot2125
  %r2126 = alloca i32
  store i32 0, i32* %r2126
  %_lhs2127 = load i32* %i_slot2125
  %bop2128 = icmp eq i32 %_lhs2127, 0
  br i1 %bop2128, label %__then453, label %__else452

__fresh455:
  br label %__then453

__then453:
  store i32 1, i32* %r2126
  br label %__merge451

__fresh456:
  br label %__else452

__else452:
  %_lhs2129 = load i32* %i_slot2125
  %_lhs2130 = load i32* %i_slot2125
  %bop2131 = sub i32 %_lhs2130, 1
  %ret2132 = call i32 @f ( i32 %bop2131 )
  %bop2133 = mul i32 %_lhs2129, %ret2132
  store i32 %bop2133, i32* %r2126
  br label %__merge451

__merge451:
  %_lhs2134 = load i32* %r2126
  ret i32 %_lhs2134
}


