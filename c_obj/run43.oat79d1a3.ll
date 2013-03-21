declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1001 = global { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* zeroinitializer, align 4		; initialized by a1001.init
define void @oat_init (){

__fresh200:
  call void @a1001.init(  )
  ret void
}


define i32 @program (i32 %argc1004, { i32, [ 0 x i8* ] }* %argv1002){

__fresh199:
  %argc_slot1005 = alloca i32
  store i32 %argc1004, i32* %argc_slot1005
  %argv_slot1003 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1002, { i32, [ 0 x i8* ] }** %argv_slot1003
  %len_ptr1006 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a1001, i32 0, i32 0
  %len1007 = load i32* %len_ptr1006
  call void @oat_array_bounds_check( i32 %len1007, i32 0 )
  %array_dereferenced1008 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a1001
  %elt_ptr1009 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array_dereferenced1008, i32 0, i32 1, i32 0
  %len_ptr1010 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %elt_ptr1009, i32 0, i32 0
  %len1011 = load i32* %len_ptr1010
  call void @oat_array_bounds_check( i32 %len1011, i32 1 )
  %array_dereferenced1012 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %elt_ptr1009
  %elt_ptr1013 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1012, i32 0, i32 1, i32 1
  %len_ptr1014 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr1013, i32 0, i32 0
  %len1015 = load i32* %len_ptr1014
  call void @oat_array_bounds_check( i32 %len1015, i32 2 )
  %array_dereferenced1016 = load { i32, [ 0 x i32 ] }** %elt_ptr1013
  %elt_ptr1017 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1016, i32 0, i32 1, i32 2
  %_lhs1018 = load i32* %elt_ptr1017
  ret i32 %_lhs1018
}


define void @a1001.init (){

__fresh198:
  %array_ptr972 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array973 = bitcast { i32, [ 0 x i32 ] }* %array_ptr972 to { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* 
  %array_ptr974 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array975 = bitcast { i32, [ 0 x i32 ] }* %array_ptr974 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr976 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array977 = bitcast { i32, [ 0 x i32 ] }* %array_ptr976 to { i32, [ 0 x i32 ] }* 
  %index_ptr978 = getelementptr { i32, [ 0 x i32 ] }* %array977, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr978
  %index_ptr979 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array975, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array977, { i32, [ 0 x i32 ] }** %index_ptr979
  %array_ptr980 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array981 = bitcast { i32, [ 0 x i32 ] }* %array_ptr980 to { i32, [ 0 x i32 ] }* 
  %index_ptr982 = getelementptr { i32, [ 0 x i32 ] }* %array981, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr982
  %index_ptr983 = getelementptr { i32, [ 0 x i32 ] }* %array981, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr983
  %index_ptr984 = getelementptr { i32, [ 0 x i32 ] }* %array981, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr984
  %index_ptr985 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array975, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array981, { i32, [ 0 x i32 ] }** %index_ptr985
  %index_ptr986 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array973, i32 0, i32 1, i32 0
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array975, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr986
  %array_ptr987 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array988 = bitcast { i32, [ 0 x i32 ] }* %array_ptr987 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr989 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array990 = bitcast { i32, [ 0 x i32 ] }* %array_ptr989 to { i32, [ 0 x i32 ] }* 
  %index_ptr991 = getelementptr { i32, [ 0 x i32 ] }* %array990, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr991
  %index_ptr992 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array988, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array990, { i32, [ 0 x i32 ] }** %index_ptr992
  %index_ptr993 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array973, i32 0, i32 1, i32 1
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array988, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr993
  %array_ptr994 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array995 = bitcast { i32, [ 0 x i32 ] }* %array_ptr994 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr996 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array997 = bitcast { i32, [ 0 x i32 ] }* %array_ptr996 to { i32, [ 0 x i32 ] }* 
  %index_ptr998 = getelementptr { i32, [ 0 x i32 ] }* %array997, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr998
  %index_ptr999 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array995, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array997, { i32, [ 0 x i32 ] }** %index_ptr999
  %index_ptr1000 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array973, i32 0, i32 1, i32 2
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array995, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr1000
  store { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array973, { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a1001
  ret void
}


