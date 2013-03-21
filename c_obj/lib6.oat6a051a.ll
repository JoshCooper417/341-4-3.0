declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11921 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11921.init
define void @oat_init (){

__fresh312:
  call void @arr11921.init(  )
  ret void
}


define i32 @program (i32 %argc1924, { i32, [ 0 x i8* ] }* %argv1922){

__fresh309:
  %argc_slot1925 = alloca i32
  store i32 %argc1924, i32* %argc_slot1925
  %argv_slot1923 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1922, { i32, [ 0 x i8* ] }** %argv_slot1923
  %_lhs1926 = load { i32, [ 0 x i32 ] }** @arr11921
  %ret1927 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1926 )
  %str1928 = alloca i8*
  store i8* %ret1927, i8** %str1928
  %_lhs1929 = load i8** %str1928
  %ret1930 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1929 )
  %arr21931 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1930, { i32, [ 0 x i32 ] }** %arr21931
  %s1932 = alloca i32
  store i32 0, i32* %s1932
  %i1933 = alloca i32
  store i32 0, i32* %i1933
  br label %__cond308

__cond308:
  %_lhs1934 = load i32* %i1933
  %bop1935 = icmp slt i32 %_lhs1934, 5
  br i1 %bop1935, label %__body307, label %__post306

__fresh310:
  br label %__body307

__body307:
  %_lhs1936 = load i32* %s1932
  %_lhs1937 = load i32* %i1933
  %len_ptr1938 = getelementptr { i32, [ 0 x i32 ] }** %arr21931, i32 0, i32 0
  %len1939 = load i32* %len_ptr1938
  call void @oat_array_bounds_check( i32 %len1939, i32 %_lhs1937 )
  %array_dereferenced1940 = load { i32, [ 0 x i32 ] }** %arr21931
  %elt_ptr1941 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced1940, i32 0, i32 1, i32 %_lhs1937
  %_lhs1942 = load i32* %elt_ptr1941
  %bop1943 = add i32 %_lhs1936, %_lhs1942
  store i32 %bop1943, i32* %s1932
  %_lhs1944 = load i32* %i1933
  %bop1945 = add i32 %_lhs1944, 1
  store i32 %bop1945, i32* %i1933
  br label %__cond308

__fresh311:
  br label %__post306

__post306:
  %_lhs1946 = load i32* %s1932
  ret i32 %_lhs1946
}


define void @arr11921.init (){

__fresh305:
  %array_ptr1914 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1915 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1914 to { i32, [ 0 x i32 ] }* 
  %index_ptr1916 = getelementptr { i32, [ 0 x i32 ] }* %array1915, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1916
  %index_ptr1917 = getelementptr { i32, [ 0 x i32 ] }* %array1915, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1917
  %index_ptr1918 = getelementptr { i32, [ 0 x i32 ] }* %array1915, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1918
  %index_ptr1919 = getelementptr { i32, [ 0 x i32 ] }* %array1915, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1919
  %index_ptr1920 = getelementptr { i32, [ 0 x i32 ] }* %array1915, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1920
  store { i32, [ 0 x i32 ] }* %array1915, { i32, [ 0 x i32 ] }** @arr11921
  ret void
}


