declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2024.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string2024 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string2024.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh343:
  ret void
}


define i32 @program (i32 %argc2022, { i32, [ 0 x i8* ] }* %argv2020){

__fresh338:
  %argc_slot2023 = alloca i32
  store i32 %argc2022, i32* %argc_slot2023
  %argv_slot2021 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2020, { i32, [ 0 x i8* ] }** %argv_slot2021
  %strval2025 = load i8** @_oat_string2024
  %ret2026 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval2025 )
  %arr2027 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret2026, { i32, [ 0 x i32 ] }** %arr2027
  %sum2028 = alloca i32
  store i32 0, i32* %sum2028
  %i2029 = alloca i32
  store i32 0, i32* %i2029
  br label %__cond334

__cond334:
  %_lhs2030 = load i32* %i2029
  %bop2031 = icmp slt i32 %_lhs2030, 10
  br i1 %bop2031, label %__body333, label %__post332

__fresh339:
  br label %__body333

__body333:
  %_lhs2032 = load i32* %i2029
  %len_ptr2033 = getelementptr { i32, [ 0 x i32 ] }** %arr2027, i32 0, i32 0
  %len2034 = load i32* %len_ptr2033
  call void @oat_array_bounds_check( i32 %len2034, i32 %_lhs2032 )
  %array_dereferenced2035 = load { i32, [ 0 x i32 ] }** %arr2027
  %elt_ptr2036 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2035, i32 0, i32 1, i32 %_lhs2032
  %_lhs2037 = load i32* %i2029
  store i32 %_lhs2037, i32* %elt_ptr2036
  %_lhs2038 = load i32* %i2029
  %bop2039 = add i32 %_lhs2038, 1
  store i32 %bop2039, i32* %i2029
  br label %__cond334

__fresh340:
  br label %__post332

__post332:
  %i2040 = alloca i32
  store i32 0, i32* %i2040
  br label %__cond337

__cond337:
  %_lhs2041 = load i32* %i2040
  %bop2042 = icmp slt i32 %_lhs2041, 10
  br i1 %bop2042, label %__body336, label %__post335

__fresh341:
  br label %__body336

__body336:
  %_lhs2043 = load i32* %sum2028
  %_lhs2044 = load i32* %i2040
  %len_ptr2045 = getelementptr { i32, [ 0 x i32 ] }** %arr2027, i32 0, i32 0
  %len2046 = load i32* %len_ptr2045
  call void @oat_array_bounds_check( i32 %len2046, i32 %_lhs2044 )
  %array_dereferenced2047 = load { i32, [ 0 x i32 ] }** %arr2027
  %elt_ptr2048 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2047, i32 0, i32 1, i32 %_lhs2044
  %_lhs2049 = load i32* %elt_ptr2048
  %bop2050 = add i32 %_lhs2043, %_lhs2049
  store i32 %bop2050, i32* %sum2028
  %_lhs2051 = load i32* %i2040
  %bop2052 = add i32 %_lhs2051, 1
  store i32 %bop2052, i32* %i2040
  br label %__cond337

__fresh342:
  br label %__post335

__post335:
  %_lhs2053 = load i32* %sum2028
  ret i32 %_lhs2053
}


