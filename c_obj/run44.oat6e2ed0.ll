declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1093 = global { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* zeroinitializer, align 4		; initialized by str1093.init
@_oat_string1021.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1021 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1021.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh297:
  call void @str1093.init(  )
  ret void
}


define i32 @program (i32 %argc1097, { i32, [ 0 x i8* ] }* %argv1095){

__fresh296:
  %argc_slot1098 = alloca i32
  store i32 %argc1097, i32* %argc_slot1098
  %argv_slot1096 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1095, { i32, [ 0 x i8* ] }** %argv_slot1096
  %len_ptr1099 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** @str1093, i32 0, i32 0
  %len1100 = load i32* %len_ptr1099
  call void @oat_array_bounds_check( i32 %len1100, i32 0 )
  %array_dereferenced1101 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** @str1093
  %elt_ptr1102 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1101, i32 0, i32 1, i32 0
  %len_ptr1103 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1102, i32 0, i32 0
  %len1104 = load i32* %len_ptr1103
  call void @oat_array_bounds_check( i32 %len1104, i32 0 )
  %array_dereferenced1105 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1102
  %elt_ptr1106 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1105, i32 0, i32 1, i32 0
  %len_ptr1107 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1106, i32 0, i32 0
  %len1108 = load i32* %len_ptr1107
  call void @oat_array_bounds_check( i32 %len1108, i32 0 )
  %array_dereferenced1109 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1106
  %elt_ptr1110 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1109, i32 0, i32 1, i32 0
  %len_ptr1111 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1110, i32 0, i32 0
  %len1112 = load i32* %len_ptr1111
  call void @oat_array_bounds_check( i32 %len1112, i32 0 )
  %array_dereferenced1113 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1110
  %elt_ptr1114 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1113, i32 0, i32 1, i32 0
  %len_ptr1115 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1114, i32 0, i32 0
  %len1116 = load i32* %len_ptr1115
  call void @oat_array_bounds_check( i32 %len1116, i32 0 )
  %array_dereferenced1117 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1114
  %elt_ptr1118 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1117, i32 0, i32 1, i32 0
  %len_ptr1119 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1118, i32 0, i32 0
  %len1120 = load i32* %len_ptr1119
  call void @oat_array_bounds_check( i32 %len1120, i32 0 )
  %array_dereferenced1121 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1118
  %elt_ptr1122 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1121, i32 0, i32 1, i32 0
  %len_ptr1123 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1122, i32 0, i32 0
  %len1124 = load i32* %len_ptr1123
  call void @oat_array_bounds_check( i32 %len1124, i32 0 )
  %array_dereferenced1125 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1122
  %elt_ptr1126 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1125, i32 0, i32 1, i32 0
  %len_ptr1127 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1126, i32 0, i32 0
  %len1128 = load i32* %len_ptr1127
  call void @oat_array_bounds_check( i32 %len1128, i32 0 )
  %array_dereferenced1129 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1126
  %elt_ptr1130 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1129, i32 0, i32 1, i32 0
  %len_ptr1131 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1130, i32 0, i32 0
  %len1132 = load i32* %len_ptr1131
  call void @oat_array_bounds_check( i32 %len1132, i32 0 )
  %array_dereferenced1133 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }** %elt_ptr1130
  %elt_ptr1134 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1133, i32 0, i32 1, i32 0
  %len_ptr1135 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }** %elt_ptr1134, i32 0, i32 0
  %len1136 = load i32* %len_ptr1135
  call void @oat_array_bounds_check( i32 %len1136, i32 0 )
  %array_dereferenced1137 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }** %elt_ptr1134
  %elt_ptr1138 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* ] }* %array_dereferenced1137, i32 0, i32 1, i32 0
  %len_ptr1139 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }** %elt_ptr1138, i32 0, i32 0
  %len1140 = load i32* %len_ptr1139
  call void @oat_array_bounds_check( i32 %len1140, i32 0 )
  %array_dereferenced1141 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }** %elt_ptr1138
  %elt_ptr1142 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* ] }* %array_dereferenced1141, i32 0, i32 1, i32 0
  %len_ptr1143 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }** %elt_ptr1142, i32 0, i32 0
  %len1144 = load i32* %len_ptr1143
  call void @oat_array_bounds_check( i32 %len1144, i32 0 )
  %array_dereferenced1145 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }** %elt_ptr1142
  %elt_ptr1146 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* ] }* %array_dereferenced1145, i32 0, i32 1, i32 0
  %len_ptr1147 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** %elt_ptr1146, i32 0, i32 0
  %len1148 = load i32* %len_ptr1147
  call void @oat_array_bounds_check( i32 %len1148, i32 0 )
  %array_dereferenced1149 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** %elt_ptr1146
  %elt_ptr1150 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array_dereferenced1149, i32 0, i32 1, i32 0
  %len_ptr1151 = getelementptr { i32, [ 0 x i8* ] }** %elt_ptr1150, i32 0, i32 0
  %len1152 = load i32* %len_ptr1151
  call void @oat_array_bounds_check( i32 %len1152, i32 0 )
  %array_dereferenced1153 = load { i32, [ 0 x i8* ] }** %elt_ptr1150
  %elt_ptr1154 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced1153, i32 0, i32 1, i32 0
  %_lhs1155 = load i8** %elt_ptr1154
  call void @print_string( i8* %_lhs1155 )
  ret i32 0
}


define void @str1093.init (){

__fresh267:
  br label %__check265

__check265:
  %cmp_op1091 = icmp slt i32 1, 1
  br i32 %cmp_op1091, label %__body266, label %__end264

__fresh268:
  br label %__body266

__body266:
  store i32 %i1007, i32 1
  br label %__check262

__check262:
  %cmp_op1086 = icmp slt i32 1, 1
  br i32 %cmp_op1086, label %__body263, label %__end261

__fresh269:
  br label %__body263

__body263:
  store i32 %i1008, i32 1
  br label %__check259

__check259:
  %cmp_op1081 = icmp slt i32 1, 1
  br i32 %cmp_op1081, label %__body260, label %__end258

__fresh270:
  br label %__body260

__body260:
  store i32 %i1009, i32 1
  br label %__check256

__check256:
  %cmp_op1076 = icmp slt i32 1, 1
  br i32 %cmp_op1076, label %__body257, label %__end255

__fresh271:
  br label %__body257

__body257:
  store i32 %i1010, i32 1
  br label %__check253

__check253:
  %cmp_op1071 = icmp slt i32 1, 1
  br i32 %cmp_op1071, label %__body254, label %__end252

__fresh272:
  br label %__body254

__body254:
  store i32 %i1011, i32 1
  br label %__check250

__check250:
  %cmp_op1066 = icmp slt i32 1, 1
  br i32 %cmp_op1066, label %__body251, label %__end249

__fresh273:
  br label %__body251

__body251:
  store i32 %i1012, i32 1
  br label %__check247

__ch