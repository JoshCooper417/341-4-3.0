declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1916 = global i8* zeroinitializer, align 4		; initialized by str1916.init
@_oat_string1914.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1914 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1914.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh393:
  call void @str1916.init(  )
  ret void
}


define i32 @program (i32 %argc1920, { i32, [ 0 x i8* ] }* %argv1918){

__fresh390:
  %argc_slot1921 = alloca i32
  store i32 %argc1920, i32* %argc_slot1921
  %argv_slot1919 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1918, { i32, [ 0 x i8* ] }** %argv_slot1919
  %_lhs1922 = load i8** @str1916
  %ret1923 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1922 )
  %arr1924 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1923, { i32, [ 0 x i32 ] }** %arr1924
  %s1925 = alloca i32
  store i32 0, i32* %s1925
  %i1926 = alloca i32
  store i32 0, i32* %i1926
  br label %__cond389

__cond389:
  %_lhs1927 = load i32* %i1926
  %bop1928 = icmp slt i32 %_lhs1927, 5
  br i1 %bop1928, label %__body388, label %__post387

__fresh391:
  br label %__body388

__body388:
  %_lhs1929 = load i32* %s1925
  %_lhs1930 = load i32* %i1926
  %len_ptr1931 = getelementptr { i32, [ 0 x i32 ] }** %arr1924, i32 0, i32 0
  %len1932 = load i32* %len_ptr1931
  call void @oat_array_bounds_check( i32 %len1932, i32 %_lhs1930 )
  %array_dereferenced1933 = load { i32, [ 0 x i32 ] }** %arr1924
  %elt_ptr1934 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1933, i32 0, i32 1, i32 %_lhs1930
  %_lhs1935 = load i32* %elt_ptr1934
  %bop1936 = add i32 %_lhs1929, %_lhs1935
  store i32 %bop1936, i32* %s1925
  %_lhs1937 = load i32* %i1926
  %bop1938 = add i32 %_lhs1937, 1
  store i32 %bop1938, i32* %i1926
  br label %__cond389

__fresh392:
  br label %__post387

__post387:
  %_lhs1939 = load i32* %s1925
  ret i32 %_lhs1939
}


define void @str1916.init (){

__fresh386:
  %strval1915 = load i8** @_oat_string1914
  store i8* %strval1915, i8** @str1916
  ret void
}


