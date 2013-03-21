declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1877.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1877 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1877.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh359:
  ret void
}


define i32 @program (i32 %argc1875, { i32, [ 0 x i8* ] }* %argv1873){

__fresh358:
  %argc_slot1876 = alloca i32
  store i32 %argc1875, i32* %argc_slot1876
  %argv_slot1874 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1873, { i32, [ 0 x i8* ] }** %argv_slot1874
  %strval1878 = load i8** @_oat_string1877
  %ret1879 = call i32 @my_length_of_string ( i8* %strval1878 )
  ret i32 %ret1879
}


define i32 @my_length_of_string (i8* %str1867){

__fresh357:
  %str_slot1868 = alloca i8*
  store i8* %str1867, i8** %str_slot1868
  %_lhs1869 = load i8** %str_slot1868
  %ret1870 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1869 )
  %len_ptr1871 = getelementptr { i32, [ 0 x i32 ] }* %ret1870, i32 0, i32 0
  %len1872 = load i32* %len_ptr1871
  ret i32 %len1872
}


