declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1751 = global i8* zeroinitializer, align 4		; initialized by str1751.init
@_oat_string1749.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1749 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1749.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh271:
  call void @str1751.init(  )
  ret void
}


define i32 @program (i32 %argc1755, { i32, [ 0 x i8* ] }* %argv1753){

__fresh268:
  %argc_slot1756 = alloca i32
  store i32 %argc1755, i32* %argc_slot1756
  %argv_slot1754 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1753, { i32, [ 0 x i8* ] }** %argv_slot1754
  %_lhs1757 = load i8** @str1751
  %ret1758 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1757 )
  %arr1759 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1758, { i32, [ 0 x i32 ] }** %arr1759
  %s1760 = alloca i32
  store i32 0, i32* %s1760
  %i1761 = alloca i32
  store i32 0, i32* %i1761
  br label %__cond267

__cond267:
  %_lhs1762 = load i32* %i1761
  %bop1763 = icmp slt i32 %_lhs1762, 5
  br i1 %bop1763, label %__body266, label %__post265

__fresh269:
  br label %__body266

__body266:
  %_lhs1764 = load i32* %s1760
  %_lhs1765 = load i32* %i1761
  %len_ptr1766 = getelementptr { i32, [ 0 x i32 ] }** %arr1759, i32 0, i32 0
  %len1767 = load i32* %len_ptr1766
  call void @oat_array_bounds_check( i32 %len1767, i32 %_lhs1765 )
  %array_dereferenced1768 = load { i32, [ 0 x i32 ] }** %arr1759
  %elt_ptr1769 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1768, i32 0, i32 1, i32 %_lhs1765
  %_lhs1770 = load i32* %elt_ptr1769
  %bop1771 = add i32 %_lhs1764, %_lhs1770
  store i32 %bop1771, i32* %s1760
  %_lhs1772 = load i32* %i1761
  %bop1773 = add i32 %_lhs1772, 1
  store i32 %bop1773, i32* %i1761
  br label %__cond267

__fresh270:
  br label %__post265

__post265:
  %_lhs1774 = load i32* %s1760
  ret i32 %_lhs1774
}


define void @str1751.init (){

__fresh264:
  %strval1750 = load i8** @_oat_string1749
  store i8* %strval1750, i8** @str1751
  ret void
}


