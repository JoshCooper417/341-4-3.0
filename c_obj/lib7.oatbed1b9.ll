declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh415:
  ret void
}


define i32 @program (i32 %argc2001, { i32, [ 0 x i8* ] }* %argv1999){

__fresh412:
  %argc_slot2002 = alloca i32
  store i32 %argc2001, i32* %argc_slot2002
  %argv_slot2000 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1999, { i32, [ 0 x i8* ] }** %argv_slot2000
  %array_ptr2003 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array2004 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2003 to { i32, [ 0 x i32 ] }* 
  %index_ptr2005 = getelementptr { i32, [ 0 x i32 ] }* %array2004, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr2005
  %index_ptr2006 = getelementptr { i32, [ 0 x i32 ] }* %array2004, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr2006
  %index_ptr2007 = getelementptr { i32, [ 0 x i32 ] }* %array2004, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr2007
  %index_ptr2008 = getelementptr { i32, [ 0 x i32 ] }* %array2004, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr2008
  %index_ptr2009 = getelementptr { i32, [ 0 x i32 ] }* %array2004, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr2009
  %arr12010 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2004, { i32, [ 0 x i32 ] }** %arr12010
  %_lhs2011 = load { i32, [ 0 x i32 ] }** %arr12010
  %ret2012 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2011 )
  %str2013 = alloca i8*
  store i8* %ret2012, i8** %str2013
  %_lhs2014 = load i8** %str2013
  %ret2015 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs2014 )
  %arr22016 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret2015, { i32, [ 0 x i32 ] }** %arr22016
  %s2017 = alloca i32
  store i32 0, i32* %s2017
  %i2018 = alloca i32
  store i32 0, i32* %i2018
  br label %__cond411

__cond411:
  %_lhs2019 = load i32* %i2018
  %bop2020 = icmp slt i32 %_lhs2019, 5
  br i1 %bop2020, label %__body410, label %__post409

__fresh413:
  br label %__body410

__body410:
  %_lhs2021 = load i32* %s2017
  %_lhs2022 = load i32* %i2018
  %len_ptr2023 = getelementptr { i32, [ 0 x i32 ] }** %arr22016, i32 0, i32 0
  %len2024 = load i32* %len_ptr2023
  call void @oat_array_bounds_check( i32 %len2024, i32 %_lhs2022 )
  %array_dereferenced2025 = load { i32, [ 0 x i32 ] }** %arr22016
  %elt_ptr2026 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced2025, i32 0, i32 1, i32 %_lhs2022
  %_lhs2027 = load i32* %elt_ptr2026
  %bop2028 = add i32 %_lhs2021, %_lhs2027
  store i32 %bop2028, i32* %s2017
  %_lhs2029 = load i32* %i2018
  %bop2030 = add i32 %_lhs2029, 1
  store i32 %bop2030, i32* %i2018
  br label %__cond411

__fresh414:
  br label %__post409

__post409:
  %_lhs2031 = load i32* %s2017
  ret i32 %_lhs2031
}


