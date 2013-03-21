declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs874 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs874.init
@_oat_string870.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string870 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string870.str., i32 0, i32 0), align 4
@_oat_string867.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string867 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string867.str., i32 0, i32 0), align 4
@_oat_string861.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string861 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string861.str., i32 0, i32 0), align 4
@_oat_string858.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string858 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string858.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh304:
  call void @strs874.init(  )
  ret void
}


define i32 @program (i32 %argc881, { i32, [ 0 x i8* ] }* %argv879){

__fresh303:
  %argc_slot882 = alloca i32
  store i32 %argc881, i32* %argc_slot882
  %argv_slot880 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv879, { i32, [ 0 x i8* ] }** %argv_slot880
  %array_dereferenced883 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs874
  %len_ptr884 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array_dereferenced883, i32 0, i32 0
  %len885 = load i32* %len_ptr884
  call void @oat_array_bounds_check( i32 %len885, i32 1 )
  %elt_ptr886 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array_dereferenced883, i32 0, i32 1, i32 1
  %array_dereferenced887 = load { i32, [ 0 x i8* ] }** %elt_ptr886
  %len_ptr888 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced887, i32 0, i32 0
  %len889 = load i32* %len_ptr888
  call void @oat_array_bounds_check( i32 %len889, i32 1 )
  %elt_ptr890 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced887, i32 0, i32 1, i32 1
  %_lhs891 = load i8** %elt_ptr890
  call void @print_string( i8* %_lhs891 )
  ret i32 0
}


define void @strs874.init (){

__fresh302:
  %array_ptr854 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array855 = bitcast { i32, [ 0 x i32 ] }* %array_ptr854 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr856 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array857 = bitcast { i32, [ 0 x i32 ] }* %array_ptr856 to { i32, [ 0 x i8* ] }* 
  %strval859 = load i8** @_oat_string858
  %index_ptr860 = getelementptr { i32, [ 0 x i8* ] }* %array857, i32 0, i32 1, i32 0
  store i8* %strval859, i8** %index_ptr860
  %strval862 = load i8** @_oat_string861
  %index_ptr863 = getelementptr { i32, [ 0 x i8* ] }* %array857, i32 0, i32 1, i32 1
  store i8* %strval862, i8** %index_ptr863
  %index_ptr864 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array855, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array857, { i32, [ 0 x i8* ] }** %index_ptr864
  %array_ptr865 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array866 = bitcast { i32, [ 0 x i32 ] }* %array_ptr865 to { i32, [ 0 x i8* ] }* 
  %strval868 = load i8** @_oat_string867
  %index_ptr869 = getelementptr { i32, [ 0 x i8* ] }* %array866, i32 0, i32 1, i32 0
  store i8* %strval868, i8** %index_ptr869
  %strval871 = load i8** @_oat_string870
  %index_ptr872 = getelementptr { i32, [ 0 x i8* ] }* %array866, i32 0, i32 1, i32 1
  store i8* %strval871, i8** %index_ptr872
  %index_ptr873 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array855, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array866, { i32, [ 0 x i8* ] }** %index_ptr873
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array855, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs874
  ret void
}


