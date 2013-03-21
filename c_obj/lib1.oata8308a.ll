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


define i32 @program (i32 %argc1210, { i32, [ 0 x i8* ] }* %argv1208){

__fresh134:
  %argc_slot1211 = alloca i32
  store i32 %argc1210, i32* %argc_slot1211
  %argv_slot1209 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1208, { i32, [ 0 x i8* ] }** %argv_slot1209
  %array_ptr1212 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1213 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1212 to { i32, [ 0 x i32 ] }* 
  %index_ptr1214 = getelementptr { i32, [ 0 x i32 ] }* %array1213, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1214
  %index_ptr1215 = getelementptr { i32, [ 0 x i32 ] }* %array1213, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1215
  %index_ptr1216 = getelementptr { i32, [ 0 x i32 ] }* %array1213, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1216
  %arr1217 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1213, { i32, [ 0 x i32 ] }** %arr1217
  %_lhs1218 = load { i32, [ 0 x i32 ] }** %arr1217
  %len_ptr1219 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1218, i32 0, i32 0
  %len1220 = load i32* %len_ptr1219
  %len1221 = alloca i32
  store i32 %len1220, i32* %len1221
  %_lhs1222 = load i32* %len1221
  ret i32 %_lhs1222
}


