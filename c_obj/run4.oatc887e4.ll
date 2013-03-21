declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3470 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr3470.init
define void @oat_init (){

__fresh740:
  call void @arr3470.init(  )
  ret void
}


define i32 @program (i32 %argc3473, { i32, [ 0 x i8* ] }* %argv3471){

__fresh739:
  %argc_slot3474 = alloca i32
  store i32 %argc3473, i32* %argc_slot3474
  %argv_slot3472 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3471, { i32, [ 0 x i8* ] }** %argv_slot3472
  %len_ptr3475 = getelementptr { i32, [ 0 x i32 ] }** @arr3470, i32 0, i32 0
  %len3476 = load i32* %len_ptr3475
  call void @oat_array_bounds_check( i32 %len3476, i32 2 )
  %array_dereferenced3477 = load { i32, [ 0 x i32 ] }** @arr3470
  %elt_ptr3478 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3477, i32 0, i32 1, i32 2
  %_lhs3479 = load i32* %elt_ptr3478
  ret i32 %_lhs3479
}


define void @arr3470.init (){

__fresh738:
  %array_ptr3466 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3467 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3466 to { i32, [ 0 x i32 ] }* 
  %index_ptr3468 = getelementptr { i32, [ 0 x i32 ] }* %array3467, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3468
  %index_ptr3469 = getelementptr { i32, [ 0 x i32 ] }* %array3467, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3469
  store { i32, [ 0 x i32 ] }* %array3467, { i32, [ 0 x i32 ] }** @arr3470
  ret void
}


