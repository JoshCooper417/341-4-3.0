declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a989 = global { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* zeroinitializer, align 4		; initialized by a989.init
define void @oat_init (){

__fresh224:
  call void @a989.init(  )
  ret void
}


define i32 @program (i32 %argc992, { i32, [ 0 x i8* ] }* %argv990){

__fresh223:
  %argc_slot993 = alloca i32
  store i32 %argc992, i32* %argc_slot993
  %argv_slot991 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv990, { i32, [ 0 x i8* ] }** %argv_slot991
  %len_ptr994 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a989, i32 0, i32 0
  %len995 = load i32* %len_ptr994
  call void @oat_array_bounds_check( i32 %len995, i32 0 )
  %array_dereferenced996 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a989
  %elt_ptr997 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array_dereferenced996, i32 0, i32 1, i32 0
  %len_ptr998 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %elt_ptr997, i32 0, i32 0
  %len999 = load i32* %len_ptr998
  call void @oat_array_bounds_check( i32 %len999, i32 1 )
  %array_dereferenced1000 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %elt_ptr997
  %elt_ptr1001 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced1000, i32 0, i32 1, i32 1
  %len_ptr1002 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr1001, i32 0, i32 0
  %len1003 = load i32* %len_ptr1002
  call void @oat_array_bounds_check( i32 %len1003, i32 2 )
  %array_dereferenced1004 = load { i32, [ 0 x i32 ] }** %elt_ptr1001
  %elt_ptr1005 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1004, i32 0, i32 1, i32 2
  %_lhs1006 = load i32* %elt_ptr1005
  ret i32 %_lhs1006
}


define void @a989.init (){

__fresh222:
  %array_ptr960 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array961 = bitcast { i32, [ 0 x i32 ] }* %array_ptr960 to { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* 
  %array_ptr962 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array963 = bitcast { i32, [ 0 x i32 ] }* %array_ptr962 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr964 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array965 = bitcast { i32, [ 0 x i32 ] }* %array_ptr964 to { i32, [ 0 x i32 ] }* 
  %index_ptr966 = getelementptr { i32, [ 0 x i32 ] }* %array965, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr966
  %index_ptr967 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array963, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array965, { i32, [ 0 x i32 ] }** %index_ptr967
  %array_ptr968 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array969 = bitcast { i32, [ 0 x i32 ] }* %array_ptr968 to { i32, [ 0 x i32 ] }* 
  %index_ptr970 = getelementptr { i32, [ 0 x i32 ] }* %array969, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr970
  %index_ptr971 = getelementptr { i32, [ 0 x i32 ] }* %array969, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr971
  %index_ptr972 = getelementptr { i32, [ 0 x i32 ] }* %array969, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr972
  %index_ptr973 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array963, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array969, { i32, [ 0 x i32 ] }** %index_ptr973
  %index_ptr974 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array961, i32 0, i32 1, i32 0
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array963, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr974
  %array_ptr975 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array976 = bitcast { i32, [ 0 x i32 ] }* %array_ptr975 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr977 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array978 = bitcast { i32, [ 0 x i32 ] }* %array_ptr977 to { i32, [ 0 x i32 ] }* 
  %index_ptr979 = getelementptr { i32, [ 0 x i32 ] }* %array978, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr979
  %index_ptr980 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array976, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array978, { i32, [ 0 x i32 ] }** %index_ptr980
  %index_ptr981 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array961, i32 0, i32 1, i32 1
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array976, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr981
  %array_ptr982 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array983 = bitcast { i32, [ 0 x i32 ] }* %array_ptr982 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr984 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array985 = bitcast { i32, [ 0 x i32 ] }* %array_ptr984 to { i32, [ 0 x i32 ] }* 
  %index_ptr986 = getelementptr { i32, [ 0 x i32 ] }* %array985, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr986
  %index_ptr987 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array983, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array985, { i32, [ 0 x i32 ] }** %index_ptr987
  %index_ptr988 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array961, i32 0, i32 1, i32 2
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array983, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr988
  store { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array961, { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a989
  ret void
}


