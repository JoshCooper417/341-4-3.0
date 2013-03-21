declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1330.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1330 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1330.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh154:
  ret void
}


define i32 @program (i32 %argc1328, { i32, [ 0 x i8* ] }* %argv1326){

__fresh151:
  %argc_slot1329 = alloca i32
  store i32 %argc1328, i32* %argc_slot1329
  %argv_slot1327 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1326, { i32, [ 0 x i8* ] }** %argv_slot1327
  %strval1331 = load i8** @_oat_string1330
  %str1332 = alloca i8*
  store i8* %strval1331, i8** %str1332
  %_lhs1333 = load i8** %str1332
  %ret1334 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1333 )
  %arr1335 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1334, { i32, [ 0 x i32 ] }** %arr1335
  %s1336 = alloca i32
  store i32 0, i32* %s1336
  %i1337 = alloca i32
  store i32 0, i32* %i1337
  br label %__cond150

__cond150:
  %_lhs1338 = load i32* %i1337
  %bop1339 = icmp slt i32 %_lhs1338, 5
  br i1 %bop1339, label %__body149, label %__post148

__fresh152:
  br label %__body149

__body149:
  %_lhs1340 = load i32* %s1336
  %_lhs1341 = load i32* %i1337
  %_lhs1342 = load { i32, [ 0 x i32 ] }** %arr1335
  %len_ptr1343 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1342, i32 0, i32 0
  %len1344 = load i32* %len_ptr1343
  call void @oat_array_bounds_check( i32 %len1344, i32 %_lhs1341 )
  %array_dereferenced1345 = load { i32, [ 0 x i32 ] }** %arr1335
  %elt_ptr1346 = getelementptr { i32, [ 0 x i32 ] }** %arr1335, i32 0, i32 1, i32 %_lhs1341
  %_lhs1347 = load [ 0 x i32 ]* %elt_ptr1346
  %bop1348 = add i32 %_lhs1340, %_lhs1347
  store i32 %bop1348, i32* %s1336
  %_lhs1349 = load i32* %i1337
  %bop1350 = add i32 %_lhs1349, 1
  store i32 %bop1350, i32* %i1337
  br label %__cond150

__fresh153:
  br label %__post148

__post148:
  %_lhs1351 = load i32* %s1336
  ret i32 %_lhs1351
}


