declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1912.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1912 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1912.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh371:
  ret void
}


define i32 @program (i32 %argc1910, { i32, [ 0 x i8* ] }* %argv1908){

__fresh366:
  %argc_slot1911 = alloca i32
  store i32 %argc1910, i32* %argc_slot1911
  %argv_slot1909 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1908, { i32, [ 0 x i8* ] }** %argv_slot1909
  %strval1913 = load i8** @_oat_string1912
  %ret1914 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1913 )
  %arr1915 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1914, { i32, [ 0 x i32 ] }** %arr1915
  %sum1916 = alloca i32
  store i32 0, i32* %sum1916
  %i1917 = alloca i32
  store i32 0, i32* %i1917
  br label %__cond362

__cond362:
  %_lhs1918 = load i32* %i1917
  %bop1919 = icmp slt i32 %_lhs1918, 10
  br i1 %bop1919, label %__body361, label %__post360

__fresh367:
  br label %__body361

__body361:
  %_lhs1920 = load i32* %i1917
  %len_ptr1921 = getelementptr { i32, [ 0 x i32 ] }** %arr1915, i32 0, i32 0
  %len1922 = load i32* %len_ptr1921
  call void @oat_array_bounds_check( i32 %len1922, i32 %_lhs1920 )
  %array_dereferenced1923 = load { i32, [ 0 x i32 ] }** %arr1915
  %elt_ptr1924 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1923, i32 0, i32 1, i32 %_lhs1920
  %_lhs1925 = load i32* %i1917
  store i32 %_lhs1925, i32* %elt_ptr1924
  %_lhs1926 = load i32* %i1917
  %bop1927 = add i32 %_lhs1926, 1
  store i32 %bop1927, i32* %i1917
  br label %__cond362

__fresh368:
  br label %__post360

__post360:
  %i1928 = alloca i32
  store i32 0, i32* %i1928
  br label %__cond365

__cond365:
  %_lhs1929 = load i32* %i1928
  %bop1930 = icmp slt i32 %_lhs1929, 10
  br i1 %bop1930, label %__body364, label %__post363

__fresh369:
  br label %__body364

__body364:
  %_lhs1931 = load i32* %sum1916
  %_lhs1932 = load i32* %i1928
  %len_ptr1933 = getelementptr { i32, [ 0 x i32 ] }** %arr1915, i32 0, i32 0
  %len1934 = load i32* %len_ptr1933
  call void @oat_array_bounds_check( i32 %len1934, i32 %_lhs1932 )
  %array_dereferenced1935 = load { i32, [ 0 x i32 ] }** %arr1915
  %elt_ptr1936 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1935, i32 0, i32 1, i32 %_lhs1932
  %_lhs1937 = load i32* %elt_ptr1936
  %bop1938 = add i32 %_lhs1931, %_lhs1937
  store i32 %bop1938, i32* %sum1916
  %_lhs1939 = load i32* %i1928
  %bop1940 = add i32 %_lhs1939, 1
  store i32 %bop1940, i32* %i1928
  br label %__cond365

__fresh370:
  br label %__post363

__post363:
  %_lhs1941 = load i32* %sum1916
  ret i32 %_lhs1941
}


