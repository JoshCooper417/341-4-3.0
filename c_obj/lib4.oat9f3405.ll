declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1722 = global i8* zeroinitializer, align 4		; initialized by str1722.init
@_oat_string1720.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1720 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1720.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh316:
  call void @str1722.init(  )
  ret void
}


define i32 @program (i32 %argc1726, { i32, [ 0 x i8* ] }* %argv1724){

__fresh313:
  %argc_slot1727 = alloca i32
  store i32 %argc1726, i32* %argc_slot1727
  %argv_slot1725 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1724, { i32, [ 0 x i8* ] }** %argv_slot1725
  %_lhs1728 = load i8** @str1722
  %ret1729 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1728 )
  %arr1730 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1729, { i32, [ 0 x i32 ] }** %arr1730
  %s1731 = alloca i32
  store i32 0, i32* %s1731
  %i1732 = alloca i32
  store i32 0, i32* %i1732
  br label %__cond312

__cond312:
  %_lhs1733 = load i32* %i1732
  %bop1734 = icmp slt i32 %_lhs1733, 5
  br i1 %bop1734, label %__body311, label %__post310

__fresh314:
  br label %__body311

__body311:
  %_lhs1735 = load i32* %s1731
  %_lhs1736 = load i32* %i1732
  %len_ptr1737 = getelementptr { i32, [ 0 x i32 ] }** %arr1730, i32 0, i32 0
  %len1738 = load i32* %len_ptr1737
  call void @oat_array_bounds_check( i32 %len1738, i32 %_lhs1736 )
  %array_dereferenced1739 = load { i32, [ 0 x i32 ] }** %arr1730
  %elt_ptr1740 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1739, i32 0, i32 1, i32 %_lhs1736
  %_lhs1741 = load i32* %elt_ptr1740
  %bop1742 = add i32 %_lhs1735, %_lhs1741
  store i32 %bop1742, i32* %s1731
  %_lhs1743 = load i32* %i1732
  %bop1744 = add i32 %_lhs1743, 1
  store i32 %bop1744, i32* %i1732
  br label %__cond312

__fresh315:
  br label %__post310

__post310:
  %_lhs1745 = load i32* %s1731
  ret i32 %_lhs1745
}


define void @str1722.init (){

__fresh309:
  %strval1721 = load i8** @_oat_string1720
  store i8* %strval1721, i8** @str1722
  ret void
}


