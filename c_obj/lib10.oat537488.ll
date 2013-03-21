declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1854.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string1854 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string1854.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh695:
  ret void
}


define i32 @program (i32 %argc1852, { i32, [ 0 x i8* ] }* %argv1850){

__fresh694:
  %argc_slot1853 = alloca i32
  store i32 %argc1852, i32* %argc_slot1853
  %argv_slot1851 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1850, { i32, [ 0 x i8* ] }** %argv_slot1851
  %strval1855 = load i8** @_oat_string1854
  %ret1856 = call i32 @my_length_of_string ( i8* %strval1855 )
  ret i32 %ret1856
}


define i32 @my_length_of_string (i8* %str1844){

__fresh693:
  %str_slot1845 = alloca i8*
  store i8* %str1844, i8** %str_slot1845
  %_lhs1846 = load i8** %str_slot1845
  %ret1847 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1846 )
  %len_ptr1848 = getelementptr { i32, [ 0 x i32 ] }* %ret1847, i32 0
  %len1849 = load i32* %len_ptr1848
  ret i32 %len1849
}


