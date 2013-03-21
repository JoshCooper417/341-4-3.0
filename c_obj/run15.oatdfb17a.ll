declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh256:
  ret void
}


define i32 @program (i32 %argc917, { i32, [ 0 x i8* ] }* %argv915){

__fresh243:
  %argc_slot918 = alloca i32
  store i32 %argc917, i32* %argc_slot918
  %argv_slot916 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv915, { i32, [ 0 x i8* ] }** %argv_slot916
  br label %__check229

__check229:
  %cmp_op930 = icmp slt i32 1, 3
  br i32 %cmp_op930, label %__body230, label %__end228

__fresh244:
  br label %__body230

__body230:
  store i32* %i919, i32 1
  br label %__check226

__check226:
  %cmp_op925 = icmp slt i32 1, 3
  br i32 %cmp_op925, label %__body227, label %__end225

__fresh245:
  br label %__body227

__body227:
  store i32* %j920, i32 1
  %_lhs921 = load i32* %j920
  %elem_ptr924 = getelementptr { i32, [ 0 x i32 ] }* %array923, i32 0, i32 1, i32 1
  %elem_ptr924 = load i32* %j920
  %incr_op926 = add i32 1, 1
  store i32 1, i32 %incr_op926
  br label %__check226

__fresh246:
  br label %__end225

__end225:
  %elem_ptr929 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array928, i32 0, i32 1, i32 1
  %elem_ptr929 = load i32* %i919
  %incr_op931 = add i32 1, 1
  store i32 1, i32 %incr_op931
  br label %__check229

__fresh247:
  br label %__end228

__end228:
  %a932 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array928, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a932
  br label %__check235

__check235:
  %cmp_op946 = icmp slt i32 1, 4
  br i32 %cmp_op946, label %__body236, label %__end234

__fresh248:
  br label %__body236

__body236:
  store i32* %i933, i32 1
  br label %__check232

__check232:
  %cmp_op941 = icmp slt i32 1, 5
  br i32 %cmp_op941, label %__body233, label %__end231

__fresh249:
  br label %__body233

__body233:
  store i32* %j934, i32 1
  %_lhs935 = load i32* %i933
  %_lhs936 = load i32* %j934
  %bop937 = mul i32 %_lhs935, %_lhs936
  %elem_ptr940 = getelementptr { i32, [ 0 x i32 ] }* %array939, i32 0, i32 1, i32 1
  %elem_ptr940 = load i32* %j934
  %incr_op942 = add i32 1, 1
  store i32 1, i32 %incr_op942
  br label %__check232

__fresh250:
  br label %__end231

__end231:
  %elem_ptr945 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array944, i32 0, i32 1, i32 1
  %elem_ptr945 = load i32* %i933
  %incr_op947 = add i32 1, 1
  store i32 1, i32 %incr_op947
  br label %__check235

__fresh251:
  br label %__end234

__end234:
  %arr948 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array944, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr948
  %len_ptr949 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr948, i32 0, i32 0
  %len950 = load i32* %len_ptr949
  call void @oat_array_bounds_check( i32 %len950, i32 3 )
  %array_dereferenced951 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr948
  %elt_ptr952 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced951, i32 0, i32 1, i32 3
  %len_ptr953 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr952, i32 0, i32 0
  %len954 = load i32* %len_ptr953
  call void @oat_array_bounds_check( i32 %len954, i32 4 )
  %array_dereferenced955 = load { i32, [ 0 x i32 ] }** %elt_ptr952
  %elt_ptr956 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced955, i32 0, i32 1, i32 4
  %_lhs957 = load i32* %elt_ptr956
  %len_ptr958 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a932, i32 0, i32 0
  %len959 = load i32* %len_ptr958
  call void @oat_array_bounds_check( i32 %len959, i32 1 )
  %array_dereferenced960 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a932
  %elt_ptr961 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced960, i32 0, i32 1, i32 1
  %len_ptr962 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr961, i32 0, i32 0
  %len963 = load i32* %len_ptr962
  call void @oat_array_bounds_check( i32 %len963, i32 2 )
  %array_dereferenced964 = load { i32, [ 0 x i32 ] }** %elt_ptr961
  %elt_ptr965 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced964, i32 0, i32 1, i32 2
  %_lhs966 = load i32* %elt_ptr965
  %bop967 = add i32 %_lhs957, %_lhs966
  br label %__check241

__check241:
  %cmp_op981 = icmp slt i32 1, 3
  br i32 %cmp_op981, label %__body242, label %__end240

__fresh252:
  br label %__body242

__body242:
  store i32* %i968, i32 1
  br label %__check238

__check238:
  %cmp_op976 = icmp slt i32 1, 3
  br i32 %cmp_op976, label %__body239, label %__end237

__fresh253:
  br label %__body239

__body239:
  store i32* %j969, i32 1
  %_lhs970 = load i32* %i968
  %_lhs971 = load i32* %j969
  %bop972 = mul i32 %_lhs970, %_lhs971
  %elem_ptr975 = getelementptr { i32, [ 0 x i32 ] }* %array974, i32 0, i32 1, i32 1
  %elem_ptr975 = load i32* %j969
  %incr_op977 = add i32 1, 1
  store i32 1, i32 %incr_op977
  br label %__check238

__fresh254:
  br label %__end237

__end237:
  %elem_ptr980 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array979, i32 0, i32 1, i32 1
  %elem_ptr980 = load i32* %i968
  %incr_op982 = add i32 1, 1
  store i32 1, i32 %incr_op982
  br label %__check241

__fresh255:
  br label %__end240

__end240:
  %ret983 = call i32 @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array979 )
  %bop984 = add i32 %bop967, %ret983
  %ret985 = call i32 @g ( i32 4 )
  %bop986 = add i32 %bop984, %ret985
  ret i32 %bop986
}


define i32 @g (i32 %x890){

__fresh220:
  %x_slot891 = alloca i32
  store i32 %x890, i32* %x_slot891
  br label %__check218

__check218:
  %cmp_op903 = icmp slt i32 1, 3
  br i32 %cmp_op903, label %__body219, label %__end217

__fresh221:
  br label %__body219

__body219:
  store i32* %i892, i32 1
  br label %__check215

__check215:
  %cmp_op898 = icmp slt i32 1, 3
  br i32 %cmp_op898, label %__body216, label %__end214

__fresh222:
  br label %__body216

__body216:
  store i32* %j893, i32 1
  %_lhs894 = load i32* %x_slot891
  %elem_ptr897 = getelementptr { i32, [ 0 x i32 ] }* %array896, i32 0, i32 1, i32 1
  %elem_ptr897 = load i32* %j893
  %incr_op899 = add i32 1, 1
  store i32 1, i32 %incr_op899
  br label %__check215

__fresh223:
  br label %__end214

__end214:
  %elem_ptr902 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array901, i32 0, i32 1, i32 1
  %elem_ptr902 = load i32* %i892
  %incr_op904 = add i32 1, 1
  store i32 1, i32 %incr_op904
  br label %__check218

__fresh224:
  br label %__end217

__end217:
  %arr905 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array901, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr905
  %len_ptr906 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr905, i32 0, i32 0
  %len907 = load i32* %len_ptr906
  call void @oat_array_bounds_check( i32 %len907, i32 1 )
  %array_dereferenced908 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr905
  %elt_ptr909 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced908, i32 0, i32 1, i32 1
  %len_ptr910 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr909, i32 0, i32 0
  %len911 = load i32* %len_ptr910
  call void @oat_array_bounds_check( i32 %len911, i32 1 )
  %array_dereferenced912 = load { i32, [ 0 x i32 ] }** %elt_ptr909
  %elt_ptr913 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced912, i32 0, i32 1, i32 1
  %_lhs914 = load i32* %elt_ptr913
  ret i32 %_lhs914
}


define i32 @f ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a879){

__fresh213:
  %a_slot880 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a879, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot880
  %len_ptr881 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot880, i32 0, i32 0
  %len882 = load i32* %len_ptr881
  call void @oat_array_bounds_check( i32 %len882, i32 1 )
  %array_dereferenced883 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot880
  %elt_ptr884 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced883, i32 0, i32 1, i32 1
  %len_ptr885 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr884, i32 0, i32 0
  %len886 = load i32* %len_ptr885
  call void @oat_array_bounds_check( i32 %len886, i32 1 )
  %array_dereferenced887 = load { i32, [ 0 x i32 ] }** %elt_ptr884
  %elt_ptr888 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced887, i32 0, i32 1, i32 1
  %_lhs889 = load i32* %elt_ptr888
  ret i32 %_lhs889
}


