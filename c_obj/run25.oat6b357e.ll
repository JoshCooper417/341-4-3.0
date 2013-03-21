declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1109 = global i8* zeroinitializer, align 4		; initialized by str1109.init
define void @oat_init (){

__fresh282:
  call void @str1109.init(  )
  ret void
}


define i32 @program (i32 %argc1112, { i32, [ 0 x i8* ] }* %argv1110){

__fresh281:
  %argc_slot1113 = alloca i32
  store i32 %argc1112, i32* %argc_slot1113
  %argv_slot1111 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1110, { i32, [ 0 x i8* ] }** %argv_slot1111
  %_lhs1114 = load i8** @str1109
  call void @print_string( i8* %_lhs1114 )
  ret i32 0
}


define void @str1109.init (){

__fresh278:
  store i32 1, i32* %i1101
  %index_op1106 = load i32* %i1101
  br label %__check276

__check276:
  %cmp_op1105 = icmp slt i32 %index_op1106, 3
  br i32 %cmp_op1105, label %__body277, label %__end275

__fresh279:
  br label %__body277

__body277:
  %elem_ptr1104 = getelementptr { i32, [ 0 x i32 ] }* %array1103, i32 0, i32 1, i32 %index_op1106
  store i32 110, i32* %elem_ptr1104
  %index_op1106 = add i32 %index_op1106, 1
  br label %__check276

__fresh280:
  br label %__end275

__end275:
  %ret1108 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %array1103 )
  store i8* %ret1108, i8** @str1109
  ret void
}


