declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1111.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1111 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1111.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh185:
  ret void
}


define i32 @program (i32 %argc1109, { i32, [ 0 x i8* ] }* %argv1107){

__fresh182:
  %argc_slot1110 = alloca i32
  store i32 %argc1109, i32* %argc_slot1110
  %argv_slot1108 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1107, { i32, [ 0 x i8* ] }** %argv_slot1108
  %strval1112 = load i8** @_oat_string1111
  %str1113 = alloca i8*
  store i8* %strval1112, i8** %str1113
  %_lhs1114 = load i8** %str1113
  %ret1115 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1114 )
  %arr1116 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1115, { i32, [ 0 x i32 ] }** %arr1116
  %s1117 = alloca i32
  store i32 0, i32* %s1117
  %i1118 = alloca i32
  store i32 0, i32* %i1118
  br label %__cond181

__cond181:
  %_lhs1119 = load i32* %i1118
  %bop1120 = icmp slt i32 %_lhs1119, 5
  br i1 %bop1120, label %__body180, label %__post179

__fresh183:
  br label %__body180

__body180:
  %_lhs1121 = load i32* %s1117
  %_lhs1123 = load { i32, [ 0 x i32 ] }** %arr1116
  %bop1124 = add i32 %_lhs1121, %_lhs1123
  store i32 %bop1124, i32* %s1117
  %_lhs1125 = load i32* %i1118
  %bop1126 = add i32 %_lhs1125, 1
  store i32 %bop1126, i32* %i1118
  br label %__cond181

__fresh184:
  br label %__post179

__post179:
  %_lhs1127 = load i32* %s1117
  ret i32 %_lhs1127
}


