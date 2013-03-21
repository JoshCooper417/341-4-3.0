declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1058 = global i8* zeroinitializer, align 4		; initialized by str1058.init
define void @oat_init (){

__fresh218:
  call void @str1058.init(  )
  ret void
}


define i32 @program (i32 %argc1061, { i32, [ 0 x i8* ] }* %argv1059){

__fresh217:
  %argc_slot1062 = alloca i32
  store i32 %argc1061, i32* %argc_slot1062
  %argv_slot1060 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1059, { i32, [ 0 x i8* ] }** %argv_slot1060
  %_lhs1063 = load i8** @str1058
  call void @print_string( i8* %_lhs1063 )
  ret i32 0
}


define void @str1058.init (){

__fresh216:
  store i32 1, i32* %i1050
  %ret1057 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %array1052 )
  store i8* %ret1057, i8** @str1058
  ret void
}


