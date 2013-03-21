declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1182.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1182 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1182.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh125:
  ret void
}


define i32 @program (i32 %argc1180, { i32, [ 0 x i8* ] }* %argv1178){

__fresh124:
  %argc_slot1181 = alloca i32
  store i32 %argc1180, i32* %argc_slot1181
  %argv_slot1179 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1178, { i32, [ 0 x i8* ] }** %argv_slot1179
  %strval1183 = load i8** @_oat_string1182
  %ret1184 = call i32 @my_length_of_string ( i8* %strval1183 )
  ret i32 %ret1184
}


define i32 @my_length_of_string (i8* %str1172){

__fresh123:
  %str_slot1173 = alloca i8*
  store i8* %str1172, i8** %str_slot1173
  %_lhs1174 = load i8** %str_slot1173
  %ret1175 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1174 )
  %len_ptr1176 = getelementptr { i32, [ 0 x i32 ] }* %ret1175, i32 0, i32 0
  %len1177 = load i32* %len_ptr1176
  ret i32 %len1177
}


