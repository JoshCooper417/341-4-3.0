declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11136 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11136.init
define void @oat_init (){

__fresh193:
  call void @arr11136.init(  )
  ret void
}


define i32 @program (i32 %argc1139, { i32, [ 0 x i8* ] }* %argv1137){

__fresh190:
  %argc_slot1140 = alloca i32
  store i32 %argc1139, i32* %argc_slot1140
  %argv_slot1138 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1137, { i32, [ 0 x i8* ] }** %argv_slot1138
  %_lhs1141 = load { i32, [ 0 x i32 ] }** @arr11136
  %ret1142 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1141 )
  %str1143 = alloca i8*
  store i8* %ret1142, i8** %str1143
  %_lhs1144 = load i8** %str1143
  %ret1145 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1144 )
  %arr21146 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1145, { i32, [ 0 x i32 ] }** %arr21146
  %s1147 = alloca i32
  store i32 0, i32* %s1147
  %i1148 = alloca i32
  store i32 0, i32* %i1148
  br label %__cond189

__cond189:
  %_lhs1149 = load i32* %i1148
  %bop1150 = icmp slt i32 %_lhs1149, 5
  br i1 %bop1150, label %__body188, label %__post187

__fresh191:
  br label %__body188

__body188:
  %_lhs1151 = load i32* %s1147
  %_lhs1153 = load { i32, [ 0 x i32 ] }** %arr21146
  %bop1154 = add i32 %_lhs1151, %_lhs1153
  store i32 %bop1154, i32* %s1147
  %_lhs1155 = load i32* %i1148
  %bop1156 = add i32 %_lhs1155, 1
  store i32 %bop1156, i32* %i1148
  br label %__cond189

__fresh192:
  br label %__post187

__post187:
  %_lhs1157 = load i32* %s1147
  ret i32 %_lhs1157
}


define void @arr11136.init (){

__fresh186:
  %array_ptr1129 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1130 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1129 to { i32, [ 0 x i32 ] }* 
  %index_ptr1131 = getelementptr { i32, [ 0 x i32 ] }* %array1130, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1131
  %index_ptr1132 = getelementptr { i32, [ 0 x i32 ] }* %array1130, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1132
  %index_ptr1133 = getelementptr { i32, [ 0 x i32 ] }* %array1130, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1133
  %index_ptr1134 = getelementptr { i32, [ 0 x i32 ] }* %array1130, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1134
  %index_ptr1135 = getelementptr { i32, [ 0 x i32 ] }* %array1130, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1135
  store { i32, [ 0 x i32 ] }* %array1130, { i32, [ 0 x i32 ] }** @arr11136
  ret void
}


