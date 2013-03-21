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


define i32 @program (i32 %argc1153, { i32, [ 0 x i8* ] }* %argv1151){

__fresh138:
  %argc_slot1154 = alloca i32
  store i32 %argc1153, i32* %argc_slot1154
  %argv_slot1152 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1151, { i32, [ 0 x i8* ] }** %argv_slot1152
  %ret1155 = call i32 @f ( i32 5 )
  ret i32 %ret1155
}


define i32 @f (i32 %i1140){

__fresh135:
  %i_slot1141 = alloca i32
  store i32 %i1140, i32* %i_slot1141
  %r1142 = alloca i32
  store i32 0, i32* %r1142
  %_lhs1143 = load i32* %i_slot1141
  %bop1144 = icmp eq i32 %_lhs1143, 0
  br i1 %bop1144, label %__then134, label %__else133

__fresh136:
  br label %__then134

__then134:
  store i32 1, i32* %r1142
  br label %__merge132

__fresh137:
  br label %__else133

__else133:
  %_lhs1145 = load i32* %i_slot1141
  %_lhs1146 = load i32* %i_slot1141
  %bop1147 = sub i32 %_lhs1146, 1
  %ret1148 = call i32 @f ( i32 %bop1147 )
  %bop1149 = mul i32 %_lhs1145, %ret1148
  store i32 %bop1149, i32* %r1142
  br label %__merge132

__merge132:
  %_lhs1150 = load i32* %r1142
  ret i32 %_lhs1150
}


