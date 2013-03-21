declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3292 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr3292.init
define void @oat_init (){

__fresh664:
  call void @arr3292.init(  )
  ret void
}


define i32 @program (i32 %argc3295, { i32, [ 0 x i8* ] }* %argv3293){

__fresh663:
  %argc_slot3296 = alloca i32
  store i32 %argc3295, i32* %argc_slot3296
  %argv_slot3294 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3293, { i32, [ 0 x i8* ] }** %argv_slot3294
  %len_ptr3297 = getelementptr { i32, [ 0 x i32 ] }** @arr3292, i32 0, i32 0
  %len3298 = load i32* %len_ptr3297
  call void @oat_array_bounds_check( i32 %len3298, i32 2 )
  %array_dereferenced3299 = load { i32, [ 0 x i32 ] }** @arr3292
  %elt_ptr3300 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3299, i32 0, i32 1, i32 2
  %_lhs3301 = load i32* %elt_ptr3300
  ret i32 %_lhs3301
}


define void @arr3292.init (){

__fresh662:
  %array_ptr3288 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3289 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3288 to { i32, [ 0 x i32 ] }* 
  %index_ptr3290 = getelementptr { i32, [ 0 x i32 ] }* %array3289, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3290
  %index_ptr3291 = getelementptr { i32, [ 0 x i32 ] }* %array3289, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3291
  store { i32, [ 0 x i32 ] }* %array3289, { i32, [ 0 x i32 ] }** @arr3292
  ret void
}


