declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr654 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr654.init
define void @oat_init (){

__fresh246:
  call void @garr654.init(  )
  ret void
}


define i32 @program (i32 %argc660, { i32, [ 0 x i8* ] }* %argv658){

__fresh245:
  %argc_slot661 = alloca i32
  store i32 %argc660, i32* %argc_slot661
  %argv_slot659 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv658, { i32, [ 0 x i8* ] }** %argv_slot659
  %array_dereferenced662 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr654
  %len_ptr663 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced662, i32 0, i32 0
  %len664 = load i32* %len_ptr663
  call void @oat_array_bounds_check( i32 %len664, i32 1 )
  %elt_ptr665 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced662, i32 0, i32 1, i32 1
  %_lhs666 = load { i32, [ 0 x i32 ] }** %elt_ptr665
  %ret667 = call { i32, [ 0 x i32 ] }* @f ( { i32, [ 0 x i32 ] }* %_lhs666 )
  %arr668 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret667, { i32, [ 0 x i32 ] }** %arr668
  %array_dereferenced669 = load { i32, [ 0 x i32 ] }** %arr668
  %len_ptr670 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced669, i32 0, i32 0
  %len671 = load i32* %len_ptr670
  call void @oat_array_bounds_check( i32 %len671, i32 1 )
  %elt_ptr672 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced669, i32 0, i32 1, i32 1
  %_lhs673 = load i32* %elt_ptr672
  ret i32 %_lhs673
}


define { i32, [ 0 x i32 ] }* @f ({ i32, [ 0 x i32 ] }* %arr655){

__fresh244:
  %arr_slot656 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr655, { i32, [ 0 x i32 ] }** %arr_slot656
  %_lhs657 = load { i32, [ 0 x i32 ] }** %arr_slot656
  ret { i32, [ 0 x i32 ] }* %_lhs657
}


define void @garr654.init (){

__fresh243:
  %array_ptr640 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array641 = bitcast { i32, [ 0 x i32 ] }* %array_ptr640 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr642 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array643 = bitcast { i32, [ 0 x i32 ] }* %array_ptr642 to { i32, [ 0 x i32 ] }* 
  %index_ptr644 = getelementptr { i32, [ 0 x i32 ] }* %array643, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr644
  %index_ptr645 = getelementptr { i32, [ 0 x i32 ] }* %array643, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr645
  %index_ptr646 = getelementptr { i32, [ 0 x i32 ] }* %array643, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr646
  %index_ptr647 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array641, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array643, { i32, [ 0 x i32 ] }** %index_ptr647
  %array_ptr648 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array649 = bitcast { i32, [ 0 x i32 ] }* %array_ptr648 to { i32, [ 0 x i32 ] }* 
  %index_ptr650 = getelementptr { i32, [ 0 x i32 ] }* %array649, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr650
  %index_ptr651 = getelementptr { i32, [ 0 x i32 ] }* %array649, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr651
  %index_ptr652 = getelementptr { i32, [ 0 x i32 ] }* %array649, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr652
  %index_ptr653 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array641, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array649, { i32, [ 0 x i32 ] }** %index_ptr653
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array641, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr654
  ret void
}


