declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1911.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1911 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1911.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh317:
  ret void
}


define i32 @program (i32 %argc1909, { i32, [ 0 x i8* ] }* %argv1907){

__fresh312:
  %argc_slot1910 = alloca i32
  store i32 %argc1909, i32* %argc_slot1910
  %argv_slot1908 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1907, { i32, [ 0 x i8* ] }** %argv_slot1908
  %strval1912 = load i8** @_oat_string1911
  %ret1913 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1912 )
  %arr1914 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1913, { i32, [ 0 x i32 ] }** %arr1914
  %sum1915 = alloca i32
  store i32 0, i32* %sum1915
  %i1916 = alloca i32
  store i32 0, i32* %i1916
  br label %__cond308

__cond308:
  %_lhs1917 = load i32* %i1916
  %bop1918 = icmp slt i32 %_lhs1917, 10
  br i1 %bop1918, label %__body307, label %__post306

__fresh313:
  br label %__body307

__body307:
  %_lhs1919 = load i32* %i1916
  %len_ptr1920 = getelementptr { i32, [ 0 x i32 ] }** %arr1914, i32 0, i32 0
  %len1921 = load i32* %len_ptr1920
  call void @oat_array_bounds_check( i32 %len1921, i32 %_lhs1919 )
  %array_dereferenced1922 = load { i32, [ 0 x i32 ] }** %arr1914
  %elt_ptr1923 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1922, i32 0, i32 1, i32 %_lhs1919
  %_lhs1924 = load i32* %i1916
  store i32 %_lhs1924, i32* %elt_ptr1923
  %_lhs1925 = load i32* %i1916
  %bop1926 = add i32 %_lhs1925, 1
  store i32 %bop1926, i32* %i1916
  br label %__cond308

__fresh314:
  br label %__post306

__post306:
  %i1927 = alloca i32
  store i32 0, i32* %i1927
  br label %__cond311

__cond311:
  %_lhs1928 = load i32* %i1927
  %bop1929 = icmp slt i32 %_lhs1928, 10
  br i1 %bop1929, label %__body310, label %__post309

__fresh315:
  br label %__body310

__body310:
  %_lhs1930 = load i32* %sum1915
  %_lhs1931 = load i32* %i1927
  %len_ptr1932 = getelementptr { i32, [ 0 x i32 ] }** %arr1914, i32 0, i32 0
  %len1933 = load i32* %len_ptr1932
  call void @oat_array_bounds_check( i32 %len1933, i32 %_lhs1931 )
  %array_dereferenced1934 = load { i32, [ 0 x i32 ] }** %arr1914
  %elt_ptr1935 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1934, i32 0, i32 1, i32 %_lhs1931
  %_lhs1936 = load i32* %elt_ptr1935
  %bop1937 = add i32 %_lhs1930, %_lhs1936
  store i32 %bop1937, i32* %sum1915
  %_lhs1938 = load i32* %i1927
  %bop1939 = add i32 %_lhs1938, 1
  store i32 %bop1939, i32* %i1927
  br label %__cond311

__fresh316:
  br label %__post309

__post309:
  %_lhs1940 = load i32* %sum1915
  ret i32 %_lhs1940
}


