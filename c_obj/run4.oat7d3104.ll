declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3297 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr3297.init
define void @oat_init (){

__fresh684:
  call void @arr3297.init(  )
  ret void
}


define i32 @program (i32 %argc3300, { i32, [ 0 x i8* ] }* %argv3298){

__fresh683:
  %argc_slot3301 = alloca i32
  store i32 %argc3300, i32* %argc_slot3301
  %argv_slot3299 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3298, { i32, [ 0 x i8* ] }** %argv_slot3299
  %len_ptr3302 = getelementptr { i32, [ 0 x i32 ] }** @arr3297, i32 0, i32 0
  %len3303 = load i32* %len_ptr3302
  call void @oat_array_bounds_check( i32 %len3303, i32 2 )
  %array_dereferenced3304 = load { i32, [ 0 x i32 ] }** @arr3297
  %elt_ptr3305 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3304, i32 0, i32 1, i32 2
  %_lhs3306 = load i32* %elt_ptr3305
  ret i32 %_lhs3306
}


define void @arr3297.init (){

__fresh682:
  %array_ptr3293 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3294 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3293 to { i32, [ 0 x i32 ] }* 
  %index_ptr3295 = getelementptr { i32, [ 0 x i32 ] }* %array3294, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3295
  %index_ptr3296 = getelementptr { i32, [ 0 x i32 ] }* %array3294, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3296
  store { i32, [ 0 x i32 ] }* %array3294, { i32, [ 0 x i32 ] }** @arr3297
  ret void
}


