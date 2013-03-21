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


define i32 @program (i32 %argc1986, { i32, [ 0 x i8* ] }* %argv1984){

__fresh381:
  %argc_slot1987 = alloca i32
  store i32 %argc1986, i32* %argc_slot1987
  %argv_slot1985 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1984, { i32, [ 0 x i8* ] }** %argv_slot1985
  %ret1988 = call i32 @f ( i32 5 )
  ret i32 %ret1988
}


define i32 @f (i32 %i1973){

__fresh378:
  %i_slot1974 = alloca i32
  store i32 %i1973, i32* %i_slot1974
  %r1975 = alloca i32
  store i32 0, i32* %r1975
  %_lhs1976 = load i32* %i_slot1974
  %bop1977 = icmp eq i32 %_lhs1976, 0
  br i1 %bop1977, label %__then377, label %__else376

__fresh379:
  br label %__then377

__then377:
  store i32 1, i32* %r1975
  br label %__merge375

__fresh380:
  br label %__else376

__else376:
  %_lhs1978 = load i32* %i_slot1974
  %_lhs1979 = load i32* %i_slot1974
  %bop1980 = sub i32 %_lhs1979, 1
  %ret1981 = call i32 @f ( i32 %bop1980 )
  %bop1982 = mul i32 %_lhs1978, %ret1981
  store i32 %bop1982, i32* %r1975
  br label %__merge375

__merge375:
  %_lhs1983 = load i32* %r1975
  ret i32 %_lhs1983
}


