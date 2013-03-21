declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a2080 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2080.init
define void @oat_init (){

__fresh442:
  call void @a2080.init(  )
  ret void
}


define i32 @program (i32 %argc2083, { i32, [ 0 x i8* ] }* %argv2081){

__fresh441:
  %argc_slot2084 = alloca i32
  store i32 %argc2083, i32* %argc_slot2084
  %argv_slot2082 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2081, { i32, [ 0 x i8* ] }** %argv_slot2082
  %_lhs2085 = load { i32, [ 0 x i32 ] }** @a2080
  %ret2086 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2085 )
  call void @print_string( i8* %ret2086 )
  ret i32 0
}


define void @a2080.init (){

__fresh440:
  %array_ptr2068 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2069 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2068 to { i32, [ 0 x i32 ] }* 
  %index_ptr2070 = getelementptr { i32, [ 0 x i32 ] }* %array2069, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2070
  %index_ptr2071 = getelementptr { i32, [ 0 x i32 ] }* %array2069, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2071
  %index_ptr2072 = getelementptr { i32, [ 0 x i32 ] }* %array2069, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2072
  %index_ptr2073 = getelementptr { i32, [ 0 x i32 ] }* %array2069, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2073
  %index_ptr2074 = getelementptr { i32, [ 0 x i32 ] }* %array2069, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2074
  %index_ptr2075 = getelementptr { i32, [ 0 x i32 ] }* %array2069, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2075
  %index_ptr2076 = getelementptr { i32, [ 0 x i32 ] }* %array2069, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2076
  %index_ptr2077 = getelementptr { i32, [ 0 x i32 ] }* %array2069, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2077
  %index_ptr2078 = getelementptr { i32, [ 0 x i32 ] }* %array2069, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2078
  %index_ptr2079 = getelementptr { i32, [ 0 x i32 ] }* %array2069, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2079
  store { i32, [ 0 x i32 ] }* %array2069, { i32, [ 0 x i32 ] }** @a2080
  ret void
}


