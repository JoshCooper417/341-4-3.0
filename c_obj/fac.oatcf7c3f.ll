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


define i32 @program (i32 %argc1967, { i32, [ 0 x i8* ] }* %argv1965){

__fresh731:
  %argc_slot1968 = alloca i32
  store i32 %argc1967, i32* %argc_slot1968
  %argv_slot1966 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1965, { i32, [ 0 x i8* ] }** %argv_slot1966
  %ret1969 = call i32 @f ( i32 5 )
  ret i32 %ret1969
}


define i32 @f (i32 %i1954){

__fresh728:
  %i_slot1955 = alloca i32
  store i32 %i1954, i32* %i_slot1955
  %r1956 = alloca i32
  store i32 0, i32* %r1956
  %_lhs1957 = load i32* %i_slot1955
  %bop1958 = icmp eq i32 %_lhs1957, 0
  br i1 %bop1958, label %__then727, label %__else726

__fresh729:
  br label %__then727

__then727:
  store i32 1, i32* %r1956
  br label %__merge725

__fresh730:
  br label %__else726

__else726:
  %_lhs1959 = load i32* %i_slot1955
  %_lhs1960 = load i32* %i_slot1955
  %bop1961 = sub i32 %_lhs1960, 1
  %ret1962 = call i32 @f ( i32 %bop1961 )
  %bop1963 = mul i32 %_lhs1959, %ret1962
  store i32 %bop1963, i32* %r1956
  br label %__merge725

__merge725:
  %_lhs1964 = load i32* %r1956
  ret i32 %_lhs1964
}


