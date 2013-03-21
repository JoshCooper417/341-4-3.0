declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1749.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1749 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1749.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh260:
  ret void
}


define i32 @program (i32 %argc1747, { i32, [ 0 x i8* ] }* %argv1745){

__fresh257:
  %argc_slot1748 = alloca i32
  store i32 %argc1747, i32* %argc_slot1748
  %argv_slot1746 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1745, { i32, [ 0 x i8* ] }** %argv_slot1746
  %strval1750 = load i8** @_oat_string1749
  %str1751 = alloca i8*
  store i8* %strval1750, i8** %str1751
  %_lhs1752 = load i8** %str1751
  %ret1753 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1752 )
  %arr1754 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1753, { i32, [ 0 x i32 ] }** %arr1754
  %s1755 = alloca i32
  store i32 0, i32* %s1755
  %i1756 = alloca i32
  store i32 0, i32* %i1756
  br label %__cond256

__cond256:
  %_lhs1757 = load i32* %i1756
  %bop1758 = icmp slt i32 %_lhs1757, 5
  br i1 %bop1758, label %__body255, label %__post254

__fresh258:
  br label %__body255

__body255:
  %_lhs1759 = load i32* %s1755
  %_lhs1760 = load i32* %i1756
  %len_ptr1761 = getelementptr { i32, [ 0 x i32 ] }** %arr1754, i32 0, i32 0
  %len1762 = load i32* %len_ptr1761
  call void @oat_array_bounds_check( i32 %len1762, i32 %_lhs1760 )
  %array_dereferenced1763 = load { i32, [ 0 x i32 ] }** %arr1754
  %elt_ptr1764 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1763, i32 0, i32 1, i32 %_lhs1760
  %_lhs1765 = load i32* %elt_ptr1764
  %bop1766 = add i32 %_lhs1759, %_lhs1765
  store i32 %bop1766, i32* %s1755
  %_lhs1767 = load i32* %i1756
  %bop1768 = add i32 %_lhs1767, 1
  store i32 %bop1768, i32* %i1756
  br label %__cond256

__fresh259:
  br label %__post254

__post254:
  %_lhs1769 = load i32* %s1755
  ret i32 %_lhs1769
}


