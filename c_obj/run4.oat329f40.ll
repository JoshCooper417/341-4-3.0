declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2257 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr2257.init
define void @oat_init (){

__fresh325:
  call void @arr2257.init(  )
  ret void
}


define i32 @program (i32 %argc2260, { i32, [ 0 x i8* ] }* %argv2258){

__fresh324:
  %argc_slot2261 = alloca i32
  store i32 %argc2260, i32* %argc_slot2261
  %argv_slot2259 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2258, { i32, [ 0 x i8* ] }** %argv_slot2259
  %_lhs2267 = load [ 0 x i32 ]* %elt_ptr2266
  ret [ 0 x i32 ] %_lhs2267
}


define void @arr2257.init (){

__fresh323:
  %array_ptr2253 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2254 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2253 to { i32, [ 0 x i32 ] }* 
  %index_ptr2255 = getelementptr { i32, [ 0 x i32 ] }* %array2254, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2255
  %index_ptr2256 = getelementptr { i32, [ 0 x i32 ] }* %array2254, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2256
  store { i32, [ 0 x i32 ] }* %array2254, { i32, [ 0 x i32 ] }** @arr2257
  ret void
}


