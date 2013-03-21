declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1874.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1874 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1874.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh350:
  ret void
}


define i32 @program (i32 %argc1872, { i32, [ 0 x i8* ] }* %argv1870){

__fresh349:
  %argc_slot1873 = alloca i32
  store i32 %argc1872, i32* %argc_slot1873
  %argv_slot1871 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1870, { i32, [ 0 x i8* ] }** %argv_slot1871
  %strval1875 = load i8** @_oat_string1874
  %ret1876 = call i32 @my_length_of_string ( i8* %strval1875 )
  ret i32 %ret1876
}


define i32 @my_length_of_string (i8* %str1864){

__fresh348:
  %str_slot1865 = alloca i8*
  store i8* %str1864, i8** %str_slot1865
  %_lhs1866 = load i8** %str_slot1865
  %ret1867 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1866 )
  %len_ptr1868 = getelementptr { i32, [ 0 x i32 ] }* %ret1867, i32 0, i32 0
  %len1869 = load i32* %len_ptr1868
  ret i32 %len1869
}


