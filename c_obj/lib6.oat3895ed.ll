declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11973 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11973.init
define void @oat_init (){

__fresh408:
  call void @arr11973.init(  )
  ret void
}


define i32 @program (i32 %argc1976, { i32, [ 0 x i8* ] }* %argv1974){

__fresh405:
  %argc_slot1977 = alloca i32
  store i32 %argc1976, i32* %argc_slot1977
  %argv_slot1975 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1974, { i32, [ 0 x i8* ] }** %argv_slot1975
  %_lhs1978 = load { i32, [ 0 x i32 ] }** @arr11973
  %ret1979 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1978 )
  %str1980 = alloca i8*
  store i8* %ret1979, i8** %str1980
  %_lhs1981 = load i8** %str1980
  %ret1982 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1981 )
  %arr21983 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1982, { i32, [ 0 x i32 ] }** %arr21983
  %s1984 = alloca i32
  store i32 0, i32* %s1984
  %i1985 = alloca i32
  store i32 0, i32* %i1985
  br label %__cond404

__cond404:
  %_lhs1986 = load i32* %i1985
  %bop1987 = icmp slt i32 %_lhs1986, 5
  br i1 %bop1987, label %__body403, label %__post402

__fresh406:
  br label %__body403

__body403:
  %_lhs1988 = load i32* %s1984
  %_lhs1989 = load i32* %i1985
  %len_ptr1990 = getelementptr { i32, [ 0 x i32 ] }** %arr21983, i32 0, i32 0
  %len1991 = load i32* %len_ptr1990
  call void @oat_array_bounds_check( i32 %len1991, i32 %_lhs1989 )
  %array_dereferenced1992 = load { i32, [ 0 x i32 ] }** %arr21983
  %elt_ptr1993 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1992, i32 0, i32 1, i32 %_lhs1989
  %_lhs1994 = load i32* %elt_ptr1993
  %bop1995 = add i32 %_lhs1988, %_lhs1994
  store i32 %bop1995, i32* %s1984
  %_lhs1996 = load i32* %i1985
  %bop1997 = add i32 %_lhs1996, 1
  store i32 %bop1997, i32* %i1985
  br label %__cond404

__fresh407:
  br label %__post402

__post402:
  %_lhs1998 = load i32* %s1984
  ret i32 %_lhs1998
}


define void @arr11973.init (){

__fresh401:
  %array_ptr1966 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1967 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1966 to { i32, [ 0 x i32 ] }* 
  %index_ptr1968 = getelementptr { i32, [ 0 x i32 ] }* %array1967, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1968
  %index_ptr1969 = getelementptr { i32, [ 0 x i32 ] }* %array1967, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1969
  %index_ptr1970 = getelementptr { i32, [ 0 x i32 ] }* %array1967, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1970
  %index_ptr1971 = getelementptr { i32, [ 0 x i32 ] }* %array1967, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1971
  %index_ptr1972 = getelementptr { i32, [ 0 x i32 ] }* %array1967, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1972
  store { i32, [ 0 x i32 ] }* %array1967, { i32, [ 0 x i32 ] }** @arr11973
  ret void
}


