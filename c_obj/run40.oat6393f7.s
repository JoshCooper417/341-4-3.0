	.align 4
	.data
i344:
	.long 8
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh130:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $20, %esp
__fresh129:
	leal -20(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -16(%ebp), %eax
	movl %eax, -8(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	call _f
	movl %eax, -4(%ebp)
	addl $0, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _g
_g:
	pushl %ebp
	movl %esp, %ebp
	subl $4, %esp
__fresh128:
	movl i344, %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _f
_f:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh127:
	leal -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	call _g
	movl %eax, -8(%ebp)
	addl $0, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
