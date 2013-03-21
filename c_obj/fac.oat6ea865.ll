declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh328:
  ret void
}


define i32 @program (i32 %argc1955, { i32, [ 0 x i8* ] }* %argv1953){

__fresh327:
  %argc_slot1956 = alloca i32
  store i32 %argc1955, i32* %argc_slot1956
  %argv_slot1954 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1953, { i32, [ 0 x i8* ] }** %argv_slot1954
  %ret1957 = call i32 @f ( i32 5 )
  ret i32 %ret1957
}


define i32 @f (i32 %i1942){

__fresh324:
  %i_slot1943 = alloca i32
  store i32 %i1942, i32* %i_slot1943
  %r1944 = alloca i32
  store i32 0, i32* %r1944
  %_lhs1945 = load i32* %i_slot1943
  %bop1946 = icmp eq i32 %_lhs1945, 0
  br i1 %bop1946, label %__then323, label %__else322

__fresh325:
  br label %__then323

__then323:
  store i32 1, i32* %r1944
  br label %__merge321

__fresh326:
  br label %__else322

__else322:
  %_lhs1947 = load i32* %i_slot1943
  %_lhs1948 = load i32* %i_slot1943
  %bop1949 = sub i32 %_lhs1948, 1
  %ret1950 = call i32 @f ( i32 %bop1949 )
  %bop1951 = mul i32 %_lhs1947, %ret1950
  store i32 %bop1951, i32* %r1944
  br label %__merge321

__merge321:
  %_lhs1952 = load i32* %r1944
  ret i32 %_lhs1952
}


