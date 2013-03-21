declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr566 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr566.init
define void @oat_init (){

__fresh219:
  call void @arr566.init(  )
  ret void
}


define i32 @program (i32 %argc569, { i32, [ 0 x i8* ] }* %argv567){

__fresh218:
  %argc_slot570 = alloca i32
  store i32 %argc569, i32* %argc_slot570
  %argv_slot568 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv567, { i32, [ 0 x i8* ] }** %argv_slot568
  %array_dereferenced571 = load { i32, [ 0 x i32 ] }** @arr566
  %len_ptr572 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced571, i32 0, i32 0
  %len573 = load i32* %len_ptr572
  call void @oat_array_bounds_check( i32 %len573, i32 1 )
  %elt_ptr574 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced571, i32 0, i32 1, i32 1
  %_lhs575 = load i32* %elt_ptr574
  ret i32 %_lhs575
}


define void @arr566.init (){

__fresh217:
  %array_ptr562 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array563 = bitcast { i32, [ 0 x i32 ] }* %array_ptr562 to { i32, [ 0 x i32 ] }* 
  %index_ptr564 = getelementptr { i32, [ 0 x i32 ] }* %array563, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr564
  %index_ptr565 = getelementptr { i32, [ 0 x i32 ] }* %array563, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr565
  store { i32, [ 0 x i32 ] }* %array563, { i32, [ 0 x i32 ] }** @arr566
  ret void
}


