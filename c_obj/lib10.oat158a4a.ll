declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1153.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1153 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1153.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh125:
  ret void
}


define i32 @program (i32 %argc1151, { i32, [ 0 x i8* ] }* %argv1149){

__fresh124:
  %argc_slot1152 = alloca i32
  store i32 %argc1151, i32* %argc_slot1152
  %argv_slot1150 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1149, { i32, [ 0 x i8* ] }** %argv_slot1150
  %strval1154 = load i8** @_oat_string1153
  %ret1155 = call i32 @my_length_of_string ( i8* %strval1154 )
  ret i32 %ret1155
}


define i32 @my_length_of_string (i8* %str1143){

__fresh123:
  %str_slot1144 = alloca i8*
  store i8* %str1143, i8** %str_slot1144
  %_lhs1145 = load i8** %str_slot1144
  %ret1146 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1145 )
  %len_ptr1147 = getelementptr { i32, [ 0 x i32 ] }* %ret1146, i32 0, i32 0
  %len1148 = load i32* %len_ptr1147
  ret i32 %len1148
}


