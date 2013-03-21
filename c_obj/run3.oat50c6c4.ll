declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr482 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr482.init
define void @oat_init (){

__fresh129:
  call void @arr482.init(  )
  ret void
}


define i32 @program (i32 %argc485, { i32, [ 0 x i8* ] }* %argv483){

__fresh128:
  %argc_slot486 = alloca i32
  store i32 %argc485, i32* %argc_slot486
  %argv_slot484 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv483, { i32, [ 0 x i8* ] }** %argv_slot484
  %_lhs487 = load { i32, [ 0 x i32 ] }** @arr482
  ret { i32, [ 0 x i32 ] }* %_lhs487
}


define void @arr482.init (){

__fresh127:
  %array_ptr478 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array479 = bitcast { i32, [ 0 x i32 ] }* %array_ptr478 to { i32, [ 0 x i32 ] }* 
  %index_ptr480 = getelementptr { i32, [ 0 x i32 ] }* %array479, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr480
  %index_ptr481 = getelementptr { i32, [ 0 x i32 ] }* %array479, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr481
  store { i32, [ 0 x i32 ] }* %array479, { i32, [ 0 x i32 ] }** @arr482
  ret void
}


