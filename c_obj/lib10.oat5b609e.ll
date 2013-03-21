declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1885.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1885 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1885.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh700:
  ret void
}


define i32 @program (i32 %argc1883, { i32, [ 0 x i8* ] }* %argv1881){

__fresh699:
  %argc_slot1884 = alloca i32
  store i32 %argc1883, i32* %argc_slot1884
  %argv_slot1882 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1881, { i32, [ 0 x i8* ] }** %argv_slot1882
  %strval1886 = load i8** @_oat_string1885
  %ret1887 = call i32 @my_length_of_string ( i8* %strval1886 )
  ret i32 %ret1887
}


define i32 @my_length_of_string (i8* %str1875){

__fresh698:
  %str_slot1876 = alloca i8*
  store i8* %str1875, i8** %str_slot1876
  %_lhs1877 = load i8** %str_slot1876
  %ret1878 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1877 )
  %len_ptr1879 = getelementptr { i32, [ 0 x i32 ] }* %ret1878, i32 0, i32 0
  %len1880 = load i32* %len_ptr1879
  ret i32 %len1880
}


