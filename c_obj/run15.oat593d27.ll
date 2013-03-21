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


define i32 @program (i32 %argc931, { i32, [ 0 x i8* ] }* %argv929){

__fresh243:
  %argc_slot932 = alloca i32
  store i32 %argc931, i32* %argc_slot932
  %argv_slot930 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv929, { i32, [ 0 x i8* ] }** %argv_slot930
  store i32 1, i32* %index_op946
  br label %__check229

__check229:
  %cmp_op945 = icmp slt i32* %index_op946, 3
  br i32 %cmp_op945, label %__body230, label %__end228

__fresh244:
  br label %__body230

__body230:
  %index_op946 = load i32* %i933
  store i32 1, i32* %index_op940
  br label %__check226

__check226:
  %cmp_op939 = icmp slt i32* %index_op940, 3
  br i32 %cmp_op939, label %__body227, label %__end225

__fresh245:
  br label %__body227

__body227:
  %index_op940 = load i32* %j934
  %_lhs935 = load i32* %j934
  %elem_ptr938 = getelementptr { i32, [ 0 x i32 ] }* %array937, i32 0, i32 1, i32* %index_op940
  %elem_ptr938 = load i32* %j934
  %incr_op941 = add i32* %index_op940, 1
  store i32* %index_op940, i32 %incr_op941
  br label %__check226

__fresh246:
  br label %__end225

__end225:
  %elem_ptr944 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array943, i32 0, i32 1, i32* %index_op946
  %elem_ptr944 = load i32* %i933
  %incr_op947 = add i32* %index_op946, 1
  store i32* %index_op946, i32 %incr_op947
  br label %__check229

__fresh247:
  br label %__end228

__end228:
  %a948 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array943, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a948
  store i32 1, i32* %index_op964
  br label %__check235

__check235:
  %cmp_op963 = icmp slt i32* %index_op964, 4
  br i32 %cmp_op963, label %__body236, label %__end234

__fresh248:
  br label %__body236

__body236:
  %index_op964 = load i32* %i949
  store i32 1, i32* %index_op958
  br label %__check232

__check232:
  %cmp_op957 = icmp slt i32* %index_op958, 5
  br i32 %cmp_op957, label %__body233, label %__end231

__fresh249:
  br label %__body233

__body233:
  %index_op958 = load i32* %j950
  %_lhs951 = load i32* %i949
  %_lhs952 = load i32* %j950
  %bop953 = mul i32 %_lhs951, %_lhs952
  %elem_ptr956 = getelementptr { i32, [ 0 x i32 ] }* %array955, i32 0, i32 1, i32* %index_op958
  %elem_ptr956 = load i32* %j950
  %incr_op959 = add i32* %index_op958, 1
  store i32* %index_op958, i32 %incr_op959
  br label %__check232

__fresh250:
  br label %__end231

__end231:
  %elem_ptr962 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array961, i32 0, i32 1, i32* %index_op964
  %elem_ptr962 = load i32* %i949
  %incr_op965 = add i32* %index_op964, 1
  store i32* %index_op964, i32 %incr_op965
  br label %__check235

__fresh251:
  br label %__end234

__end234:
  %arr966 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array961, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr966
  %len_ptr967 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr966, i32 0, i32 0
  %len968 = load i32* %len_ptr967
  call void @oat_array_bounds_check( i32 %len968, i32 3 )
  %array_dereferenced969 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr966
  %elt_ptr970 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced969, i32 0, i32 1, i32 3
  %len_ptr971 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr970, i32 0, i32 0
  %len972 = load i32* %len_ptr971
  call void @oat_array_bounds_check( i32 %len972, i32 4 )
  %array_dereferenced973 = load { i32, [ 0 x i32 ] }** %elt_ptr970
  %elt_ptr974 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced973, i32 0, i32 1, i32 4
  %_lhs975 = load i32* %elt_ptr974
  %len_ptr976 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a948, i32 0, i32 0
  %len977 = load i32* %len_ptr976
  call void @oat_array_bounds_check( i32 %len977, i32 1 )
  %array_dereferenced978 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a948
  %elt_ptr979 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced978, i32 0, i32 1, i32 1
  %len_ptr980 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr979, i32 0, i32 0
  %len981 = load i32* %len_ptr980
  call void @oat_array_bounds_check( i32 %len981, i32 2 )
  %array_dereferenced982 = load { i32, [ 0 x i32 ] }** %elt_ptr979
  %elt_ptr983 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced982, i32 0, i32 1, i32 2
  %_lhs984 = load i32* %elt_ptr983
  %bop985 = add i32 %_lhs975, %_lhs984
  store i32 1, i32* %index_op1001
  br label %__check241

__check241:
  %cmp_op1000 = icmp slt i32* %index_op1001, 3
  br i32 %cmp_op1000, label %__body242, label %__end240

__fresh252:
  br label %__body242

__body242:
  %index_op1001 = load i32* %i986
  store i32 1, i32* %index_op995
  br label %__check238

__check238:
  %cmp_op994 = icmp slt i32* %index_op995, 3
  br i32 %cmp_op994, label %__body239, label %__end237

__fresh253:
  br label %__body239

__body239:
  %index_op995 = load i32* %j987
  %_lhs988 = load i32* %i986
  %_lhs989 = load i32* %j987
  %bop990 = mul i32 %_lhs988, %_lhs989
  %elem_ptr993 = getelementptr { i32, [ 0 x i32 ] }* %array992, i32 0, i32 1, i32* %index_op995
  %elem_ptr993 = load i32* %j987
  %incr_op996 = add i32* %index_op995, 1
  store i32* %index_op995, i32 %incr_op996
  br label %__check238

__fresh254:
  br label %__end237

__end237:
  %elem_ptr999 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array998, i32 0, i32 1, i32* %index_op1001
  %elem_ptr999 = load i32* %i986
  %incr_op1002 = add i32* %index_op1001, 1
  store i32* %index_op1001, i32 %incr_op1002
  br label %__check241

__fresh255:
  br label %__end240

__end240:
  %ret1003 = call i32 @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array998 )
  %bop1004 = add i32 %bop985, %ret1003
  %ret1005 = call i32 @g ( i32 4 )
  %bop1006 = add i32 %bop1004, %ret1005
  ret i32 %bop1006
}


define i32 @g (i32 %x902){

__fresh220:
  %x_slot903 = alloca i32
  store i32 %x902, i32* %x_slot903
  store i32 1, i32* %index_op917
  br label %__check218

__check218:
  %cmp_op916 = icmp slt i32* %index_op917, 3
  br i32 %cmp_op916, label %__body219, label %__end217

__fresh221:
  br label %__body219

__body219:
  %index_op917 = load i32* %i904
  store i32 1, i32* %index_op911
  br label %__check215

__check215:
  %cmp_op910 = icmp slt i32* %index_op911, 3
  br i32 %cmp_op910, label %__body216, label %__end214

__fresh222:
  br label %__body216

__body216:
  %index_op911 = load i32* %j905
  %_lhs906 = load i32* %x_slot903
  %elem_ptr909 = getelementptr { i32, [ 0 x i32 ] }* %array908, i32 0, i32 1, i32* %index_op911
  %elem_ptr909 = load i32* %j905
  %incr_op912 = add i32* %index_op911, 1
  store i32* %index_op911, i32 %incr_op912
  br label %__check215

__fresh223:
  br label %__end214

__end214:
  %elem_ptr915 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array914, i32 0, i32 1, i32* %index_op917
  %elem_ptr915 = load i32* %i904
  %incr_op918 = add i32* %index_op917, 1
  store i32* %index_op917, i32 %incr_op918
  br label %__check218

__fresh224:
  br label %__end217

__end217:
  %arr919 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array914, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr919
  %len_ptr920 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr919, i32 0, i32 0
  %len921 = load i32* %len_ptr920
  call void @oat_array_bounds_check( i32 %len921, i32 1 )
  %array_dereferenced922 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr919
  %elt_ptr923 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced922, i32 0, i32 1, i32 1
  %len_ptr924 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr923, i32 0, i32 0
  %len925 = load i32* %len_ptr924
  call void @oat_array_bounds_check( i32 %len925, i32 1 )
  %array_dereferenced926 = load { i32, [ 0 x i32 ] }** %elt_ptr923
  %elt_ptr927 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced926, i32 0, i32 1, i32 1
  %_lhs928 = load i32* %elt_ptr927
  ret i32 %_lhs928
}


define i32 @f ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a891){

__fresh213:
  %a_slot892 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a891, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot892
  %len_ptr893 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot892, i32 0, i32 0
  %len894 = load i32* %len_ptr893
  call void @oat_array_bounds_check( i32 %len894, i32 1 )
  %array_dereferenced895 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot892
  %elt_ptr896 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced895, i32 0, i32 1, i32 1
  %len_ptr897 = getelementptr { i32, [ 0 x i32 ] }** %elt_ptr896, i32 0, i32 0
  %len898 = load i32* %len_ptr897
  call void @oat_array_bounds_check( i32 %len898, i32 1 )
  %array_dereferenced899 = load { i32, [ 0 x i32 ] }** %elt_ptr896
  %elt_ptr900 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced899, i32 0, i32 1, i32 1
  %_lhs901 = load i32* %elt_ptr900
  ret i32 %_lhs901
}


