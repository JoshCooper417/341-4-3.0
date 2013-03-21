declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1422 = global i8* zeroinitializer, align 4		; initialized by str1422.init
@_oat_string1420.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1420 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1420.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh178:
  call void @str1422.init(  )
  ret void
}


define i32 @program (i32 %argc1426, { i32, [ 0 x i8* ] }* %argv1424){

__fresh175:
  %argc_slot1427 = alloca i32
  store i32 %argc1426, i32* %argc_slot1427
  %argv_slot1425 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1424, { i32, [ 0 x i8* ] }** %argv_slot1425
  %_lhs1428 = load i8** @str1422
  %ret1429 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1428 )
  %arr1430 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1429, { i32, [ 0 x i32 ] }** %arr1430
  %s1431 = alloca i32
  store i32 0, i32* %s1431
  %i1432 = alloca i32
  store i32 0, i32* %i1432
  br label %__cond174

__cond174:
  %_lhs1433 = load i32* %i1432
  %bop1434 = icmp slt i32 %_lhs1433, 5
  br i1 %bop1434, label %__body173, label %__post172

__fresh176:
  br label %__body173

__body173:
  %_lhs1435 = load i32* %s1431
  %_lhs1436 = load i32* %i1432
  %len_ptr1437 = getelementptr { i32, [ 0 x i32 ] }** %arr1430, i32 0, i32 0
  %len1438 = load i32* %len_ptr1437
  call void @oat_array_bounds_check( i32 %len1438, i32 %_lhs1436 )
  %array_dereferenced1439 = load { i32, [ 0 x i32 ] }** %arr1430
  %elt_ptr1440 = getelementptr i32 %array_dereferenced1439, i32 0, i32 1, i32 %_lhs1436
  %_lhs1441 = load i32* %elt_ptr1440
  %bop1442 = add i32 %_lhs1435, %_lhs1441
  store i32 %bop1442, i32* %s1431
  %_lhs1443 = load i32* %i1432
  %bop1444 = add i32 %_lhs1443, 1
  store i32 %bop1444, i32* %i1432
  br label %__cond174

__fresh177:
  br label %__post172

__post172:
  %_lhs1445 = load i32* %s1431
  ret i32 %_lhs1445
}


define void @str1422.init (){

__fresh171:
  %strval1421 = load i8** @_oat_string1420
  store i8* %strval1421, i8** @str1422
  ret void
}


