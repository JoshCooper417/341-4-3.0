declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1227.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1227 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1227.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh224:
  ret void
}


define i32 @program (i32 %argc1225, { i32, [ 0 x i8* ] }* %argv1223){

__fresh219:
  %argc_slot1226 = alloca i32
  store i32 %argc1225, i32* %argc_slot1226
  %argv_slot1224 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1223, { i32, [ 0 x i8* ] }** %argv_slot1224
  %strval1228 = load i8** @_oat_string1227
  %ret1229 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1228 )
  %arr1230 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1229, { i32, [ 0 x i32 ] }** %arr1230
  %sum1231 = alloca i32
  store i32 0, i32* %sum1231
  %i1232 = alloca i32
  store i32 0, i32* %i1232
  br label %__cond215

__cond215:
  %_lhs1233 = load i32* %i1232
  %bop1234 = icmp slt i32 %_lhs1233, 10
  br i1 %bop1234, label %__body214, label %__post213

__fresh220:
  br label %__body214

__body214:
  %_lhs1236 = load i32* %i1232
  store i32 %_lhs1236, { i32, [ 0 x i32 ] }** %arr1230
  %_lhs1237 = load i32* %i1232
  %bop1238 = add i32 %_lhs1237, 1
  store i32 %bop1238, i32* %i1232
  br label %__cond215

__fresh221:
  br label %__post213

__post213:
  %i1239 = alloca i32
  store i32 0, i32* %i1239
  br label %__cond218

__cond218:
  %_lhs1240 = load i32* %i1239
  %bop1241 = icmp slt i32 %_lhs1240, 10
  br i1 %bop1241, label %__body217, label %__post216

__fresh222:
  br label %__body217

__body217:
  %_lhs1242 = load i32* %sum1231
  %_lhs1244 = load { i32, [ 0 x i32 ] }** %arr1230
  %bop1245 = add i32 %_lhs1242, %_lhs1244
  store i32 %bop1245, i32* %sum1231
  %_lhs1246 = load i32* %i1239
  %bop1247 = add i32 %_lhs1246, 1
  store i32 %bop1247, i32* %i1239
  br label %__cond218

__fresh223:
  br label %__post216

__post216:
  %_lhs1248 = load i32* %sum1231
  ret i32 %_lhs1248
}


