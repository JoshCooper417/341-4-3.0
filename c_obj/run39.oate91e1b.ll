declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh112:
  ret void
}


define i32 @program (i32 %argc340, { i32, [ 0 x i8* ] }* %argv338){

__fresh111:
  %argc_slot341 = alloca i32
  store i32 %argc340, i32* %argc_slot341
  %argv_slot339 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv338, { i32, [ 0 x i8* ] }** %argv_slot339
  %_lhs342 = load i32* %argc_slot341
  %ret343 = call i32 @f1 ( i32 %_lhs342 )
  ret i32 %ret343
}


define i32 @f9 (i32 %i335){

__fresh110:
  %i_slot336 = alloca i32
  store i32 %i335, i32* %i_slot336
  %_lhs337 = load i32* %i_slot336
  ret i32 %_lhs337
}


define i32 @f8 (i32 %i331){

__fresh109:
  %i_slot332 = alloca i32
  store i32 %i331, i32* %i_slot332
  %_lhs333 = load i32* %i_slot332
  %ret334 = call i32 @f9 ( i32 %_lhs333 )
  ret i32 %ret334
}


define i32 @f7 (i32 %i327){

__fresh108:
  %i_slot328 = alloca i32
  store i32 %i327, i32* %i_slot328
  %_lhs329 = load i32* %i_slot328
  %ret330 = call i32 @f8 ( i32 %_lhs329 )
  ret i32 %ret330
}


define i32 @f6 (i32 %i323){

__fresh107:
  %i_slot324 = alloca i32
  store i32 %i323, i32* %i_slot324
  %_lhs325 = load i32* %i_slot324
  %ret326 = call i32 @f7 ( i32 %_lhs325 )
  ret i32 %ret326
}


define i32 @f5 (i32 %i319){

__fresh106:
  %i_slot320 = alloca i32
  store i32 %i319, i32* %i_slot320
  %_lhs321 = load i32* %i_slot320
  %ret322 = call i32 @f6 ( i32 %_lhs321 )
  ret i32 %ret322
}


define i32 @f4 (i32 %i315){

__fresh105:
  %i_slot316 = alloca i32
  store i32 %i315, i32* %i_slot316
  %_lhs317 = load i32* %i_slot316
  %ret318 = call i32 @f5 ( i32 %_lhs317 )
  ret i32 %ret318
}


define i32 @f3 (i32 %i311){

__fresh104:
  %i_slot312 = alloca i32
  store i32 %i311, i32* %i_slot312
  %_lhs313 = load i32* %i_slot312
  %ret314 = call i32 @f4 ( i32 %_lhs313 )
  ret i32 %ret314
}


define i32 @f2 (i32 %i307){

__fresh103:
  %i_slot308 = alloca i32
  store i32 %i307, i32* %i_slot308
  %_lhs309 = load i32* %i_slot308
  %ret310 = call i32 @f3 ( i32 %_lhs309 )
  ret i32 %ret310
}


define i32 @f1 (i32 %i303){

__fresh102:
  %i_slot304 = alloca i32
  store i32 %i303, i32* %i_slot304
  %_lhs305 = load i32* %i_slot304
  %ret306 = call i32 @f2 ( i32 %_lhs305 )
  ret i32 %ret306
}


