declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a142 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a142.init
define void @oat_init (){

__fresh36:
  call void @a142.init(  )
  ret void
}


define i32 @program (i32 %argc145, { i32, [ 0 x i8* ] }* %argv143){

__fresh35:
  %argc_slot146 = alloca i32
  store i32 %argc145, i32* %argc_slot146
  %argv_slot144 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv143, { i32, [ 0 x i8* ] }** %argv_slot144
  %_lhs147 = load { i32, [ 0 x i32 ] }** @a142
  ret { i32, [ 0 x i32 ] }* %_lhs147
}


define void @a142.init (){

__fresh34:
  %array_ptr132 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array133 = bitcast { i32, [ 0 x i32 ] }* %array_ptr132 to { i32, [ 0 x i32 ] }* 
  %bop134 = mul i32 12, 7
  %bop135 = add i32 %bop134, 13
  %bop136 = ashr i32 %bop135, 2
  %index_ptr137 = getelementptr { i32, [ 0 x i32 ] }* %array133, i32 0, i32 1, i32 0
  store i32 %bop136, i32* %index_ptr137
  %bop138 = sub i32 9, 4
  %index_ptr139 = getelementptr { i32, [ 0 x i32 ] }* %array133, i32 0, i32 1, i32 1
  store i32 %bop138, i32* %index_ptr139
  %bop140 = add i32 5, 5
  %index_ptr141 = getelementptr { i32, [ 0 x i32 ] }* %array133, i32 0, i32 1, i32 2
  store i32 %bop140, i32* %index_ptr141
  store { i32, [ 0 x i32 ] }* %array133, { i32, [ 0 x i32 ] }** @a142
  ret void
}


