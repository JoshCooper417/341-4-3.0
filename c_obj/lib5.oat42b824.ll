declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1730.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1730 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1730.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh652:
  ret void
}


define i32 @program (i32 %argc1728, { i32, [ 0 x i8* ] }* %argv1726){

__fresh649:
  %argc_slot1729 = alloca i32
  store i32 %argc1728, i32* %argc_slot1729
  %argv_slot1727 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1726, { i32, [ 0 x i8* ] }** %argv_slot1727
  %strval1731 = load i8** @_oat_string1730
  %str1732 = alloca i8*
  store i8* %strval1731, i8** %str1732
  %_lhs1733 = load i8** %str1732
  %ret1734 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1733 )
  %arr1735 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1734, { i32, [ 0 x i32 ] }** %arr1735
  %s1736 = alloca i32
  store i32 0, i32* %s1736
  %i1737 = alloca i32
  store i32 0, i32* %i1737
  br label %__cond648

__cond648:
  %_lhs1738 = load i32* %i1737
  %bop1739 = icmp slt i32 %_lhs1738, 5
  br i1 %bop1739, label %__body647, label %__post646

__fresh650:
  br label %__body647

__body647:
  %_lhs1740 = load i32* %s1736
  %_lhs1741 = load i32* %i1737
  %array_dereferenced1742 = load { i32, [ 0 x i32 ] }** %arr1735
  %len_ptr1743 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1742, i32 0, i32 0
  %len1744 = load i32* %len_ptr1743
  call void @oat_array_bounds_check( i32 %len1744, i32 %_lhs1741 )
  %elt_ptr1745 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1742, i32 0, i32 1, i32 %_lhs1741
  %_lhs1746 = load i32* %elt_ptr1745
  %bop1747 = add i32 %_lhs1740, %_lhs1746
  store i32 %bop1747, i32* %s1736
  %_lhs1748 = load i32* %i1737
  %bop1749 = add i32 %_lhs1748, 1
  store i32 %bop1749, i32* %i1737
  br label %__cond648

__fresh651:
  br label %__post646

__post646:
  %_lhs1750 = load i32* %s1736
  ret i32 %_lhs1750
}


