declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr695 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr695.init
define void @oat_init (){

__fresh182:
  call void @garr695.init(  )
  ret void
}


define i32 @program (i32 %argc701, { i32, [ 0 x i8* ] }* %argv699){

__fresh181:
  %argc_slot702 = alloca i32
  store i32 %argc701, i32* %argc_slot702
  %argv_slot700 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv699, { i32, [ 0 x i8* ] }** %argv_slot700
  %len_ptr703 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr695, i32 0, i32 0
  %len704 = load i32* %len_ptr703
  call void @oat_array_bounds_check( i32 %len704, i32 1 )
  %array_dereferenced705 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr695
  %elt_ptr706 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced705, i32 0, i32 1, i32 1
  %_lhs707 = load { i32, [ 0 x i32 ] }** %elt_ptr706
  %ret708 = call { i32, [ 0 x i32 ] }* @f ( { i32, [ 0 x i32 ] }* %_lhs707 )
  %arr709 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret708, { i32, [ 0 x i32 ] }** %arr709
  %len_ptr710 = getelementptr { i32, [ 0 x i32 ] }** %arr709, i32 0, i32 0
  %len711 = load i32* %len_ptr710
  call void @oat_array_bounds_check( i32 %len711, i32 1 )
  %array_dereferenced712 = load { i32, [ 0 x i32 ] }** %arr709
  %elt_ptr713 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced712, i32 0, i32 1, i32 1
  %_lhs714 = load i32* %elt_ptr713
  ret i32 %_lhs714
}


define { i32, [ 0 x i32 ] }* @f ({ i32, [ 0 x i32 ] }* %arr696){

__fresh180:
  %arr_slot697 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr696, { i32, [ 0 x i32 ] }** %arr_slot697
  %_lhs698 = load { i32, [ 0 x i32 ] }** %arr_slot697
  ret { i32, [ 0 x i32 ] }* %_lhs698
}


define void @garr695.init (){

__fresh179:
  %array_ptr681 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array682 = bitcast { i32, [ 0 x i32 ] }* %array_ptr681 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr683 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array684 = bitcast { i32, [ 0 x i32 ] }* %array_ptr683 to { i32, [ 0 x i32 ] }* 
  %index_ptr685 = getelementptr { i32, [ 0 x i32 ] }* %array684, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr685
  %index_ptr686 = getelementptr { i32, [ 0 x i32 ] }* %array684, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr686
  %index_ptr687 = getelementptr { i32, [ 0 x i32 ] }* %array684, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr687
  %index_ptr688 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array682, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array684, { i32, [ 0 x i32 ] }** %index_ptr688
  %array_ptr689 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array690 = bitcast { i32, [ 0 x i32 ] }* %array_ptr689 to { i32, [ 0 x i32 ] }* 
  %index_ptr691 = getelementptr { i32, [ 0 x i32 ] }* %array690, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr691
  %index_ptr692 = getelementptr { i32, [ 0 x i32 ] }* %array690, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr692
  %index_ptr693 = getelementptr { i32, [ 0 x i32 ] }* %array690, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr693
  %index_ptr694 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array682, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array690, { i32, [ 0 x i32 ] }** %index_ptr694
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array682, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr695
  ret void
}


