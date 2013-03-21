declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1873.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1873 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1873.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh287:
  ret void
}


define i32 @program (i32 %argc1871, { i32, [ 0 x i8* ] }* %argv1869){

__fresh286:
  %argc_slot1872 = alloca i32
  store i32 %argc1871, i32* %argc_slot1872
  %argv_slot1870 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1869, { i32, [ 0 x i8* ] }** %argv_slot1870
  %strval1874 = load i8** @_oat_string1873
  %ret1875 = call i32 @my_length_of_string ( i8* %strval1874 )
  ret i32 %ret1875
}


define i32 @my_length_of_string (i8* %str1863){

__fresh285:
  %str_slot1864 = alloca i8*
  store i8* %str1863, i8** %str_slot1864
  %_lhs1865 = load i8** %str_slot1864
  %ret1866 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1865 )
  %len_ptr1867 = getelementptr { i32, [ 0 x i32 ] }* %ret1866, i32 0, i32 0
  %len1868 = load i32* %len_ptr1867
  ret i32 %len1868
}


