declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1219.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1219 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1219.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh212:
  ret void
}


define i32 @program (i32 %argc1217, { i32, [ 0 x i8* ] }* %argv1215){

__fresh211:
  %argc_slot1218 = alloca i32
  store i32 %argc1217, i32* %argc_slot1218
  %argv_slot1216 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1215, { i32, [ 0 x i8* ] }** %argv_slot1216
  %strval1220 = load i8** @_oat_string1219
  %ret1221 = call i32 @my_length_of_string ( i8* %strval1220 )
  ret i32 %ret1221
}


define i32 @my_length_of_string (i8* %str1209){

__fresh210:
  %str_slot1210 = alloca i8*
  store i8* %str1209, i8** %str_slot1210
  %_lhs1211 = load i8** %str_slot1210
  %ret1212 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1211 )
  %len_ptr1213 = getelementptr { i32, [ 0 x i32 ] }* %ret1212, i32 0, i32 0
  %len1214 = load i32* %len_ptr1213
  ret i32 %len1214
}


