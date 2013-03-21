declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3287 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr3287.init
define void @oat_init (){

__fresh1205:
  call void @arr3287.init(  )
  ret void
}


define i32 @program (i32 %argc3290, { i32, [ 0 x i8* ] }* %argv3288){

__fresh1204:
  %argc_slot3291 = alloca i32
  store i32 %argc3290, i32* %argc_slot3291
  %argv_slot3289 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3288, { i32, [ 0 x i8* ] }** %argv_slot3289
  %array_dereferenced3292 = load { i32, [ 0 x i32 ] }** @arr3287
  %len_ptr3293 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3292, i32 0, i32 0
  %len3294 = load i32* %len_ptr3293
  call void @oat_array_bounds_check( i32 %len3294, i32 2 )
  %elt_ptr3295 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3292, i32 0, i32 1, i32 2
  %_lhs3296 = load i32* %elt_ptr3295
  ret i32 %_lhs3296
}


define void @arr3287.init (){

__fresh1203:
  %array_ptr3283 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3284 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3283 to { i32, [ 0 x i32 ] }* 
  %index_ptr3285 = getelementptr { i32, [ 0 x i32 ] }* %array3284, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3285
  %index_ptr3286 = getelementptr { i32, [ 0 x i32 ] }* %array3284, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3286
  store { i32, [ 0 x i32 ] }* %array3284, { i32, [ 0 x i32 ] }** @arr3287
  ret void
}


