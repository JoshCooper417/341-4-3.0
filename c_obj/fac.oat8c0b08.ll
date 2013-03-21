declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh382:
  ret void
}


define i32 @program (i32 %argc1959, { i32, [ 0 x i8* ] }* %argv1957){

__fresh381:
  %argc_slot1960 = alloca i32
  store i32 %argc1959, i32* %argc_slot1960
  %argv_slot1958 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1957, { i32, [ 0 x i8* ] }** %argv_slot1958
  %ret1961 = call i32 @f ( i32 5 )
  ret i32 %ret1961
}


define i32 @f (i32 %i1946){

__fresh378:
  %i_slot1947 = alloca i32
  store i32 %i1946, i32* %i_slot1947
  %r1948 = alloca i32
  store i32 0, i32* %r1948
  %_lhs1949 = load i32* %i_slot1947
  %bop1950 = icmp eq i32 %_lhs1949, 0
  br i1 %bop1950, label %__then377, label %__else376

__fresh379:
  br label %__then377

__then377:
  store i32 1, i32* %r1948
  br label %__merge375

__fresh380:
  br label %__else376

__else376:
  %_lhs1951 = load i32* %i_slot1947
  %_lhs1952 = load i32* %i_slot1947
  %bop1953 = sub i32 %_lhs1952, 1
  %ret1954 = call i32 @f ( i32 %bop1953 )
  %bop1955 = mul i32 %_lhs1951, %ret1954
  store i32 %bop1955, i32* %r1948
  br label %__merge375

__merge375:
  %_lhs1956 = load i32* %r1948
  ret i32 %_lhs1956
}


