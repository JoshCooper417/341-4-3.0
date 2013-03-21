declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh67:
  ret void
}


define i32 @program (i32 %argc308, { i32, [ 0 x i8* ] }* %argv306){

__fresh66:
  %argc_slot309 = alloca i32
  store i32 %argc308, i32* %argc_slot309
  %argv_slot307 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv306, { i32, [ 0 x i8* ] }** %argv_slot307
  %ret310 = call i32 @f1 (  )
  ret i32 %ret310
}


define i32 @f9 (){

__fresh65:
  ret i32 31
}


define i32 @f8 (){

__fresh64:
  %ret305 = call i32 @f9 (  )
  ret i32 %ret305
}


define i32 @f7 (){

__fresh63:
  %ret304 = call i32 @f8 (  )
  ret i32 %ret304
}


define i32 @f6 (){

__fresh62:
  %ret303 = call i32 @f7 (  )
  ret i32 %ret303
}


define i32 @f5 (){

__fresh61:
  %ret302 = call i32 @f6 (  )
  ret i32 %ret302
}


define i32 @f4 (){

__fresh60:
  %ret301 = call i32 @f5 (  )
  ret i32 %ret301
}


define i32 @f3 (){

__fresh59:
  %ret300 = call i32 @f4 (  )
  ret i32 %ret300
}


define i32 @f2 (){

__fresh58:
  %ret299 = call i32 @f3 (  )
  ret i32 %ret299
}


define i32 @f1 (){

__fresh57:
  %ret298 = call i32 @f2 (  )
  ret i32 %ret298
}


