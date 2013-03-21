declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh43:
  ret void
}


define i32 @program (i32 %argc170, { i32, [ 0 x i8* ] }* %argv168){

__fresh40:
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
  %len_ptr178 = getelementptr { i32, [ 0 x i1 ] }** %b176, i32 0, i32 0
  %len179 = load i32* %len_ptr178
  call void @oat_array_bounds_check( i32 %len179, i32 0 )
  %array_dereferenced180 = load { i32, [ 0 x i1 ] }** %b176
  %elt_ptr181 = getelementptr i32 %array_dereferenced180, i32 0, i32 1, i32 0
  %_lhs182 = load i32* %elt_ptr181
  br i32 %_lhs182, label %__then39, label %__else38

__fresh41:
  br label %__then39

__then39:
  store i32 1, i32* %i177
  br label %__merge37

__fresh42:
  br label %__else38

__else38:
  br label %__merge37

__merge37:
  %_lhs183 = load i32* %i177
  ret i32 %_lhs183
}


