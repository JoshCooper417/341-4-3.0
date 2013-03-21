declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr613 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr613.init
define void @oat_init (){

__fresh155:
  call void @arr613.init(  )
  ret void
}


define i32 @program (i32 %argc616, { i32, [ 0 x i8* ] }* %argv614){

__fresh154:
  %argc_slot617 = alloca i32
  store i32 %argc616, i32* %argc_slot617
  %argv_slot615 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv614, { i32, [ 0 x i8* ] }** %argv_slot615
  %len_ptr618 = getelementptr { i32, [ 0 x i32 ] }** @arr613, i32 0, i32 0
  %len619 = load i32* %len_ptr618
  call void @oat_array_bounds_check( i32 %len619, i32 1 )
  %array_dereferenced620 = load { i32, [ 0 x i32 ] }** @arr613
  %elt_ptr621 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced620, i32 0, i32 1, i32 1
  %_lhs622 = load i32* %elt_ptr621
  ret i32 %_lhs622
}


define void @arr613.init (){

__fresh153:
  %array_ptr609 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array610 = bitcast { i32, [ 0 x i32 ] }* %array_ptr609 to { i32, [ 0 x i32 ] }* 
  %index_ptr611 = getelementptr { i32, [ 0 x i32 ] }* %array610, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr611
  %index_ptr612 = getelementptr { i32, [ 0 x i32 ] }* %array610, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr612
  store { i32, [ 0 x i32 ] }* %array610, { i32, [ 0 x i32 ] }** @arr613
  ret void
}


