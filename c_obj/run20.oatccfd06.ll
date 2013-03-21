declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh30:
  ret void
}


define i32 @program (i32 %argc110, { i32, [ 0 x i8* ] }* %argv108){

__fresh29:
  %argc_slot111 = alloca i32
  store i32 %argc110, i32* %argc_slot111
  %argv_slot109 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv108, { i32, [ 0 x i8* ] }** %argv_slot109
  %array_ptr112 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array113 = bitcast { i32, [ 0 x i32 ] }* %array_ptr112 to { i32, [ 0 x i32 ] }* 
  %unop114 = sub i32 0, 1
  %index_ptr115 = getelementptr { i32, [ 0 x i32 ] }* %array113, i32 0, i32 1, i32 0
  store i32 %unop114, i32* %index_ptr115
  %unop116 = sub i32 0, 100
  %index_ptr117 = getelementptr { i32, [ 0 x i32 ] }* %array113, i32 0, i32 1, i32 1
  store i32 %unop116, i32* %index_ptr117
  %ret118 = call i32 @f (  )
  %index_ptr119 = getelementptr { i32, [ 0 x i32 ] }* %array113, i32 0, i32 1, i32 2
  store i32 %ret118, i32* %index_ptr119
  %a120 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array113, { i32, [ 0 x i32 ] }** %a120
  %_lhs121 = load { i32, [ 0 x i32 ] }** %a120
  ret { i32, [ 0 x i32 ] }* %_lhs121
}


define i32 @f (){

__fresh28:
  ret i32 19
}


