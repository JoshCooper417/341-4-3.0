declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh424:
  ret void
}


define i32 @program (i32 %argc2043, { i32, [ 0 x i8* ] }* %argv2041){

__fresh421:
  %argc_slot2044 = alloca i32
  store i32 %argc2043, i32* %argc_slot2044
  %argv_slot2042 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2041, { i32, [ 0 x i8* ] }** %argv_slot2042
  %i2045 = alloca i32
  store i32 1, i32* %i2045
  br label %__cond420

__cond420:
  %_lhs2046 = load i32* %i2045
  %_lhs2047 = load i32* %argc_slot2044
  %bop2048 = icmp slt i32 %_lhs2046, %_lhs2047
  br i1 %bop2048, label %__body419, label %__post418

__fresh422:
  br label %__body419

__body419:
  %_lhs2049 = load i32* %i2045
  %len_ptr2050 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot2042, i32 0, i32 0
  %len2051 = load i32* %len_ptr2050
  call void @oat_array_bounds_check( i32 %len2051, i32 %_lhs2049 )
  %array_dereferenced2052 = load { i32, [ 0 x i8* ] }** %argv_slot2042
  %elt_ptr2053 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced2052, i32 0, i32 1, i32 %_lhs2049
  %_lhs2054 = load i8** %elt_ptr2053
  call void @print_string( i8* %_lhs2054 )
  %_lhs2055 = load i32* %i2045
  %bop2056 = add i32 %_lhs2055, 1
  store i32 %bop2056, i32* %i2045
  br label %__cond420

__fresh423:
  br label %__post418

__post418:
  %_lhs2057 = load i32* %argc_slot2044
  ret i32 %_lhs2057
}


