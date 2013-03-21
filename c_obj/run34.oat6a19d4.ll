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


define i32 @program (i32 %argc186, { i32, [ 0 x i8* ] }* %argv184){

__fresh50:
  %argc_slot187 = alloca i32
  store i32 %argc186, i32* %argc_slot187
  %argv_slot185 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv184, { i32, [ 0 x i8* ] }** %argv_slot185
  %array_ptr188 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array189 = bitcast { i32, [ 0 x i32 ] }* %array_ptr188 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr190 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array191 = bitcast { i32, [ 0 x i32 ] }* %array_ptr190 to { i32, [ 0 x i32 ] }* 
  %index_ptr192 = getelementptr { i32, [ 0 x i32 ] }* %array191, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr192
  %index_ptr193 = getelementptr { i32, [ 0 x i32 ] }* %array191, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr193
  %index_ptr194 = getelementptr { i32, [ 0 x i32 ] }* %array191, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr194
  %index_ptr195 = getelementptr { i32, [ 0 x i32 ] }* %array191, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr195
  %index_ptr196 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array189, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array191, { i32, [ 0 x i32 ] }** %index_ptr196
  %array_ptr197 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array198 = bitcast { i32, [ 0 x i32 ] }* %array_ptr197 to { i32, [ 0 x i32 ] }* 
  %index_ptr199 = getelementptr { i32, [ 0 x i32 ] }* %array198, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr199
  %index_ptr200 = getelementptr { i32, [ 0 x i32 ] }* %array198, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr200
  %index_ptr201 = getelementptr { i32, [ 0 x i32 ] }* %array198, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr201
  %index_ptr202 = getelementptr { i32, [ 0 x i32 ] }* %array198, i32 0, i32 1, i32 3
  store i32 7, i32* %index_ptr202
  %index_ptr203 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array189, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array198, { i32, [ 0 x i32 ] }** %index_ptr203
  %array_ptr204 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array205 = bitcast { i32, [ 0 x i32 ] }* %array_ptr204 to { i32, [ 0 x i32 ] }* 
  %index_ptr206 = getelementptr { i32, [ 0 x i32 ] }* %array205, i32 0, i32 1, i32 0
  store i32 8, i32* %index_ptr206
  %index_ptr207 = getelementptr { i32, [ 0 x i32 ] }* %array205, i32 0, i32 1, i32 1
  store i32 9, i32* %index_ptr207
  %index_ptr208 = getelementptr { i32, [ 0 x i32 ] }* %array205, i32 0, i32 1, i32 2
  store i32 10, i32* %index_ptr208
  %index_ptr209 = getelementptr { i32, [ 0 x i32 ] }* %array205, i32 0, i32 1, i32 3
  store i32 11, i32* %index_ptr209
  %index_ptr210 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array189, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array205, { i32, [ 0 x i32 ] }** %index_ptr210
  %a211 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array189, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a211
  %s212 = alloca i32
  store i32 0, i32* %s212
  %i213 = alloca i32
  store i32 0, i32* %i213
  br label %__cond46

__cond46:
  %_lhs214 = load i32* %i213
  %bop215 = icmp slt i32 %_lhs214, 3
  br i1 %bop215, label %__body45, label %__post44

__fresh51:
  br label %__body45

__body45:
  %j216 = alloca i32
  store i32 0, i32* %j216
  br label %__cond49

__cond49:
  %_lhs217 = load i32* %j216
  %bop218 = icmp slt i32 %_lhs217, 4
  br i1 %bop218, label %__body48, label %__post47

__fresh52:
  br label %__body48

__body48:
  %_lhs219 = load i32* %s212
  %_lhs220 = load i32* %j216
  %_lhs221 = load i32* %i213
  %len_ptr222 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a211, i32 0, i32 0
  %len223 = load i32* %len_ptr222
  call void @oat_array_bounds_check( i32 %len223, i32 %_lhs221 )
  %array_dereferenced224 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a211
  %elt_ptr225 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced224, i32 0, i32 1, i32 %_lhs221
  %len_ptr226 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr225, i32 0, i32 0
  %len227 = load i32* %len_ptr226
  call void @oat_array_bounds_check( i32 %len227, i32 %_lhs220 )
  %array_dereferenced228 = load { i32, [ 0 x i32 ] }** %elt_ptr225
  %elt_ptr229 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced228, i32 0, i32 1, i32 %_lhs220
  %_lhs230 = load i32* %elt_ptr229
  %bop231 = add i32 %_lhs219, %_lhs230
  store i32 %bop231, i32* %s212
  %_lhs232 = load i32* %j216
  %bop233 = add i32 %_lhs232, 1
  store i32 %bop233, i32* %j216
  br label %__cond49

__fresh53:
  br label %__post47

__post47:
  %_lhs234 = load i32* %i213
  %bop235 = add i32 %_lhs234, 1
  store i32 %bop235, i32* %i213
  br label %__cond46

__fresh54:
  br label %__post44

__post44:
  %_lhs236 = load i32* %s212
  ret i32 %_lhs236
}


