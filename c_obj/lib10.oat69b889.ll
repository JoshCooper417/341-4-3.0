declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1864.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1864 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1864.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh700:
  ret void
}


define i32 @program (i32 %argc1862, { i32, [ 0 x i8* ] }* %argv1860){

__fresh699:
  %argc_slot1863 = alloca i32
  store i32 %argc1862, i32* %argc_slot1863
  %argv_slot1861 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1860, { i32, [ 0 x i8* ] }** %argv_slot1861
  %strval1865 = load i8** @_oat_string1864
  %ret1866 = call i32 @my_length_of_string ( i8* %strval1865 )
  ret i32 %ret1866
}


define i32 @my_length_of_string (i8* %str1854){

__fresh698:
  %str_slot1855 = alloca i8*
  store i8* %str1854, i8** %str_slot1855
  %_lhs1856 = load i8** %str_slot1855
  %ret1857 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1856 )
  %len_ptr1858 = getelementptr { i32, [ 0 x i32 ] }* %ret1857, i32 0, i32 0
  %len1859 = load i32* %len_ptr1858
  ret i32 %len1859
}


