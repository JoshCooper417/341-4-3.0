declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh394:
  ret void
}


define i32 @program (i32 %argc1956, { i32, [ 0 x i8* ] }* %argv1954){

__fresh393:
  %argc_slot1957 = alloca i32
  store i32 %argc1956, i32* %argc_slot1957
  %argv_slot1955 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1954, { i32, [ 0 x i8* ] }** %argv_slot1955
  %ret1958 = call i32 @f ( i32 5 )
  ret i32 %ret1958
}


define i32 @f (i32 %i1943){

__fresh390:
  %i_slot1944 = alloca i32
  store i32 %i1943, i32* %i_slot1944
  %r1945 = alloca i32
  store i32 0, i32* %r1945
  %_lhs1946 = load i32* %i_slot1944
  %bop1947 = icmp eq i32 %_lhs1946, 0
  br i1 %bop1947, label %__then389, label %__else388

__fresh391:
  br label %__then389

__then389:
  store i32 1, i32* %r1945
  br label %__merge387

__fresh392:
  br label %__else388

__else388:
  %_lhs1948 = load i32* %i_slot1944
  %_lhs1949 = load i32* %i_slot1944
  %bop1950 = sub i32 %_lhs1949, 1
  %ret1951 = call i32 @f ( i32 %bop1950 )
  %bop1952 = mul i32 %_lhs1948, %ret1951
  store i32 %bop1952, i32* %r1945
  br label %__merge387

__merge387:
  %_lhs1953 = load i32* %r1945
  ret i32 %_lhs1953
}


