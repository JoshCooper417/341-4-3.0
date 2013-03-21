declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i138 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by i138.init
define void @oat_init (){

__fresh33:
  call void @i138.init(  )
  ret void
}


define i32 @program (i32 %argc141, { i32, [ 0 x i8* ] }* %argv139){

__fresh32:
  %argc_slot142 = alloca i32
  store i32 %argc141, i32* %argc_slot142
  %argv_slot140 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv139, { i32, [ 0 x i8* ] }** %argv_slot140
  %len_ptr143 = getelementptr { i32, [ 0 x i32 ] }** @i138, i32 0, i32 0
  %len144 = load i32* %len_ptr143
  call void @oat_array_bounds_check( i32 %len144, i32 0 )
  %array_dereferenced145 = load { i32, [ 0 x i32 ] }** @i138
  %elt_ptr146 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced145, i32 0, i32 1, i32 0
  %_lhs147 = load i32* %elt_ptr146
  ret i32 %_lhs147
}


define void @i138.init (){

__fresh31:
  %array_ptr134 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array135 = bitcast { i32, [ 0 x i32 ] }* %array_ptr134 to { i32, [ 0 x i32 ] }* 
  %index_ptr136 = getelementptr { i32, [ 0 x i32 ] }* %array135, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr136
  %index_ptr137 = getelementptr { i32, [ 0 x i32 ] }* %array135, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr137
  store { i32, [ 0 x i32 ] }* %array135, { i32, [ 0 x i32 ] }** @i138
  ret void
}


