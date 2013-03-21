declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1211 = global { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* zeroinitializer, align 4		; initialized by str1211.init
define void @oat_init (){

__fresh266:
  call void @str1211.init(  )
  ret void
}


define i32 @program (i32 %argc1214, { i32, [ 0 x i8* ] }* %argv1212){

__fresh265:
  %argc_slot1215 = alloca i32
  store i32 %argc1214, i32* %argc_slot1215
  %argv_slot1213 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1212, { i32, [ 0 x i8* ] }** %argv_slot1213
  %len_ptr1216 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** @str1211, i32 0, i32 0
  %len1217 = load i32* %len_ptr1216
  call void @oat_array_bounds_check( i32 %len1217, i32 0 )
  %array_dereferenced1218 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** @str1211
  %elt_ptr1219 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1218, i32 0, i32 1, i32 0
  %len_ptr1220 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1219, i32 0, i32 0
  %len1221 = load i32* %len_ptr1220
  call void @oat_array_bounds_check( i32 %len1221, i32 0 )
  %array_dereferenced1222 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1219
  %elt_ptr1223 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1222, i32 0, i32 1, i32 0
  %len_ptr1224 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1223, i32 0, i32 0
  %len1225 = load i32* %len_ptr1224
  call void @oat_array_bounds_check( i32 %len1225, i32 0 )
  %array_dereferenced1226 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1223
  %elt_ptr1227 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1226, i32 0, i32 1, i32 0
  %len_ptr1228 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1227, i32 0, i32 0
  %len1229 = load i32* %len_ptr1228
  call void @oat_array_bounds_check( i32 %len1229, i32 0 )
  %array_dereferenced1230 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1227
  %elt_ptr1231 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1230, i32 0, i32 1, i32 0
  %len_ptr1232 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1231, i32 0, i32 0
  %len1233 = load i32* %len_ptr1232
  call void @oat_array_bounds_check( i32 %len1233, i32 0 )
  %array_dereferenced1234 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1231
  %elt_ptr1235 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1234, i32 0, i32 1, i32 0
  %len_ptr1236 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1235, i32 0, i32 0
  %len1237 = load i32* %len_ptr1236
  call void @oat_array_bounds_check( i32 %len1237, i32 0 )
  %array_dereferenced1238 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1235
  %elt_ptr1239 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1238, i32 0, i32 1, i32 0
  %len_ptr1240 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1239, i32 0, i32 0
  %len1241 = load i32* %len_ptr1240
  call void @oat_array_bounds_check( i32 %len1241, i32 0 )
  %array_dereferenced1242 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1239
  %elt_ptr1243 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1242, i32 0, i32 1, i32 0
  %len_ptr1244 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1243, i32 0, i32 0
  %len1245 = load i32* %len_ptr1244
  call void @oat_array_bounds_check( i32 %len1245, i32 0 )
  %array_dereferenced1246 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1243
  %elt_ptr1247 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1246, i32 0, i32 1, i32 0
  %len_ptr1248 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1247, i32 0, i32 0
  %len1249 = load i32* %len_ptr1248
  call void @oat_array_bounds_check( i32 %len1249, i32 0 )
  %array_dereferenced1250 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1247
  %elt_ptr1251 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1250, i32 0, i32 1, i32 0
  %len_ptr1252 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }** %elt_ptr1251, i32 0, i32 0
  %len1253 = load i32* %len_ptr1252
  call void @oat_array_bounds_check( i32 %len1253, i32 0 )
  %array_dereferenced1254 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }** %elt_ptr1251
  %elt_ptr1255 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1254, i32 0, i32 1, i32 0
  %len_ptr1256 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }** %elt_ptr1255, i32 0, i32 0
  %len1257 = load i32* %len_ptr1256
  call void @oat_array_bounds_check( i32 %len1257, i32 0 )
  %array_dereferenced1258 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }** %elt_ptr1255
  %elt_ptr1259 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* %array_dereferenced1258, i32 0, i32 1, i32 0
  %len_ptr1260 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }** %elt_ptr1259, i32 0, i32 0
  %len1261 = load i32* %len_ptr1260
  call void @oat_array_bounds_check( i32 %len1261, i32 0 )
  %array_dereferenced1262 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }** %elt_ptr1259
  %elt_ptr1263 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* %array_dereferenced1262, i32 0, i32 1, i32 0
  %len_ptr1264 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** %elt_ptr1263, i32 0, i32 0
  %len1265 = load i32* %len_ptr1264
  call void @oat_array_bounds_check( i32 %len1265, i32 0 )
  %array_dereferenced1266 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** %elt_ptr1263
  %elt_ptr1267 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array_dereferenced1266, i32 0, i32 1, i32 0
  %len_ptr1268 = getelementptr { i32, [ 0 x i8* ] }** %elt_ptr1267, i32 0, i32 0
  %len1269 = load i32* %len_ptr1268
  call void @oat_array_bounds_check( i32 %len1269, i32 0 )
  %array_dereferenced1270 = load { i32, [ 0 x i8* ] }** %elt_ptr1267
  %elt_ptr1271 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced1270, i32 0, i32 1, i32 0
  %_lhs1272 = load i8** %elt_ptr1271
  call void @print_string( i8* %_lhs1272 )
  ret i32 0
}


define void @str1211.init (){

__fresh264:
  store i32 1, i32* %i1111
  store { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* %array1206, { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** @str1211
  ret void
}


