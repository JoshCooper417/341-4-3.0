	.align 4
	.data
str1068:
	.long 0
_oat_string968.str.:
	.ascii "hello\0"
_oat_string968:
	.long _oat_string968.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh443:
	pushl %edx
	pushl %ecx
	pushl %eax
	call _str1068.init
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
__fresh442:
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
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -228(%ebp)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -224(%ebp)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -220(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -216(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -212(%ebp)
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -208(%ebp)
	movl -92(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -200(%ebp)
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -196(%ebp)
	movl -128(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -192(%ebp)
	movl -140(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -188(%ebp)
	movl -152(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	movl -164(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl str1068, %eax
	movl %eax, -176(%ebp)
	movl -176(%ebp), %eax
	addl $0, %eax
	movl %eax, -172(%ebp)
	movl -172(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -168(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -176(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -164(%ebp)
	movl -180(%ebp), %eax
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
	movl -180(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -152(%ebp)
	movl -184(%ebp), %eax
	addl $0, %eax
	movl %eax, -148(%ebp)
	movl -148(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -144(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -184(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -140(%ebp)
	movl -188(%ebp), %eax
	addl $0, %eax
	movl %eax, -136(%ebp)
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -132(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -188(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -128(%ebp)
	movl -192(%ebp), %eax
	addl $0, %eax
	movl %eax, -124(%ebp)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -120(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -192(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -116(%ebp)
	movl -196(%ebp), %eax
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
	movl -196(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	movl -200(%ebp), %eax
	addl $0, %eax
	movl %eax, -100(%ebp)
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -96(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -200(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -92(%ebp)
	movl -204(%ebp), %eax
	addl $0, %eax
	movl %eax, -88(%ebp)
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -84(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -204(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -80(%ebp)
	movl -208(%ebp), %eax
	addl $0, %eax
	movl %eax, -76(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -72(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -208(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	movl -212(%ebp), %eax
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
	movl -212(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	movl -216(%ebp), %eax
	addl $0, %eax
	movl %eax, -52(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -48(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -216(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -44(%ebp)
	movl -220(%ebp), %eax
	addl $0, %eax
	movl %eax, -40(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -220(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	movl -224(%ebp), %eax
	addl $0, %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -24(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -224(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	movl -228(%ebp), %eax
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
	movl -228(%ebp), %eax
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
.globl _str1068.init
_str1068.init:
	pushl %ebp
	movl %esp, %ebp
	subl $452, %esp
__fresh385:
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
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	leal -400(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	jmp __check383
__fresh386:
	jmp __check383
__check383:
	jmp __end382
__fresh387:
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -20(%ebp)
	andl $1, -20(%ebp)
	movl -20(%ebp), %eax
	cmpl $0, %eax
	jNE __body384
	jmp __end382
__fresh388:
	jmp __body384
__body384:
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
	movl %eax, -32(%ebp)
	movl -36(%ebp), %eax
	leal -404(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	jmp __check380
__fresh389:
	jmp __check380
__check380:
	jmp __end379
__fresh390:
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -40(%ebp)
	andl $1, -40(%ebp)
	movl -40(%ebp), %eax
	cmpl $0, %eax
	jNE __body381
	jmp __end379
__fresh391:
	jmp __body381
__body381:
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
	movl %eax, -52(%ebp)
	movl -56(%ebp), %eax
	leal -408(%ebp), %eax
	movl %eax, -48(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	jmp __check377
__fresh392:
	jmp __check377
__check377:
	jmp __end376
__fresh393:
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -60(%ebp)
	andl $1, -60(%ebp)
	movl -60(%ebp), %eax
	cmpl $0, %eax
	jNE __body378
	jmp __end376
__fresh394:
	jmp __body378
__body378:
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
	movl %eax, -72(%ebp)
	movl -76(%ebp), %eax
	leal -412(%ebp), %eax
	movl %eax, -68(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	jmp __check374
__fresh395:
	jmp __check374
__check374:
	jmp __end373
__fresh396:
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -80(%ebp)
	andl $1, -80(%ebp)
	movl -80(%ebp), %eax
	cmpl $0, %eax
	jNE __body375
	jmp __end373
__fresh397:
	jmp __body375
__body375:
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
	movl %eax, -92(%ebp)
	movl -96(%ebp), %eax
	leal -416(%ebp), %eax
	movl %eax, -88(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	jmp __check371
__fresh398:
	jmp __check371
__check371:
	jmp __end370
__fresh399:
	movl -84(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -100(%ebp)
	andl $1, -100(%ebp)
	movl -100(%ebp), %eax
	cmpl $0, %eax
	jNE __body372
	jmp __end370
__fresh400:
	jmp __body372
__body372:
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
	movl %eax, -112(%ebp)
	movl -116(%ebp), %eax
	leal -420(%ebp), %eax
	movl %eax, -108(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	movl %ecx, (%eax)
	movl -108(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	jmp __check368
__fresh401:
	jmp __check368
__check368:
	jmp __end367
__fresh402:
	movl -104(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -120(%ebp)
	andl $1, -120(%ebp)
	movl -120(%ebp), %eax
	cmpl $0, %eax
	jNE __body369
	jmp __end367
__fresh403:
	jmp __body369
__body369:
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
	movl %eax, -132(%ebp)
	movl -136(%ebp), %eax
	leal -424(%ebp), %eax
	movl %eax, -128(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -128(%ebp), %eax
	movl %ecx, (%eax)
	movl -128(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	jmp __check365
__fresh404:
	jmp __check365
__check365:
	jmp __end364
__fresh405:
	movl -124(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -140(%ebp)
	andl $1, -140(%ebp)
	movl -140(%ebp), %eax
	cmpl $0, %eax
	jNE __body366
	jmp __end364
__fresh406:
	jmp __body366
__body366:
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
	movl %eax, -152(%ebp)
	movl -156(%ebp), %eax
	leal -428(%ebp), %eax
	movl %eax, -148(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -148(%ebp), %eax
	movl %ecx, (%eax)
	movl -148(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	jmp __check362
__fresh407:
	jmp __check362
__check362:
	jmp __end361
__fresh408:
	movl -144(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -160(%ebp)
	andl $1, -160(%ebp)
	movl -160(%ebp), %eax
	cmpl $0, %eax
	jNE __body363
	jmp __end361
__fresh409:
	jmp __body363
__body363:
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
	movl %eax, -172(%ebp)
	movl -176(%ebp), %eax
	leal -432(%ebp), %eax
	movl %eax, -168(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -168(%ebp), %eax
	movl %ecx, (%eax)
	movl -168(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	jmp __check359
__fresh410:
	jmp __check359
__check359:
	jmp __end358
__fresh411:
	movl -164(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -180(%ebp)
	andl $1, -180(%ebp)
	movl -180(%ebp), %eax
	cmpl $0, %eax
	jNE __body360
	jmp __end358
__fresh412:
	jmp __body360
__body360:
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
	movl %eax, -192(%ebp)
	movl -196(%ebp), %eax
	leal -436(%ebp), %eax
	movl %eax, -188(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -188(%ebp), %eax
	movl %ecx, (%eax)
	movl -188(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	jmp __check356
__fresh413:
	jmp __check356
__check356:
	jmp __end355
__fresh414:
	movl -184(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -200(%ebp)
	andl $1, -200(%ebp)
	movl -200(%ebp), %eax
	cmpl $0, %eax
	jNE __body357
	jmp __end355
__fresh415:
	jmp __body357
__body357:
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
	movl %eax, -212(%ebp)
	movl -216(%ebp), %eax
	leal -440(%ebp), %eax
	movl %eax, -208(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -208(%ebp), %eax
	movl %ecx, (%eax)
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	jmp __check353
__fresh416:
	jmp __check353
__check353:
	jmp __end352
__fresh417:
	movl -204(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -220(%ebp)
	andl $1, -220(%ebp)
	movl -220(%ebp), %eax
	cmpl $0, %eax
	jNE __body354
	jmp __end352
__fresh418:
	jmp __body354
__body354:
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
	movl %eax, -232(%ebp)
	movl -236(%ebp), %eax
	leal -444(%ebp), %eax
	movl %eax, -228(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -228(%ebp), %eax
	movl %ecx, (%eax)
	movl -228(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -224(%ebp)
	jmp __check350
__fresh419:
	jmp __check350
__check350:
	jmp __end349
__fresh420:
	movl -224(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -240(%ebp)
	andl $1, -240(%ebp)
	movl -240(%ebp), %eax
	cmpl $0, %eax
	jNE __body351
	jmp __end349
__fresh421:
	jmp __body351
__body351:
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
	movl %eax, -252(%ebp)
	movl -256(%ebp), %eax
	leal -448(%ebp), %eax
	movl %eax, -248(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -248(%ebp), %eax
	movl %ecx, (%eax)
	movl -248(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -244(%ebp)
	jmp __check347
__fresh422:
	jmp __check347
__check347:
	jmp __end346
__fresh423:
	movl -244(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -260(%ebp)
	andl $1, -260(%ebp)
	movl -260(%ebp), %eax
	cmpl $0, %eax
	jNE __body348
	jmp __end346
__fresh424:
	jmp __body348
__body348:
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
	movl %eax, -272(%ebp)
	movl -276(%ebp), %eax
	leal -452(%ebp), %eax
	movl %eax, -268(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -268(%ebp), %eax
	movl %ecx, (%eax)
	movl -268(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -264(%ebp)
	jmp __check344
__fresh425:
	jmp __check344
__check344:
	jmp __end343
__fresh426:
	movl -264(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -280(%ebp)
	andl $1, -280(%ebp)
	movl -280(%ebp), %eax
	cmpl $0, %eax
	jNE __body345
	jmp __end343
__fresh427:
	jmp __body345
__body345:
	movl _oat_string968, %eax
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
	jmp __check344
__fresh428:
	jmp __end343
__end343:
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
	jmp __check347
__fresh429:
	jmp __end346
__end346:
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
	jmp __check350
__fresh430:
	jmp __end349
__end349:
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
	jmp __check353
__fresh431:
	jmp __end352
__end352:
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
	jmp __check356
__fresh432:
	jmp __end355
__end355:
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
	jmp __check359
__fresh433:
	jmp __end358
__end358:
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
	jmp __check362
__fresh434:
	jmp __end361
__end361:
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
	jmp __check365
__fresh435:
	jmp __end364
__end364:
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
	jmp __check368
__fresh436:
	jmp __end367
__end367:
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
	jmp __check371
__fresh437:
	jmp __end370
__end370:
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
	jmp __check374
__fresh438:
	jmp __end373
__end373:
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
	jmp __check377
__fresh439:
	jmp __end376
__end376:
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
	jmp __check380
__fresh440:
	jmp __end379
__end379:
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
	jmp __check383
__fresh441:
	jmp __end382
__end382:
	movl -12(%ebp), %eax
	movl %eax, str1068
	movl %ebp, %esp
	popl %ebp
	ret
