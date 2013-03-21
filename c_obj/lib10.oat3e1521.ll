declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2029.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string2029 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string2029.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh427:
  ret void
}


define i32 @program (i32 %argc2027, { i32, [ 0 x i8* ] }* %argv2025){

__fresh426:
  %argc_slot2028 = alloca i32
  store i32 %argc2027, i32* %argc_slot2028
  %argv_slot2026 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2025, { i32, [ 0 x i8* ] }** %argv_slot2026
  %strval2030 = load i8** @_oat_string2029
  %ret2031 = call i32 @my_length_of_string ( i8* %strval2030 )
  ret i32 %ret2031
}


define i32 @my_length_of_string (i8* %str2019){

__fresh425:
  %str_slot2020 = alloca i8*
  store i8* %str2019, i8** %str_slot2020
  %_lhs2021 = load i8** %str_slot2020
  %ret2022 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs2021 )
  %len_ptr2023 = getelementptr { i32, [ 0 x i32 ] }* %ret2022, i32 0, i32 0
  %len2024 = load i32* %len_ptr2023
  ret i32 %len2024
}


