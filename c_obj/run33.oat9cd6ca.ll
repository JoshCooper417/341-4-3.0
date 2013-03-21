declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh52:
  ret void
}


define i32 @program (i32 %argc170, { i32, [ 0 x i8* ] }* %argv168){

__fresh49:
  %argc_slot171 = alloca i32
  store i32 %argc170, i32* %argc_slot171
  %argv_slot169 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv168, { i32, [ 0 x i8* ] }** %argv_slot169
  %array_ptr172 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array173 = bitcast { i32, [ 0 x i32 ] }* %array_ptr172 to { i32, [ 0 x i1 ] }* 
  %index_ptr174 = getelementptr { i32, [ 0 x i1 ] }* %array173, i32 0, i32 1, i32 0
  store i1 1, i1* %index_ptr174
  %index_ptr175 = getelementptr { i32, [ 0 x i1 ] }* %array173, i32 0, i32 1, i32 1
  store i1 0, i1* %index_ptr175
  %b176 = alloca { i32, [ 0 x i1 ] }*
  store { i32, [ 0 x i1 ] }* %array173, { i32, [ 0 x i1 ] }** %b176
  %i177 = alloca i32
  store i32 0, i32* %i177
  %array_dereferenced178 = load { i32, [ 0 x i1 ] }** %b176
  %len_ptr179 = getelementptr { i32, [ 0 x i1 ] }* %array_dereferenced178, i32 0, i32 0
  %len180 = load i32* %len_ptr179
  call void @oat_array_bounds_check( i32 %len180, i32 0 )
  %elt_ptr181 = getelementptr { i32, [ 0 x i1 ] }* %array_dereferenced178, i32 0, i32 1, i32 0
  %_lhs182 = load i1* %elt_ptr181
  br i1 %_lhs182, label %__then48, label %__else47

__fresh50:
  br label %__then48

__then48:
  store i32 1, i32* %i177
  br label %__merge46

__fresh51:
  br label %__else47

__else47:
  br label %__merge46

__merge46:
  %_lhs183 = load i32* %i177
  ret i32 %_lhs183
}


