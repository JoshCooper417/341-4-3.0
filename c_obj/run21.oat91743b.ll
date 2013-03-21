declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh42:
  ret void
}


define i32 @program (i32 %argc136, { i32, [ 0 x i8* ] }* %argv134){

__fresh41:
  %argc_slot137 = alloca i32
  store i32 %argc136, i32* %argc_slot137
  %argv_slot135 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv134, { i32, [ 0 x i8* ] }** %argv_slot135
  %array_ptr138 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array139 = bitcast { i32, [ 0 x i32 ] }* %array_ptr138 to { i32, [ 0 x i32 ] }* 
  %index_ptr140 = getelementptr { i32, [ 0 x i32 ] }* %array139, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr140
  %index_ptr141 = getelementptr { i32, [ 0 x i32 ] }* %array139, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr141
  %i142 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array139, { i32, [ 0 x i32 ] }** %i142
  %array_dereferenced143 = load { i32, [ 0 x i32 ] }** %i142
  %len_ptr144 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced143, i32 0, i32 0
  %len145 = load i32* %len_ptr144
  call void @oat_array_bounds_check( i32 %len145, i32 0 )
  %elt_ptr146 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced143, i32 0, i32 1, i32 0
  %_lhs147 = load i32* %elt_ptr146
  ret i32 %_lhs147
}


