declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs852 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs852.init
@_oat_string849.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string849 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string849.str., i32 0, i32 0), align 4
@_oat_string846.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string846 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string846.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh304:
  call void @strs852.init(  )
  ret void
}


define i32 @program (i32 %argc857, { i32, [ 0 x i8* ] }* %argv855){

__fresh303:
  %argc_slot858 = alloca i32
  store i32 %argc857, i32* %argc_slot858
  %argv_slot856 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv855, { i32, [ 0 x i8* ] }** %argv_slot856
  %array_dereferenced859 = load { i32, [ 0 x i8* ] }** @strs852
  %len_ptr860 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced859, i32 0, i32 0
  %len861 = load i32* %len_ptr860
  call void @oat_array_bounds_check( i32 %len861, i32 0 )
  %elt_ptr862 = getelementptr { i32, [ 0 x i8* ] }* %array_dereferenced859, i32 0, i32 1, i32 0
  %_lhs863 = load i8** %elt_ptr862
  call void @print_string( i8* %_lhs863 )
  ret i32 0
}


define void @strs852.init (){

__fresh302:
  %array_ptr844 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array845 = bitcast { i32, [ 0 x i32 ] }* %array_ptr844 to { i32, [ 0 x i8* ] }* 
  %strval847 = load i8** @_oat_string846
  %index_ptr848 = getelementptr { i32, [ 0 x i8* ] }* %array845, i32 0, i32 1, i32 0
  store i8* %strval847, i8** %index_ptr848
  %strval850 = load i8** @_oat_string849
  %index_ptr851 = getelementptr { i32, [ 0 x i8* ] }* %array845, i32 0, i32 1, i32 1
  store i8* %strval850, i8** %index_ptr851
  store { i32, [ 0 x i8* ] }* %array845, { i32, [ 0 x i8* ] }** @strs852
  ret void
}


