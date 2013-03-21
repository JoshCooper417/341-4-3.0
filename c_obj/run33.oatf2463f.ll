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


define i32 @program (i32 %argc175, { i32, [ 0 x i8* ] }* %argv173){

__fresh40:
  %argc_slot176 = alloca i32
  store i32 %argc175, i32* %argc_slot176
  %argv_slot174 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv173, { i32, [ 0 x i8* ] }** %argv_slot174
  %array_ptr177 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array178 = bitcast { i32, [ 0 x i32 ] }* %array_ptr177 to { i32, [ 0 x i1 ] }* 
  %index_ptr179 = getelementptr { i32, [ 0 x i1 ] }* %array178, i32 0, i32 1, i32 0
  store i1 1, i1* %index_ptr179
  %index_ptr180 = getelementptr { i32, [ 0 x i1 ] }* %array178, i32 0, i32 1, i32 1
  store i1 0, i1* %index_ptr180
  %b181 = alloca { i32, [ 0 x i1 ] }*
  store { i32, [ 0 x i1 ] }* %array178, { i32, [ 0 x i1 ] }** %b181
  %i182 = alloca i32
  store i32 0, i32* %i182
  %_lhs183 = load { i32, [ 0 x i1 ] }** %b181
  %len_ptr184 = getelementptr { i32, [ 0 x i1 ] }* %_lhs183, i32 0, i32 0
  %len185 = load i32* %len_ptr184
  call void @oat_array_bounds_check( i32 %len185, i32 0 )
  %array_dereferenced186 = load { i32, [ 0 x i1 ] }** %b181
  %elt_ptr187 = getelementptr { i32, [ 0 x i1 ] }** %b181, i32 0, i32 1, i32 0
  %_lhs188 = load [ 0 x i1 ]* %elt_ptr187
  br [ 0 x i1 ] %_lhs188, label %__then39, label %__else38

__fresh41:
  br label %__then39

__then39:
  store i32 1, i32* %i182
  br label %__merge37

__fresh42:
  br label %__else38

__else38:
  br label %__merge37

__merge37:
  %_lhs189 = load i32* %i182
  ret i32 %_lhs189
}


