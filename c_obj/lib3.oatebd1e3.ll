declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh139:
  ret void
}


define i32 @program (i32 %argc1262, { i32, [ 0 x i8* ] }* %argv1260){

__fresh138:
  %argc_slot1263 = alloca i32
  store i32 %argc1262, i32* %argc_slot1263
  %argv_slot1261 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1260, { i32, [ 0 x i8* ] }** %argv_slot1261
  %array_ptr1264 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1265 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1264 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1266 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1267 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1266 to { i32, [ 0 x i32 ] }* 
  %index_ptr1268 = getelementptr { i32, [ 0 x i32 ] }* %array1267, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1268
  %index_ptr1269 = getelementptr { i32, [ 0 x i32 ] }* %array1267, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1269
  %index_ptr1270 = getelementptr { i32, [ 0 x i32 ] }* %array1267, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1270
  %index_ptr1271 = getelementptr { i32, [ 0 x i32 ] }* %array1267, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1271
  %index_ptr1272 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1265, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1267, { i32, [ 0 x i32 ] }** %index_ptr1272
  %array_ptr1273 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1274 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1273 to { i32, [ 0 x i32 ] }* 
  %index_ptr1275 = getelementptr { i32, [ 0 x i32 ] }* %array1274, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1275
  %index_ptr1276 = getelementptr { i32, [ 0 x i32 ] }* %array1274, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1276
  %index_ptr1277 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1265, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1274, { i32, [ 0 x i32 ] }** %index_ptr1277
  %array_ptr1278 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1279 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1278 to { i32, [ 0 x i32 ] }* 
  %index_ptr1280 = getelementptr { i32, [ 0 x i32 ] }* %array1279, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1280
  %index_ptr1281 = getelementptr { i32, [ 0 x i32 ] }* %array1279, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1281
  %index_ptr1282 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1265, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1279, { i32, [ 0 x i32 ] }** %index_ptr1282
  %array_ptr1283 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1284 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1283 to { i32, [ 0 x i32 ] }* 
  %index_ptr1285 = getelementptr { i32, [ 0 x i32 ] }* %array1284, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1285
  %index_ptr1286 = getelementptr { i32, [ 0 x i32 ] }* %array1284, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1286
  %index_ptr1287 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1265, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1284, { i32, [ 0 x i32 ] }** %index_ptr1287
  %arr1288 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1265, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1288
  %_lhs1289 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1288
  %len_ptr1290 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1289, i32 0, i32 0
  %len1291 = load i32* %len_ptr1290
  call void @oat_array_bounds_check( i32 %len1291, i32 0 )
  %array_dereferenced1292 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1288
  %elt_ptr1293 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1288, i32 0, i32 1, i32 0
  %_lhs1294 = load [ 0 x { i32, [ 0 x i32 ] }* ]* %elt_ptr1293
  %len_ptr1295 = getelementptr [ 0 x { i32, [ 0 x i32 ] }* ] %_lhs1294, i32 0, i32 0
  %len1296 = load i32* %len_ptr1295
  %len1297 = alloca i32
  store i32 %len1296, i32* %len1297
  %_lhs1298 = load i32* %len1297
  ret i32 %_lhs1298
}


