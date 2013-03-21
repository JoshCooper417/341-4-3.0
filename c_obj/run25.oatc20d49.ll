declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str911 = global i8* zeroinitializer, align 4		; initialized by str911.init
define void @oat_init (){

__fresh328:
  call void @str911.init(  )
  ret void
}


define i32 @program (i32 %argc914, { i32, [ 0 x i8* ] }* %argv912){

__fresh327:
  %argc_slot915 = alloca i32
  store i32 %argc914, i32* %argc_slot915
  %argv_slot913 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv912, { i32, [ 0 x i8* ] }** %argv_slot913
  %_lhs916 = load i8** @str911
  call void @print_string( i8* %_lhs916 )
  ret i32 0
}


define void @str911.init (){

__fresh322:
  %array_ptr903 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array904 = bitcast { i32, [ 0 x i32 ] }* %array_ptr903 to { i32, [ 0 x i32 ] }* 
  %i908 = alloca i32
  store i32 1, i32* %i908
  %i902 = load i32* %i908
  br label %__check320

__fresh323:
  br label %__check320

__check320:
  br label %__end319

__fresh324:
  %cmp_op906 = icmp slt i32 %i902, 3
  br i32 %cmp_op906, label %__body321, label %__end319

__fresh325:
  br label %__body321

__body321:
  %elem_ptr905 = getelementptr { i32, [ 0 x i32 ] }* %array904, i32 0, i32 1, i32 %i902
  store i32 110, i32* %elem_ptr905
  %index_op907 = add i32 %i902, 1
  br label %__check320

__fresh326:
  br label %__end319

__end319:
  %ret910 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %array904 )
  store i8* %ret910, i8** @str911
  ret void
}


