declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh135:
  ret void
}


define i32 @program (i32 %argc1199, { i32, [ 0 x i8* ] }* %argv1197){

__fresh134:
  %argc_slot1200 = alloca i32
  store i32 %argc1199, i32* %argc_slot1200
  %argv_slot1198 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1197, { i32, [ 0 x i8* ] }** %argv_slot1198
  %array_ptr1201 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1202 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1201 to { i32, [ 0 x i32 ] }* 
  %index_ptr1203 = getelementptr { i32, [ 0 x i32 ] }* %array1202, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1203
  %index_ptr1204 = getelementptr { i32, [ 0 x i32 ] }* %array1202, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1204
  %index_ptr1205 = getelementptr { i32, [ 0 x i32 ] }* %array1202, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1205
  %arr1206 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1202, { i32, [ 0 x i32 ] }** %arr1206
  %_lhs1207 = load { i32, [ 0 x i32 ] }** %arr1206
  %len_ptr1208 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1207, i32 0, i32 0
  %len1209 = load i32* %len_ptr1208
  %len1210 = alloca i32
  store i32 %len1209, i32* %len1210
  %_lhs1211 = load i32* %len1210
  ret i32 %_lhs1211
}


