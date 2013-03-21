declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh90:
  ret void
}


define i32 @program (i32 %argc300, { i32, [ 0 x i8* ] }* %argv298){

__fresh89:
  %argc_slot301 = alloca i32
  store i32 %argc300, i32* %argc_slot301
  %argv_slot299 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv298, { i32, [ 0 x i8* ] }** %argv_slot299
  %_lhs302 = load i32* %argc_slot301
  %ret303 = call i32 @f1 ( i32 %_lhs302 )
  ret i32 %ret303
}


define i32 @f9 (i32 %i295){

__fresh88:
  %i_slot296 = alloca i32
  store i32 %i295, i32* %i_slot296
  %_lhs297 = load i32* %i_slot296
  ret i32 %_lhs297
}


define i32 @f8 (i32 %i291){

__fresh87:
  %i_slot292 = alloca i32
  store i32 %i291, i32* %i_slot292
  %_lhs293 = load i32* %i_slot292
  %ret294 = call i32 @f9 ( i32 %_lhs293 )
  ret i32 %ret294
}


define i32 @f7 (i32 %i287){

__fresh86:
  %i_slot288 = alloca i32
  store i32 %i287, i32* %i_slot288
  %_lhs289 = load i32* %i_slot288
  %ret290 = call i32 @f8 ( i32 %_lhs289 )
  ret i32 %ret290
}


define i32 @f6 (i32 %i283){

__fresh85:
  %i_slot284 = alloca i32
  store i32 %i283, i32* %i_slot284
  %_lhs285 = load i32* %i_slot284
  %ret286 = call i32 @f7 ( i32 %_lhs285 )
  ret i32 %ret286
}


define i32 @f5 (i32 %i279){

__fresh84:
  %i_slot280 = alloca i32
  store i32 %i279, i32* %i_slot280
  %_lhs281 = load i32* %i_slot280
  %ret282 = call i32 @f6 ( i32 %_lhs281 )
  ret i32 %ret282
}


define i32 @f4 (i32 %i275){

__fresh83:
  %i_slot276 = alloca i32
  store i32 %i275, i32* %i_slot276
  %_lhs277 = load i32* %i_slot276
  %ret278 = call i32 @f5 ( i32 %_lhs277 )
  ret i32 %ret278
}


define i32 @f3 (i32 %i271){

__fresh82:
  %i_slot272 = alloca i32
  store i32 %i271, i32* %i_slot272
  %_lhs273 = load i32* %i_slot272
  %ret274 = call i32 @f4 ( i32 %_lhs273 )
  ret i32 %ret274
}


define i32 @f2 (i32 %i267){

__fresh81:
  %i_slot268 = alloca i32
  store i32 %i267, i32* %i_slot268
  %_lhs269 = load i32* %i_slot268
  %ret270 = call i32 @f3 ( i32 %_lhs269 )
  ret i32 %ret270
}


define i32 @f1 (i32 %i263){

__fresh80:
  %i_slot264 = alloca i32
  store i32 %i263, i32* %i_slot264
  %_lhs265 = load i32* %i_slot264
  %ret266 = call i32 @f2 ( i32 %_lhs265 )
  ret i32 %ret266
}


