declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2076.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string2076 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string2076.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh439:
  ret void
}


define i32 @program (i32 %argc2074, { i32, [ 0 x i8* ] }* %argv2072){

__fresh434:
  %argc_slot2075 = alloca i32
  store i32 %argc2074, i32* %argc_slot2075
  %argv_slot2073 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2072, { i32, [ 0 x i8* ] }** %argv_slot2073
  %strval2077 = load i8** @_oat_string2076
  %ret2078 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval2077 )
  %arr2079 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret2078, { i32, [ 0 x i32 ] }** %arr2079
  %sum2080 = alloca i32
  store i32 0, i32* %sum2080
  %i2081 = alloca i32
  store i32 0, i32* %i2081
  br label %__cond430

__cond430:
  %_lhs2082 = load i32* %i2081
  %bop2083 = icmp slt i32 %_lhs2082, 10
  br i1 %bop2083, label %__body429, label %__post428

__fresh435:
  br label %__body429

__body429:
  %_lhs2084 = load i32* %i2081
  %len_ptr2085 = getelementptr { i32, [ 0 x i32 ] }** %arr2079, i32 0, i32 0
  %len2086 = load i32* %len_ptr2085
  call void @oat_array_bounds_check( i32 %len2086, i32 %_lhs2084 )
  %array_dereferenced2087 = load { i32, [ 0 x i32 ] }** %arr2079
  %elt_ptr2088 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2087, i32 0, i32 1, i32 %_lhs2084
  %_lhs2089 = load i32* %i2081
  store i32 %_lhs2089, i32* %elt_ptr2088
  %_lhs2090 = load i32* %i2081
  %bop2091 = add i32 %_lhs2090, 1
  store i32 %bop2091, i32* %i2081
  br label %__cond430

__fresh436:
  br label %__post428

__post428:
  %i2092 = alloca i32
  store i32 0, i32* %i2092
  br label %__cond433

__cond433:
  %_lhs2093 = load i32* %i2092
  %bop2094 = icmp slt i32 %_lhs2093, 10
  br i1 %bop2094, label %__body432, label %__post431

__fresh437:
  br label %__body432

__body432:
  %_lhs2095 = load i32* %sum2080
  %_lhs2096 = load i32* %i2092
  %len_ptr2097 = getelementptr { i32, [ 0 x i32 ] }** %arr2079, i32 0, i32 0
  %len2098 = load i32* %len_ptr2097
  call void @oat_array_bounds_check( i32 %len2098, i32 %_lhs2096 )
  %array_dereferenced2099 = load { i32, [ 0 x i32 ] }** %arr2079
  %elt_ptr2100 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2099, i32 0, i32 1, i32 %_lhs2096
  %_lhs2101 = load i32* %elt_ptr2100
  %bop2102 = add i32 %_lhs2095, %_lhs2101
  store i32 %bop2102, i32* %sum2080
  %_lhs2103 = load i32* %i2092
  %bop2104 = add i32 %_lhs2103, 1
  store i32 %bop2104, i32* %i2092
  br label %__cond433

__fresh438:
  br label %__post431

__post431:
  %_lhs2105 = load i32* %sum2080
  ret i32 %_lhs2105
}


