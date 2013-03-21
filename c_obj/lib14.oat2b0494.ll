declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a2119 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2119.init
define void @oat_init (){

__fresh442:
  call void @a2119.init(  )
  ret void
}


define i32 @program (i32 %argc2122, { i32, [ 0 x i8* ] }* %argv2120){

__fresh441:
  %argc_slot2123 = alloca i32
  store i32 %argc2122, i32* %argc_slot2123
  %argv_slot2121 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2120, { i32, [ 0 x i8* ] }** %argv_slot2121
  %_lhs2124 = load { i32, [ 0 x i32 ] }** @a2119
  %ret2125 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2124 )
  call void @print_string( i8* %ret2125 )
  ret i32 0
}


define void @a2119.init (){

__fresh440:
  %array_ptr2107 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2108 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2107 to { i32, [ 0 x i32 ] }* 
  %index_ptr2109 = getelementptr { i32, [ 0 x i32 ] }* %array2108, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2109
  %index_ptr2110 = getelementptr { i32, [ 0 x i32 ] }* %array2108, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2110
  %index_ptr2111 = getelementptr { i32, [ 0 x i32 ] }* %array2108, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2111
  %index_ptr2112 = getelementptr { i32, [ 0 x i32 ] }* %array2108, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2112
  %index_ptr2113 = getelementptr { i32, [ 0 x i32 ] }* %array2108, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2113
  %index_ptr2114 = getelementptr { i32, [ 0 x i32 ] }* %array2108, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2114
  %index_ptr2115 = getelementptr { i32, [ 0 x i32 ] }* %array2108, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2115
  %index_ptr2116 = getelementptr { i32, [ 0 x i32 ] }* %array2108, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2116
  %index_ptr2117 = getelementptr { i32, [ 0 x i32 ] }* %array2108, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2117
  %index_ptr2118 = getelementptr { i32, [ 0 x i32 ] }* %array2108, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2118
  store { i32, [ 0 x i32 ] }* %array2108, { i32, [ 0 x i32 ] }** @a2119
  ret void
}


