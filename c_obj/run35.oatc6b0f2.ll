declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a260 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by a260.init
define void @oat_init (){

__fresh90:
  call void @a260.init(  )
  ret void
}


define i32 @program (i32 %argc263, { i32, [ 0 x i8* ] }* %argv261){

__fresh85:
  %argc_slot264 = alloca i32
  store i32 %argc263, i32* %argc_slot264
  %argv_slot262 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv261, { i32, [ 0 x i8* ] }** %argv_slot262
  %s265 = alloca i32
  store i32 0, i32* %s265
  %i266 = alloca i32
  store i32 0, i32* %i266
  br label %__cond81

__cond81:
  %_lhs267 = load i32* %i266
  %bop268 = icmp slt i32 %_lhs267, 3
  br i1 %bop268, label %__body80, label %__post79

__fresh86:
  br label %__body80

__body80:
  %j269 = alloca i32
  store i32 0, i32* %j269
  br label %__cond84

__cond84:
  %_lhs270 = load i32* %j269
  %bop271 = icmp slt i32 %_lhs270, 4
  br i1 %bop271, label %__body83, label %__post82

__fresh87:
  br label %__body83

__body83:
  %_lhs272 = load i32* %s265
  %_lhs273 = load i32* %j269
  %array_dereferenced279 = load { i32, [ 0 x i32 ] }** %elt_ptr278
  %_lhs274 = load i32* %i266
  %array_dereferenced275 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a260
  %len_ptr276 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced275, i32 0, i32 0
  %len277 = load i32* %len_ptr276
  call void @oat_array_bounds_check( i32 %len277, i32 %_lhs274 )
  %elt_ptr278 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array_dereferenced275, i32 0, i32 1, i32 %_lhs274
  %len_ptr280 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced279, i32 0, i32 0
  %len281 = load i32* %len_ptr280
  call void @oat_array_bounds_check( i32 %len281, i32 %_lhs273 )
  %elt_ptr282 = getelementptr { i32, [ 0 x i32 ] }* %array_dereferenced279, i32 0, i32 1, i32 %_lhs273
  %_lhs283 = load i32* %elt_ptr282
  %bop284 = add i32 %_lhs272, %_lhs283
  store i32 %bop284, i32* %s265
  %_lhs285 = load i32* %j269
  %bop286 = add i32 %_lhs285, 1
  store i32 %bop286, i32* %j269
  br label %__cond84

__fresh88:
  br label %__post82

__post82:
  %_lhs287 = load i32* %i266
  %bop288 = add i32 %_lhs287, 1
  store i32 %bop288, i32* %i266
  br label %__cond81

__fresh89:
  br label %__post79

__post79:
  %_lhs289 = load i32* %s265
  ret i32 %_lhs289
}


define void @a260.init (){

__fresh78:
  %array_ptr237 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array238 = bitcast { i32, [ 0 x i32 ] }* %array_ptr237 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr239 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array240 = bitcast { i32, [ 0 x i32 ] }* %array_ptr239 to { i32, [ 0 x i32 ] }* 
  %index_ptr241 = getelementptr { i32, [ 0 x i32 ] }* %array240, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr241
  %index_ptr242 = getelementptr { i32, [ 0 x i32 ] }* %array240, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr242
  %index_ptr243 = getelementptr { i32, [ 0 x i32 ] }* %array240, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr243
  %index_ptr244 = getelementptr { i32, [ 0 x i32 ] }* %array240, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr244
  %index_ptr245 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array238, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array240, { i32, [ 0 x i32 ] }** %index_ptr245
  %array_ptr246 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array247 = bitcast { i32, [ 0 x i32 ] }* %array_ptr246 to { i32, [ 0 x i32 ] }* 
  %index_ptr248 = getelementptr { i32, [ 0 x i32 ] }* %array247, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr248
  %index_ptr249 = getelementptr { i32, [ 0 x i32 ] }* %array247, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr249
  %index_ptr250 = getelementptr { i32, [ 0 x i32 ] }* %array247, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr250
  %index_ptr251 = getelementptr { i32, [ 0 x i32 ] }* %array247, i32 0, i32 1, i32 3
  store i32 7, i32* %index_ptr251
  %index_ptr252 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array238, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array247, { i32, [ 0 x i32 ] }** %index_ptr252
  %array_ptr253 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array254 = bitcast { i32, [ 0 x i32 ] }* %array_ptr253 to { i32, [ 0 x i32 ] }* 
  %index_ptr255 = getelementptr { i32, [ 0 x i32 ] }* %array254, i32 0, i32 1, i32 0
  store i32 8, i32* %index_ptr255
  %index_ptr256 = getelementptr { i32, [ 0 x i32 ] }* %array254, i32 0, i32 1, i32 1
  store i32 9, i32* %index_ptr256
  %index_ptr257 = getelementptr { i32, [ 0 x i32 ] }* %array254, i32 0, i32 1, i32 2
  store i32 10, i32* %index_ptr257
  %index_ptr258 = getelementptr { i32, [ 0 x i32 ] }* %array254, i32 0, i32 1, i32 3
  store i32 11, i32* %index_ptr258
  %index_ptr259 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array238, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array254, { i32, [ 0 x i32 ] }** %index_ptr259
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array238, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a260
  ret void
}


