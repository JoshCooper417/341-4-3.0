declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3296 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr3296.init
define void @oat_init (){

__fresh584:
  call void @arr3296.init(  )
  ret void
}


define i32 @program (i32 %argc3299, { i32, [ 0 x i8* ] }* %argv3297){

__fresh583:
  %argc_slot3300 = alloca i32
  store i32 %argc3299, i32* %argc_slot3300
  %argv_slot3298 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3297, { i32, [ 0 x i8* ] }** %argv_slot3298
  %len_ptr3301 = getelementptr { i32, [ 0 x i32 ] }** @arr3296, i32 0, i32 0
  %len3302 = load i32* %len_ptr3301
  call void @oat_array_bounds_check( i32 %len3302, i32 2 )
  %array_dereferenced3303 = load { i32, [ 0 x i32 ] }** @arr3296
  %elt_ptr3304 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3303, i32 0, i32 1, i32 2
  %_lhs3305 = load i32* %elt_ptr3304
  ret i32 %_lhs3305
}


define void @arr3296.init (){

__fresh582:
  %array_ptr3292 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3293 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3292 to { i32, [ 0 x i32 ] }* 
  %index_ptr3294 = getelementptr { i32, [ 0 x i32 ] }* %array3293, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3294
  %index_ptr3295 = getelementptr { i32, [ 0 x i32 ] }* %array3293, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3295
  store { i32, [ 0 x i32 ] }* %array3293, { i32, [ 0 x i32 ] }** @arr3296
  ret void
}


