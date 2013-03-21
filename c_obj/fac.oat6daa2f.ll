declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh732:
  ret void
}


define i32 @program (i32 %argc1946, { i32, [ 0 x i8* ] }* %argv1944){

__fresh731:
  %argc_slot1947 = alloca i32
  store i32 %argc1946, i32* %argc_slot1947
  %argv_slot1945 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1944, { i32, [ 0 x i8* ] }** %argv_slot1945
  %ret1948 = call i32 @f ( i32 5 )
  ret i32 %ret1948
}


define i32 @f (i32 %i1933){

__fresh728:
  %i_slot1934 = alloca i32
  store i32 %i1933, i32* %i_slot1934
  %r1935 = alloca i32
  store i32 0, i32* %r1935
  %_lhs1936 = load i32* %i_slot1934
  %bop1937 = icmp eq i32 %_lhs1936, 0
  br i1 %bop1937, label %__then727, label %__else726

__fresh729:
  br label %__then727

__then727:
  store i32 1, i32* %r1935
  br label %__merge725

__fresh730:
  br label %__else726

__else726:
  %_lhs1938 = load i32* %i_slot1934
  %_lhs1939 = load i32* %i_slot1934
  %bop1940 = sub i32 %_lhs1939, 1
  %ret1941 = call i32 @f ( i32 %bop1940 )
  %bop1942 = mul i32 %_lhs1938, %ret1941
  store i32 %bop1942, i32* %r1935
  br label %__merge725

__merge725:
  %_lhs1943 = load i32* %r1935
  ret i32 %_lhs1943
}


