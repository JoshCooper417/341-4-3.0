declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i126 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by i126.init
define void @oat_init (){

__fresh33:
  call void @i126.init(  )
  ret void
}


define i32 @program (i32 %argc129, { i32, [ 0 x i8* ] }* %argv127){

__fresh32:
  %argc_slot130 = alloca i32
  store i32 %argc129, i32* %argc_slot130
  %argv_slot128 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv127, { i32, [ 0 x i8* ] }** %argv_slot128
  %_lhs131 = load { i32, [ 0 x i32 ] }** @i126
  ret { i32, [ 0 x i32 ] }* %_lhs131
}


define void @i126.init (){

__fresh31:
  %array_ptr122 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array123 = bitcast { i32, [ 0 x i32 ] }* %array_ptr122 to { i32, [ 0 x i32 ] }* 
  %index_ptr124 = getelementptr { i32, [ 0 x i32 ] }* %array123, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr124
  %index_ptr125 = getelementptr { i32, [ 0 x i32 ] }* %array123, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr125
  store { i32, [ 0 x i32 ] }* %array123, { i32, [ 0 x i32 ] }** @i126
  ret void
}


