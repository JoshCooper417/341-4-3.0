declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh235:
  ret void
}


define i32 @program (i32 %argc1291, { i32, [ 0 x i8* ] }* %argv1289){

__fresh234:
  %argc_slot1292 = alloca i32
  store i32 %argc1291, i32* %argc_slot1292
  %argv_slot1290 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1289, { i32, [ 0 x i8* ] }** %argv_slot1290
  %ret1293 = call i32 @f ( i32 5 )
  ret i32 %ret1293
}


define i32 @f (i32 %i1278){

__fresh231:
  %i_slot1279 = alloca i32
  store i32 %i1278, i32* %i_slot1279
  %r1280 = alloca i32
  store i32 0, i32* %r1280
  %_lhs1281 = load i32* %i_slot1279
  %bop1282 = icmp eq i32 %_lhs1281, 0
  br i1 %bop1282, label %__then230, label %__else229

__fresh232:
  br label %__then230

__then230:
  store i32 1, i32* %r1280
  br label %__merge228

__fresh233:
  br label %__else229

__else229:
  %_lhs1283 = load i32* %i_slot1279
  %_lhs1284 = load i32* %i_slot1279
  %bop1285 = sub i32 %_lhs1284, 1
  %ret1286 = call i32 @f ( i32 %bop1285 )
  %bop1287 = mul i32 %_lhs1283, %ret1286
  store i32 %bop1287, i32* %r1280
  br label %__merge228

__merge228:
  %_lhs1288 = load i32* %r1280
  ret i32 %_lhs1288
}


