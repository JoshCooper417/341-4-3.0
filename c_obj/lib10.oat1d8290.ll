declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2016.str. = private unnamed_addr constant [ 7 x i8 ] c "Hello?\00", align 4
@_oat_string2016 = global i8* getelementptr inbounds ([ 7 x i8 ]* @_oat_string2016.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh331:
  ret void
}


define i32 @program (i32 %argc2014, { i32, [ 0 x i8* ] }* %argv2012){

__fresh330:
  %argc_slot2015 = alloca i32
  store i32 %argc2014, i32* %argc_slot2015
  %argv_slot2013 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2012, { i32, [ 0 x i8* ] }** %argv_slot2013
  %strval2017 = load i8** @_oat_string2016
  %ret2018 = call i32 @my_length_of_string ( i8* %strval2017 )
  ret i32 %ret2018
}


define i32 @my_length_of_string (i8* %str2006){

__fresh329:
  %str_slot2007 = alloca i8*
  store i8* %str2006, i8** %str_slot2007
  %_lhs2008 = load i8** %str_slot2007
  %ret2009 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs2008 )
  %len_ptr2010 = getelementptr { i32, [ 0 x i32 ] }* %ret2009, i32 0, i32 0
  %len2011 = load i32* %len_ptr2010
  ret i32 %len2011
}


