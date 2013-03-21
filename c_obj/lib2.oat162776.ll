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


define i32 @program (i32 %argc1214, { i32, [ 0 x i8* ] }* %argv1212){

__fresh136:
  %argc_slot1215 = alloca i32
  store i32 %argc1214, i32* %argc_slot1215
  %argv_slot1213 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1212, { i32, [ 0 x i8* ] }** %argv_slot1213
  %array_ptr1216 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1217 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1216 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1218 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1219 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1218 to { i32, [ 0 x i32 ] }* 
  %index_ptr1220 = getelementptr { i32, [ 0 x i32 ] }* %array1219, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1220
  %index_ptr1221 = getelementptr { i32, [ 0 x i32 ] }* %array1219, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1221
  %index_ptr1222 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1217, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1219, { i32, [ 0 x i32 ] }** %index_ptr1222
  %array_ptr1223 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1224 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1223 to { i32, [ 0 x i32 ] }* 
  %index_ptr1225 = getelementptr { i32, [ 0 x i32 ] }* %array1224, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1225
  %index_ptr1226 = getelementptr { i32, [ 0 x i32 ] }* %array1224, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1226
  %index_ptr1227 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1217, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1224, { i32, [ 0 x i32 ] }** %index_ptr1227
  %array_ptr1228 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1229 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1228 to { i32, [ 0 x i32 ] }* 
  %index_ptr1230 = getelementptr { i32, [ 0 x i32 ] }* %array1229, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1230
  %index_ptr1231 = getelementptr { i32, [ 0 x i32 ] }* %array1229, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1231
  %index_ptr1232 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1217, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1229, { i32, [ 0 x i32 ] }** %index_ptr1232
  %array_ptr1233 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1234 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1233 to { i32, [ 0 x i32 ] }* 
  %index_ptr1235 = getelementptr { i32, [ 0 x i32 ] }* %array1234, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1235
  %index_ptr1236 = getelementptr { i32, [ 0 x i32 ] }* %array1234, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1236
  %index_ptr1237 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1217, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1234, { i32, [ 0 x i32 ] }** %index_ptr1237
  %arr1238 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1217, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1238
  %_lhs1244 = load [ 0 x { i32, [ 0 x i32 ] }* ]* %elt_ptr1243
  %len_ptr1245 = getelementptr [ 0 x { i32, [ 0 x i32 ] }* ] %_lhs1244, i32 0, i32 0
  %len1246 = load i32* %len_ptr1245
  %len1247 = alloca i32
  store i32 %len1246, i32* %len1247
  %_lhs1248 = load i32* %len1247
  ret i32 %_lhs1248
}


