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


define i32 @program (i32 %argc2156, { i32, [ 0 x i8* ] }* %argv2154){

__fresh449:
  %argc_slot2157 = alloca i32
  store i32 %argc2156, i32* %argc_slot2157
  %argv_slot2155 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2154, { i32, [ 0 x i8* ] }** %argv_slot2155
  %len_ptr2158 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot2155, i32 0, i32 0
  %len2159 = load i32* %len_ptr2158
  call void @oat_array_bounds_check( i32 %len2159, i32 1 )
  %array_dereferenced2160 = load { i32, [ 0 x i8* ] }** %argv_slot2155
  %elt_ptr2161 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced2160, i32 0, i32 1, i32 1
  %_lhs2162 = load i8** %elt_ptr2161
  %ret2163 = call i8* @sub ( i8* %_lhs2162, i32 3, i32 5 )
  call void @print_string( i8* %ret2163 )
  ret i32 0
}


define i8* @sub (i8* %str2130, i32 %start2128, i32 %len2126){

__fresh446:
  %str_slot2131 = alloca i8*
  store i8* %str2130, i8** %str_slot2131
  %start_slot2129 = alloca i32
  store i32 %start2128, i32* %start_slot2129
  %len_slot2127 = alloca i32
  store i32 %len2126, i32* %len_slot2127
  %_lhs2132 = load i8** %str_slot2131
  %ret2133 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs2132 )
  %arr2134 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret2133, { i32, [ 0 x i32 ] }** %arr2134
  %index_op2149 = alloca i32
  store i32 1, i32* %index_op2149
  br label %__check444

__check444:
  %cmp_op2148 = icmp slt i32* %index_op2149, %_lhs2135
  br i32 %cmp_op2148, label %__body445, label %__end443

__fresh447:
  br label %__body445

__body445:
  %index_op2149 = load i32* %i2136
  %_lhs2137 = load i32* %i2136
  %_lhs2138 = load i32* %start_slot2129
  %bop2139 = add i32 %_lhs2137, %_lhs2138
  %len_ptr2140 = getelementptr { i32, [ 0 x i32 ] }** %arr2134, i32 0, i32 0
  %len2141 = load i32* %len_ptr2140
  call void @oat_array_bounds_check( i32 %len2141, i32 %bop2139 )
  %array_dereferenced2142 = load { i32, [ 0 x i32 ] }** %arr2134
  %elt_ptr2143 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2142, i32 0, i32 1, i32 %bop2139
  %_lhs2144 = load i32* %elt_ptr2143
  %elem_ptr2147 = getelementptr { i32, [ 0 x i32 ] }* %array2146, i32 0, i32 1, i32* %index_op2149
  %elem_ptr2147 = load i32* %i2136
  %incr_op2150 = add i32* %index_op2149, 1
  store i32* %index_op2149, i32 %incr_op2150
  br label %__check444

__fresh448:
  br label %__end443

__end443:
  %r2151 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2146, { i32, [ 0 x i32 ] }** %r2151
  %_lhs2152 = load { i32, [ 0 x i32 ] }** %r2151
  %ret2153 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2152 )
  ret i8* %ret2153
}


