declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a228 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by a228.init
define void @oat_init (){

__fresh68:
  call void @a228.init(  )
  ret void
}


define i32 @program (i32 %argc231, { i32, [ 0 x i8* ] }* %argv229){

__fresh63:
  %argc_slot232 = alloca i32
  store i32 %argc231, i32* %argc_slot232
  %argv_slot230 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv229, { i32, [ 0 x i8* ] }** %argv_slot230
  %s233 = alloca i32
  store i32 0, i32* %s233
  %i234 = alloca i32
  store i32 0, i32* %i234
  br label %__cond59

__cond59:
  %_lhs235 = load i32* %i234
  %bop236 = icmp slt i32 %_lhs235, 3
  br i1 %bop236, label %__body58, label %__post57

__fresh64:
  br label %__body58

__body58:
  %j237 = alloca i32
  store i32 0, i32* %j237
  br label %__cond62

__cond62:
  %_lhs238 = load i32* %j237
  %bop239 = icmp slt i32 %_lhs238, 4
  br i1 %bop239, label %__body61, label %__post60

__fresh65:
  br label %__body61

__body61:
  %_lhs240 = load i32* %s233
  %_lhs243 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a228
  %bop244 = add i32 %_lhs240, %_lhs243
  store i32 %bop244, i32* %s233
  %_lhs245 = load i32* %j237
  %bop246 = add i32 %_lhs245, 1
  store i32 %bop246, i32* %j237
  br label %__cond62

__fresh66:
  br label %__post60

__post60:
  %_lhs247 = load i32* %i234
  %bop248 = add i32 %_lhs247, 1
  store i32 %bop248, i32* %i234
  br label %__cond59

__fresh67:
  br label %__post57

__post57:
  %_lhs249 = load i32* %s233
  ret i32 %_lhs249
}


define void @a228.init (){

__fresh56:
  %array_ptr205 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array206 = bitcast { i32, [ 0 x i32 ] }* %array_ptr205 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr207 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array208 = bitcast { i32, [ 0 x i32 ] }* %array_ptr207 to { i32, [ 0 x i32 ] }* 
  %index_ptr209 = getelementptr { i32, [ 0 x i32 ] }* %array208, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr209
  %index_ptr210 = getelementptr { i32, [ 0 x i32 ] }* %array208, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr210
  %index_ptr211 = getelementptr { i32, [ 0 x i32 ] }* %array208, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr211
  %index_ptr212 = getelementptr { i32, [ 0 x i32 ] }* %array208, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr212
  %index_ptr213 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array206, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array208, { i32, [ 0 x i32 ] }** %index_ptr213
  %array_ptr214 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array215 = bitcast { i32, [ 0 x i32 ] }* %array_ptr214 to { i32, [ 0 x i32 ] }* 
  %index_ptr216 = getelementptr { i32, [ 0 x i32 ] }* %array215, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr216
  %index_ptr217 = getelementptr { i32, [ 0 x i32 ] }* %array215, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr217
  %index_ptr218 = getelementptr { i32, [ 0 x i32 ] }* %array215, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr218
  %index_ptr219 = getelementptr { i32, [ 0 x i32 ] }* %array215, i32 0, i32 1, i32 3
  store i32 7, i32* %index_ptr219
  %index_ptr220 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array206, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array215, { i32, [ 0 x i32 ] }** %index_ptr220
  %array_ptr221 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array222 = bitcast { i32, [ 0 x i32 ] }* %array_ptr221 to { i32, [ 0 x i32 ] }* 
  %index_ptr223 = getelementptr { i32, [ 0 x i32 ] }* %array222, i32 0, i32 1, i32 0
  store i32 8, i32* %index_ptr223
  %index_ptr224 = getelementptr { i32, [ 0 x i32 ] }* %array222, i32 0, i32 1, i32 1
  store i32 9, i32* %index_ptr224
  %index_ptr225 = getelementptr { i32, [ 0 x i32 ] }* %array222, i32 0, i32 1, i32 2
  store i32 10, i32* %index_ptr225
  %index_ptr226 = getelementptr { i32, [ 0 x i32 ] }* %array222, i32 0, i32 1, i32 3
  store i32 11, i32* %index_ptr226
  %index_ptr227 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array206, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array222, { i32, [ 0 x i32 ] }** %index_ptr227
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array206, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a228
  ret void
}


