declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1124 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1124.init
define void @oat_init (){

__fresh131:
  call void @a1124.init(  )
  ret void
}


define i32 @program (i32 %argc1127, { i32, [ 0 x i8* ] }* %argv1125){

__fresh130:
  %argc_slot1128 = alloca i32
  store i32 %argc1127, i32* %argc_slot1128
  %argv_slot1126 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1125, { i32, [ 0 x i8* ] }** %argv_slot1126
  %_lhs1129 = load { i32, [ 0 x i32 ] }** @a1124
  %ret1130 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1129 )
  call void @print_string( i8* %ret1130 )
  ret i32 0
}


define void @a1124.init (){

__fresh129:
  %array_ptr1112 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1113 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1112 to { i32, [ 0 x i32 ] }* 
  %index_ptr1114 = getelementptr { i32, [ 0 x i32 ] }* %array1113, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1114
  %index_ptr1115 = getelementptr { i32, [ 0 x i32 ] }* %array1113, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1115
  %index_ptr1116 = getelementptr { i32, [ 0 x i32 ] }* %array1113, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1116
  %index_ptr1117 = getelementptr { i32, [ 0 x i32 ] }* %array1113, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1117
  %index_ptr1118 = getelementptr { i32, [ 0 x i32 ] }* %array1113, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1118
  %index_ptr1119 = getelementptr { i32, [ 0 x i32 ] }* %array1113, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1119
  %index_ptr1120 = getelementptr { i32, [ 0 x i32 ] }* %array1113, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1120
  %index_ptr1121 = getelementptr { i32, [ 0 x i32 ] }* %array1113, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1121
  %index_ptr1122 = getelementptr { i32, [ 0 x i32 ] }* %array1113, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1122
  %index_ptr1123 = getelementptr { i32, [ 0 x i32 ] }* %array1113, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1123
  store { i32, [ 0 x i32 ] }* %array1113, { i32, [ 0 x i32 ] }** @a1124
  ret void
}


