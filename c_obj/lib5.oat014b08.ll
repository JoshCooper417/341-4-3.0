declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1750.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1750 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1750.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh344:
  ret void
}


define i32 @program (i32 %argc1748, { i32, [ 0 x i8* ] }* %argv1746){

__fresh341:
  %argc_slot1749 = alloca i32
  store i32 %argc1748, i32* %argc_slot1749
  %argv_slot1747 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1746, { i32, [ 0 x i8* ] }** %argv_slot1747
  %strval1751 = load i8** @_oat_string1750
  %str1752 = alloca i8*
  store i8* %strval1751, i8** %str1752
  %_lhs1753 = load i8** %str1752
  %ret1754 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1753 )
  %arr1755 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1754, { i32, [ 0 x i32 ] }** %arr1755
  %s1756 = alloca i32
  store i32 0, i32* %s1756
  %i1757 = alloca i32
  store i32 0, i32* %i1757
  br label %__cond340

__cond340:
  %_lhs1758 = load i32* %i1757
  %bop1759 = icmp slt i32 %_lhs1758, 5
  br i1 %bop1759, label %__body339, label %__post338

__fresh342:
  br label %__body339

__body339:
  %_lhs1760 = load i32* %s1756
  %_lhs1761 = load i32* %i1757
  %len_ptr1762 = getelementptr { i32, [ 0 x i32 ] }** %arr1755, i32 0, i32 0
  %len1763 = load i32* %len_ptr1762
  call void @oat_array_bounds_check( i32 %len1763, i32 %_lhs1761 )
  %array_dereferenced1764 = load { i32, [ 0 x i32 ] }** %arr1755
  %elt_ptr1765 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1764, i32 0, i32 1, i32 %_lhs1761
  %_lhs1766 = load i32* %elt_ptr1765
  %bop1767 = add i32 %_lhs1760, %_lhs1766
  store i32 %bop1767, i32* %s1756
  %_lhs1768 = load i32* %i1757
  %bop1769 = add i32 %_lhs1768, 1
  store i32 %bop1769, i32* %i1757
  br label %__cond340

__fresh343:
  br label %__post338

__post338:
  %_lhs1770 = load i32* %s1756
  ret i32 %_lhs1770
}


