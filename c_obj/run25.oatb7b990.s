	.align 4
	.data
str901:
	.long 0
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh266:
	pushl %edx
	pushl %ecx
	pushl %eax
	call _str901.init
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
__fresh265:
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
	movl str901, %eax
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
.globl _str901.init
_str901.init:
	pushl %ebp
	movl %esp, %ebp
	subl $36, %esp
__fresh260:
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
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	leal -36(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	jmp __check258
__fresh261:
	jmp __check258
__check258:
	jmp __end257
__fresh262:
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl $3, %eax
	cmpl %eax, %ecx
	setL -20(%ebp)
	andl $1, -20(%ebp)
	movl -20(%ebp), %eax
	cmpl $0, %eax
	jNE __body259
	jmp __end257
__fresh263:
	jmp __body259
__body259:
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
	jmp __check258
__fresh264:
	jmp __end257
__end257:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -12(%ebp), %eax
	pushl %eax
	call _string_of_array
	movl %eax, -32(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -32(%ebp), %eax
	movl %eax, str901
	movl %ebp, %esp
	popl %ebp
	ret
