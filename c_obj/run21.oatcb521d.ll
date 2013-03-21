declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i141 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by i141.init
define void @oat_init (){

__fresh33:
  call void @i141.init(  )
  ret void
}


define i32 @program (i32 %argc144, { i32, [ 0 x i8* ] }* %argv142){

__fresh32:
  %argc_slot145 = alloca i32
  store i32 %argc144, i32* %argc_slot145
  %argv_slot143 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv142, { i32, [ 0 x i8* ] }** %argv_slot143
  %_lhs146 = load { i32, [ 0 x i32 ] }** @i141
  %len_ptr147 = getelementptr { i32, [ 0 x i32 ] }* %_lhs146, i32 0, i32 0
  %len148 = load i32* %len_ptr147
  call void @oat_array_bounds_check( i32 %len148, i32 0 )
  %array_dereferenced149 = load { i32, [ 0 x i32 ] }** @i141
  %_lhs151 = load i32* %elt_ptr150
  ret i32 %_lhs151
}


define void @i141.init (){

__fresh31:
  %array_ptr137 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array138 = bitcast { i32, [ 0 x i32 ] }* %array_ptr137 to { i32, [ 0 x i32 ] }* 
  %index_ptr139 = getelementptr { i32, [ 0 x i32 ] }* %array138, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr139
  %index_ptr140 = getelementptr { i32, [ 0 x i32 ] }* %array138, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr140
  store { i32, [ 0 x i32 ] }* %array138, { i32, [ 0 x i32 ] }** @i141
  ret void
}


