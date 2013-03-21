declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh209:
  ret void
}


define i32 @program (i32 %argc1198, { i32, [ 0 x i8* ] }* %argv1196){

__fresh206:
  %argc_slot1199 = alloca i32
  store i32 %argc1198, i32* %argc_slot1199
  %argv_slot1197 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1196, { i32, [ 0 x i8* ] }** %argv_slot1197
  %i1200 = alloca i32
  store i32 1, i32* %i1200
  br label %__cond205

__cond205:
  %_lhs1201 = load i32* %i1200
  %_lhs1202 = load i32* %argc_slot1199
  %bop1203 = icmp slt i32 %_lhs1201, %_lhs1202
  br i1 %bop1203, label %__body204, label %__post203

__fresh207:
  br label %__body204

__body204:
  %_lhs1205 = load { i32, [ 0 x i8* ] }** %argv_slot1197
  call void @print_string( { i32, [ 0 x i8* ] }* %_lhs1205 )
  %_lhs1206 = load i32* %i1200
  %bop1207 = add i32 %_lhs1206, 1
  store i32 %bop1207, i32* %i1200
  br label %__cond205

__fresh208:
  br label %__post203

__post203:
  %_lhs1208 = load i32* %argc_slot1199
  ret i32 %_lhs1208
}


