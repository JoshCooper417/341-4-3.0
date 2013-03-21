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


define i32 @program (i32 %argc1251, { i32, [ 0 x i8* ] }* %argv1249){

__fresh138:
  %argc_slot1252 = alloca i32
  store i32 %argc1251, i32* %argc_slot1252
  %argv_slot1250 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1249, { i32, [ 0 x i8* ] }** %argv_slot1250
  %array_ptr1253 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1254 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1253 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1255 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1256 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1255 to { i32, [ 0 x i32 ] }* 
  %index_ptr1257 = getelementptr { i32, [ 0 x i32 ] }* %array1256, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1257
  %index_ptr1258 = getelementptr { i32, [ 0 x i32 ] }* %array1256, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1258
  %index_ptr1259 = getelementptr { i32, [ 0 x i32 ] }* %array1256, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1259
  %index_ptr1260 = getelementptr { i32, [ 0 x i32 ] }* %array1256, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1260
  %index_ptr1261 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1254, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1256, { i32, [ 0 x i32 ] }** %index_ptr1261
  %array_ptr1262 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1263 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1262 to { i32, [ 0 x i32 ] }* 
  %index_ptr1264 = getelementptr { i32, [ 0 x i32 ] }* %array1263, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1264
  %index_ptr1265 = getelementptr { i32, [ 0 x i32 ] }* %array1263, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1265
  %index_ptr1266 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1254, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1263, { i32, [ 0 x i32 ] }** %index_ptr1266
  %array_ptr1267 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1268 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1267 to { i32, [ 0 x i32 ] }* 
  %index_ptr1269 = getelementptr { i32, [ 0 x i32 ] }* %array1268, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1269
  %index_ptr1270 = getelementptr { i32, [ 0 x i32 ] }* %array1268, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1270
  %index_ptr1271 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1254, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1268, { i32, [ 0 x i32 ] }** %index_ptr1271
  %array_ptr1272 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1273 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1272 to { i32, [ 0 x i32 ] }* 
  %index_ptr1274 = getelementptr { i32, [ 0 x i32 ] }* %array1273, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1274
  %index_ptr1275 = getelementptr { i32, [ 0 x i32 ] }* %array1273, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1275
  %index_ptr1276 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1254, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1273, { i32, [ 0 x i32 ] }** %index_ptr1276
  %arr1277 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1254, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1277
  %_lhs1278 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1277
  %len_ptr1279 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1278, i32 0, i32 0
  %len1280 = load i32* %len_ptr1279
  call void @oat_array_bounds_check( i32 %len1280, i32 0 )
  %array_dereferenced1281 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1277
  %elt_ptr1282 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1277, i32 0, i32 1, i32 0
  %_lhs1283 = load [ 0 x { i32, [ 0 x i32 ] }* ]* %elt_ptr1282
  %len_ptr1284 = getelementptr [ 0 x { i32, [ 0 x i32 ] }* ] %_lhs1283, i32 0, i32 0
  %len1285 = load i32* %len_ptr1284
  %len1286 = alloca i32
  store i32 %len1285, i32* %len1286
  %_lhs1287 = load i32* %len1286
  ret i32 %_lhs1287
}


