declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2037.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string2037 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string2037.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh439:
  ret void
}


define i32 @program (i32 %argc2035, { i32, [ 0 x i8* ] }* %argv2033){

__fresh434:
  %argc_slot2036 = alloca i32
  store i32 %argc2035, i32* %argc_slot2036
  %argv_slot2034 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2033, { i32, [ 0 x i8* ] }** %argv_slot2034
  %strval2038 = load i8** @_oat_string2037
  %ret2039 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval2038 )
  %arr2040 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret2039, { i32, [ 0 x i32 ] }** %arr2040
  %sum2041 = alloca i32
  store i32 0, i32* %sum2041
  %i2042 = alloca i32
  store i32 0, i32* %i2042
  br label %__cond430

__cond430:
  %_lhs2043 = load i32* %i2042
  %bop2044 = icmp slt i32 %_lhs2043, 10
  br i1 %bop2044, label %__body429, label %__post428

__fresh435:
  br label %__body429

__body429:
  %_lhs2045 = load i32* %i2042
  %len_ptr2046 = getelementptr { i32, [ 0 x i32 ] }** %arr2040, i32 0, i32 0
  %len2047 = load i32* %len_ptr2046
  call void @oat_array_bounds_check( i32 %len2047, i32 %_lhs2045 )
  %array_dereferenced2048 = load { i32, [ 0 x i32 ] }** %arr2040
  %elt_ptr2049 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2048, i32 0, i32 1, i32 %_lhs2045
  %_lhs2050 = load i32* %i2042
  store i32 %_lhs2050, i32* %elt_ptr2049
  %_lhs2051 = load i32* %i2042
  %bop2052 = add i32 %_lhs2051, 1
  store i32 %bop2052, i32* %i2042
  br label %__cond430

__fresh436:
  br label %__post428

__post428:
  %i2053 = alloca i32
  store i32 0, i32* %i2053
  br label %__cond433

__cond433:
  %_lhs2054 = load i32* %i2053
  %bop2055 = icmp slt i32 %_lhs2054, 10
  br i1 %bop2055, label %__body432, label %__post431

__fresh437:
  br label %__body432

__body432:
  %_lhs2056 = load i32* %sum2041
  %_lhs2057 = load i32* %i2053
  %len_ptr2058 = getelementptr { i32, [ 0 x i32 ] }** %arr2040, i32 0, i32 0
  %len2059 = load i32* %len_ptr2058
  call void @oat_array_bounds_check( i32 %len2059, i32 %_lhs2057 )
  %array_dereferenced2060 = load { i32, [ 0 x i32 ] }** %arr2040
  %elt_ptr2061 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2060, i32 0, i32 1, i32 %_lhs2057
  %_lhs2062 = load i32* %elt_ptr2061
  %bop2063 = add i32 %_lhs2056, %_lhs2062
  store i32 %bop2063, i32* %sum2041
  %_lhs2064 = load i32* %i2053
  %bop2065 = add i32 %_lhs2064, 1
  store i32 %bop2065, i32* %i2053
  br label %__cond433

__fresh438:
  br label %__post431

__post431:
  %_lhs2066 = load i32* %sum2041
  ret i32 %_lhs2066
}


