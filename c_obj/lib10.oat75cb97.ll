declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2068.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string2068 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string2068.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh427:
  ret void
}


define i32 @program (i32 %argc2066, { i32, [ 0 x i8* ] }* %argv2064){

__fresh426:
  %argc_slot2067 = alloca i32
  store i32 %argc2066, i32* %argc_slot2067
  %argv_slot2065 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2064, { i32, [ 0 x i8* ] }** %argv_slot2065
  %strval2069 = load i8** @_oat_string2068
  %ret2070 = call i32 @my_length_of_string ( i8* %strval2069 )
  ret i32 %ret2070
}


define i32 @my_length_of_string (i8* %str2058){

__fresh425:
  %str_slot2059 = alloca i8*
  store i8* %str2058, i8** %str_slot2059
  %_lhs2060 = load i8** %str_slot2059
  %ret2061 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs2060 )
  %len_ptr2062 = getelementptr { i32, [ 0 x i32 ] }* %ret2061, i32 0, i32 0
  %len2063 = load i32* %len_ptr2062
  ret i32 %len2063
}


