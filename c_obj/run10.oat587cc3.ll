declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr703 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr703.init
define void @oat_init (){

__fresh182:
  call void @garr703.init(  )
  ret void
}


define i32 @program (i32 %argc709, { i32, [ 0 x i8* ] }* %argv707){

__fresh181:
  %argc_slot710 = alloca i32
  store i32 %argc709, i32* %argc_slot710
  %argv_slot708 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv707, { i32, [ 0 x i8* ] }** %argv_slot708
  %len_ptr711 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr703, i32 0, i32 0
  %len712 = load i32* %len_ptr711
  call void @oat_array_bounds_check( i32 %len712, i32 1 )
  %array_dereferenced713 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr703
  %elt_ptr714 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced713, i32 0, i32 1, i32 1
  %_lhs715 = load { i32, [ 0 x i32 ] }** %elt_ptr714
  %ret716 = call { i32, [ 0 x i32 ] }* @f ( { i32, [ 0 x i32 ] }* %_lhs715 )
  %arr717 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret716, { i32, [ 0 x i32 ] }** %arr717
  %len_ptr718 = getelementptr { i32, [ 0 x i32 ] }** %arr717, i32 0, i32 0
  %len719 = load i32* %len_ptr718
  call void @oat_array_bounds_check( i32 %len719, i32 1 )
  %array_dereferenced720 = load { i32, [ 0 x i32 ] }** %arr717
  %elt_ptr721 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced720, i32 0, i32 1, i32 1
  %_lhs722 = load i32* %elt_ptr721
  ret i32 %_lhs722
}


define { i32, [ 0 x i32 ] }* @f ({ i32, [ 0 x i32 ] }* %arr704){

__fresh180:
  %arr_slot705 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr704, { i32, [ 0 x i32 ] }** %arr_slot705
  %_lhs706 = load { i32, [ 0 x i32 ] }** %arr_slot705
  ret { i32, [ 0 x i32 ] }* %_lhs706
}


define void @garr703.init (){

__fresh179:
  %array_ptr689 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array690 = bitcast { i32, [ 0 x i32 ] }* %array_ptr689 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr691 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array692 = bitcast { i32, [ 0 x i32 ] }* %array_ptr691 to { i32, [ 0 x i32 ] }* 
  %index_ptr693 = getelementptr { i32, [ 0 x i32 ] }* %array692, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr693
  %index_ptr694 = getelementptr { i32, [ 0 x i32 ] }* %array692, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr694
  %index_ptr695 = getelementptr { i32, [ 0 x i32 ] }* %array692, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr695
  %index_ptr696 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array690, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array692, { i32, [ 0 x i32 ] }** %index_ptr696
  %array_ptr697 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array698 = bitcast { i32, [ 0 x i32 ] }* %array_ptr697 to { i32, [ 0 x i32 ] }* 
  %index_ptr699 = getelementptr { i32, [ 0 x i32 ] }* %array698, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr699
  %index_ptr700 = getelementptr { i32, [ 0 x i32 ] }* %array698, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr700
  %index_ptr701 = getelementptr { i32, [ 0 x i32 ] }* %array698, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr701
  %index_ptr702 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array690, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array698, { i32, [ 0 x i32 ] }** %index_ptr702
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array690, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr703
  ret void
}


