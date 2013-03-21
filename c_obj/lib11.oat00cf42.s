	.align 4
	.data
_oat_string1862.str.:
	.ascii "1234967890\0"
_oat_string1862:
	.long _oat_string1862.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh547:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $148, %esp
__fresh542:
	leal -144(%ebp), %eax
	movl %eax, -28(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	leal -140(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl _oat_string1862, %eax
	movl %eax, -20(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -20(%ebp), %eax
	pushl %eax
	call _array_of_string
	movl %eax, -16(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	leal -136(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -132(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -128(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond538
__cond538:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl $10, %eax
	cmpl %eax, %ecx
	setL -32(%ebp)
	andl $1, -32(%ebp)
	movl -32(%ebp), %eax
	cmpl $0, %eax
	jNE __body537
	jmp __post536
__fresh543:
	jmp __body537
__body537:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -68(%ebp), %eax
	pushl %eax
	movl -56(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -64(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -52(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	movl %eax, -40(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond538
__fresh544:
	jmp __post536
__post536:
	leal -148(%ebp), %eax
	movl %eax, -72(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond541
__cond541:
	movl -72(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	movl %eax, %ecx
	movl $10, %eax
	cmpl %eax, %ecx
	setL -76(%ebp)
	andl $1, -76(%ebp)
	movl -76(%ebp), %eax
	cmpl $0, %eax
	jNE __body540
	jmp __post539
__fresh545:
	jmp __body540
__body540:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -72(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -112(%ebp), %eax
	addl $0, %eax
	movl %eax, -108(%ebp)
	movl -108(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -116(%ebp), %eax
	pushl %eax
	movl -104(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -112(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -116(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -100(%ebp)
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -120(%ebp), %eax
	movl %eax, -92(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -92(%ebp)
	movl -92(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -72(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -88(%ebp), %eax
	movl %eax, -84(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -84(%ebp)
	movl -84(%ebp), %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond541
__fresh546:
	jmp __post539
__post539:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -124(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
