declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1085 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1085.init
define void @oat_init (){

__fresh131:
  call void @a1085.init(  )
  ret void
}


define i32 @program (i32 %argc1088, { i32, [ 0 x i8* ] }* %argv1086){

__fresh130:
  %argc_slot1089 = alloca i32
  store i32 %argc1088, i32* %argc_slot1089
  %argv_slot1087 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1086, { i32, [ 0 x i8* ] }** %argv_slot1087
  %_lhs1090 = load { i32, [ 0 x i32 ] }** @a1085
  %ret1091 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1090 )
  call void @print_string( i8* %ret1091 )
  ret i32 0
}


define void @a1085.init (){

__fresh129:
  %array_ptr1073 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1074 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1073 to { i32, [ 0 x i32 ] }* 
  %index_ptr1075 = getelementptr { i32, [ 0 x i32 ] }* %array1074, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1075
  %index_ptr1076 = getelementptr { i32, [ 0 x i32 ] }* %array1074, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1076
  %index_ptr1077 = getelementptr { i32, [ 0 x i32 ] }* %array1074, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1077
  %index_ptr1078 = getelementptr { i32, [ 0 x i32 ] }* %array1074, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1078
  %index_ptr1079 = getelementptr { i32, [ 0 x i32 ] }* %array1074, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1079
  %index_ptr1080 = getelementptr { i32, [ 0 x i32 ] }* %array1074, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1080
  %index_ptr1081 = getelementptr { i32, [ 0 x i32 ] }* %array1074, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1081
  %index_ptr1082 = getelementptr { i32, [ 0 x i32 ] }* %array1074, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1082
  %index_ptr1083 = getelementptr { i32, [ 0 x i32 ] }* %array1074, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1083
  %index_ptr1084 = getelementptr { i32, [ 0 x i32 ] }* %array1074, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1084
  store { i32, [ 0 x i32 ] }* %array1074, { i32, [ 0 x i32 ] }** @a1085
  ret void
}


