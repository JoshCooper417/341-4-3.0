declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a274 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by a274.init
define void @oat_init (){

__fresh68:
  call void @a274.init(  )
  ret void
}


define i32 @program (i32 %argc277, { i32, [ 0 x i8* ] }* %argv275){

__fresh63:
  %argc_slot278 = alloca i32
  store i32 %argc277, i32* %argc_slot278
  %argv_slot276 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv275, { i32, [ 0 x i8* ] }** %argv_slot276
  %s279 = alloca i32
  store i32 0, i32* %s279
  %i280 = alloca i32
  store i32 0, i32* %i280
  br label %__cond59

__cond59:
  %_lhs281 = load i32* %i280
  %bop282 = icmp slt i32 %_lhs281, 3
  br i1 %bop282, label %__body58, label %__post57

__fresh64:
  br label %__body58

__body58:
  %j283 = alloca i32
  store i32 0, i32* %j283
  br label %__cond62

__cond62:
  %_lhs284 = load i32* %j283
  %bop285 = icmp slt i32 %_lhs284, 4
  br i1 %bop285, label %__body61, label %__post60

__fresh65:
  br label %__body61

__body61:
  %_lhs286 = load i32* %s279
  %_lhs305 = load i32* %elt_ptr304
  %bop306 = add i32 %_lhs286, %_lhs305
  store i32 %bop306, i32* %s279
  %_lhs307 = load i32* %j283
  %bop308 = add i32 %_lhs307, 1
  store i32 %bop308, i32* %j283
  br label %__cond62

__fresh66:
  br label %__post60

__post60:
  %_lhs309 = load i32* %i280
  %bop310 = add i32 %_lhs309, 1
  store i32 %bop310, i32* %i280
  br label %__cond59

__fresh67:
  br label %__post57

__post57:
  %_lhs311 = load i32* %s279
  ret i32 %_lhs311
}


define void @a274.init (){

__fresh56:
  %array_ptr251 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array252 = bitcast { i32, [ 0 x i32 ] }* %array_ptr251 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr253 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array254 = bitcast { i32, [ 0 x i32 ] }* %array_ptr253 to { i32, [ 0 x i32 ] }* 
  %index_ptr255 = getelementptr { i32, [ 0 x i32 ] }* %array254, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr255
  %index_ptr256 = getelementptr { i32, [ 0 x i32 ] }* %array254, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr256
  %index_ptr257 = getelementptr { i32, [ 0 x i32 ] }* %array254, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr257
  %index_ptr258 = getelementptr { i32, [ 0 x i32 ] }* %array254, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr258
  %index_ptr259 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array252, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array254, { i32, [ 0 x i32 ] }** %index_ptr259
  %array_ptr260 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array261 = bitcast { i32, [ 0 x i32 ] }* %array_ptr260 to { i32, [ 0 x i32 ] }* 
  %index_ptr262 = getelementptr { i32, [ 0 x i32 ] }* %array261, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr262
  %index_ptr263 = getelementptr { i32, [ 0 x i32 ] }* %array261, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr263
  %index_ptr264 = getelementptr { i32, [ 0 x i32 ] }* %array261, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr264
  %index_ptr265 = getelementptr { i32, [ 0 x i32 ] }* %array261, i32 0, i32 1, i32 3
  store i32 7, i32* %index_ptr265
  %index_ptr266 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array252, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array261, { i32, [ 0 x i32 ] }** %index_ptr266
  %array_ptr267 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array268 = bitcast { i32, [ 0 x i32 ] }* %array_ptr267 to { i32, [ 0 x i32 ] }* 
  %index_ptr269 = getelementptr { i32, [ 0 x i32 ] }* %array268, i32 0, i32 1, i32 0
  store i32 8, i32* %index_ptr269
  %index_ptr270 = getelementptr { i32, [ 0 x i32 ] }* %array268, i32 0, i32 1, i32 1
  store i32 9, i32* %index_ptr270
  %index_ptr271 = getelementptr { i32, [ 0 x i32 ] }* %array268, i32 0, i32 1, i32 2
  store i32 10, i32* %index_ptr271
  %index_ptr272 = getelementptr { i32, [ 0 x i32 ] }* %array268, i32 0, i32 1, i32 3
  store i32 11, i32* %index_ptr272
  %index_ptr273 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array252, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array268, { i32, [ 0 x i32 ] }** %index_ptr273
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array252, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a274
  ret void
}


