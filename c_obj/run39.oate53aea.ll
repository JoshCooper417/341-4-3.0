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


define i32 @program (i32 %argc303, { i32, [ 0 x i8* ] }* %argv301){

__fresh60:
  %argc_slot304 = alloca i32
  store i32 %argc303, i32* %argc_slot304
  %argv_slot302 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv301, { i32, [ 0 x i8* ] }** %argv_slot302
  %_lhs305 = load i32* %argc_slot304
  %ret306 = call i32 @f1 ( i32 %_lhs305 )
  ret i32 %ret306
}


define i32 @f9 (i32 %i298){

__fresh59:
  %i_slot299 = alloca i32
  store i32 %i298, i32* %i_slot299
  %_lhs300 = load i32* %i_slot299
  ret i32 %_lhs300
}


define i32 @f8 (i32 %i294){

__fresh58:
  %i_slot295 = alloca i32
  store i32 %i294, i32* %i_slot295
  %_lhs296 = load i32* %i_slot295
  %ret297 = call i32 @f9 ( i32 %_lhs296 )
  ret i32 %ret297
}


define i32 @f7 (i32 %i290){

__fresh57:
  %i_slot291 = alloca i32
  store i32 %i290, i32* %i_slot291
  %_lhs292 = load i32* %i_slot291
  %ret293 = call i32 @f8 ( i32 %_lhs292 )
  ret i32 %ret293
}


define i32 @f6 (i32 %i286){

__fresh56:
  %i_slot287 = alloca i32
  store i32 %i286, i32* %i_slot287
  %_lhs288 = load i32* %i_slot287
  %ret289 = call i32 @f7 ( i32 %_lhs288 )
  ret i32 %ret289
}


define i32 @f5 (i32 %i282){

__fresh55:
  %i_slot283 = alloca i32
  store i32 %i282, i32* %i_slot283
  %_lhs284 = load i32* %i_slot283
  %ret285 = call i32 @f6 ( i32 %_lhs284 )
  ret i32 %ret285
}


define i32 @f4 (i32 %i278){

__fresh54:
  %i_slot279 = alloca i32
  store i32 %i278, i32* %i_slot279
  %_lhs280 = load i32* %i_slot279
  %ret281 = call i32 @f5 ( i32 %_lhs280 )
  ret i32 %ret281
}


define i32 @f3 (i32 %i274){

__fresh53:
  %i_slot275 = alloca i32
  store i32 %i274, i32* %i_slot275
  %_lhs276 = load i32* %i_slot275
  %ret277 = call i32 @f4 ( i32 %_lhs276 )
  ret i32 %ret277
}


define i32 @f2 (i32 %i270){

__fresh52:
  %i_slot271 = alloca i32
  store i32 %i270, i32* %i_slot271
  %_lhs272 = load i32* %i_slot271
  %ret273 = call i32 @f3 ( i32 %_lhs272 )
  ret i32 %ret273
}


define i32 @f1 (i32 %i266){

__fresh51:
  %i_slot267 = alloca i32
  store i32 %i266, i32* %i_slot267
  %_lhs268 = load i32* %i_slot267
  %ret269 = call i32 @f2 ( i32 %_lhs268 )
  ret i32 %ret269
}


