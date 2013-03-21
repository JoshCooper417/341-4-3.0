declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh360:
  ret void
}


define i32 @program (i32 %argc2125, { i32, [ 0 x i8* ] }* %argv2123){

__fresh359:
  %argc_slot2126 = alloca i32
  store i32 %argc2125, i32* %argc_slot2126
  %argv_slot2124 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2123, { i32, [ 0 x i8* ] }** %argv_slot2124
  %ret2127 = call i32 @f ( i32 5 )
  ret i32 %ret2127
}


define i32 @f (i32 %i2112){

__fresh356:
  %i_slot2113 = alloca i32
  store i32 %i2112, i32* %i_slot2113
  %r2114 = alloca i32
  store i32 0, i32* %r2114
  %_lhs2115 = load i32* %i_slot2113
  %bop2116 = icmp eq i32 %_lhs2115, 0
  br i1 %bop2116, label %__then355, label %__else354

__fresh357:
  br label %__then355

__then355:
  store i32 1, i32* %r2114
  br label %__merge353

__fresh358:
  br label %__else354

__else354:
  %_lhs2117 = load i32* %i_slot2113
  %_lhs2118 = load i32* %i_slot2113
  %bop2119 = sub i32 %_lhs2118, 1
  %ret2120 = call i32 @f ( i32 %bop2119 )
  %bop2121 = mul i32 %_lhs2117, %ret2120
  store i32 %bop2121, i32* %r2114
  br label %__merge353

__merge353:
  %_lhs2122 = load i32* %r2114
  ret i32 %_lhs2122
}


