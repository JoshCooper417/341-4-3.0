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


define i32 @program (i32 %argc1244, { i32, [ 0 x i8* ] }* %argv1242){

__fresh138:
  %argc_slot1245 = alloca i32
  store i32 %argc1244, i32* %argc_slot1245
  %argv_slot1243 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1242, { i32, [ 0 x i8* ] }** %argv_slot1243
  %ret1246 = call i32 @f ( i32 5 )
  ret i32 %ret1246
}


define i32 @f (i32 %i1231){

__fresh135:
  %i_slot1232 = alloca i32
  store i32 %i1231, i32* %i_slot1232
  %r1233 = alloca i32
  store i32 0, i32* %r1233
  %_lhs1234 = load i32* %i_slot1232
  %bop1235 = icmp eq i32 %_lhs1234, 0
  br i1 %bop1235, label %__then134, label %__else133

__fresh136:
  br label %__then134

__then134:
  store i32 1, i32* %r1233
  br label %__merge132

__fresh137:
  br label %__else133

__else133:
  %_lhs1236 = load i32* %i_slot1232
  %_lhs1237 = load i32* %i_slot1232
  %bop1238 = sub i32 %_lhs1237, 1
  %ret1239 = call i32 @f ( i32 %bop1238 )
  %bop1240 = mul i32 %_lhs1236, %ret1239
  store i32 %bop1240, i32* %r1233
  br label %__merge132

__merge132:
  %_lhs1241 = load i32* %r1233
  ret i32 %_lhs1241
}


