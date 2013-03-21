	.align 4
	.data
_oat_string2119.str.:
	.ascii "\n\0"
_oat_string2119:
	.long _oat_string2119.str.

_oat_string2114.str.:
	.ascii "\n\0"
_oat_string2114:
	.long _oat_string2114.str.

_oat_string2110.str.:
	.ascii "\n\0"
_oat_string2110:
	.long _oat_string2110.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh768:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $100, %esp
__fresh767:
	leal -100(%ebp), %eax
	movl %eax, -88(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	leal -96(%ebp), %eax
	movl %eax, -84(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $9, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -80(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -80(%ebp), %eax
	movl %eax, -76(%ebp)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -72(%ebp)
	movl $107, %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -68(%ebp)
	movl $112, %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -64(%ebp)
	movl $121, %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -60(%ebp)
	movl $102, %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $16, %eax
	movl %eax, -56(%ebp)
	movl $123, %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $20, %eax
	movl %eax, -52(%ebp)
	movl $115, %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $24, %eax
	movl %eax, -48(%ebp)
	movl $104, %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $28, %eax
	movl %eax, -44(%ebp)
	movl $111, %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $32, %eax
	movl %eax, -40(%ebp)
	movl $109, %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	leal -92(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -76(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl _oat_string2110, %eax
	movl %eax, -32(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -32(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -28(%ebp), %eax
	pushl %eax
	call _string_of_array
	movl %eax, -24(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -24(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl _oat_string2114, %eax
	movl %eax, -20(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -20(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $8, %eax
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -16(%ebp), %eax
	pushl %eax
	call _quick_sort
	addl $12, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -12(%ebp), %eax
	pushl %eax
	call _string_of_array
	movl %eax, -8(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -8(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl _oat_string2119, %eax
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
	movl $255, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _partition
_partition:
	pushl %ebp
	movl %esp, %ebp
	subl $428, %esp
__fresh756:
	leal -428(%ebp), %eax
	movl %eax, -68(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	leal -424(%ebp), %eax
	movl %eax, -64(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	leal -420(%ebp), %eax
	movl %eax, -60(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -68(%ebp), %eax
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
	movl -56(%ebp), %eax
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
	movl %eax, %ecx
	movl -56(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -40(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	leal -416(%ebp), %eax
	movl %eax, -32(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	leal -412(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -28(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -16(%ebp)
	leal -408(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -404(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -400(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond743
__cond743:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -72(%ebp)
	andl $1, -72(%ebp)
	movl -72(%ebp), %eax
	cmpl $0, %eax
	jNE __body742
	jmp __post741
__fresh757:
	jmp __body742
__body742:
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -84(%ebp), %eax
	movl %eax, -80(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond746
__cond746:
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -128(%ebp), %eax
	addl $0, %eax
	movl %eax, -124(%ebp)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -132(%ebp), %eax
	pushl %eax
	movl -120(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -128(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -132(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -116(%ebp)
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -112(%ebp), %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	cmpl %eax, %ecx
	setLE -104(%ebp)
	andl $1, -104(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -100(%ebp), %eax
	movl %eax, %ecx
	movl -96(%ebp), %eax
	cmpl %eax, %ecx
	setLE -92(%ebp)
	andl $1, -92(%ebp)
	movl -104(%ebp), %eax
	movl %eax, -88(%ebp)
	movl -92(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -88(%ebp)
	movl -88(%ebp), %eax
	cmpl $0, %eax
	jNE __body745
	jmp __post744
__fresh758:
	jmp __body745
__body745:
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	movl %eax, -136(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -136(%ebp)
	movl -136(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond746
__fresh759:
	jmp __post744
__post744:
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -148(%ebp), %eax
	movl %eax, -144(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -144(%ebp)
	movl -144(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond749
__cond749:
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -176(%ebp), %eax
	addl $0, %eax
	movl %eax, -172(%ebp)
	movl -172(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -180(%ebp), %eax
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
	movl %eax, %ecx
	movl -180(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -164(%ebp)
	movl -164(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	movl -160(%ebp), %eax
	movl %eax, %ecx
	movl -156(%ebp), %eax
	cmpl %eax, %ecx
	setG -152(%ebp)
	andl $1, -152(%ebp)
	movl -152(%ebp), %eax
	cmpl $0, %eax
	jNE __body748
	jmp __post747
__fresh760:
	jmp __body748
__body748:
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -188(%ebp)
	movl -188(%ebp), %eax
	movl %eax, -184(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -184(%ebp)
	movl -184(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond749
__fresh761:
	jmp __post747
__post747:
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -200(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -196(%ebp)
	movl -200(%ebp), %eax
	movl %eax, %ecx
	movl -196(%ebp), %eax
	cmpl %eax, %ecx
	setGE -192(%ebp)
	andl $1, -192(%ebp)
	movl -192(%ebp), %eax
	cmpl $0, %eax
	jNE __then752
	jmp __else751
__fresh762:
	jmp __then752
__then752:
	movl $1, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge750
__fresh763:
	jmp __else751
__else751:
	jmp __merge750
__merge750:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -208(%ebp)
	movl -208(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -204(%ebp)
	andl $1, -204(%ebp)
	movl -204(%ebp), %eax
	cmpl $0, %eax
	jNE __then755
	jmp __else754
__fresh764:
	jmp __then755
__then755:
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -300(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -296(%ebp)
	movl -296(%ebp), %eax
	addl $0, %eax
	movl %eax, -292(%ebp)
	movl -292(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -288(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -300(%ebp), %eax
	pushl %eax
	movl -288(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -296(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -300(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -284(%ebp)
	movl -284(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -280(%ebp)
	movl -280(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -276(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -272(%ebp)
	movl -272(%ebp), %eax
	addl $0, %eax
	movl %eax, -268(%ebp)
	movl -268(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -264(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -276(%ebp), %eax
	pushl %eax
	movl -264(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -272(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -276(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -260(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -256(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -252(%ebp)
	movl -252(%ebp), %eax
	addl $0, %eax
	movl %eax, -248(%ebp)
	movl -248(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -244(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -256(%ebp), %eax
	pushl %eax
	movl -244(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -252(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -256(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -240(%ebp)
	movl -240(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -236(%ebp)
	movl -236(%ebp), %eax
	movl %eax, %ecx
	movl -260(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -232(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -228(%ebp)
	movl -228(%ebp), %eax
	addl $0, %eax
	movl %eax, -224(%ebp)
	movl -224(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -220(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -232(%ebp), %eax
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
	movl %eax, %ecx
	movl -232(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -216(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -212(%ebp)
	movl -212(%ebp), %eax
	movl %eax, %ecx
	movl -216(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge753
__fresh765:
	jmp __else754
__else754:
	jmp __merge753
__merge753:
	jmp __cond743
__fresh766:
	jmp __post741
__post741:
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -396(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -392(%ebp)
	movl -392(%ebp), %eax
	addl $0, %eax
	movl %eax, -388(%ebp)
	movl -388(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -384(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -396(%ebp), %eax
	pushl %eax
	movl -384(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -392(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -396(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -380(%ebp)
	movl -380(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -376(%ebp)
	movl -376(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -372(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -368(%ebp)
	movl -368(%ebp), %eax
	addl $0, %eax
	movl %eax, -364(%ebp)
	movl -364(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -360(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -372(%ebp), %eax
	pushl %eax
	movl -360(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -368(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -372(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -356(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -352(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -348(%ebp)
	movl -348(%ebp), %eax
	addl $0, %eax
	movl %eax, -344(%ebp)
	movl -344(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -340(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -352(%ebp), %eax
	pushl %eax
	movl -340(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -348(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -352(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -336(%ebp)
	movl -336(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -332(%ebp)
	movl -332(%ebp), %eax
	movl %eax, %ecx
	movl -356(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -328(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -324(%ebp)
	movl -324(%ebp), %eax
	addl $0, %eax
	movl %eax, -320(%ebp)
	movl -320(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -316(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -328(%ebp), %eax
	pushl %eax
	movl -316(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -324(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -328(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -312(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -308(%ebp)
	movl -308(%ebp), %eax
	movl %eax, %ecx
	movl -312(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -304(%ebp)
	movl -304(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _quick_sort
_quick_sort:
	pushl %ebp
	movl %esp, %ebp
	subl $92, %esp
__fresh738:
	leal -92(%ebp), %eax
	movl %eax, -28(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	leal -88(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	leal -84(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	leal -80(%ebp), %eax
	movl %eax, -16(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	cmpl %eax, %ecx
	setL -4(%ebp)
	andl $1, -4(%ebp)
	movl -4(%ebp), %eax
	cmpl $0, %eax
	jNE __then737
	jmp __else736
__fresh739:
	jmp __then737
__then737:
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -76(%ebp), %eax
	pushl %eax
	movl -72(%ebp), %eax
	pushl %eax
	movl -68(%ebp), %eax
	pushl %eax
	call _partition
	movl %eax, -64(%ebp)
	addl $12, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	movl %eax, -56(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -56(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -56(%ebp), %eax
	pushl %eax
	movl -52(%ebp), %eax
	pushl %eax
	movl -48(%ebp), %eax
	pushl %eax
	call _quick_sort
	addl $12, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	movl %eax, -36(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -36(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -44(%ebp), %eax
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	movl -32(%ebp), %eax
	pushl %eax
	call _quick_sort
	addl $12, %esp
	popl %eax
	popl %ecx
	popl %edx
	jmp __merge735
__fresh740:
	jmp __else736
__else736:
	jmp __merge735
__merge735:
	movl %ebp, %esp
	popl %ebp
	ret
