	.align 4
	.data
a1223:
	.long 0
_oat_string1191.str.:
	.ascii "42\0"
_oat_string1191:
	.long _oat_string1191.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh476:
	pushl %edx
	pushl %ecx
	pushl %eax
	call _a1223.init
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
	subl $500, %esp
__fresh475:
	leal -500(%ebp), %eax
	movl %eax, -492(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -492(%ebp), %eax
	movl %ecx, (%eax)
	leal -496(%ebp), %eax
	movl %eax, -488(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -488(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -484(%ebp)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -480(%ebp)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -476(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -472(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -468(%ebp)
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -464(%ebp)
	movl -92(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -460(%ebp)
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -456(%ebp)
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -452(%ebp)
	movl -128(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -448(%ebp)
	movl -140(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -444(%ebp)
	movl -152(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -440(%ebp)
	movl -164(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -436(%ebp)
	movl -176(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -432(%ebp)
	movl -188(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -428(%ebp)
	movl -200(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -424(%ebp)
	movl -212(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -420(%ebp)
	movl -224(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -416(%ebp)
	movl -236(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -412(%ebp)
	movl -248(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -408(%ebp)
	movl -260(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -404(%ebp)
	movl -272(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -400(%ebp)
	movl -284(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -396(%ebp)
	movl -296(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -392(%ebp)
	movl -308(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -388(%ebp)
	movl -320(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -384(%ebp)
	movl -332(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -380(%ebp)
	movl -344(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -376(%ebp)
	movl -356(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -372(%ebp)
	movl a1223, %eax
	movl %eax, -368(%ebp)
	movl -368(%ebp), %eax
	addl $0, %eax
	movl %eax, -364(%ebp)
	movl -364(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -360(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
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
	addl $0, %eax
	movl %eax, -356(%ebp)
	movl -372(%ebp), %eax
	addl $0, %eax
	movl %eax, -352(%ebp)
	movl -352(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -348(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -348(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -372(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -344(%ebp)
	movl -376(%ebp), %eax
	addl $0, %eax
	movl %eax, -340(%ebp)
	movl -340(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -336(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -336(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -376(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -332(%ebp)
	movl -380(%ebp), %eax
	addl $0, %eax
	movl %eax, -328(%ebp)
	movl -328(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -324(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -324(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -380(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -320(%ebp)
	movl -384(%ebp), %eax
	addl $0, %eax
	movl %eax, -316(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -312(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -312(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -384(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -308(%ebp)
	movl -388(%ebp), %eax
	addl $0, %eax
	movl %eax, -304(%ebp)
	movl -304(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -300(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -300(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -388(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -296(%ebp)
	movl -392(%ebp), %eax
	addl $0, %eax
	movl %eax, -292(%ebp)
	movl -292(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -288(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -288(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -392(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -284(%ebp)
	movl -396(%ebp), %eax
	addl $0, %eax
	movl %eax, -280(%ebp)
	movl -280(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -276(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -276(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -396(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -272(%ebp)
	movl -400(%ebp), %eax
	addl $0, %eax
	movl %eax, -268(%ebp)
	movl -268(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -264(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -264(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -400(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -260(%ebp)
	movl -404(%ebp), %eax
	addl $0, %eax
	movl %eax, -256(%ebp)
	movl -256(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -252(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -252(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -404(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -248(%ebp)
	movl -408(%ebp), %eax
	addl $0, %eax
	movl %eax, -244(%ebp)
	movl -244(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -240(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -240(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -408(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -236(%ebp)
	movl -412(%ebp), %eax
	addl $0, %eax
	movl %eax, -232(%ebp)
	movl -232(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -228(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -228(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -412(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -224(%ebp)
	movl -416(%ebp), %eax
	addl $0, %eax
	movl %eax, -220(%ebp)
	movl -220(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -216(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -216(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -416(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -212(%ebp)
	movl -420(%ebp), %eax
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
	movl -420(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -200(%ebp)
	movl -424(%ebp), %eax
	addl $0, %eax
	movl %eax, -196(%ebp)
	movl -196(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -192(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -192(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -424(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -188(%ebp)
	movl -428(%ebp), %eax
	addl $0, %eax
	movl %eax, -184(%ebp)
	movl -184(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -180(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -428(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -176(%ebp)
	movl -432(%ebp), %eax
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
	movl -432(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -164(%ebp)
	movl -436(%ebp), %eax
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
	movl -436(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -152(%ebp)
	movl -440(%ebp), %eax
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
	movl -440(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -140(%ebp)
	movl -444(%ebp), %eax
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
	movl -444(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -128(%ebp)
	movl -448(%ebp), %eax
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
	movl -448(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -116(%ebp)
	movl -452(%ebp), %eax
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
	movl -452(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	movl -456(%ebp), %eax
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
	movl -456(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -92(%ebp)
	movl -460(%ebp), %eax
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
	movl -460(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -80(%ebp)
	movl -464(%ebp), %eax
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
	movl -464(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	movl -468(%ebp), %eax
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
	movl -468(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	movl -472(%ebp), %eax
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
	movl -472(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -44(%ebp)
	movl -476(%ebp), %eax
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
	movl -476(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	movl -480(%ebp), %eax
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
	movl -480(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	movl -484(%ebp), %eax
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
	movl -484(%ebp), %eax
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
.globl _a1223.init
_a1223.init:
	pushl %ebp
	movl %esp, %ebp
	subl $364, %esp
__fresh474:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -364(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -360(%ebp)
	movl -364(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -356(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -352(%ebp)
	movl -356(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -348(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -344(%ebp)
	movl -348(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -340(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -336(%ebp)
	movl -340(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -332(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -328(%ebp)
	movl -332(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -324(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -320(%ebp)
	movl -324(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -316(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -312(%ebp)
	movl -316(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -308(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -304(%ebp)
	movl -308(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -300(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -296(%ebp)
	movl -300(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -292(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -288(%ebp)
	movl -292(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -284(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -280(%ebp)
	movl -284(%ebp), %eax
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
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -268(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -264(%ebp)
	movl -268(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -260(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -256(%ebp)
	movl -260(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -252(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -248(%ebp)
	movl -252(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -244(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -240(%ebp)
	movl -244(%ebp), %eax
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
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -228(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -224(%ebp)
	movl -228(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -220(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -216(%ebp)
	movl -220(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -212(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -208(%ebp)
	movl -212(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -204(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -200(%ebp)
	movl -204(%ebp), %eax
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
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -188(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -184(%ebp)
	movl -188(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -180(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -176(%ebp)
	movl -180(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -172(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -168(%ebp)
	movl -172(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -164(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -160(%ebp)
	movl -164(%ebp), %eax
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
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -148(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -144(%ebp)
	movl -148(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -140(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -136(%ebp)
	movl -140(%ebp), %eax
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -132(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, -128(%ebp)
	movl -132(%ebp), %eax
	movl _oat_string1191, %eax
	movl %eax, -124(%ebp)
	movl -128(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -120(%ebp)
	movl -124(%ebp), %eax
	movl %eax, %ecx
	movl -120(%ebp), %eax
	movl %ecx, (%eax)
	movl -136(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -116(%ebp)
	movl -128(%ebp), %eax
	movl %eax, %ecx
	movl -116(%ebp), %eax
	movl %ecx, (%eax)
	movl -144(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -112(%ebp)
	movl -136(%ebp), %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	movl %ecx, (%eax)
	movl -152(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -108(%ebp)
	movl -144(%ebp), %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	movl %ecx, (%eax)
	movl -160(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	movl -152(%ebp), %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	movl %ecx, (%eax)
	movl -168(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -100(%ebp)
	movl -160(%ebp), %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	movl %ecx, (%eax)
	movl -176(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -96(%ebp)
	movl -168(%ebp), %eax
	movl %eax, %ecx
	movl -96(%ebp), %eax
	movl %ecx, (%eax)
	movl -184(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -92(%ebp)
	movl -176(%ebp), %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	movl %ecx, (%eax)
	movl -192(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -88(%ebp)
	movl -184(%ebp), %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	movl -200(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -84(%ebp)
	movl -192(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl -208(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -80(%ebp)
	movl -200(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	movl -216(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -76(%ebp)
	movl -208(%ebp), %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	movl %ecx, (%eax)
	movl -224(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -72(%ebp)
	movl -216(%ebp), %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	movl -232(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	movl -224(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -240(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	movl -232(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	movl -248(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	movl -240(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -256(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	movl -248(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -264(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -52(%ebp)
	movl -256(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl -272(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -48(%ebp)
	movl -264(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -280(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -44(%ebp)
	movl -272(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl -288(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -40(%ebp)
	movl -280(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -296(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -36(%ebp)
	movl -288(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -304(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	movl -296(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -312(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -28(%ebp)
	movl -304(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -320(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -24(%ebp)
	movl -312(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -328(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	movl -320(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -336(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	movl -328(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -344(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl -336(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -352(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl -344(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -360(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl -352(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -360(%ebp), %eax
	movl %eax, a1223
	movl %ebp, %esp
	popl %ebp
	ret
