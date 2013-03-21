declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh78:
  ret void
}


define i32 @program (i32 %argc346, { i32, [ 0 x i8* ] }* %argv344){

__fresh77:
  %argc_slot347 = alloca i32
  store i32 %argc346, i32* %argc_slot347
  %argv_slot345 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv344, { i32, [ 0 x i8* ] }** %argv_slot345
  %_lhs348 = load i32* %argc_slot347
  %ret349 = call i32 @f1 ( i32 %_lhs348 )
  ret i32 %ret349
}


define i32 @f9 (i32 %i341){

__fresh76:
  %i_slot342 = alloca i32
  store i32 %i341, i32* %i_slot342
  %_lhs343 = load i32* %i_slot342
  ret i32 %_lhs343
}


define i32 @f8 (i32 %i337){

__fresh75:
  %i_slot338 = alloca i32
  store i32 %i337, i32* %i_slot338
  %_lhs339 = load i32* %i_slot338
  %ret340 = call i32 @f9 ( i32 %_lhs339 )
  ret i32 %ret340
}


define i32 @f7 (i32 %i333){

__fresh74:
  %i_slot334 = alloca i32
  store i32 %i333, i32* %i_slot334
  %_lhs335 = load i32* %i_slot334
  %ret336 = call i32 @f8 ( i32 %_lhs335 )
  ret i32 %ret336
}


define i32 @f6 (i32 %i329){

__fresh73:
  %i_slot330 = alloca i32
  store i32 %i329, i32* %i_slot330
  %_lhs331 = load i32* %i_slot330
  %ret332 = call i32 @f7 ( i32 %_lhs331 )
  ret i32 %ret332
}


define i32 @f5 (i32 %i325){

__fresh72:
  %i_slot326 = alloca i32
  store i32 %i325, i32* %i_slot326
  %_lhs327 = load i32* %i_slot326
  %ret328 = call i32 @f6 ( i32 %_lhs327 )
  ret i32 %ret328
}


define i32 @f4 (i32 %i321){

__fresh71:
  %i_slot322 = alloca i32
  store i32 %i321, i32* %i_slot322
  %_lhs323 = load i32* %i_slot322
  %ret324 = call i32 @f5 ( i32 %_lhs323 )
  ret i32 %ret324
}


define i32 @f3 (i32 %i317){

__fresh70:
  %i_slot318 = alloca i32
  store i32 %i317, i32* %i_slot318
  %_lhs319 = load i32* %i_slot318
  %ret320 = call i32 @f4 ( i32 %_lhs319 )
  ret i32 %ret320
}


define i32 @f2 (i32 %i313){

__fresh69:
  %i_slot314 = alloca i32
  store i32 %i313, i32* %i_slot314
  %_lhs315 = load i32* %i_slot314
  %ret316 = call i32 @f3 ( i32 %_lhs315 )
  ret i32 %ret316
}


define i32 @f1 (i32 %i309){

__fresh68:
  %i_slot310 = alloca i32
  store i32 %i309, i32* %i_slot310
  %_lhs311 = load i32* %i_slot310
  %ret312 = call i32 @f2 ( i32 %_lhs311 )
  ret i32 %ret312
}


