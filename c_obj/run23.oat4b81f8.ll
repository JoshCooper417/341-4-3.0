declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs894 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs894.init
@_oat_string890.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string890 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string890.str., i32 0, i32 0), align 4
@_oat_string887.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string887 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string887.str., i32 0, i32 0), align 4
@_oat_string881.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string881 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string881.str., i32 0, i32 0), align 4
@_oat_string878.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string878 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string878.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh182:
  call void @strs894.init(  )
  ret void
}


define i32 @program (i32 %argc901, { i32, [ 0 x i8* ] }* %argv899){

__fresh181:
  %argc_slot902 = alloca i32
  store i32 %argc901, i32* %argc_slot902
  %argv_slot900 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv899, { i32, [ 0 x i8* ] }** %argv_slot900
  %len_ptr903 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs894, i32 0, i32 0
  %len904 = load i32* %len_ptr903
  call void @oat_array_bounds_check( i32 %len904, i32 1 )
  %array_dereferenced905 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs894
  %elt_ptr906 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array_dereferenced905, i32 0, i32 1, i32 1
  %len_ptr907 = getelementptr { i32, [ 0 x i8* ] }** %elt_ptr906, i32 0, i32 0
  %len908 = load i32* %len_ptr907
  call void @oat_array_bounds_check( i32 %len908, i32 1 )
  %array_dereferenced909 = load { i32, [ 0 x i8* ] }** %elt_ptr906
  %elt_ptr910 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced909, i32 0, i32 1, i32 1
  %_lhs911 = load i8** %elt_ptr910
  call void @print_string( i8* %_lhs911 )
  ret i32 0
}


define void @strs894.init (){

__fresh180:
  %array_ptr874 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array875 = bitcast { i32, [ 0 x i32 ] }* %array_ptr874 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr876 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array877 = bitcast { i32, [ 0 x i32 ] }* %array_ptr876 to { i32, [ 0 x i8* ] }* 
  %strval879 = load i8** @_oat_string878
  %index_ptr880 = getelementptr { i32, [ 0 x i8* ] }* %array877, i32 0, i32 1, i32 0
  store i8* %strval879, i8** %index_ptr880
  %strval882 = load i8** @_oat_string881
  %index_ptr883 = getelementptr { i32, [ 0 x i8* ] }* %array877, i32 0, i32 1, i32 1
  store i8* %strval882, i8** %index_ptr883
  %index_ptr884 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array875, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array877, { i32, [ 0 x i8* ] }** %index_ptr884
  %array_ptr885 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array886 = bitcast { i32, [ 0 x i32 ] }* %array_ptr885 to { i32, [ 0 x i8* ] }* 
  %strval888 = load i8** @_oat_string887
  %index_ptr889 = getelementptr { i32, [ 0 x i8* ] }* %array886, i32 0, i32 1, i32 0
  store i8* %strval888, i8** %index_ptr889
  %strval891 = load i8** @_oat_string890
  %index_ptr892 = getelementptr { i32, [ 0 x i8* ] }* %array886, i32 0, i32 1, i32 1
  store i8* %strval891, i8** %index_ptr892
  %index_ptr893 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array875, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array886, { i32, [ 0 x i8* ] }** %index_ptr893
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array875, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs894
  ret void
}


