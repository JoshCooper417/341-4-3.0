declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a162 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a162.init
define void @oat_init (){

__fresh36:
  call void @a162.init(  )
  ret void
}


define i32 @program (i32 %argc165, { i32, [ 0 x i8* ] }* %argv163){

__fresh35:
  %argc_slot166 = alloca i32
  store i32 %argc165, i32* %argc_slot166
  %argv_slot164 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv163, { i32, [ 0 x i8* ] }** %argv_slot164
  %_lhs167 = load { i32, [ 0 x i32 ] }** @a162
  %len_ptr168 = getelementptr { i32, [ 0 x i32 ] }* %_lhs167, i32 0, i32 0
  %len169 = load i32* %len_ptr168
  call void @oat_array_bounds_check( i32 %len169, i32 0 )
  %array_dereferenced170 = load { i32, [ 0 x i32 ] }** @a162
  %elt_ptr171 = getelementptr { i32, [ 0 x i32 ] }** @a162, i32 0, i32 1, i32 0
  %_lhs172 = load i32* %elt_ptr171
  ret i32 %_lhs172
}


define void @a162.init (){

__fresh34:
  %array_ptr152 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array153 = bitcast { i32, [ 0 x i32 ] }* %array_ptr152 to { i32, [ 0 x i32 ] }* 
  %bop154 = mul i32 12, 7
  %bop155 = add i32 %bop154, 13
  %bop156 = ashr i32 %bop155, 2
  %index_ptr157 = getelementptr { i32, [ 0 x i32 ] }* %array153, i32 0, i32 1, i32 0
  store i32 %bop156, i32* %index_ptr157
  %bop158 = sub i32 9, 4
  %index_ptr159 = getelementptr { i32, [ 0 x i32 ] }* %array153, i32 0, i32 1, i32 1
  store i32 %bop158, i32* %index_ptr159
  %bop160 = add i32 5, 5
  %index_ptr161 = getelementptr { i32, [ 0 x i32 ] }* %array153, i32 0, i32 1, i32 2
  store i32 %bop160, i32* %index_ptr161
  store { i32, [ 0 x i32 ] }* %array153, { i32, [ 0 x i32 ] }** @a162
  ret void
}


