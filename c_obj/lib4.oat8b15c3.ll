declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1087 = global i8* zeroinitializer, align 4		; initialized by str1087.init
@_oat_string1085.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1085 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1085.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh178:
  call void @str1087.init(  )
  ret void
}


define i32 @program (i32 %argc1091, { i32, [ 0 x i8* ] }* %argv1089){

__fresh175:
  %argc_slot1092 = alloca i32
  store i32 %argc1091, i32* %argc_slot1092
  %argv_slot1090 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1089, { i32, [ 0 x i8* ] }** %argv_slot1090
  %_lhs1093 = load i8** @str1087
  %ret1094 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1093 )
  %arr1095 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1094, { i32, [ 0 x i32 ] }** %arr1095
  %s1096 = alloca i32
  store i32 0, i32* %s1096
  %i1097 = alloca i32
  store i32 0, i32* %i1097
  br label %__cond174

__cond174:
  %_lhs1098 = load i32* %i1097
  %bop1099 = icmp slt i32 %_lhs1098, 5
  br i1 %bop1099, label %__body173, label %__post172

__fresh176:
  br label %__body173

__body173:
  %_lhs1100 = load i32* %s1096
  %_lhs1102 = load { i32, [ 0 x i32 ] }** %arr1095
  %bop1103 = add i32 %_lhs1100, %_lhs1102
  store i32 %bop1103, i32* %s1096
  %_lhs1104 = load i32* %i1097
  %bop1105 = add i32 %_lhs1104, 1
  store i32 %bop1105, i32* %i1097
  br label %__cond174

__fresh177:
  br label %__post172

__post172:
  %_lhs1106 = load i32* %s1096
  ret i32 %_lhs1106
}


define void @str1087.init (){

__fresh171:
  %strval1086 = load i8** @_oat_string1085
  store i8* %strval1086, i8** @str1087
  ret void
}


