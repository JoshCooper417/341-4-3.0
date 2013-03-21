declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh79:
  ret void
}


define i32 @program (i32 %argc322, { i32, [ 0 x i8* ] }* %argv320){

__fresh78:
  %argc_slot323 = alloca i32
  store i32 %argc322, i32* %argc_slot323
  %argv_slot321 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv320, { i32, [ 0 x i8* ] }** %argv_slot321
  %ret324 = call i32 @f1 (  )
  ret i32 %ret324
}


define i32 @f9 (){

__fresh77:
  ret i32 31
}


define i32 @f8 (){

__fresh76:
  %ret319 = call i32 @f9 (  )
  ret i32 %ret319
}


define i32 @f7 (){

__fresh75:
  %ret318 = call i32 @f8 (  )
  ret i32 %ret318
}


define i32 @f6 (){

__fresh74:
  %ret317 = call i32 @f7 (  )
  ret i32 %ret317
}


define i32 @f5 (){

__fresh73:
  %ret316 = call i32 @f6 (  )
  ret i32 %ret316
}


define i32 @f4 (){

__fresh72:
  %ret315 = call i32 @f5 (  )
  ret i32 %ret315
}


define i32 @f3 (){

__fresh71:
  %ret314 = call i32 @f4 (  )
  ret i32 %ret314
}


define i32 @f2 (){

__fresh70:
  %ret313 = call i32 @f3 (  )
  ret i32 %ret313
}


define i32 @f1 (){

__fresh69:
  %ret312 = call i32 @f2 (  )
  ret i32 %ret312
}


