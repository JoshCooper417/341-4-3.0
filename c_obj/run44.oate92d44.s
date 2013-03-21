	.align 4
	.data
str1078:
	.long 0
_oat_string978.str.:
	.ascii "hello\0"
_oat_string978:
	.long _oat_string978.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh448:
	pushl %edx
	pushl %ecx
	pushl %eax
	call _str1078.init
	addl $0, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $244, %esp
__fresh447:
	leal -244(%ebp), %eax
	movl %eax, -236(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -236(%ebp), %eax
	movl %ecx, (%eax)
	leal -240(%ebp), %eax
	movl %eax, -232(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -232(%ebp), %eax
	movl %ecx, (%eax)
	movl str1078, %eax
	movl %eax, -228(%ebp)
	movl -228(%ebp), %eax
	addl $0, %eax
	movl %eax, -224(%ebp)
	movl -224(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -220(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -220(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -228(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -216(%ebp)
	movl -216(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -212(%ebp)
	movl -212(%ebp), %eax
	addl $0, %eax
	movl %eax, -208(%ebp)
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -204(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -212(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -200(%ebp)
	movl -200(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -196(%ebp)
	movl -196(%ebp), %eax
	addl $0, %eax
	movl %eax, -192(%ebp)
	movl -192(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -188(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -188(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -196(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -184(%ebp)
	movl -184(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl -180(%ebp), %eax
	addl $0, %eax
	movl %eax, -176(%ebp)
	movl -176(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -172(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -172(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -180(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -168(%ebp)
	movl -168(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	movl -164(%ebp), %eax
	addl $0, %eax
	movl %eax, -160(%ebp)
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -156(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -164(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -152(%ebp)
	movl -152(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -148(%ebp), %eax
	addl $0, %eax
	movl %eax, -144(%ebp)
	movl -144(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -140(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -148(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -136(%ebp)
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -132(%ebp), %eax
	addl $0, %eax
	movl %eax, -128(%ebp)
	movl -128(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -124(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -132(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -120(%ebp)
	movl -120(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -116(%ebp), %eax
	addl $0, %eax
	movl %eax, -112(%ebp)
	movl -112(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -108(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -116(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -100(%ebp), %eax
	addl $0, %eax
	movl %eax, -96(%ebp)
	movl -96(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -92(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -100(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -88(%ebp)
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -84(%ebp), %eax
	addl $0, %eax
	movl %eax, -80(%ebp)
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -76(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -84(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -72(%ebp)
	movl -72(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -68(%ebp), %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -60(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -68(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	addl $0, %eax
	movl %eax, -48(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -44(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -52(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -40(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -28(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -12(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -20(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -4(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _str1078.init
_str1078.init:
	pushl %ebp
	movl %esp, %ebp
	subl $452, %esp
__fresh390:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -16(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	leal -400(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	jmp __check388
__fresh391:
	jmp __check388
__check388:
	jmp __end387
__fresh392:
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -20(%ebp)
	andl $1, -20(%ebp)
	movl -20(%ebp), %eax
	cmpl $0, %eax
	jNE __body389
	jmp __end387
__fresh393:
	jmp __body389
__body389:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -36(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -36(%ebp), %eax
	movl %eax, -32(%ebp)
	leal -404(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	jmp __check385
__fresh394:
	jmp __check385
__check385:
	jmp __end384
__fresh395:
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -40(%ebp)
	andl $1, -40(%ebp)
	movl -40(%ebp), %eax
	cmpl $0, %eax
	jNE __body386
	jmp __end384
__fresh396:
	jmp __body386
__body386:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -56(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -56(%ebp), %eax
	movl %eax, -52(%ebp)
	leal -408(%ebp), %eax
	movl %eax, -48(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	jmp __check382
__fresh397:
	jmp __check382
__check382:
	jmp __end381
__fresh398:
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -60(%ebp)
	andl $1, -60(%ebp)
	movl -60(%ebp), %eax
	cmpl $0, %eax
	jNE __body383
	jmp __end381
__fresh399:
	jmp __body383
__body383:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -76(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -76(%ebp), %eax
	movl %eax, -72(%ebp)
	leal -412(%ebp), %eax
	movl %eax, -68(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	jmp __check379
__fresh400:
	jmp __check379
__check379:
	jmp __end378
__fresh401:
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -80(%ebp)
	andl $1, -80(%ebp)
	movl -80(%ebp), %eax
	cmpl $0, %eax
	jNE __body380
	jmp __end378
__fresh402:
	jmp __body380
__body380:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -96(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -96(%ebp), %eax
	movl %eax, -92(%ebp)
	leal -416(%ebp), %eax
	movl %eax, -88(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	jmp __check376
__fresh403:
	jmp __check376
__check376:
	jmp __end375
__fresh404:
	movl -84(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -100(%ebp)
	andl $1, -100(%ebp)
	movl -100(%ebp), %eax
	cmpl $0, %eax
	jNE __body377
	jmp __end375
__fresh405:
	jmp __body377
__body377:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -116(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -116(%ebp), %eax
	movl %eax, -112(%ebp)
	leal -420(%ebp), %eax
	movl %eax, -108(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	movl %ecx, (%eax)
	movl -108(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	jmp __check373
__fresh406:
	jmp __check373
__check373:
	jmp __end372
__fresh407:
	movl -104(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -120(%ebp)
	andl $1, -120(%ebp)
	movl -120(%ebp), %eax
	cmpl $0, %eax
	jNE __body374
	jmp __end372
__fresh408:
	jmp __body374
__body374:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -136(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -136(%ebp), %eax
	movl %eax, -132(%ebp)
	leal -424(%ebp), %eax
	movl %eax, -128(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -128(%ebp), %eax
	movl %ecx, (%eax)
	movl -128(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	jmp __check370
__fresh409:
	jmp __check370
__check370:
	jmp __end369
__fresh410:
	movl -124(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -140(%ebp)
	andl $1, -140(%ebp)
	movl -140(%ebp), %eax
	cmpl $0, %eax
	jNE __body371
	jmp __end369
__fresh411:
	jmp __body371
__body371:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -156(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -156(%ebp), %eax
	movl %eax, -152(%ebp)
	leal -428(%ebp), %eax
	movl %eax, -148(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -148(%ebp), %eax
	movl %ecx, (%eax)
	movl -148(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	jmp __check367
__fresh412:
	jmp __check367
__check367:
	jmp __end366
__fresh413:
	movl -144(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -160(%ebp)
	andl $1, -160(%ebp)
	movl -160(%ebp), %eax
	cmpl $0, %eax
	jNE __body368
	jmp __end366
__fresh414:
	jmp __body368
__body368:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -176(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -176(%ebp), %eax
	movl %eax, -172(%ebp)
	leal -432(%ebp), %eax
	movl %eax, -168(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -168(%ebp), %eax
	movl %ecx, (%eax)
	movl -168(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	jmp __check364
__fresh415:
	jmp __check364
__check364:
	jmp __end363
__fresh416:
	movl -164(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -180(%ebp)
	andl $1, -180(%ebp)
	movl -180(%ebp), %eax
	cmpl $0, %eax
	jNE __body365
	jmp __end363
__fresh417:
	jmp __body365
__body365:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -196(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -196(%ebp), %eax
	movl %eax, -192(%ebp)
	leal -436(%ebp), %eax
	movl %eax, -188(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -188(%ebp), %eax
	movl %ecx, (%eax)
	movl -188(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	jmp __check361
__fresh418:
	jmp __check361
__check361:
	jmp __end360
__fresh419:
	movl -184(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -200(%ebp)
	andl $1, -200(%ebp)
	movl -200(%ebp), %eax
	cmpl $0, %eax
	jNE __body362
	jmp __end360
__fresh420:
	jmp __body362
__body362:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -216(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -216(%ebp), %eax
	movl %eax, -212(%ebp)
	leal -440(%ebp), %eax
	movl %eax, -208(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -208(%ebp), %eax
	movl %ecx, (%eax)
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	jmp __check358
__fresh421:
	jmp __check358
__check358:
	jmp __end357
__fresh422:
	movl -204(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -220(%ebp)
	andl $1, -220(%ebp)
	movl -220(%ebp), %eax
	cmpl $0, %eax
	jNE __body359
	jmp __end357
__fresh423:
	jmp __body359
__body359:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -236(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -236(%ebp), %eax
	movl %eax, -232(%ebp)
	leal -444(%ebp), %eax
	movl %eax, -228(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -228(%ebp), %eax
	movl %ecx, (%eax)
	movl -228(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -224(%ebp)
	jmp __check355
__fresh424:
	jmp __check355
__check355:
	jmp __end354
__fresh425:
	movl -224(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -240(%ebp)
	andl $1, -240(%ebp)
	movl -240(%ebp), %eax
	cmpl $0, %eax
	jNE __body356
	jmp __end354
__fresh426:
	jmp __body356
__body356:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -256(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -256(%ebp), %eax
	movl %eax, -252(%ebp)
	leal -448(%ebp), %eax
	movl %eax, -248(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -248(%ebp), %eax
	movl %ecx, (%eax)
	movl -248(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -244(%ebp)
	jmp __check352
__fresh427:
	jmp __check352
__check352:
	jmp __end351
__fresh428:
	movl -244(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -260(%ebp)
	andl $1, -260(%ebp)
	movl -260(%ebp), %eax
	cmpl $0, %eax
	jNE __body353
	jmp __end351
__fresh429:
	jmp __body353
__body353:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -276(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -276(%ebp), %eax
	movl %eax, -272(%ebp)
	leal -452(%ebp), %eax
	movl %eax, -268(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -268(%ebp), %eax
	movl %ecx, (%eax)
	movl -268(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -264(%ebp)
	jmp __check349
__fresh430:
	jmp __check349
__check349:
	jmp __end348
__fresh431:
	movl -264(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -280(%ebp)
	andl $1, -280(%ebp)
	movl -280(%ebp), %eax
	cmpl $0, %eax
	jNE __body350
	jmp __end348
__fresh432:
	jmp __body350
__body350:
	movl _oat_string978, %eax
	movl %eax, -292(%ebp)
	movl -272(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -264(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -288(%ebp)
	movl -292(%ebp), %eax
	movl %eax, %ecx
	movl -288(%ebp), %eax
	movl %ecx, (%eax)
	movl -264(%ebp), %eax
	movl %eax, -284(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -284(%ebp)
	jmp __check349
__fresh433:
	jmp __end348
__end348:
	movl -252(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -244(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -300(%ebp)
	movl -272(%ebp), %eax
	movl %eax, %ecx
	movl -300(%ebp), %eax
	movl %ecx, (%eax)
	movl -244(%ebp), %eax
	movl %eax, -296(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -296(%ebp)
	jmp __check352
__fresh434:
	jmp __end351
__end351:
	movl -232(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -224(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -308(%ebp)
	movl -252(%ebp), %eax
	movl %eax, %ecx
	movl -308(%ebp), %eax
	movl %ecx, (%eax)
	movl -224(%ebp), %eax
	movl %eax, -304(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -304(%ebp)
	jmp __check355
__fresh435:
	jmp __end354
__end354:
	movl -212(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -204(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -316(%ebp)
	movl -232(%ebp), %eax
	movl %eax, %ecx
	movl -316(%ebp), %eax
	movl %ecx, (%eax)
	movl -204(%ebp), %eax
	movl %eax, -312(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -312(%ebp)
	jmp __check358
__fresh436:
	jmp __end357
__end357:
	movl -192(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -184(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -324(%ebp)
	movl -212(%ebp), %eax
	movl %eax, %ecx
	movl -324(%ebp), %eax
	movl %ecx, (%eax)
	movl -184(%ebp), %eax
	movl %eax, -320(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -320(%ebp)
	jmp __check361
__fresh437:
	jmp __end360
__end360:
	movl -172(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -164(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -332(%ebp)
	movl -192(%ebp), %eax
	movl %eax, %ecx
	movl -332(%ebp), %eax
	movl %ecx, (%eax)
	movl -164(%ebp), %eax
	movl %eax, -328(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -328(%ebp)
	jmp __check364
__fresh438:
	jmp __end363
__end363:
	movl -152(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -144(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -340(%ebp)
	movl -172(%ebp), %eax
	movl %eax, %ecx
	movl -340(%ebp), %eax
	movl %ecx, (%eax)
	movl -144(%ebp), %eax
	movl %eax, -336(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -336(%ebp)
	jmp __check367
__fresh439:
	jmp __end366
__end366:
	movl -132(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -124(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -348(%ebp)
	movl -152(%ebp), %eax
	movl %eax, %ecx
	movl -348(%ebp), %eax
	movl %ecx, (%eax)
	movl -124(%ebp), %eax
	movl %eax, -344(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -344(%ebp)
	jmp __check370
__fresh440:
	jmp __end369
__end369:
	movl -112(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -356(%ebp)
	movl -132(%ebp), %eax
	movl %eax, %ecx
	movl -356(%ebp), %eax
	movl %ecx, (%eax)
	movl -104(%ebp), %eax
	movl %eax, -352(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -352(%ebp)
	jmp __check373
__fresh441:
	jmp __end372
__end372:
	movl -92(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -364(%ebp)
	movl -112(%ebp), %eax
	movl %eax, %ecx
	movl -364(%ebp), %eax
	movl %ecx, (%eax)
	movl -84(%ebp), %eax
	movl %eax, -360(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -360(%ebp)
	jmp __check376
__fresh442:
	jmp __end375
__end375:
	movl -72(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -372(%ebp)
	movl -92(%ebp), %eax
	movl %eax, %ecx
	movl -372(%ebp), %eax
	movl %ecx, (%eax)
	movl -64(%ebp), %eax
	movl %eax, -368(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -368(%ebp)
	jmp __check379
__fresh443:
	jmp __end378
__end378:
	movl -52(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -380(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl -380(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	movl %eax, -376(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -376(%ebp)
	jmp __check382
__fresh444:
	jmp __end381
__end381:
	movl -32(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -388(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -388(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl %eax, -384(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -384(%ebp)
	jmp __check385
__fresh445:
	jmp __end384
__end384:
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -396(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl -396(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl %eax, -392(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -392(%ebp)
	jmp __check388
__fresh446:
	jmp __end387
__end387:
	movl -12(%ebp), %eax
	movl %eax, str1078
	movl %ebp, %esp
	popl %ebp
	ret
