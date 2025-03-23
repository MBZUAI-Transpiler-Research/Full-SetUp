	.file	"problem130.c"
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
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L2
.L6:
	movl	$0, -24(%rbp)
	jmp	.L3
.L5:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L4
	movl	-28(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -16(%rbp)
.L4:
	addl	$1, -24(%rbp)
.L3:
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L5
	addl	$1, -28(%rbp)
.L2:
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L6
	movl	-44(%rbp), %eax
	imull	%eax, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L7
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L7
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
.L7:
	movl	-44(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -20(%rbp)
	jge	.L8
	movl	-20(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L8
	movl	-20(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
.L8:
	cmpl	$0, -16(%rbp)
	jle	.L9
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L9
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
.L9:
	movl	-44(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -16(%rbp)
	jge	.L10
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L10
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
.L10:
	movq	-56(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, (%rax)
	movl	-48(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L11
.L14:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L12
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	jmp	.L13
.L12:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, (%rdx)
.L13:
	addl	$1, -28(%rbp)
.L11:
	movl	-28(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L14
	movq	-8(%rbp), %rax
	leave
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
	jmp	.L17
.L20:
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
	je	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	addl	$1, -4(%rbp)
.L17:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L20
	movl	$1, %eax
.L19:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem130.c"
.LC1:
	.string	"issame(out1, result1, size)"
.LC2:
	.string	"issame(out2, result2, size)"
.LC3:
	.string	"issame(out3, result3, size)"
.LC4:
	.string	"issame(out4, result4, size)"
.LC5:
	.string	"issame(out5, result5, size)"
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
	subq	$608, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -304(%rbp)
	movl	$2, -300(%rbp)
	movl	$3, -296(%rbp)
	movl	$4, -292(%rbp)
	movl	$5, -288(%rbp)
	movl	$6, -284(%rbp)
	movl	$7, -280(%rbp)
	movl	$8, -276(%rbp)
	movl	$9, -272(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, -496(%rbp)
	leaq	-304(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -488(%rbp)
	leaq	-304(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -480(%rbp)
	movl	$1, -556(%rbp)
	movl	$2, -552(%rbp)
	movl	$1, -548(%rbp)
	leaq	-604(%rbp), %rdx
	leaq	-496(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -600(%rbp)
	movl	-604(%rbp), %edx
	leaq	-556(%rbp), %rcx
	movq	-600(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$47, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movq	-600(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$5, -256(%rbp)
	movl	$9, -252(%rbp)
	movl	$3, -248(%rbp)
	movl	$4, -244(%rbp)
	movl	$1, -240(%rbp)
	movl	$6, -236(%rbp)
	movl	$7, -232(%rbp)
	movl	$8, -228(%rbp)
	movl	$2, -224(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -464(%rbp)
	leaq	-256(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -456(%rbp)
	leaq	-256(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -448(%rbp)
	movl	$1, -560(%rbp)
	leaq	-604(%rbp), %rdx
	leaq	-464(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -592(%rbp)
	movl	-604(%rbp), %edx
	leaq	-560(%rbp), %rcx
	movq	-592(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$55, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	movq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, -208(%rbp)
	movl	$2, -204(%rbp)
	movl	$3, -200(%rbp)
	movl	$4, -196(%rbp)
	movl	$5, -192(%rbp)
	movl	$6, -188(%rbp)
	movl	$7, -184(%rbp)
	movl	$8, -180(%rbp)
	movl	$9, -176(%rbp)
	movl	$10, -172(%rbp)
	movl	$11, -168(%rbp)
	movl	$12, -164(%rbp)
	movl	$13, -160(%rbp)
	movl	$14, -156(%rbp)
	movl	$15, -152(%rbp)
	movl	$16, -148(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -400(%rbp)
	leaq	-208(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -392(%rbp)
	leaq	-208(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -384(%rbp)
	leaq	-208(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -376(%rbp)
	movl	$1, -544(%rbp)
	movl	$2, -540(%rbp)
	movl	$1, -536(%rbp)
	movl	$2, -532(%rbp)
	leaq	-604(%rbp), %rdx
	leaq	-400(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -584(%rbp)
	movl	-604(%rbp), %edx
	leaq	-544(%rbp), %rcx
	movq	-584(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$63, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	movq	-584(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$6, -144(%rbp)
	movl	$4, -140(%rbp)
	movl	$13, -136(%rbp)
	movl	$10, -132(%rbp)
	movl	$5, -128(%rbp)
	movl	$7, -124(%rbp)
	movl	$12, -120(%rbp)
	movl	$1, -116(%rbp)
	movl	$3, -112(%rbp)
	movl	$16, -108(%rbp)
	movl	$11, -104(%rbp)
	movl	$15, -100(%rbp)
	movl	$8, -96(%rbp)
	movl	$14, -92(%rbp)
	movl	$9, -88(%rbp)
	movl	$2, -84(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -368(%rbp)
	leaq	-144(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -360(%rbp)
	leaq	-144(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -352(%rbp)
	leaq	-144(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -344(%rbp)
	movl	$1, -432(%rbp)
	movl	$10, -428(%rbp)
	movl	$1, -424(%rbp)
	movl	$10, -420(%rbp)
	movl	$1, -416(%rbp)
	movl	$10, -412(%rbp)
	movl	$1, -408(%rbp)
	leaq	-604(%rbp), %rdx
	leaq	-368(%rbp), %rax
	movq	%rdx, %rcx
	movl	$7, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -576(%rbp)
	movl	-604(%rbp), %edx
	leaq	-432(%rbp), %rcx
	movq	-576(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$71, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L25:
	movq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$8, -80(%rbp)
	movl	$14, -76(%rbp)
	movl	$9, -72(%rbp)
	movl	$2, -68(%rbp)
	movl	$6, -64(%rbp)
	movl	$4, -60(%rbp)
	movl	$13, -56(%rbp)
	movl	$15, -52(%rbp)
	movl	$5, -48(%rbp)
	movl	$7, -44(%rbp)
	movl	$1, -40(%rbp)
	movl	$12, -36(%rbp)
	movl	$3, -32(%rbp)
	movl	$10, -28(%rbp)
	movl	$11, -24(%rbp)
	movl	$16, -20(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -336(%rbp)
	leaq	-80(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -328(%rbp)
	leaq	-80(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -320(%rbp)
	leaq	-80(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -312(%rbp)
	movl	$1, -528(%rbp)
	movl	$7, -524(%rbp)
	movl	$1, -520(%rbp)
	movl	$7, -516(%rbp)
	movl	$1, -512(%rbp)
	leaq	-604(%rbp), %rdx
	leaq	-336(%rbp), %rax
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -568(%rbp)
	movl	-604(%rbp), %edx
	leaq	-528(%rbp), %rcx
	movq	-568(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L26
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$79, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L26:
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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
