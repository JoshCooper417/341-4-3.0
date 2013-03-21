declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a2067 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2067.init
define void @oat_init (){

__fresh346:
  call void @a2067.init(  )
  ret void
}


define i32 @program (i32 %argc2070, { i32, [ 0 x i8* ] }* %argv2068){

__fresh345:
  %argc_slot2071 = alloca i32
  store i32 %argc2070, i32* %argc_slot2071
  %argv_slot2069 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2068, { i32, [ 0 x i8* ] }** %argv_slot2069
  %_lhs2072 = load { i32, [ 0 x i32 ] }** @a2067
  %ret2073 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2072 )
  call void @print_string( i8* %ret2073 )
  ret i32 0
}


define void @a2067.init (){

__fresh344:
  %array_ptr2055 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2056 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2055 to { i32, [ 0 x i32 ] }* 
  %index_ptr2057 = getelementptr { i32, [ 0 x i32 ] }* %array2056, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2057
  %index_ptr2058 = getelementptr { i32, [ 0 x i32 ] }* %array2056, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2058
  %index_ptr2059 = getelementptr { i32, [ 0 x i32 ] }* %array2056, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2059
  %index_ptr2060 = getelementptr { i32, [ 0 x i32 ] }* %array2056, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2060
  %index_ptr2061 = getelementptr { i32, [ 0 x i32 ] }* %array2056, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2061
  %index_ptr2062 = getelementptr { i32, [ 0 x i32 ] }* %array2056, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2062
  %index_ptr2063 = getelementptr { i32, [ 0 x i32 ] }* %array2056, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2063
  %index_ptr2064 = getelementptr { i32, [ 0 x i32 ] }* %array2056, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2064
  %index_ptr2065 = getelementptr { i32, [ 0 x i32 ] }* %array2056, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2065
  %index_ptr2066 = getelementptr { i32, [ 0 x i32 ] }* %array2056, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2066
  store { i32, [ 0 x i32 ] }* %array2056, { i32, [ 0 x i32 ] }** @a2067
  ret void
}


