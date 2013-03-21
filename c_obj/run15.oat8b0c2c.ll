declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh198:
  ret void
}


define i32 @program (i32 %argc880, { i32, [ 0 x i8* ] }* %argv878){

__fresh197:
  %argc_slot881 = alloca i32
  store i32 %argc880, i32* %argc_slot881
  %argv_slot879 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv878, { i32, [ 0 x i8* ] }** %argv_slot879
  store i32 1, i32* %i882
  %a897 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array892, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a897
  store i32 1, i32* %i898
  %arr915 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array910, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr915
  %len_ptr916 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr915, i32 0, i32 0
  %len917 = load i32* %len_ptr916
  call void @oat_array_bounds_check( i32 %len917, i32 3 )
  %array_dereferenced918 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr915
  %elt_ptr919 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced918, i32 0, i32 1, i32 3
  %len_ptr920 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr919, i32 0, i32 0
  %len921 = load i32* %len_ptr920
  call void @oat_array_bounds_check( i32 %len921, i32 4 )
  %array_dereferenced922 = load { i32, [ 0 x i32 ] }** %elt_ptr919
  %elt_ptr923 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced922, i32 0, i32 1, i32 4
  %_lhs924 = load i32* %elt_ptr923
  %len_ptr925 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a897, i32 0, i32 0
  %len926 = load i32* %len_ptr925
  call void @oat_array_bounds_check( i32 %len926, i32 1 )
  %array_dereferenced927 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a897
  %elt_ptr928 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced927, i32 0, i32 1, i32 1
  %len_ptr929 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr928, i32 0, i32 0
  %len930 = load i32* %len_ptr929
  call void @oat_array_bounds_check( i32 %len930, i32 2 )
  %array_dereferenced931 = load { i32, [ 0 x i32 ] }** %elt_ptr928
  %elt_ptr932 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced931, i32 0, i32 1, i32 2
  %_lhs933 = load i32* %elt_ptr932
  %bop934 = add i32 %_lhs924, %_lhs933
  store i32 1, i32* %i935
  %ret952 = call i32 @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array947 )
  %bop953 = add i32 %bop934, %ret952
  %ret954 = call i32 @g ( i32 4 )
  %bop955 = add i32 %bop953, %ret954
  ret i32 %bop955
}


define i32 @g (i32 %x851){

__fresh178:
  %x_slot852 = alloca i32
  store i32 %x851, i32* %x_slot852
  store i32 1, i32* %i853
  %arr868 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array863, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr868
  %len_ptr869 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr868, i32 0, i32 0
  %len870 = load i32* %len_ptr869
  call void @oat_array_bounds_check( i32 %len870, i32 1 )
  %array_dereferenced871 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr868
  %elt_ptr872 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced871, i32 0, i32 1, i32 1
  %len_ptr873 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr872, i32 0, i32 0
  %len874 = load i32* %len_ptr873
  call void @oat_array_bounds_check( i32 %len874, i32 1 )
  %array_dereferenced875 = load { i32, [ 0 x i32 ] }** %elt_ptr872
  %elt_ptr876 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced875, i32 0, i32 1, i32 1
  %_lhs877 = load i32* %elt_ptr876
  ret i32 %_lhs877
}


define i32 @f ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a840){

__fresh171:
  %a_slot841 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a840, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot841
  %len_ptr842 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot841, i32 0, i32 0
  %len843 = load i32* %len_ptr842
  call void @oat_array_bounds_check( i32 %len843, i32 1 )
  %array_dereferenced844 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot841
  %elt_ptr845 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced844, i32 0, i32 1, i32 1
  %len_ptr846 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr845, i32 0, i32 0
  %len847 = load i32* %len_ptr846
  call void @oat_array_bounds_check( i32 %len847, i32 1 )
  %array_dereferenced848 = load { i32, [ 0 x i32 ] }** %elt_ptr845
  %elt_ptr849 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced848, i32 0, i32 1, i32 1
  %_lhs850 = load i32* %elt_ptr849
  ret i32 %_lhs850
}


