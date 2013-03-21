declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1925 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1925.init
define void @oat_init (){

__fresh386:
  call void @a1925.init(  )
  ret void
}


define i32 @program (i32 %argc1928, { i32, [ 0 x i8* ] }* %argv1926){

__fresh385:
  %argc_slot1929 = alloca i32
  store i32 %argc1928, i32* %argc_slot1929
  %argv_slot1927 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1926, { i32, [ 0 x i8* ] }** %argv_slot1927
  %_lhs1930 = load { i32, [ 0 x i32 ] }** @a1925
  %ret1931 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1930 )
  call void @print_string( i8* %ret1931 )
  ret i32 0
}


define void @a1925.init (){

__fresh384:
  %array_ptr1913 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1914 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1913 to { i32, [ 0 x i32 ] }* 
  %index_ptr1915 = getelementptr { i32, [ 0 x i32 ] }* %array1914, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1915
  %index_ptr1916 = getelementptr { i32, [ 0 x i32 ] }* %array1914, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1916
  %index_ptr1917 = getelementptr { i32, [ 0 x i32 ] }* %array1914, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1917
  %index_ptr1918 = getelementptr { i32, [ 0 x i32 ] }* %array1914, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1918
  %index_ptr1919 = getelementptr { i32, [ 0 x i32 ] }* %array1914, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1919
  %index_ptr1920 = getelementptr { i32, [ 0 x i32 ] }* %array1914, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1920
  %index_ptr1921 = getelementptr { i32, [ 0 x i32 ] }* %array1914, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1921
  %index_ptr1922 = getelementptr { i32, [ 0 x i32 ] }* %array1914, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1922
  %index_ptr1923 = getelementptr { i32, [ 0 x i32 ] }* %array1914, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1923
  %index_ptr1924 = getelementptr { i32, [ 0 x i32 ] }* %array1914, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1924
  store { i32, [ 0 x i32 ] }* %array1914, { i32, [ 0 x i32 ] }** @a1925
  ret void
}


