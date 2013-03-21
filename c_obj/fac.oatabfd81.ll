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


define i32 @program (i32 %argc1985, { i32, [ 0 x i8* ] }* %argv1983){

__fresh327:
  %argc_slot1986 = alloca i32
  store i32 %argc1985, i32* %argc_slot1986
  %argv_slot1984 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1983, { i32, [ 0 x i8* ] }** %argv_slot1984
  %ret1987 = call i32 @f ( i32 5 )
  ret i32 %ret1987
}


define i32 @f (i32 %i1972){

__fresh324:
  %i_slot1973 = alloca i32
  store i32 %i1972, i32* %i_slot1973
  %r1974 = alloca i32
  store i32 0, i32* %r1974
  %_lhs1975 = load i32* %i_slot1973
  %bop1976 = icmp eq i32 %_lhs1975, 0
  br i1 %bop1976, label %__then323, label %__else322

__fresh325:
  br label %__then323

__then323:
  store i32 1, i32* %r1974
  br label %__merge321

__fresh326:
  br label %__else322

__else322:
  %_lhs1977 = load i32* %i_slot1973
  %_lhs1978 = load i32* %i_slot1973
  %bop1979 = sub i32 %_lhs1978, 1
  %ret1980 = call i32 @f ( i32 %bop1979 )
  %bop1981 = mul i32 %_lhs1977, %ret1980
  store i32 %bop1981, i32* %r1974
  br label %__merge321

__merge321:
  %_lhs1982 = load i32* %r1974
  ret i32 %_lhs1982
}


