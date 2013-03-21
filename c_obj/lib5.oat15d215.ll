declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1753.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1753 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1753.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh332:
  ret void
}


define i32 @program (i32 %argc1751, { i32, [ 0 x i8* ] }* %argv1749){

__fresh329:
  %argc_slot1752 = alloca i32
  store i32 %argc1751, i32* %argc_slot1752
  %argv_slot1750 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1749, { i32, [ 0 x i8* ] }** %argv_slot1750
  %strval1754 = load i8** @_oat_string1753
  %str1755 = alloca i8*
  store i8* %strval1754, i8** %str1755
  %_lhs1756 = load i8** %str1755
  %ret1757 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1756 )
  %arr1758 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1757, { i32, [ 0 x i32 ] }** %arr1758
  %s1759 = alloca i32
  store i32 0, i32* %s1759
  %i1760 = alloca i32
  store i32 0, i32* %i1760
  br label %__cond328

__cond328:
  %_lhs1761 = load i32* %i1760
  %bop1762 = icmp slt i32 %_lhs1761, 5
  br i1 %bop1762, label %__body327, label %__post326

__fresh330:
  br label %__body327

__body327:
  %_lhs1763 = load i32* %s1759
  %_lhs1764 = load i32* %i1760
  %len_ptr1765 = getelementptr { i32, [ 0 x i32 ] }** %arr1758, i32 0, i32 0
  %len1766 = load i32* %len_ptr1765
  call void @oat_array_bounds_check( i32 %len1766, i32 %_lhs1764 )
  %array_dereferenced1767 = load { i32, [ 0 x i32 ] }** %arr1758
  %elt_ptr1768 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1767, i32 0, i32 1, i32 %_lhs1764
  %_lhs1769 = load i32* %elt_ptr1768
  %bop1770 = add i32 %_lhs1763, %_lhs1769
  store i32 %bop1770, i32* %s1759
  %_lhs1771 = load i32* %i1760
  %bop1772 = add i32 %_lhs1771, 1
  store i32 %bop1772, i32* %i1760
  br label %__cond328

__fresh331:
  br label %__post326

__post326:
  %_lhs1773 = load i32* %s1759
  ret i32 %_lhs1773
}


