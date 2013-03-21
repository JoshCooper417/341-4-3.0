	.align 4
	.data
garr478:
	.long 0
i465:
	.long 42
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh192:
	pushl %edx
	pushl %ecx
	pushl %eax
	call _garr478.init
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
	subl $192, %esp
__fresh189:
	leal -192(%ebp), %eax
	movl %eax, -44(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	leal -188(%ebp), %eax
	movl %eax, -40(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $4, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -36(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -36(%ebp), %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -28(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -24(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -20(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -16(%ebp)
	movl $4, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -184(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -180(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -176(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond188
__cond188:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl $100, %eax
	cmpl %eax, %ecx
	setL -48(%ebp)
	andl $1, -48(%ebp)
	movl -48(%ebp), %eax
	cmpl $0, %eax
	jNE __body187
	jmp __post186
__fresh190:
	jmp __body187
__body187:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -68(%ebp), %eax
	movl %eax, -64(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	movl %eax, -56(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond188
__fresh191:
	jmp __post186
__post186:
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -172(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -172(%ebp), %eax
	pushl %eax
	call _g
	movl %eax, -168(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl i465, %eax
	movl %eax, -164(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -164(%ebp), %eax
	pushl %eax
	call _f
	movl %eax, -160(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -168(%ebp), %eax
	movl %eax, -156(%ebp)
	movl -160(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -156(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl -152(%ebp), %eax
	addl $0, %eax
	movl %eax, -148(%ebp)
	movl -148(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	movl -144(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -152(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -140(%ebp)
	movl -140(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -136(%ebp), %eax
	pushl %eax
	call _f
	movl %eax, -132(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -156(%ebp), %eax
	movl %eax, -128(%ebp)
	movl -132(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -128(%ebp)
	movl garr478, %eax
	movl %eax, -124(%ebp)
	movl -124(%ebp), %eax
	addl $0, %eax
	movl %eax, -120(%ebp)
	movl -120(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -116(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -124(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -112(%ebp)
	movl -112(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -108(%ebp), %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -100(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -108(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -96(%ebp)
	movl -96(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -92(%ebp), %eax
	pushl %eax
	call _f
	movl %eax, -88(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -128(%ebp), %eax
	movl %eax, -84(%ebp)
	movl -88(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -84(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -80(%ebp), %eax
	pushl %eax
	call _f
	movl %eax, -76(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -84(%ebp), %eax
	movl %eax, -72(%ebp)
	movl -76(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _g
_g:
	pushl %ebp
	movl %esp, %ebp
	subl $28, %esp
__fresh185:
	leal -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
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
	movl $2, %eax
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
	addl $8, %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _f
_f:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh184:
	leal -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _garr478.init
_garr478.init:
	pushl %ebp
	movl %esp, %ebp
	subl $48, %esp
__fresh183:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -48(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -48(%ebp), %eax
	movl %eax, -44(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -40(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -40(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -28(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -24(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -20(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $4, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -4(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	movl %eax, garr478
	movl %ebp, %esp
	popl %ebp
	ret
