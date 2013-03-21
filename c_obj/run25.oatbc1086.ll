declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1086 = global i8* zeroinitializer, align 4		; initialized by str1086.init
define void @oat_init (){

__fresh282:
  call void @str1086.init(  )
  ret void
}


define i32 @program (i32 %argc1089, { i32, [ 0 x i8* ] }* %argv1087){

__fresh281:
  %argc_slot1090 = alloca i32
  store i32 %argc1089, i32* %argc_slot1090
  %argv_slot1088 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1087, { i32, [ 0 x i8* ] }** %argv_slot1088
  %_lhs1091 = load i8** @str1086
  call void @print_string( i8* %_lhs1091 )
  ret i32 0
}


define void @str1086.init (){

__fresh278:
  br label %__check276

__check276:
  %cmp_op1083 = icmp slt i32 1, 3
  br i32 %cmp_op1083, label %__body277, label %__end275

__fresh279:
  br label %__body277

__body277:
  store i32* %i1079, i32 1
  %elem_ptr1082 = getelementptr { i32, [ 0 x i32 ] }* %array1081, i32 0, i32 1, i32 1
  %elem_ptr1082 = load i32* %i1079
  %incr_op1084 = add i32 1, 1
  store i32 1, i32 %incr_op1084
  br label %__check276

__fresh280:
  br label %__end275

__end275:
  %ret1085 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %array1081 )
  store i8* %ret1085, i8** @str1086
  ret void
}


