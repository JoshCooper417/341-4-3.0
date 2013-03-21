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


define i32 @program (i32 %argc1214, { i32, [ 0 x i8* ] }* %argv1212){

__fresh138:
  %argc_slot1215 = alloca i32
  store i32 %argc1214, i32* %argc_slot1215
  %argv_slot1213 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1212, { i32, [ 0 x i8* ] }** %argv_slot1213
  %ret1216 = call i32 @f ( i32 5 )
  ret i32 %ret1216
}


define i32 @f (i32 %i1201){

__fresh135:
  %i_slot1202 = alloca i32
  store i32 %i1201, i32* %i_slot1202
  %r1203 = alloca i32
  store i32 0, i32* %r1203
  %_lhs1204 = load i32* %i_slot1202
  %bop1205 = icmp eq i32 %_lhs1204, 0
  br i1 %bop1205, label %__then134, label %__else133

__fresh136:
  br label %__then134

__then134:
  store i32 1, i32* %r1203
  br label %__merge132

__fresh137:
  br label %__else133

__else133:
  %_lhs1206 = load i32* %i_slot1202
  %_lhs1207 = load i32* %i_slot1202
  %bop1208 = sub i32 %_lhs1207, 1
  %ret1209 = call i32 @f ( i32 %bop1208 )
  %bop1210 = mul i32 %_lhs1206, %ret1209
  store i32 %bop1210, i32* %r1203
  br label %__merge132

__merge132:
  %_lhs1211 = load i32* %r1203
  ret i32 %_lhs1211
}


