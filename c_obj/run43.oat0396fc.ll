declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a859 = global { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* zeroinitializer, align 4		; initialized by a859.init
define void @oat_init (){

__fresh157:
  call void @a859.init(  )
  ret void
}


define i32 @program (i32 %argc862, { i32, [ 0 x i8* ] }* %argv860){

__fresh156:
  %argc_slot863 = alloca i32
  store i32 %argc862, i32* %argc_slot863
  %argv_slot861 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv860, { i32, [ 0 x i8* ] }** %argv_slot861
  %len_ptr864 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a859, i32 0, i32 0
  %len865 = load i32* %len_ptr864
  call void @oat_array_bounds_check( i32 %len865, i32 0 )
  %array_dereferenced866 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a859
  %elt_ptr867 = getelementptr i32 %array_dereferenced866, i32 0, i32 1, i32 0
  %len_ptr868 = getelementptr i32* %elt_ptr867, i32 0, i32 0
  %len869 = load i32* %len_ptr868
  call void @oat_array_bounds_check( i32 %len869, i32 1 )
  %array_dereferenced870 = load i32* %elt_ptr867
  %elt_ptr871 = getelementptr i32 %array_dereferenced870, i32 0, i32 1, i32 1
  %len_ptr872 = getelementptr i32* %elt_ptr871, i32 0, i32 0
  %len873 = load i32* %len_ptr872
  call void @oat_array_bounds_check( i32 %len873, i32 2 )
  %array_dereferenced874 = load i32* %elt_ptr871
  %elt_ptr875 = getelementptr i32 %array_dereferenced874, i32 0, i32 1, i32 2
  %_lhs876 = load i32* %elt_ptr875
  ret i32 %_lhs876
}


define void @a859.init (){

__fresh155:
  %array_ptr830 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array831 = bitcast { i32, [ 0 x i32 ] }* %array_ptr830 to { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* 
  %array_ptr832 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array833 = bitcast { i32, [ 0 x i32 ] }* %array_ptr832 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr834 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array835 = bitcast { i32, [ 0 x i32 ] }* %array_ptr834 to { i32, [ 0 x i32 ] }* 
  %index_ptr836 = getelementptr { i32, [ 0 x i32 ] }* %array835, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr836
  %index_ptr837 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array833, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array835, { i32, [ 0 x i32 ] }** %index_ptr837
  %array_ptr838 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array839 = bitcast { i32, [ 0 x i32 ] }* %array_ptr838 to { i32, [ 0 x i32 ] }* 
  %index_ptr840 = getelementptr { i32, [ 0 x i32 ] }* %array839, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr840
  %index_ptr841 = getelementptr { i32, [ 0 x i32 ] }* %array839, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr841
  %index_ptr842 = getelementptr { i32, [ 0 x i32 ] }* %array839, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr842
  %index_ptr843 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array833, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array839, { i32, [ 0 x i32 ] }** %index_ptr843
  %index_ptr844 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array831, i32 0, i32 1, i32 0
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array833, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr844
  %array_ptr845 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array846 = bitcast { i32, [ 0 x i32 ] }* %array_ptr845 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr847 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array848 = bitcast { i32, [ 0 x i32 ] }* %array_ptr847 to { i32, [ 0 x i32 ] }* 
  %index_ptr849 = getelementptr { i32, [ 0 x i32 ] }* %array848, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr849
  %index_ptr850 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array846, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array848, { i32, [ 0 x i32 ] }** %index_ptr850
  %index_ptr851 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array831, i32 0, i32 1, i32 1
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array846, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr851
  %array_ptr852 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array853 = bitcast { i32, [ 0 x i32 ] }* %array_ptr852 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr854 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array855 = bitcast { i32, [ 0 x i32 ] }* %array_ptr854 to { i32, [ 0 x i32 ] }* 
  %index_ptr856 = getelementptr { i32, [ 0 x i32 ] }* %array855, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr856
  %index_ptr857 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array853, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array855, { i32, [ 0 x i32 ] }** %index_ptr857
  %index_ptr858 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array831, i32 0, i32 1, i32 2
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array853, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr858
  store { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array831, { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** @a859
  ret void
}


