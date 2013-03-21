declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh450:
  ret void
}


define i32 @program (i32 %argc2116, { i32, [ 0 x i8* ] }* %argv2114){

__fresh449:
  %argc_slot2117 = alloca i32
  store i32 %argc2116, i32* %argc_slot2117
  %argv_slot2115 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2114, { i32, [ 0 x i8* ] }** %argv_slot2115
  %len_ptr2118 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot2115, i32 0, i32 0
  %len2119 = load i32* %len_ptr2118
  call void @oat_array_bounds_check( i32 %len2119, i32 1 )
  %array_dereferenced2120 = load { i32, [ 0 x i8* ] }** %argv_slot2115
  %elt_ptr2121 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced2120, i32 0, i32 1, i32 1
  %_lhs2122 = load i8** %elt_ptr2121
  %ret2123 = call i8* @sub ( i8* %_lhs2122, i32 3, i32 5 )
  call void @print_string( i8* %ret2123 )
  ret i32 0
}


define i8* @sub (i8* %str2091, i32 %start2089, i32 %len2087){

__fresh446:
  %str_slot2092 = alloca i8*
  store i8* %str2091, i8** %str_slot2092
  %start_slot2090 = alloca i32
  store i32 %start2089, i32* %start_slot2090
  %len_slot2088 = alloca i32
  store i32 %len2087, i32* %len_slot2088
  %_lhs2093 = load i8** %str_slot2092
  %ret2094 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs2093 )
  %arr2095 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret2094, { i32, [ 0 x i32 ] }** %arr2095
  br label %__check444

__check444:
  %cmp_op2109 = icmp slt i32 1, %_lhs2096
  br i32 %cmp_op2109, label %__body445, label %__end443

__fresh447:
  br label %__body445

__body445:
  %_lhs2098 = load i32* %i2097
  %_lhs2099 = load i32* %start_slot2090
  %bop2100 = add i32 %_lhs2098, %_lhs2099
  %len_ptr2101 = getelementptr { i32, [ 0 x i32 ] }** %arr2095, i32 0, i32 0
  %len2102 = load i32* %len_ptr2101
  call void @oat_array_bounds_check( i32 %len2102, i32 %bop2100 )
  %array_dereferenced2103 = load { i32, [ 0 x i32 ] }** %arr2095
  %elt_ptr2104 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2103, i32 0, i32 1, i32 %bop2100
  %_lhs2105 = load i32* %elt_ptr2104
  %elem_ptr2108 = getelementptr { i32, [ 0 x i32 ] }* %array2107, i32 0, i32 1, i32 1
  %elem_ptr2108 = load i32* %i2097
  %incr_op2110 = add i32 1, 1
  store i32 1, i32 %incr_op2110
  br label %__check444

__fresh448:
  br label %__end443

__end443:
  %r2111 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2107, { i32, [ 0 x i32 ] }** %r2111
  %_lhs2112 = load { i32, [ 0 x i32 ] }** %r2111
  %ret2113 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2112 )
  ret i8* %ret2113
}


