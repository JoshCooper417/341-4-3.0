declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh142:
  ret void
}


define i32 @program (i32 %argc1287, { i32, [ 0 x i8* ] }* %argv1285){

__fresh141:
  %argc_slot1288 = alloca i32
  store i32 %argc1287, i32* %argc_slot1288
  %argv_slot1286 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1285, { i32, [ 0 x i8* ] }** %argv_slot1286
  %ret1289 = call i32 @f ( i32 5 )
  ret i32 %ret1289
}


define i32 @f (i32 %i1274){

__fresh138:
  %i_slot1275 = alloca i32
  store i32 %i1274, i32* %i_slot1275
  %r1276 = alloca i32
  store i32 0, i32* %r1276
  %_lhs1277 = load i32* %i_slot1275
  %bop1278 = icmp eq i32 %_lhs1277, 0
  br i1 %bop1278, label %__then137, label %__else136

__fresh139:
  br label %__then137

__then137:
  store i32 1, i32* %r1276
  br label %__merge135

__fresh140:
  br label %__else136

__else136:
  %_lhs1279 = load i32* %i_slot1275
  %_lhs1280 = load i32* %i_slot1275
  %bop1281 = sub i32 %_lhs1280, 1
  %ret1282 = call i32 @f ( i32 %bop1281 )
  %bop1283 = mul i32 %_lhs1279, %ret1282
  store i32 %bop1283, i32* %r1276
  br label %__merge135

__merge135:
  %_lhs1284 = load i32* %r1276
  ret i32 %_lhs1284
}


