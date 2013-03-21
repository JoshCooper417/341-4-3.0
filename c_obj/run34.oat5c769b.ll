declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh55:
  ret void
}


define i32 @program (i32 %argc192, { i32, [ 0 x i8* ] }* %argv190){

__fresh50:
  %argc_slot193 = alloca i32
  store i32 %argc192, i32* %argc_slot193
  %argv_slot191 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv190, { i32, [ 0 x i8* ] }** %argv_slot191
  %array_ptr194 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array195 = bitcast { i32, [ 0 x i32 ] }* %array_ptr194 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr196 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array197 = bitcast { i32, [ 0 x i32 ] }* %array_ptr196 to { i32, [ 0 x i32 ] }* 
  %index_ptr198 = getelementptr { i32, [ 0 x i32 ] }* %array197, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr198
  %index_ptr199 = getelementptr { i32, [ 0 x i32 ] }* %array197, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr199
  %index_ptr200 = getelementptr { i32, [ 0 x i32 ] }* %array197, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr200
  %index_ptr201 = getelementptr { i32, [ 0 x i32 ] }* %array197, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr201
  %index_ptr202 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array195, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array197, { i32, [ 0 x i32 ] }** %index_ptr202
  %array_ptr203 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array204 = bitcast { i32, [ 0 x i32 ] }* %array_ptr203 to { i32, [ 0 x i32 ] }* 
  %index_ptr205 = getelementptr { i32, [ 0 x i32 ] }* %array204, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr205
  %index_ptr206 = getelementptr { i32, [ 0 x i32 ] }* %array204, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr206
  %index_ptr207 = getelementptr { i32, [ 0 x i32 ] }* %array204, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr207
  %index_ptr208 = getelementptr { i32, [ 0 x i32 ] }* %array204, i32 0, i32 1, i32 3
  store i32 7, i32* %index_ptr208
  %index_ptr209 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array195, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array204, { i32, [ 0 x i32 ] }** %index_ptr209
  %array_ptr210 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array211 = bitcast { i32, [ 0 x i32 ] }* %array_ptr210 to { i32, [ 0 x i32 ] }* 
  %index_ptr212 = getelementptr { i32, [ 0 x i32 ] }* %array211, i32 0, i32 1, i32 0
  store i32 8, i32* %index_ptr212
  %index_ptr213 = getelementptr { i32, [ 0 x i32 ] }* %array211, i32 0, i32 1, i32 1
  store i32 9, i32* %index_ptr213
  %index_ptr214 = getelementptr { i32, [ 0 x i32 ] }* %array211, i32 0, i32 1, i32 2
  store i32 10, i32* %index_ptr214
  %index_ptr215 = getelementptr { i32, [ 0 x i32 ] }* %array211, i32 0, i32 1, i32 3
  store i32 11, i32* %index_ptr215
  %index_ptr216 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array195, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array211, { i32, [ 0 x i32 ] }** %index_ptr216
  %a217 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array195, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a217
  %s218 = alloca i32
  store i32 0, i32* %s218
  %i219 = alloca i32
  store i32 0, i32* %i219
  br label %__cond46

__cond46:
  %_lhs220 = load i32* %i219
  %bop221 = icmp slt i32 %_lhs220, 3
  br i1 %bop221, label %__body45, label %__post44

__fresh51:
  br label %__body45

__body45:
  %j222 = alloca i32
  store i32 0, i32* %j222
  br label %__cond49

__cond49:
  %_lhs223 = load i32* %j222
  %bop224 = icmp slt i32 %_lhs223, 4
  br i1 %bop224, label %__body48, label %__post47

__fresh52:
  br label %__body48

__body48:
  %_lhs225 = load i32* %s218
  %_lhs226 = load i32* %j222
  %_lhs227 = load i32* %i219
  %_lhs228 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a217
  %len_ptr229 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs228, i32 0, i32 0
  %len230 = load i32* %len_ptr229
  call void @oat_array_bounds_check( i32 %len230, i32 %_lhs227 )
  %array_dereferenced231 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a217
  %elt_ptr232 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a217, i32 0, i32 1, i32 %_lhs227
  %_lhs233 = load [ 0 x { i32, [ 0 x i32 ] }* ]* %elt_ptr232
  %len_ptr234 = getelementptr [ 0 x { i32, [ 0 x i32 ] }* ] %_lhs233, i32 0, i32 0
  %len235 = load i32* %len_ptr234
  %_lhs236 = load i32* %i219
  %_lhs237 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a217
  %len_ptr238 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs237, i32 0, i32 0
  %len239 = load i32* %len_ptr238
  call void @oat_array_bounds_check( i32 %len239, i32 %_lhs236 )
  %array_dereferenced240 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a217
  %elt_ptr241 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a217, i32 0, i32 1, i32 %_lhs236
  call void @oat_array_bounds_check( i32 %len235, i32 %_lhs226 )
  %array_dereferenced242 = load [ 0 x { i32, [ 0 x i32 ] }* ]* %elt_ptr241
  %elt_ptr243 = getelementptr [ 0 x { i32, [ 0 x i32 ] }* ]* %elt_ptr241, i32 0, i32 1, i32 %_lhs226
  %_lhs244 = load { i32, [ 0 x i32 ] }** %elt_ptr243
  %bop245 = add i32 %_lhs225, %_lhs244
  store i32 %bop245, i32* %s218
  %_lhs246 = load i32* %j222
  %bop247 = add i32 %_lhs246, 1
  store i32 %bop247, i32* %j222
  br label %__cond49

__fresh53:
  br label %__post47

__post47:
  %_lhs248 = load i32* %i219
  %bop249 = add i32 %_lhs248, 1
  store i32 %bop249, i32* %i219
  br label %__cond46

__fresh54:
  br label %__post44

__post44:
  %_lhs250 = load i32* %s218
  ret i32 %_lhs250
}


