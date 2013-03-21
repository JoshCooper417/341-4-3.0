declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs881 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs881.init
@_oat_string877.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string877 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string877.str., i32 0, i32 0), align 4
@_oat_string874.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string874 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string874.str., i32 0, i32 0), align 4
@_oat_string868.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string868 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string868.str., i32 0, i32 0), align 4
@_oat_string865.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string865 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string865.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh154:
  call void @strs881.init(  )
  ret void
}


define i32 @program (i32 %argc888, { i32, [ 0 x i8* ] }* %argv886){

__fresh153:
  %argc_slot889 = alloca i32
  store i32 %argc888, i32* %argc_slot889
  %argv_slot887 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv886, { i32, [ 0 x i8* ] }** %argv_slot887
  %_lhs890 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs881
  %len_ptr891 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %_lhs890, i32 0, i32 0
  %len892 = load i32* %len_ptr891
  call void @oat_array_bounds_check( i32 %len892, i32 1 )
  %array_dereferenced893 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs881
  %elt_ptr894 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs881, i32 0, i32 1, i32 1
  %_lhs895 = load { i32, [ 0 x i8* ] }** %elt_ptr894
  %len_ptr896 = getelementptr { i32, [ 0 x i8* ] }* %_lhs895, i32 0, i32 0
  %len897 = load i32* %len_ptr896
  %_lhs898 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs881
  %len_ptr899 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %_lhs898, i32 0, i32 0
  %len900 = load i32* %len_ptr899
  call void @oat_array_bounds_check( i32 %len900, i32 1 )
  %array_dereferenced901 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs881
  %elt_ptr902 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs881, i32 0, i32 1, i32 1
  call void @oat_array_bounds_check( i32 %len897, i32 1 )
  %array_dereferenced903 = load { i32, [ 0 x i8* ] }** %elt_ptr902
  %elt_ptr904 = getelementptr { i32, [ 0 x i8* ] }** %elt_ptr902, i32 0, i32 1, i32 1
  %_lhs905 = load i8** %elt_ptr904
  call void @print_string( i8* %_lhs905 )
  ret i32 0
}


define void @strs881.init (){

__fresh152:
  %array_ptr861 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array862 = bitcast { i32, [ 0 x i32 ] }* %array_ptr861 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr863 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array864 = bitcast { i32, [ 0 x i32 ] }* %array_ptr863 to { i32, [ 0 x i8* ] }* 
  %strval866 = load i8** @_oat_string865
  %index_ptr867 = getelementptr { i32, [ 0 x i8* ] }* %array864, i32 0, i32 1, i32 0
  store i8* %strval866, i8** %index_ptr867
  %strval869 = load i8** @_oat_string868
  %index_ptr870 = getelementptr { i32, [ 0 x i8* ] }* %array864, i32 0, i32 1, i32 1
  store i8* %strval869, i8** %index_ptr870
  %index_ptr871 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array862, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array864, { i32, [ 0 x i8* ] }** %index_ptr871
  %array_ptr872 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array873 = bitcast { i32, [ 0 x i32 ] }* %array_ptr872 to { i32, [ 0 x i8* ] }* 
  %strval875 = load i8** @_oat_string874
  %index_ptr876 = getelementptr { i32, [ 0 x i8* ] }* %array873, i32 0, i32 1, i32 0
  store i8* %strval875, i8** %index_ptr876
  %strval878 = load i8** @_oat_string877
  %index_ptr879 = getelementptr { i32, [ 0 x i8* ] }* %array873, i32 0, i32 1, i32 1
  store i8* %strval878, i8** %index_ptr879
  %index_ptr880 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array862, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array873, { i32, [ 0 x i8* ] }** %index_ptr880
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array862, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs881
  ret void
}


