declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a13 = global { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }* zeroinitializer, align 4		; initialized by a13.init
define void @oat_init (){

__fresh2:
  call void @a13.init(  )
  ret void
}


define i32 @program (i32 %argc16, { i32, [ 0 x i8* ] }* %argv14){

__fresh1:
  %argc_slot17 = alloca i32
  store i32 %argc16, i32* %argc_slot17
  %argv_slot15 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv14, { i32, [ 0 x i8* ] }** %argv_slot15
  %_lhs18 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13
  %len_ptr19 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }* %_lhs18, i32 0, i32 0
  %len20 = load i32* %len_ptr19
  call void @oat_array_bounds_check( i32 %len20, i32 0 )
  %array_dereferenced21 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13
  %elt_ptr22 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13, i32 0, i32 1, i32 0
  %_lhs23 = load i32* %elt_ptr22
  %len_ptr24 = getelementptr i32 %_lhs23, i32 0, i32 0
  %len25 = load i32* %len_ptr24
  %_lhs26 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13
  %len_ptr27 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }* %_lhs26, i32 0, i32 0
  %len28 = load i32* %len_ptr27
  call void @oat_array_bounds_check( i32 %len28, i32 0 )
  %array_dereferenced29 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13
  %elt_ptr30 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13, i32 0, i32 1, i32 0
  call void @oat_array_bounds_check( i32 %len25, i32 0 )
  %array_dereferenced31 = load i32* %elt_ptr30
  %elt_ptr32 = getelementptr i32* %elt_ptr30, i32 0, i32 1, i32 0
  %_lhs33 = load i32* %elt_ptr32
  %len_ptr34 = getelementptr i32 %_lhs33, i32 0, i32 0
  %len35 = load i32* %len_ptr34
  %_lhs36 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13
  %len_ptr37 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }* %_lhs36, i32 0, i32 0
  %len38 = load i32* %len_ptr37
  call void @oat_array_bounds_check( i32 %len38, i32 0 )
  %array_dereferenced39 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13
  %elt_ptr40 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13, i32 0, i32 1, i32 0
  %_lhs41 = load i32* %elt_ptr40
  %len_ptr42 = getelementptr i32 %_lhs41, i32 0, i32 0
  %len43 = load i32* %len_ptr42
  %_lhs44 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13
  %len_ptr45 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }* %_lhs44, i32 0, i32 0
  %len46 = load i32* %len_ptr45
  call void @oat_array_bounds_check( i32 %len46, i32 0 )
  %array_dereferenced47 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13
  %elt_ptr48 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13, i32 0, i32 1, i32 0
  call void @oat_array_bounds_check( i32 %len43, i32 0 )
  %array_dereferenced49 = load i32* %elt_ptr48
  %elt_ptr50 = getelementptr i32* %elt_ptr48, i32 0, i32 1, i32 0
  call void @oat_array_bounds_check( i32 %len35, i32 0 )
  %array_dereferenced51 = load i32* %elt_ptr50
  %elt_ptr52 = getelementptr i32* %elt_ptr50, i32 0, i32 1, i32 0
  %_lhs53 = load i32* %elt_ptr52
  %len_ptr54 = getelementptr i32 %_lhs53, i32 0, i32 0
  %len55 = load i32* %len_ptr54
  %_lhs56 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13
  %len_ptr57 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }* %_lhs56, i32 0, i32 0
  %len58 = load i32* %len_ptr57
  call void @oat_array_bounds_check( i32 %len58, i32 0 )
  %array_dereferenced59 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13
  %elt_ptr60 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13, i32 0, i32 1, i32 0
  %_lhs61 = load i32* %elt_ptr60
  %len_ptr62 = getelementptr i32 %_lhs61, i32 0, i32 0
  %len63 = load i32* %len_ptr62
  %_lhs64 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13
  %len_ptr65 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }* %_lhs64, i32 0, i32 0
  %len66 = load i32* %len_ptr65
  call void @oat_array_bounds_check( i32 %len66, i32 0 )
  %array_dereferenced67 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13
  %elt_ptr68 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13, i32 0, i32 1, i32 0
  call void @oat_array_bounds_check( i32 %len63, i32 0 )
  %array_dereferenced69 = load i32* %elt_ptr68
  %elt_ptr70 = getelementptr i32* %elt_ptr68, i32 0, i32 1, i32 0
  %_lhs71 = load i32* %elt_ptr70
  %len_ptr72 = getelementptr i32 %_lhs71, i32 0, i32 0
  %len73 = load i32* %len_ptr72
  %_lhs74 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13
  %len_ptr75 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }* %_lhs74, i32 0, i32 0
  %len76 = load i32* %len_ptr75
  call void @oat_array_bounds_check( i32 %len76, i32 0 )
  %array_dereferenced77 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13
  %elt_ptr78 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13, i32 0, i32 1, i32 0
  %_lhs79 = load i32* %elt_ptr78
  %len_ptr80 = getelementptr i32 %_lhs79, i32 0, i32 0
  %len81 = load i32* %len_ptr80
  %_lhs82 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13
  %len_ptr83 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }* %_lhs82, i32 0, i32 0
  %len84 = load i32* %len_ptr83
  call void @oat_array_bounds_check( i32 %len84, i32 0 )
  %array_dereferenced85 = load { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13
  %elt_ptr86 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13, i32 0, i32 1, i32 0
  call void @oat_array_bounds_check( i32 %len81, i32 0 )
  %array_dereferenced87 = load i32* %elt_ptr86
  %elt_ptr88 = getelementptr i32* %elt_ptr86, i32 0, i32 1, i32 0
  call void @oat_array_bounds_check( i32 %len73, i32 0 )
  %array_dereferenced89 = load i32* %elt_ptr88
  %elt_ptr90 = getelementptr i32* %elt_ptr88, i32 0, i32 1, i32 0
  call void @oat_array_bounds_check( i32 %len55, i32 0 )
  %array_dereferenced91 = load i32* %elt_ptr90
  %elt_ptr92 = getelementptr i32* %elt_ptr90, i32 0, i32 1, i32 0
  %_lhs93 = load i32* %elt_ptr92
  ret i32 %_lhs93
}


define void @a13.init (){

__fresh0:
  %array_ptr1 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array2 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1 to { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }* 
  %array_ptr3 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array4 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3 to { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* 
  %array_ptr5 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array6 = bitcast { i32, [ 0 x i32 ] }* %array_ptr5 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr7 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 1 )
  %array8 = bitcast { i32, [ 0 x i32 ] }* %array_ptr7 to { i32, [ 0 x i32 ] }* 
  %index_ptr9 = getelementptr { i32, [ 0 x i32 ] }* %array8, i32 0, i32 1, i32 0
  store i32 42, i32* %index_ptr9
  %index_ptr10 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array6, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array8, { i32, [ 0 x i32 ] }** %index_ptr10
  %index_ptr11 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array4, i32 0, i32 1, i32 0
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array6, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %index_ptr11
  %index_ptr12 = getelementptr { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }* %array2, i32 0, i32 1, i32 0
  store { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* %array4, { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }** %index_ptr12
  store { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }* %array2, { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* ] }* ] }** @a13
  ret void
}


