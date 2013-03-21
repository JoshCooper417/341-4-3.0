declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr588 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr588.init
define void @oat_init (){

__fresh225:
  call void @arr588.init(  )
  ret void
}


define i32 @program (i32 %argc591, { i32, [ 0 x i8* ] }* %argv589){

__fresh224:
  %argc_slot592 = alloca i32
  store i32 %argc591, i32* %argc_slot592
  %argv_slot590 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv589, { i32, [ 0 x i8* ] }** %argv_slot590
  %array_dereferenced593 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr588
  %len_ptr594 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced593, i32 0, i32 0
  %len595 = load i32* %len_ptr594
  call void @oat_array_bounds_check( i32 %len595, i32 1 )
  %elt_ptr596 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced593, i32 0, i32 1, i32 1
  %array_dereferenced597 = load { i32, [ 0 x i32 ] }** %elt_ptr596
  %len_ptr598 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced597, i32 0, i32 0
  %len599 = load i32* %len_ptr598
  call void @oat_array_bounds_check( i32 %len599, i32 1 )
  %elt_ptr600 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced597, i32 0, i32 1, i32 1
  %_lhs601 = load i32* %elt_ptr600
  ret i32 %_lhs601
}


define void @arr588.init (){

__fresh223:
  %array_ptr576 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array577 = bitcast { i32, [ 0 x i32 ] }* %array_ptr576 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr578 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array579 = bitcast { i32, [ 0 x i32 ] }* %array_ptr578 to { i32, [ 0 x i32 ] }* 
  %index_ptr580 = getelementptr { i32, [ 0 x i32 ] }* %array579, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr580
  %index_ptr581 = getelementptr { i32, [ 0 x i32 ] }* %array579, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr581
  %index_ptr582 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array577, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array579, { i32, [ 0 x i32 ] }** %index_ptr582
  %array_ptr583 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array584 = bitcast { i32, [ 0 x i32 ] }* %array_ptr583 to { i32, [ 0 x i32 ] }* 
  %index_ptr585 = getelementptr { i32, [ 0 x i32 ] }* %array584, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr585
  %index_ptr586 = getelementptr { i32, [ 0 x i32 ] }* %array584, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr586
  %index_ptr587 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array577, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array584, { i32, [ 0 x i32 ] }** %index_ptr587
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array577, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr588
  ret void
}


