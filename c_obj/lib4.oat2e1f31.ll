declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1752 = global i8* zeroinitializer, align 4		; initialized by str1752.init
@_oat_string1750.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1750 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1750.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh325:
  call void @str1752.init(  )
  ret void
}


define i32 @program (i32 %argc1756, { i32, [ 0 x i8* ] }* %argv1754){

__fresh322:
  %argc_slot1757 = alloca i32
  store i32 %argc1756, i32* %argc_slot1757
  %argv_slot1755 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1754, { i32, [ 0 x i8* ] }** %argv_slot1755
  %_lhs1758 = load i8** @str1752
  %ret1759 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1758 )
  %arr1760 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1759, { i32, [ 0 x i32 ] }** %arr1760
  %s1761 = alloca i32
  store i32 0, i32* %s1761
  %i1762 = alloca i32
  store i32 0, i32* %i1762
  br label %__cond321

__cond321:
  %_lhs1763 = load i32* %i1762
  %bop1764 = icmp slt i32 %_lhs1763, 5
  br i1 %bop1764, label %__body320, label %__post319

__fresh323:
  br label %__body320

__body320:
  %_lhs1765 = load i32* %s1761
  %_lhs1766 = load i32* %i1762
  %len_ptr1767 = getelementptr { i32, [ 0 x i32 ] }** %arr1760, i32 0, i32 0
  %len1768 = load i32* %len_ptr1767
  call void @oat_array_bounds_check( i32 %len1768, i32 %_lhs1766 )
  %array_dereferenced1769 = load { i32, [ 0 x i32 ] }** %arr1760
  %elt_ptr1770 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1769, i32 0, i32 1, i32 %_lhs1766
  %_lhs1771 = load i32* %elt_ptr1770
  %bop1772 = add i32 %_lhs1765, %_lhs1771
  store i32 %bop1772, i32* %s1761
  %_lhs1773 = load i32* %i1762
  %bop1774 = add i32 %_lhs1773, 1
  store i32 %bop1774, i32* %i1762
  br label %__cond321

__fresh324:
  br label %__post319

__post319:
  %_lhs1775 = load i32* %s1761
  ret i32 %_lhs1775
}


define void @str1752.init (){

__fresh318:
  %strval1751 = load i8** @_oat_string1750
  store i8* %strval1751, i8** @str1752
  ret void
}


