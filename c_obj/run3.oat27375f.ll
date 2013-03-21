declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr564 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr564.init
define void @oat_init (){

__fresh198:
  call void @arr564.init(  )
  ret void
}


define i32 @program (i32 %argc567, { i32, [ 0 x i8* ] }* %argv565){

__fresh197:
  %argc_slot568 = alloca i32
  store i32 %argc567, i32* %argc_slot568
  %argv_slot566 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv565, { i32, [ 0 x i8* ] }** %argv_slot566
  %len_ptr569 = getelementptr { i32, [ 0 x i32 ] }** @arr564, i32 0, i32 0
  %len570 = load i32* %len_ptr569
  call void @oat_array_bounds_check( i32 %len570, i32 1 )
  %array_dereferenced571 = load { i32, [ 0 x i32 ] }** @arr564
  %elt_ptr572 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced571, i32 0, i32 1, i32 1
  %_lhs573 = load i32* %elt_ptr572
  ret i32 %_lhs573
}


define void @arr564.init (){

__fresh196:
  %array_ptr560 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array561 = bitcast { i32, [ 0 x i32 ] }* %array_ptr560 to { i32, [ 0 x i32 ] }* 
  %index_ptr562 = getelementptr { i32, [ 0 x i32 ] }* %array561, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr562
  %index_ptr563 = getelementptr { i32, [ 0 x i32 ] }* %array561, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr563
  store { i32, [ 0 x i32 ] }* %array561, { i32, [ 0 x i32 ] }** @arr564
  ret void
}


