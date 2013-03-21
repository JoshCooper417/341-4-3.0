declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1290 = global i8* zeroinitializer, align 4		; initialized by str1290.init
@_oat_string1288.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1288 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1288.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh147:
  call void @str1290.init(  )
  ret void
}


define i32 @program (i32 %argc1294, { i32, [ 0 x i8* ] }* %argv1292){

__fresh144:
  %argc_slot1295 = alloca i32
  store i32 %argc1294, i32* %argc_slot1295
  %argv_slot1293 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1292, { i32, [ 0 x i8* ] }** %argv_slot1293
  %_lhs1296 = load i8** @str1290
  %ret1297 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1296 )
  %arr1298 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1297, { i32, [ 0 x i32 ] }** %arr1298
  %s1299 = alloca i32
  store i32 0, i32* %s1299
  %i1300 = alloca i32
  store i32 0, i32* %i1300
  br label %__cond143

__cond143:
  %_lhs1301 = load i32* %i1300
  %bop1302 = icmp slt i32 %_lhs1301, 5
  br i1 %bop1302, label %__body142, label %__post141

__fresh145:
  br label %__body142

__body142:
  %_lhs1303 = load i32* %s1299
  %_lhs1310 = load [ 0 x i32 ]* %elt_ptr1309
  %bop1311 = add i32 %_lhs1303, %_lhs1310
  store i32 %bop1311, i32* %s1299
  %_lhs1312 = load i32* %i1300
  %bop1313 = add i32 %_lhs1312, 1
  store i32 %bop1313, i32* %i1300
  br label %__cond143

__fresh146:
  br label %__post141

__post141:
  %_lhs1314 = load i32* %s1299
  ret i32 %_lhs1314
}


define void @str1290.init (){

__fresh140:
  %strval1289 = load i8** @_oat_string1288
  store i8* %strval1289, i8** @str1290
  ret void
}


