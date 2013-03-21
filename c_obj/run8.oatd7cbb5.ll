declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh134:
  ret void
}


define i32 @program (i32 %argc508, { i32, [ 0 x i8* ] }* %argv506){

__fresh133:
  %argc_slot509 = alloca i32
  store i32 %argc508, i32* %argc_slot509
  %argv_slot507 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv506, { i32, [ 0 x i8* ] }** %argv_slot507
  %array_ptr510 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array511 = bitcast { i32, [ 0 x i32 ] }* %array_ptr510 to { i32, [ 0 x i32 ] }* 
  %index_ptr512 = getelementptr { i32, [ 0 x i32 ] }* %array511, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr512
  %index_ptr513 = getelementptr { i32, [ 0 x i32 ] }* %array511, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr513
  %arr514 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array511, { i32, [ 0 x i32 ] }** %arr514
  %_lhs515 = load { i32, [ 0 x i32 ] }** %arr514
  ret { i32, [ 0 x i32 ] }* %_lhs515
}


