declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3277 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr3277.init
define void @oat_init (){

__fresh1200:
  call void @arr3277.init(  )
  ret void
}


define i32 @program (i32 %argc3280, { i32, [ 0 x i8* ] }* %argv3278){

__fresh1199:
  %argc_slot3281 = alloca i32
  store i32 %argc3280, i32* %argc_slot3281
  %argv_slot3279 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3278, { i32, [ 0 x i8* ] }** %argv_slot3279
  %array_dereferenced3282 = load { i32, [ 0 x i32 ] }** @arr3277
  %len_ptr3283 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3282, i32 0, i32 0
  %len3284 = load i32* %len_ptr3283
  call void @oat_array_bounds_check( i32 %len3284, i32 2 )
  %elt_ptr3285 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3282, i32 0, i32 1, i32 2
  %_lhs3286 = load i32* %elt_ptr3285
  ret i32 %_lhs3286
}


define void @arr3277.init (){

__fresh1198:
  %array_ptr3273 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3274 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3273 to { i32, [ 0 x i32 ] }* 
  %index_ptr3275 = getelementptr { i32, [ 0 x i32 ] }* %array3274, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3275
  %index_ptr3276 = getelementptr { i32, [ 0 x i32 ] }* %array3274, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3276
  store { i32, [ 0 x i32 ] }* %array3274, { i32, [ 0 x i32 ] }** @arr3277
  ret void
}


