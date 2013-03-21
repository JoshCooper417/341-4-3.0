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
__fresh441:
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
__fresh440:
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
	movl str1068, %eax
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
.globl _str1068.init
_str1068.init:
	pushl %ebp
	movl %esp, %ebp
	subl $452, %esp
__fresh383:
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
	jmp __check381
__fresh384:
	jmp __check381
__check381:
	jmp __end380
__fresh385:
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -20(%ebp)
	andl $1, -20(%ebp)
	movl -20(%ebp), %eax
	cmpl $0, %eax
	jNE __body382
	jmp __end380
__fresh386:
	jmp __body382
__body382:
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
	jmp __check378
__fresh387:
	jmp __check378
__check378:
	jmp __end377
__fresh388:
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -40(%ebp)
	andl $1, -40(%ebp)
	movl -40(%ebp), %eax
	cmpl $0, %eax
	jNE __body379
	jmp __end377
__fresh389:
	jmp __body379
__body379:
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
	jmp __check375
__fresh390:
	jmp __check375
__check375:
	jmp __end374
__fresh391:
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -60(%ebp)
	andl $1, -60(%ebp)
	movl -60(%ebp), %eax
	cmpl $0, %eax
	jNE __body376
	jmp __end374
__fresh392:
	jmp __body376
__body376:
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
	jmp __check372
__fresh393:
	jmp __check372
__check372:
	jmp __end371
__fresh394:
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -80(%ebp)
	andl $1, -80(%ebp)
	movl -80(%ebp), %eax
	cmpl $0, %eax
	jNE __body373
	jmp __end371
__fresh395:
	jmp __body373
__body373:
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
	jmp __check369
__fresh396:
	jmp __check369
__check369:
	jmp __end368
__fresh397:
	movl -84(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -100(%ebp)
	andl $1, -100(%ebp)
	movl -100(%ebp), %eax
	cmpl $0, %eax
	jNE __body370
	jmp __end368
__fresh398:
	jmp __body370
__body370:
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
	jmp __check366
__fresh399:
	jmp __check366
__check366:
	jmp __end365
__fresh400:
	movl -104(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -120(%ebp)
	andl $1, -120(%ebp)
	movl -120(%ebp), %eax
	cmpl $0, %eax
	jNE __body367
	jmp __end365
__fresh401:
	jmp __body367
__body367:
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
	jmp __check363
__fresh402:
	jmp __check363
__check363:
	jmp __end362
__fresh403:
	movl -124(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -140(%ebp)
	andl $1, -140(%ebp)
	movl -140(%ebp), %eax
	cmpl $0, %eax
	jNE __body364
	jmp __end362
__fresh404:
	jmp __body364
__body364:
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
	jmp __check360
__fresh405:
	jmp __check360
__check360:
	jmp __end359
__fresh406:
	movl -144(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -160(%ebp)
	andl $1, -160(%ebp)
	movl -160(%ebp), %eax
	cmpl $0, %eax
	jNE __body361
	jmp __end359
__fresh407:
	jmp __body361
__body361:
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
	jmp __check357
__fresh408:
	jmp __check357
__check357:
	jmp __end356
__fresh409:
	movl -164(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -180(%ebp)
	andl $1, -180(%ebp)
	movl -180(%ebp), %eax
	cmpl $0, %eax
	jNE __body358
	jmp __end356
__fresh410:
	jmp __body358
__body358:
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
	jmp __check354
__fresh411:
	jmp __check354
__check354:
	jmp __end353
__fresh412:
	movl -184(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -200(%ebp)
	andl $1, -200(%ebp)
	movl -200(%ebp), %eax
	cmpl $0, %eax
	jNE __body355
	jmp __end353
__fresh413:
	jmp __body355
__body355:
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
	jmp __check351
__fresh414:
	jmp __check351
__check351:
	jmp __end350
__fresh415:
	movl -204(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -220(%ebp)
	andl $1, -220(%ebp)
	movl -220(%ebp), %eax
	cmpl $0, %eax
	jNE __body352
	jmp __end350
__fresh416:
	jmp __body352
__body352:
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
	jmp __check348
__fresh417:
	jmp __check348
__check348:
	jmp __end347
__fresh418:
	movl -224(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -240(%ebp)
	andl $1, -240(%ebp)
	movl -240(%ebp), %eax
	cmpl $0, %eax
	jNE __body349
	jmp __end347
__fresh419:
	jmp __body349
__body349:
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
	jmp __check345
__fresh420:
	jmp __check345
__check345:
	jmp __end344
__fresh421:
	movl -244(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -260(%ebp)
	andl $1, -260(%ebp)
	movl -260(%ebp), %eax
	cmpl $0, %eax
	jNE __body346
	jmp __end344
__fresh422:
	jmp __body346
__body346:
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
	jmp __check342
__fresh423:
	jmp __check342
__check342:
	jmp __end341
__fresh424:
	movl -264(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -280(%ebp)
	andl $1, -280(%ebp)
	movl -280(%ebp), %eax
	cmpl $0, %eax
	jNE __body343
	jmp __end341
__fresh425:
	jmp __body343
__body343:
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
	jmp __check342
__fresh426:
	jmp __end341
__end341:
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
	jmp __check345
__fresh427:
	jmp __end344
__end344:
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
	jmp __check348
__fresh428:
	jmp __end347
__end347:
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
	jmp __check351
__fresh429:
	jmp __end350
__end350:
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
	jmp __check354
__fresh430:
	jmp __end353
__end353:
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
	jmp __check357
__fresh431:
	jmp __end356
__end356:
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
	jmp __check360
__fresh432:
	jmp __end359
__end359:
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
	jmp __check363
__fresh433:
	jmp __end362
__end362:
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
	jmp __check366
__fresh434:
	jmp __end365
__end365:
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
	jmp __check369
__fresh435:
	jmp __end368
__end368:
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
	jmp __check372
__fresh436:
	jmp __end371
__end371:
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
	jmp __check375
__fresh437:
	jmp __end374
__end374:
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
	jmp __check378
__fresh438:
	jmp __end377
__end377:
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
	jmp __check381
__fresh439:
	jmp __end380
__end380:
	movl -12(%ebp), %eax
	movl %eax, str1068
	movl %ebp, %esp
	popl %ebp
	ret
