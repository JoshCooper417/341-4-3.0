declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1733 = global i8* zeroinitializer, align 4		; initialized by str1733.init
@_oat_string1731.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1731 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1731.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh649:
  call void @str1733.init(  )
  ret void
}


define i32 @program (i32 %argc1737, { i32, [ 0 x i8* ] }* %argv1735){

__fresh646:
  %argc_slot1738 = alloca i32
  store i32 %argc1737, i32* %argc_slot1738
  %argv_slot1736 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1735, { i32, [ 0 x i8* ] }** %argv_slot1736
  %_lhs1739 = load i8** @str1733
  %ret1740 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1739 )
  %arr1741 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1740, { i32, [ 0 x i32 ] }** %arr1741
  %s1742 = alloca i32
  store i32 0, i32* %s1742
  %i1743 = alloca i32
  store i32 0, i32* %i1743
  br label %__cond645

__cond645:
  %_lhs1744 = load i32* %i1743
  %bop1745 = icmp slt i32 %_lhs1744, 5
  br i1 %bop1745, label %__body644, label %__post643

__fresh647:
  br label %__body644

__body644:
  %_lhs1746 = load i32* %s1742
  %_lhs1747 = load i32* %i1743
  %array_dereferenced1748 = load { i32, [ 0 x i32 ] }** %arr1741
  %len_ptr1749 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1748, i32 0, i32 0
  %len1750 = load i32* %len_ptr1749
  call void @oat_array_bounds_check( i32 %len1750, i32 %_lhs1747 )
  %elt_ptr1751 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1748, i32 0, i32 1, i32 %_lhs1747
  %_lhs1752 = load i32* %elt_ptr1751
  %bop1753 = add i32 %_lhs1746, %_lhs1752
  store i32 %bop1753, i32* %s1742
  %_lhs1754 = load i32* %i1743
  %bop1755 = add i32 %_lhs1754, 1
  store i32 %bop1755, i32* %i1743
  br label %__cond645

__fresh648:
  br label %__post643

__post643:
  %_lhs1756 = load i32* %s1742
  ret i32 %_lhs1756
}


define void @str1733.init (){

__fresh642:
  %strval1732 = load i8** @_oat_string1731
  store i8* %strval1732, i8** @str1733
  ret void
}


