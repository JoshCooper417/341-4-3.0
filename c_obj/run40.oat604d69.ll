declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i307 = global i32 8, align 4
define void @oat_init (){

__fresh65:
  ret void
}


define i32 @program (i32 %argc314, { i32, [ 0 x i8* ] }* %argv312){

__fresh64:
  %argc_slot315 = alloca i32
  store i32 %argc314, i32* %argc_slot315
  %argv_slot313 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv312, { i32, [ 0 x i8* ] }** %argv_slot313
  %ret316 = call i32 @f (  )
  ret i32 %ret316
}


define i32 @g (){

__fresh63:
  %_lhs311 = load i32* @i307
  ret i32 %_lhs311
}


define i32 @f (){

__fresh62:
  %j308 = alloca i32
  store i32 0, i32* %j308
  %ret309 = call i32 @g (  )
  store i32 %ret309, i32* %j308
  %_lhs310 = load i32* %j308
  ret i32 %_lhs310
}


