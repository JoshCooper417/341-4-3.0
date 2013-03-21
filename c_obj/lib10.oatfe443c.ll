declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1211.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1211 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1211.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh125:
  ret void
}


define i32 @program (i32 %argc1209, { i32, [ 0 x i8* ] }* %argv1207){

__fresh124:
  %argc_slot1210 = alloca i32
  store i32 %argc1209, i32* %argc_slot1210
  %argv_slot1208 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1207, { i32, [ 0 x i8* ] }** %argv_slot1208
  %strval1212 = load i8** @_oat_string1211
  %ret1213 = call i32 @my_length_of_string ( i8* %strval1212 )
  ret i32 %ret1213
}


define i32 @my_length_of_string (i8* %str1201){

__fresh123:
  %str_slot1202 = alloca i8*
  store i8* %str1201, i8** %str_slot1202
  %_lhs1203 = load i8** %str_slot1202
  %ret1204 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1203 )
  %len_ptr1205 = getelementptr { i32, [ 0 x i32 ] }* %ret1204, i32 0, i32 0
  %len1206 = load i32* %len_ptr1205
  ret i32 %len1206
}


