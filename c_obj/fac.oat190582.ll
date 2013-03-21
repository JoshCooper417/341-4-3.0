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


define i32 @program (i32 %argc1114, { i32, [ 0 x i8* ] }* %argv1112){

__fresh138:
  %argc_slot1115 = alloca i32
  store i32 %argc1114, i32* %argc_slot1115
  %argv_slot1113 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1112, { i32, [ 0 x i8* ] }** %argv_slot1113
  %ret1116 = call i32 @f ( i32 5 )
  ret i32 %ret1116
}


define i32 @f (i32 %i1101){

__fresh135:
  %i_slot1102 = alloca i32
  store i32 %i1101, i32* %i_slot1102
  %r1103 = alloca i32
  store i32 0, i32* %r1103
  %_lhs1104 = load i32* %i_slot1102
  %bop1105 = icmp eq i32 %_lhs1104, 0
  br i1 %bop1105, label %__then134, label %__else133

__fresh136:
  br label %__then134

__then134:
  store i32 1, i32* %r1103
  br label %__merge132

__fresh137:
  br label %__else133

__else133:
  %_lhs1106 = load i32* %i_slot1102
  %_lhs1107 = load i32* %i_slot1102
  %bop1108 = sub i32 %_lhs1107, 1
  %ret1109 = call i32 @f ( i32 %bop1108 )
  %bop1110 = mul i32 %_lhs1106, %ret1109
  store i32 %bop1110, i32* %r1103
  br label %__merge132

__merge132:
  %_lhs1111 = load i32* %r1103
  ret i32 %_lhs1111
}


