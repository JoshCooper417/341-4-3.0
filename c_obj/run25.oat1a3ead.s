	.align 4
	.data
str917:
	.long 0
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh328:
	pushl %edx
	pushl %ecx
	pushl %eax
	call _str917.init
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
	subl $20, %esp
__fresh327:
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
	movl str917, %eax
	movl %eax, -4(%ebp)
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
.globl _str917.init
_str917.init:
	pushl %ebp
	movl %esp, %ebp
	subl $44, %esp
__fresh322:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -16(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	leal -40(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	jmp __check320
__fresh323:
	jmp __check320
__check320:
	jmp __end319
__fresh324:
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl $3, %eax
	cmpl %eax, %ecx
	setL -20(%ebp)
	andl $1, -20(%ebp)
	movl -20(%ebp), %eax
	cmpl $0, %eax
	jNE __body321
	jmp __end319
__fresh325:
	jmp __body321
__body321:
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -28(%ebp)
	movl $110, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl %eax, -24(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -24(%ebp)
	jmp __check320
__fresh326:
	jmp __end319
__end319:
	leal -44(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	call _string_of_array
	movl %eax, -32(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -32(%ebp), %eax
	movl %eax, str917
	movl %ebp, %esp
	popl %ebp
	ret
