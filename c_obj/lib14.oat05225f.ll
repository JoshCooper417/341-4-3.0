declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1905 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1905.init
define void @oat_init (){

__fresh490:
  call void @a1905.init(  )
  ret void
}


define i32 @program (i32 %argc1908, { i32, [ 0 x i8* ] }* %argv1906){

__fresh489:
  %argc_slot1909 = alloca i32
  store i32 %argc1908, i32* %argc_slot1909
  %argv_slot1907 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1906, { i32, [ 0 x i8* ] }** %argv_slot1907
  %_lhs1910 = load { i32, [ 0 x i32 ] }** @a1905
  %ret1911 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1910 )
  call void @print_string( i8* %ret1911 )
  ret i32 0
}


define void @a1905.init (){

__fresh488:
  %array_ptr1893 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1894 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1893 to { i32, [ 0 x i32 ] }* 
  %index_ptr1895 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1895
  %index_ptr1896 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1896
  %index_ptr1897 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1897
  %index_ptr1898 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1898
  %index_ptr1899 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1899
  %index_ptr1900 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1900
  %index_ptr1901 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1901
  %index_ptr1902 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1902
  %index_ptr1903 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1903
  %index_ptr1904 = getelementptr { i32, [ 0 x i32 ] }* %array1894, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1904
  store { i32, [ 0 x i32 ] }* %array1894, { i32, [ 0 x i32 ] }** @a1905
  ret void
}


