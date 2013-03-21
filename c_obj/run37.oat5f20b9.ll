declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh402:
  ret void
}


define i32 @program (i32 %argc1992, { i32, [ 0 x i8* ] }* %argv1990){

__fresh401:
  %argc_slot1993 = alloca i32
  store i32 %argc1992, i32* %argc_slot1993
  %argv_slot1991 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1990, { i32, [ 0 x i8* ] }** %argv_slot1991
  %array_ptr1994 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1995 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1994 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1996 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1997 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1996 to { i32, [ 0 x i32 ] }* 
  %index_ptr1998 = getelementptr { i32, [ 0 x i32 ] }* %array1997, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1998
  %index_ptr1999 = getelementptr { i32, [ 0 x i32 ] }* %array1997, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1999
  %index_ptr2000 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1995, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1997, { i32, [ 0 x i32 ] }** %index_ptr2000
  %array_ptr2001 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2002 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2001 to { i32, [ 0 x i32 ] }* 
  %index_ptr2003 = getelementptr { i32, [ 0 x i32 ] }* %array2002, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2003
  %index_ptr2004 = getelementptr { i32, [ 0 x i32 ] }* %array2002, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2004
  %index_ptr2005 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1995, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2002, { i32, [ 0 x i32 ] }** %index_ptr2005
  %a2006 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1995, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2006
  %_lhs2007 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2006
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2007
}


