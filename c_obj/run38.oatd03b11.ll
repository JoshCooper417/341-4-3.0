declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh97:
  ret void
}


define i32 @program (i32 %argc300, { i32, [ 0 x i8* ] }* %argv298){

__fresh96:
  %argc_slot301 = alloca i32
  store i32 %argc300, i32* %argc_slot301
  %argv_slot299 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv298, { i32, [ 0 x i8* ] }** %argv_slot299
  %ret302 = call i32 @f1 (  )
  ret i32 %ret302
}


define i32 @f9 (){

__fresh95:
  ret i32 31
}


define i32 @f8 (){

__fresh94:
  %ret297 = call i32 @f9 (  )
  ret i32 %ret297
}


define i32 @f7 (){

__fresh93:
  %ret296 = call i32 @f8 (  )
  ret i32 %ret296
}


define i32 @f6 (){

__fresh92:
  %ret295 = call i32 @f7 (  )
  ret i32 %ret295
}


define i32 @f5 (){

__fresh91:
  %ret294 = call i32 @f6 (  )
  ret i32 %ret294
}


define i32 @f4 (){

__fresh90:
  %ret293 = call i32 @f5 (  )
  ret i32 %ret293
}


define i32 @f3 (){

__fresh89:
  %ret292 = call i32 @f4 (  )
  ret i32 %ret292
}


define i32 @f2 (){

__fresh88:
  %ret291 = call i32 @f3 (  )
  ret i32 %ret291
}


define i32 @f1 (){

__fresh87:
  %ret290 = call i32 @f2 (  )
  ret i32 %ret290
}


