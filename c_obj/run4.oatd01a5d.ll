declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3514 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr3514.init
define void @oat_init (){

__fresh740:
  call void @arr3514.init(  )
  ret void
}


define i32 @program (i32 %argc3517, { i32, [ 0 x i8* ] }* %argv3515){

__fresh739:
  %argc_slot3518 = alloca i32
  store i32 %argc3517, i32* %argc_slot3518
  %argv_slot3516 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3515, { i32, [ 0 x i8* ] }** %argv_slot3516
  %len_ptr3519 = getelementptr { i32, [ 0 x i32 ] }** @arr3514, i32 0, i32 0
  %len3520 = load i32* %len_ptr3519
  call void @oat_array_bounds_check( i32 %len3520, i32 2 )
  %array_dereferenced3521 = load { i32, [ 0 x i32 ] }** @arr3514
  %elt_ptr3522 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3521, i32 0, i32 1, i32 2
  %_lhs3523 = load i32* %elt_ptr3522
  ret i32 %_lhs3523
}


define void @arr3514.init (){

__fresh738:
  %array_ptr3510 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3511 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3510 to { i32, [ 0 x i32 ] }* 
  %index_ptr3512 = getelementptr { i32, [ 0 x i32 ] }* %array3511, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3512
  %index_ptr3513 = getelementptr { i32, [ 0 x i32 ] }* %array3511, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3513
  store { i32, [ 0 x i32 ] }* %array3511, { i32, [ 0 x i32 ] }** @arr3514
  ret void
}


