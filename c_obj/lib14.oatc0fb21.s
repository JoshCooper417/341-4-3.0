	.align 4
	.data
a1905:
	.long 0
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh713:
	pushl %edx
	pushl %ecx
	pushl %eax
	call _a1905.init
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
	subl $24, %esp
__fresh712:
	leal -24(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -20(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl a1905, %eax
	movl %eax, -8(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -8(%ebp), %eax
	pushl %eax
	call _string_of_array
	movl %eax, -4(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
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
.globl _a1905.init
_a1905.init:
	pushl %ebp
	movl %esp, %ebp
	subl $48, %esp
__fresh711:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $10, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -48(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -48(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -40(%ebp)
	movl $126, %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -36(%ebp)
	movl $125, %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -32(%ebp)
	movl $124, %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -28(%ebp)
	movl $123, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $16, %eax
	movl %eax, -24(%ebp)
	movl $122, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $20, %eax
	movl %eax, -20(%ebp)
	movl $121, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $24, %eax
	movl %eax, -16(%ebp)
	movl $120, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $28, %eax
	movl %eax, -12(%ebp)
	movl $119, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $32, %eax
	movl %eax, -8(%ebp)
	movl $118, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $36, %eax
	movl %eax, -4(%ebp)
	movl $117, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	movl %eax, a1905
	movl %ebp, %esp
	popl %ebp
	ret
