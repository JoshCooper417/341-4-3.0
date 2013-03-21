declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1944.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1944 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1944.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh400:
  ret void
}


define i32 @program (i32 %argc1942, { i32, [ 0 x i8* ] }* %argv1940){

__fresh397:
  %argc_slot1943 = alloca i32
  store i32 %argc1942, i32* %argc_slot1943
  %argv_slot1941 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1940, { i32, [ 0 x i8* ] }** %argv_slot1941
  %strval1945 = load i8** @_oat_string1944
  %str1946 = alloca i8*
  store i8* %strval1945, i8** %str1946
  %_lhs1947 = load i8** %str1946
  %ret1948 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1947 )
  %arr1949 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1948, { i32, [ 0 x i32 ] }** %arr1949
  %s1950 = alloca i32
  store i32 0, i32* %s1950
  %i1951 = alloca i32
  store i32 0, i32* %i1951
  br label %__cond396

__cond396:
  %_lhs1952 = load i32* %i1951
  %bop1953 = icmp slt i32 %_lhs1952, 5
  br i1 %bop1953, label %__body395, label %__post394

__fresh398:
  br label %__body395

__body395:
  %_lhs1954 = load i32* %s1950
  %_lhs1955 = load i32* %i1951
  %len_ptr1956 = getelementptr { i32, [ 0 x i32 ] }** %arr1949, i32 0, i32 0
  %len1957 = load i32* %len_ptr1956
  call void @oat_array_bounds_check( i32 %len1957, i32 %_lhs1955 )
  %array_dereferenced1958 = load { i32, [ 0 x i32 ] }** %arr1949
  %elt_ptr1959 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1958, i32 0, i32 1, i32 %_lhs1955
  %_lhs1960 = load i32* %elt_ptr1959
  %bop1961 = add i32 %_lhs1954, %_lhs1960
  store i32 %bop1961, i32* %s1950
  %_lhs1962 = load i32* %i1951
  %bop1963 = add i32 %_lhs1962, 1
  store i32 %bop1963, i32* %i1951
  br label %__cond396

__fresh399:
  br label %__post394

__post394:
  %_lhs1964 = load i32* %s1950
  ret i32 %_lhs1964
}


