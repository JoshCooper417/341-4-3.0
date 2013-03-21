declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1877 = global i8* zeroinitializer, align 4		; initialized by str1877.init
@_oat_string1875.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1875 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1875.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh393:
  call void @str1877.init(  )
  ret void
}


define i32 @program (i32 %argc1881, { i32, [ 0 x i8* ] }* %argv1879){

__fresh390:
  %argc_slot1882 = alloca i32
  store i32 %argc1881, i32* %argc_slot1882
  %argv_slot1880 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1879, { i32, [ 0 x i8* ] }** %argv_slot1880
  %_lhs1883 = load i8** @str1877
  %ret1884 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1883 )
  %arr1885 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1884, { i32, [ 0 x i32 ] }** %arr1885
  %s1886 = alloca i32
  store i32 0, i32* %s1886
  %i1887 = alloca i32
  store i32 0, i32* %i1887
  br label %__cond389

__cond389:
  %_lhs1888 = load i32* %i1887
  %bop1889 = icmp slt i32 %_lhs1888, 5
  br i1 %bop1889, label %__body388, label %__post387

__fresh391:
  br label %__body388

__body388:
  %_lhs1890 = load i32* %s1886
  %_lhs1891 = load i32* %i1887
  %len_ptr1892 = getelementptr { i32, [ 0 x i32 ] }** %arr1885, i32 0, i32 0
  %len1893 = load i32* %len_ptr1892
  call void @oat_array_bounds_check( i32 %len1893, i32 %_lhs1891 )
  %array_dereferenced1894 = load { i32, [ 0 x i32 ] }** %arr1885
  %elt_ptr1895 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1894, i32 0, i32 1, i32 %_lhs1891
  %_lhs1896 = load i32* %elt_ptr1895
  %bop1897 = add i32 %_lhs1890, %_lhs1896
  store i32 %bop1897, i32* %s1886
  %_lhs1898 = load i32* %i1887
  %bop1899 = add i32 %_lhs1898, 1
  store i32 %bop1899, i32* %i1887
  br label %__cond389

__fresh392:
  br label %__post387

__post387:
  %_lhs1900 = load i32* %s1886
  ret i32 %_lhs1900
}


define void @str1877.init (){

__fresh386:
  %strval1876 = load i8** @_oat_string1875
  store i8* %strval1876, i8** @str1877
  ret void
}


