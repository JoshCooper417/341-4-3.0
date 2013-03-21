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


define i32 @program (i32 %argc260, { i32, [ 0 x i8* ] }* %argv258){

__fresh78:
  %argc_slot261 = alloca i32
  store i32 %argc260, i32* %argc_slot261
  %argv_slot259 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv258, { i32, [ 0 x i8* ] }** %argv_slot259
  %ret262 = call i32 @f1 (  )
  ret i32 %ret262
}


define i32 @f9 (){

__fresh77:
  ret i32 31
}


define i32 @f8 (){

__fresh76:
  %ret257 = call i32 @f9 (  )
  ret i32 %ret257
}


define i32 @f7 (){

__fresh75:
  %ret256 = call i32 @f8 (  )
  ret i32 %ret256
}


define i32 @f6 (){

__fresh74:
  %ret255 = call i32 @f7 (  )
  ret i32 %ret255
}


define i32 @f5 (){

__fresh73:
  %ret254 = call i32 @f6 (  )
  ret i32 %ret254
}


define i32 @f4 (){

__fresh72:
  %ret253 = call i32 @f5 (  )
  ret i32 %ret253
}


define i32 @f3 (){

__fresh71:
  %ret252 = call i32 @f4 (  )
  ret i32 %ret252
}


define i32 @f2 (){

__fresh70:
  %ret251 = call i32 @f3 (  )
  ret i32 %ret251
}


define i32 @f1 (){

__fresh69:
  %ret250 = call i32 @f2 (  )
  ret i32 %ret250
}


