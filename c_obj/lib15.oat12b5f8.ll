declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh352:
  ret void
}


define i32 @program (i32 %argc2104, { i32, [ 0 x i8* ] }* %argv2102){

__fresh351:
  %argc_slot2105 = alloca i32
  store i32 %argc2104, i32* %argc_slot2105
  %argv_slot2103 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2102, { i32, [ 0 x i8* ] }** %argv_slot2103
  %len_ptr2106 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot2103, i32 0, i32 0
  %len2107 = load i32* %len_ptr2106
  call void @oat_array_bounds_check( i32 %len2107, i32 1 )
  %array_dereferenced2108 = load { i32, [ 0 x i8* ] }** %argv_slot2103
  %elt_ptr2109 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced2108, i32 0, i32 1, i32 1
  %_lhs2110 = load i8** %elt_ptr2109
  %ret2111 = call i8* @sub ( i8* %_lhs2110, i32 3, i32 5 )
  call void @print_string( i8* %ret2111 )
  ret i32 0
}


define i8* @sub (i8* %str2078, i32 %start2076, i32 %len2074){

__fresh350:
  %str_slot2079 = alloca i8*
  store i8* %str2078, i8** %str_slot2079
  %start_slot2077 = alloca i32
  store i32 %start2076, i32* %start_slot2077
  %len_slot2075 = alloca i32
  store i32 %len2074, i32* %len_slot2075
  %_lhs2080 = load i8** %str_slot2079
  %ret2081 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs2080 )
  %arr2082 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret2081, { i32, [ 0 x i32 ] }** %arr2082
  store i32 1, i32* %i2084
  %r2099 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2094, { i32, [ 0 x i32 ] }** %r2099
  %_lhs2100 = load { i32, [ 0 x i32 ] }** %r2099
  %ret2101 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2100 )
  ret i8* %ret2101
}


