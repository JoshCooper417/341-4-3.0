declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1319.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1319 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1319.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh154:
  ret void
}


define i32 @program (i32 %argc1317, { i32, [ 0 x i8* ] }* %argv1315){

__fresh151:
  %argc_slot1318 = alloca i32
  store i32 %argc1317, i32* %argc_slot1318
  %argv_slot1316 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1315, { i32, [ 0 x i8* ] }** %argv_slot1316
  %strval1320 = load i8** @_oat_string1319
  %str1321 = alloca i8*
  store i8* %strval1320, i8** %str1321
  %_lhs1322 = load i8** %str1321
  %ret1323 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1322 )
  %arr1324 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1323, { i32, [ 0 x i32 ] }** %arr1324
  %s1325 = alloca i32
  store i32 0, i32* %s1325
  %i1326 = alloca i32
  store i32 0, i32* %i1326
  br label %__cond150

__cond150:
  %_lhs1327 = load i32* %i1326
  %bop1328 = icmp slt i32 %_lhs1327, 5
  br i1 %bop1328, label %__body149, label %__post148

__fresh152:
  br label %__body149

__body149:
  %_lhs1329 = load i32* %s1325
  %_lhs1330 = load i32* %i1326
  %_lhs1331 = load { i32, [ 0 x i32 ] }** %arr1324
  %len_ptr1332 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1331, i32 0, i32 0
  %len1333 = load i32* %len_ptr1332
  call void @oat_array_bounds_check( i32 %len1333, i32 %_lhs1330 )
  %array_dereferenced1334 = load { i32, [ 0 x i32 ] }** %arr1324
  %elt_ptr1335 = getelementptr { i32, [ 0 x i32 ] }** %arr1324, i32 0, i32 1, i32 %_lhs1330
  %_lhs1336 = load [ 0 x i32 ]* %elt_ptr1335
  %bop1337 = add i32 %_lhs1329, %_lhs1336
  store i32 %bop1337, i32* %s1325
  %_lhs1338 = load i32* %i1326
  %bop1339 = add i32 %_lhs1338, 1
  store i32 %bop1339, i32* %i1326
  br label %__cond150

__fresh153:
  br label %__post148

__post148:
  %_lhs1340 = load i32* %s1325
  ret i32 %_lhs1340
}


