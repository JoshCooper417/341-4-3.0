declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str917 = global i8* zeroinitializer, align 4		; initialized by str917.init
define void @oat_init (){

__fresh328:
  call void @str917.init(  )
  ret void
}


define i32 @program (i32 %argc920, { i32, [ 0 x i8* ] }* %argv918){

__fresh327:
  %argc_slot921 = alloca i32
  store i32 %argc920, i32* %argc_slot921
  %argv_slot919 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv918, { i32, [ 0 x i8* ] }** %argv_slot919
  %_lhs922 = load i8** @str917
  call void @print_string( i8* %_lhs922 )
  ret i32 0
}


define void @str917.init (){

__fresh322:
  %array_ptr908 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array909 = bitcast { i32, [ 0 x i32 ] }* %array_ptr908 to { i32, [ 0 x i32 ] }* 
  %i914 = alloca i32
  store i32 1, i32* %i914
  %i907 = load i32* %i914
  br label %__check320

__fresh323:
  br label %__check320

__check320:
  br label %__end319

__fresh324:
  %cmp_op912 = icmp slt i32 %i907, 3
  br i32 %cmp_op912, label %__body321, label %__end319

__fresh325:
  br label %__body321

__body321:
  %elem_ptr911 = getelementptr { i32, [ 0 x i32 ] }* %array909, i32 0, i32 1, i32 %i907
  store i32 110, i32* %elem_ptr911
  %index_op913 = add i32 %i907, 1
  br label %__check320

__fresh326:
  br label %__end319

__end319:
  %array_ptr910 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array909, { i32, [ 0 x i32 ] }** %array_ptr910
  %ret916 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }** %array_ptr910 )
  store i8* %ret916, i8** @str917
  ret void
}


