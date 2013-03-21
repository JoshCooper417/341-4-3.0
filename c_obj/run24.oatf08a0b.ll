declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a158 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a158.init
define void @oat_init (){

__fresh47:
  call void @a158.init(  )
  ret void
}


define i32 @program (i32 %argc161, { i32, [ 0 x i8* ] }* %argv159){

__fresh46:
  %argc_slot162 = alloca i32
  store i32 %argc161, i32* %argc_slot162
  %argv_slot160 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv159, { i32, [ 0 x i8* ] }** %argv_slot160
  %array_dereferenced163 = load { i32, [ 0 x i32 ] }** @a158
  %len_ptr164 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced163, i32 0, i32 0
  %len165 = load i32* %len_ptr164
  call void @oat_array_bounds_check( i32 %len165, i32 0 )
  %elt_ptr166 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced163, i32 0, i32 1, i32 0
  %_lhs167 = load i32* %elt_ptr166
  ret i32 %_lhs167
}


define void @a158.init (){

__fresh45:
  %array_ptr148 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array149 = bitcast { i32, [ 0 x i32 ] }* %array_ptr148 to { i32, [ 0 x i32 ] }* 
  %bop150 = mul i32 12, 7
  %bop151 = add i32 %bop150, 13
  %bop152 = ashr i32 %bop151, 2
  %index_ptr153 = getelementptr { i32, [ 0 x i32 ] }* %array149, i32 0, i32 1, i32 0
  store i32 %bop152, i32* %index_ptr153
  %bop154 = sub i32 9, 4
  %index_ptr155 = getelementptr { i32, [ 0 x i32 ] }* %array149, i32 0, i32 1, i32 1
  store i32 %bop154, i32* %index_ptr155
  %bop156 = add i32 5, 5
  %index_ptr157 = getelementptr { i32, [ 0 x i32 ] }* %array149, i32 0, i32 1, i32 2
  store i32 %bop156, i32* %index_ptr157
  store { i32, [ 0 x i32 ] }* %array149, { i32, [ 0 x i32 ] }** @a158
  ret void
}


