	.align 4
	.data
i62:
	.long 11
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh24:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $36, %esp
__fresh23:
	leal -36(%ebp), %eax
	movl %eax, -28(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	leal -32(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	call _f
	movl %eax, -20(%ebp)
	addl $0, %esp
	popl %eax
	popl %ecx
	popl %edx
	pushl %edx
	pushl %ecx
	pushl %eax
	call _g
	movl %eax, -16(%ebp)
	addl $0, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -20(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -12(%ebp)
	movl i62, %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _g
_g:
	pushl %ebp
	movl %esp, %ebp
	subl $32, %esp
__fresh22:
	leal -32(%ebp), %eax
	movl %eax, -20(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	leal -28(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -24(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $10, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl i62, %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _f
_f:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh21:
	leal -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $12, %eax
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
