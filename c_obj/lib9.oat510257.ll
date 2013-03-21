declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh424:
  ret void
}


define i32 @program (i32 %argc2004, { i32, [ 0 x i8* ] }* %argv2002){

__fresh421:
  %argc_slot2005 = alloca i32
  store i32 %argc2004, i32* %argc_slot2005
  %argv_slot2003 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2002, { i32, [ 0 x i8* ] }** %argv_slot2003
  %i2006 = alloca i32
  store i32 1, i32* %i2006
  br label %__cond420

__cond420:
  %_lhs2007 = load i32* %i2006
  %_lhs2008 = load i32* %argc_slot2005
  %bop2009 = icmp slt i32 %_lhs2007, %_lhs2008
  br i1 %bop2009, label %__body419, label %__post418

__fresh422:
  br label %__body419

__body419:
  %_lhs2010 = load i32* %i2006
  %len_ptr2011 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot2003, i32 0, i32 0
  %len2012 = load i32* %len_ptr2011
  call void @oat_array_bounds_check( i32 %len2012, i32 %_lhs2010 )
  %array_dereferenced2013 = load { i32, [ 0 x i8* ] }** %argv_slot2003
  %elt_ptr2014 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced2013, i32 0, i32 1, i32 %_lhs2010
  %_lhs2015 = load i8** %elt_ptr2014
  call void @print_string( i8* %_lhs2015 )
  %_lhs2016 = load i32* %i2006
  %bop2017 = add i32 %_lhs2016, 1
  store i32 %bop2017, i32* %i2006
  br label %__cond420

__fresh423:
  br label %__post418

__post418:
  %_lhs2018 = load i32* %argc_slot2005
  ret i32 %_lhs2018
}


