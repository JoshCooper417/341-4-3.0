declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh564:
  ret void
}


define i32 @program (i32 %argc1936, { i32, [ 0 x i8* ] }* %argv1934){

__fresh563:
  %argc_slot1937 = alloca i32
  store i32 %argc1936, i32* %argc_slot1937
  %argv_slot1935 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1934, { i32, [ 0 x i8* ] }** %argv_slot1935
  %ret1938 = call i32 @f ( i32 5 )
  ret i32 %ret1938
}


define i32 @f (i32 %i1923){

__fresh560:
  %i_slot1924 = alloca i32
  store i32 %i1923, i32* %i_slot1924
  %r1925 = alloca i32
  store i32 0, i32* %r1925
  %_lhs1926 = load i32* %i_slot1924
  %bop1927 = icmp eq i32 %_lhs1926, 0
  br i1 %bop1927, label %__then559, label %__else558

__fresh561:
  br label %__then559

__then559:
  store i32 1, i32* %r1925
  br label %__merge557

__fresh562:
  br label %__else558

__else558:
  %_lhs1928 = load i32* %i_slot1924
  %_lhs1929 = load i32* %i_slot1924
  %bop1930 = sub i32 %_lhs1929, 1
  %ret1931 = call i32 @f ( i32 %bop1930 )
  %bop1932 = mul i32 %_lhs1928, %ret1931
  store i32 %bop1932, i32* %r1925
  br label %__merge557

__merge557:
  %_lhs1933 = load i32* %r1925
  ret i32 %_lhs1933
}

