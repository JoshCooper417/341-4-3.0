declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str921 = global i8* zeroinitializer, align 4		; initialized by str921.init
define void @oat_init (){

__fresh191:
  call void @str921.init(  )
  ret void
}


define i32 @program (i32 %argc924, { i32, [ 0 x i8* ] }* %argv922){

__fresh190:
  %argc_slot925 = alloca i32
  store i32 %argc924, i32* %argc_slot925
  %argv_slot923 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv922, { i32, [ 0 x i8* ] }** %argv_slot923
  %_lhs926 = load i8** @str921
  call void @print_string( i8* %_lhs926 )
  ret i32 0
}


define void @str921.init (){

__fresh186:
  %array_ptr913 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array914 = bitcast { i32, [ 0 x i32 ] }* %array_ptr913 to { i32, [ 0 x i32 ] }* 
  %i918 = alloca i32
  store i32 1, i32* %i918
  %i912 = load i32* %i918
  br label %__check184

__fresh187:
  br label %__check184

__check184:
  br label %__end183

__fresh188:
  br label %__body185

__body185:
  br label %__check184

__fresh189:
  br label %__end183

__end183:
  %ret920 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %array914 )
  store i8* %ret920, i8** @str921
  ret void
}


