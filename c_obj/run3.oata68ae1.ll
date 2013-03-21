declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr562 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr562.init
define void @oat_init (){

__fresh137:
  call void @arr562.init(  )
  ret void
}


define i32 @program (i32 %argc565, { i32, [ 0 x i8* ] }* %argv563){

__fresh136:
  %argc_slot566 = alloca i32
  store i32 %argc565, i32* %argc_slot566
  %argv_slot564 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv563, { i32, [ 0 x i8* ] }** %argv_slot564
  %len_ptr567 = getelementptr { i32, [ 0 x i32 ] }** @arr562, i32 0, i32 0
  %len568 = load i32* %len_ptr567
  call void @oat_array_bounds_check( i32 %len568, i32 1 )
  %array_dereferenced569 = load { i32, [ 0 x i32 ] }** @arr562
  %elt_ptr570 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced569, i32 0, i32 1, i32 1
  %_lhs571 = load i32* %elt_ptr570
  ret i32 %_lhs571
}


define void @arr562.init (){

__fresh135:
  %array_ptr558 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array559 = bitcast { i32, [ 0 x i32 ] }* %array_ptr558 to { i32, [ 0 x i32 ] }* 
  %index_ptr560 = getelementptr { i32, [ 0 x i32 ] }* %array559, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr560
  %index_ptr561 = getelementptr { i32, [ 0 x i32 ] }* %array559, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr561
  store { i32, [ 0 x i32 ] }* %array559, { i32, [ 0 x i32 ] }** @arr562
  ret void
}


