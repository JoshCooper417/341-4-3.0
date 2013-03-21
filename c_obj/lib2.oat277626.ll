declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh137:
  ret void
}


define i32 @program (i32 %argc1225, { i32, [ 0 x i8* ] }* %argv1223){

__fresh136:
  %argc_slot1226 = alloca i32
  store i32 %argc1225, i32* %argc_slot1226
  %argv_slot1224 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1223, { i32, [ 0 x i8* ] }** %argv_slot1224
  %array_ptr1227 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1228 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1227 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1229 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1230 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1229 to { i32, [ 0 x i32 ] }* 
  %index_ptr1231 = getelementptr { i32, [ 0 x i32 ] }* %array1230, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1231
  %index_ptr1232 = getelementptr { i32, [ 0 x i32 ] }* %array1230, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1232
  %index_ptr1233 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1228, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1230, { i32, [ 0 x i32 ] }** %index_ptr1233
  %array_ptr1234 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1235 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1234 to { i32, [ 0 x i32 ] }* 
  %index_ptr1236 = getelementptr { i32, [ 0 x i32 ] }* %array1235, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1236
  %index_ptr1237 = getelementptr { i32, [ 0 x i32 ] }* %array1235, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1237
  %index_ptr1238 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1228, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1235, { i32, [ 0 x i32 ] }** %index_ptr1238
  %array_ptr1239 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1240 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1239 to { i32, [ 0 x i32 ] }* 
  %index_ptr1241 = getelementptr { i32, [ 0 x i32 ] }* %array1240, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1241
  %index_ptr1242 = getelementptr { i32, [ 0 x i32 ] }* %array1240, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1242
  %index_ptr1243 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1228, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1240, { i32, [ 0 x i32 ] }** %index_ptr1243
  %array_ptr1244 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1245 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1244 to { i32, [ 0 x i32 ] }* 
  %index_ptr1246 = getelementptr { i32, [ 0 x i32 ] }* %array1245, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1246
  %index_ptr1247 = getelementptr { i32, [ 0 x i32 ] }* %array1245, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1247
  %index_ptr1248 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1228, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1245, { i32, [ 0 x i32 ] }** %index_ptr1248
  %arr1249 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1228, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1249
  %_lhs1250 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1249
  %len_ptr1251 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1250, i32 0, i32 0
  %len1252 = load i32* %len_ptr1251
  call void @oat_array_bounds_check( i32 %len1252, i32 2 )
  %array_dereferenced1253 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1249
  %elt_ptr1254 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1249, i32 0, i32 1, i32 2
  %_lhs1255 = load [ 0 x { i32, [ 0 x i32 ] }* ]* %elt_ptr1254
  %len_ptr1256 = getelementptr [ 0 x { i32, [ 0 x i32 ] }* ] %_lhs1255, i32 0, i32 0
  %len1257 = load i32* %len_ptr1256
  %len1258 = alloca i32
  store i32 %len1257, i32* %len1258
  %_lhs1259 = load i32* %len1258
  ret i32 %_lhs1259
}


