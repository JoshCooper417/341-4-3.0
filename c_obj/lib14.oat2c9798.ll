declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1924 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1924.init
define void @oat_init (){

__fresh320:
  call void @a1924.init(  )
  ret void
}


define i32 @program (i32 %argc1927, { i32, [ 0 x i8* ] }* %argv1925){

__fresh319:
  %argc_slot1928 = alloca i32
  store i32 %argc1927, i32* %argc_slot1928
  %argv_slot1926 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1925, { i32, [ 0 x i8* ] }** %argv_slot1926
  %_lhs1929 = load { i32, [ 0 x i32 ] }** @a1924
  %ret1930 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1929 )
  call void @print_string( i8* %ret1930 )
  ret i32 0
}


define void @a1924.init (){

__fresh318:
  %array_ptr1912 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1913 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1912 to { i32, [ 0 x i32 ] }* 
  %index_ptr1914 = getelementptr { i32, [ 0 x i32 ] }* %array1913, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1914
  %index_ptr1915 = getelementptr { i32, [ 0 x i32 ] }* %array1913, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1915
  %index_ptr1916 = getelementptr { i32, [ 0 x i32 ] }* %array1913, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1916
  %index_ptr1917 = getelementptr { i32, [ 0 x i32 ] }* %array1913, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1917
  %index_ptr1918 = getelementptr { i32, [ 0 x i32 ] }* %array1913, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1918
  %index_ptr1919 = getelementptr { i32, [ 0 x i32 ] }* %array1913, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1919
  %index_ptr1920 = getelementptr { i32, [ 0 x i32 ] }* %array1913, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1920
  %index_ptr1921 = getelementptr { i32, [ 0 x i32 ] }* %array1913, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1921
  %index_ptr1922 = getelementptr { i32, [ 0 x i32 ] }* %array1913, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1922
  %index_ptr1923 = getelementptr { i32, [ 0 x i32 ] }* %array1913, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1923
  store { i32, [ 0 x i32 ] }* %array1913, { i32, [ 0 x i32 ] }** @a1924
  ret void
}


