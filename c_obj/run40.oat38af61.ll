declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i352 = global i32 8, align 4
define void @oat_init (){

__fresh82:
  ret void
}


define i32 @program (i32 %argc359, { i32, [ 0 x i8* ] }* %argv357){

__fresh81:
  %argc_slot360 = alloca i32
  store i32 %argc359, i32* %argc_slot360
  %argv_slot358 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv357, { i32, [ 0 x i8* ] }** %argv_slot358
  %ret361 = call i32 @f (  )
  ret i32 %ret361
}


define i32 @g (){

__fresh80:
  %_lhs356 = load i32* @i352
  ret i32 %_lhs356
}


define i32 @f (){

__fresh79:
  %j353 = alloca i32
  store i32 0, i32* %j353
  %ret354 = call i32 @g (  )
  store i32 %ret354, i32* %j353
  %_lhs355 = load i32* %j353
  ret i32 %_lhs355
}


