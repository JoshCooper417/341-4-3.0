declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh760:
  ret void
}


define i32 @program (i32 %argc3614, { i32, [ 0 x i8* ] }* %argv3612){

__fresh759:
  %argc_slot3615 = alloca i32
  store i32 %argc3614, i32* %argc_slot3615
  %argv_slot3613 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3612, { i32, [ 0 x i8* ] }** %argv_slot3613
  %array_ptr3616 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3617 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3616 to { i32, [ 0 x i32 ] }* 
  %index_ptr3618 = getelementptr { i32, [ 0 x i32 ] }* %array3617, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3618
  %index_ptr3619 = getelementptr { i32, [ 0 x i32 ] }* %array3617, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3619
  %a3620 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3617, { i32, [ 0 x i32 ] }** %a3620
  %unop3621 = sub i32 0, 1
  %len_ptr3622 = getelementptr { i32, [ 0 x i32 ] }** %a3620, i32 0, i32 0
  %len3623 = load i32* %len_ptr3622
  call void @oat_array_bounds_check( i32 %len3623, i32 %unop3621 )
  %array_dereferenced3624 = load { i32, [ 0 x i32 ] }** %a3620
  %elt_ptr3625 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced3624, i32 0, i32 1, i32 %unop3621
  %_lhs3626 = load i32* %elt_ptr3625
  ret i32 %_lhs3626
}


