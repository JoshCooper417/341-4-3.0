declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh61:
  ret void
}


define i32 @program (i32 %argc319, { i32, [ 0 x i8* ] }* %argv317){

__fresh60:
  %argc_slot320 = alloca i32
  store i32 %argc319, i32* %argc_slot320
  %argv_slot318 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv317, { i32, [ 0 x i8* ] }** %argv_slot318
  %_lhs321 = load i32* %argc_slot320
  %ret322 = call i32 @f1 ( i32 %_lhs321 )
  ret i32 %ret322
}


define i32 @f9 (i32 %i314){

__fresh59:
  %i_slot315 = alloca i32
  store i32 %i314, i32* %i_slot315
  %_lhs316 = load i32* %i_slot315
  ret i32 %_lhs316
}


define i32 @f8 (i32 %i310){

__fresh58:
  %i_slot311 = alloca i32
  store i32 %i310, i32* %i_slot311
  %_lhs312 = load i32* %i_slot311
  %ret313 = call i32 @f9 ( i32 %_lhs312 )
  ret i32 %ret313
}


define i32 @f7 (i32 %i306){

__fresh57:
  %i_slot307 = alloca i32
  store i32 %i306, i32* %i_slot307
  %_lhs308 = load i32* %i_slot307
  %ret309 = call i32 @f8 ( i32 %_lhs308 )
  ret i32 %ret309
}


define i32 @f6 (i32 %i302){

__fresh56:
  %i_slot303 = alloca i32
  store i32 %i302, i32* %i_slot303
  %_lhs304 = load i32* %i_slot303
  %ret305 = call i32 @f7 ( i32 %_lhs304 )
  ret i32 %ret305
}


define i32 @f5 (i32 %i298){

__fresh55:
  %i_slot299 = alloca i32
  store i32 %i298, i32* %i_slot299
  %_lhs300 = load i32* %i_slot299
  %ret301 = call i32 @f6 ( i32 %_lhs300 )
  ret i32 %ret301
}


define i32 @f4 (i32 %i294){

__fresh54:
  %i_slot295 = alloca i32
  store i32 %i294, i32* %i_slot295
  %_lhs296 = load i32* %i_slot295
  %ret297 = call i32 @f5 ( i32 %_lhs296 )
  ret i32 %ret297
}


define i32 @f3 (i32 %i290){

__fresh53:
  %i_slot291 = alloca i32
  store i32 %i290, i32* %i_slot291
  %_lhs292 = load i32* %i_slot291
  %ret293 = call i32 @f4 ( i32 %_lhs292 )
  ret i32 %ret293
}


define i32 @f2 (i32 %i286){

__fresh52:
  %i_slot287 = alloca i32
  store i32 %i286, i32* %i_slot287
  %_lhs288 = load i32* %i_slot287
  %ret289 = call i32 @f3 ( i32 %_lhs288 )
  ret i32 %ret289
}


define i32 @f1 (i32 %i282){

__fresh51:
  %i_slot283 = alloca i32
  store i32 %i282, i32* %i_slot283
  %_lhs284 = load i32* %i_slot283
  %ret285 = call i32 @f2 ( i32 %_lhs284 )
  ret i32 %ret285
}


