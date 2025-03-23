	.file	"problem121.c"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L2
.L6:
	movl	$0, -12(%rbp)
	jmp	.L3
.L5:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L4
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-12(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
.L4:
	addl	$1, -12(%rbp)
.L3:
	movl	-28(%rbp), %eax
	subl	-16(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L5
	addl	$1, -16(%rbp)
.L2:
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -16(%rbp)
	jl	.L6
	movl	$0, -8(%rbp)
	jmp	.L7
.L8:
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -8(%rbp)
.L7:
	movl	-8(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L8
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L10
.L13:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	addl	$1, -4(%rbp)
.L10:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L13
	movl	$1, %eax
.L12:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem121.c"
.LC1:
	.string	"issame(out1, expected1, 3)"
.LC2:
	.string	"issame(out2, expected2, 2)"
.LC3:
	.string	"issame(out3, expected3, 1)"
.LC4:
	.string	"issame(out4, expected4, 3)"
.LC5:
	.string	"issame(out5, expected5, 4)"
.LC6:
	.string	"issame(out6, expected6, 7)"
.LC7:
	.string	"issame(out7, expected7, 2)"
.LC8:
	.string	"issame(out8, expected8, 1)"
.LC9:
	.string	"issame(out9, expected9, 2)"
.LC10:
	.string	"issame(out10, expected10, 2)"
.LC11:
	.string	"issame(out11, expected11, 0)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$496, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$-3, -392(%rbp)
	movl	$-4, -388(%rbp)
	movl	$5, -384(%rbp)
	leaq	-380(%rbp), %rdx
	leaq	-392(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movl	$-4, -368(%rbp)
	movl	$-3, -364(%rbp)
	movl	$5, -360(%rbp)
	leaq	-368(%rbp), %rcx
	leaq	-380(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$38, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movl	$4, -356(%rbp)
	movl	$-4, -352(%rbp)
	movl	$4, -348(%rbp)
	leaq	-472(%rbp), %rdx
	leaq	-356(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movl	$4, -464(%rbp)
	movl	$4, -460(%rbp)
	leaq	-464(%rbp), %rcx
	leaq	-472(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movl	$-3, -208(%rbp)
	movl	$2, -204(%rbp)
	movl	$1, -200(%rbp)
	movl	$2, -196(%rbp)
	movl	$-1, -192(%rbp)
	movl	$-2, -188(%rbp)
	movl	$1, -184(%rbp)
	leaq	-488(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	func0
	movl	$2, -484(%rbp)
	leaq	-484(%rbp), %rcx
	leaq	-488(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	movl	$123, -176(%rbp)
	movl	$-123, -172(%rbp)
	movl	$20, -168(%rbp)
	movl	$0, -164(%rbp)
	movl	$1, -160(%rbp)
	movl	$2, -156(%rbp)
	movl	$-3, -152(%rbp)
	leaq	-344(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	func0
	movl	$2, -332(%rbp)
	movl	$20, -328(%rbp)
	movl	$123, -324(%rbp)
	leaq	-332(%rbp), %rcx
	leaq	-344(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$56, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	movl	$-123, -272(%rbp)
	movl	$20, -268(%rbp)
	movl	$0, -264(%rbp)
	movl	$1, -260(%rbp)
	movl	$2, -256(%rbp)
	movl	$-3, -252(%rbp)
	leaq	-320(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	movl	$0, -304(%rbp)
	movl	$1, -300(%rbp)
	movl	$2, -296(%rbp)
	movl	$20, -292(%rbp)
	leaq	-304(%rbp), %rcx
	leaq	-320(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$62, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	movl	$5, -144(%rbp)
	movl	$15, -140(%rbp)
	movl	$0, -136(%rbp)
	movl	$3, -132(%rbp)
	movl	$-13, -128(%rbp)
	movl	$-8, -124(%rbp)
	movl	$0, -120(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rcx
	movl	$7, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	func0
	movl	$-13, -80(%rbp)
	movl	$-8, -76(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
	movl	$3, -64(%rbp)
	movl	$5, -60(%rbp)
	movl	$15, -56(%rbp)
	leaq	-80(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$68, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	movl	$-1, -240(%rbp)
	movl	$0, -236(%rbp)
	movl	$2, -232(%rbp)
	movl	$5, -228(%rbp)
	movl	$3, -224(%rbp)
	movl	$-10, -220(%rbp)
	leaq	-456(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	movl	$3, -448(%rbp)
	movl	$5, -444(%rbp)
	leaq	-448(%rbp), %rcx
	leaq	-456(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$74, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	movl	$1, -288(%rbp)
	movl	$0, -284(%rbp)
	movl	$5, -280(%rbp)
	movl	$-7, -276(%rbp)
	leaq	-480(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movl	$5, -476(%rbp)
	leaq	-476(%rbp), %rcx
	leaq	-480(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$80, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movl	$4, -440(%rbp)
	movl	$-4, -436(%rbp)
	leaq	-432(%rbp), %rdx
	leaq	-440(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	func0
	movl	$-4, -424(%rbp)
	movl	$4, -420(%rbp)
	leaq	-424(%rbp), %rcx
	leaq	-432(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$86, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	movl	$-10, -416(%rbp)
	movl	$10, -412(%rbp)
	leaq	-408(%rbp), %rdx
	leaq	-416(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	func0
	movl	$-10, -400(%rbp)
	movl	$10, -396(%rbp)
	leaq	-400(%rbp), %rcx
	leaq	-408(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$92, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	movl	$1, -48(%rbp)
	movl	$2, -44(%rbp)
	movl	$3, -40(%rbp)
	movl	$-23, -36(%rbp)
	movl	$243, -32(%rbp)
	movl	$-400, -28(%rbp)
	movl	$0, -24(%rbp)
	leaq	-496(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-492(%rbp), %rcx
	leaq	-496(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$98, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L25:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
