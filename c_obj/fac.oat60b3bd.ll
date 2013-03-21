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


define i32 @program (i32 %argc2177, { i32, [ 0 x i8* ] }* %argv2175){

__fresh457:
  %argc_slot2178 = alloca i32
  store i32 %argc2177, i32* %argc_slot2178
  %argv_slot2176 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2175, { i32, [ 0 x i8* ] }** %argv_slot2176
  %ret2179 = call i32 @f ( i32 5 )
  ret i32 %ret2179
}


define i32 @f (i32 %i2164){

__fresh454:
  %i_slot2165 = alloca i32
  store i32 %i2164, i32* %i_slot2165
  %r2166 = alloca i32
  store i32 0, i32* %r2166
  %_lhs2167 = load i32* %i_slot2165
  %bop2168 = icmp eq i32 %_lhs2167, 0
  br i1 %bop2168, label %__then453, label %__else452

__fresh455:
  br label %__then453

__then453:
  store i32 1, i32* %r2166
  br label %__merge451

__fresh456:
  br label %__else452

__else452:
  %_lhs2169 = load i32* %i_slot2165
  %_lhs2170 = load i32* %i_slot2165
  %bop2171 = sub i32 %_lhs2170, 1
  %ret2172 = call i32 @f ( i32 %bop2171 )
  %bop2173 = mul i32 %_lhs2169, %ret2172
  store i32 %bop2173, i32* %r2166
  br label %__merge451

__merge451:
  %_lhs2174 = load i32* %r2166
  ret i32 %_lhs2174
}


