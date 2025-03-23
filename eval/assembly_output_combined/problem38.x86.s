	.file	"problem38.c"
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
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L2
.L3:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rcx), %xmm0
	movss	%xmm0, (%rax)
	addl	$2, -24(%rbp)
.L2:
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L3
	movl	$0, -24(%rbp)
	jmp	.L4
.L9:
	movl	$0, -20(%rbp)
	jmp	.L5
.L8:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-20(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L6
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -12(%rbp)
	movl	-20(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
	movl	-20(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movss	-12(%rbp), %xmm0
	movss	%xmm0, (%rax)
.L6:
	addl	$1, -20(%rbp)
.L5:
	movl	-16(%rbp), %eax
	subl	-24(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -20(%rbp)
	jl	.L8
	addl	$1, -24(%rbp)
.L4:
	movl	-16(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jl	.L9
	movl	$0, -24(%rbp)
	jmp	.L10
.L13:
	movl	-24(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L11
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
	jmp	.L12
.L11:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
.L12:
	addl	$1, -24(%rbp)
.L10:
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L13
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
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
	jmp	.L16
.L20:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC0(%rip), %xmm1
	andps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC1(%rip), %xmm0
	jbe	.L22
	movl	$0, %eax
	jmp	.L19
.L22:
	addl	$1, -4(%rbp)
.L16:
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
.LC5:
	.string	"problem38.c"
.LC6:
	.string	"issame(result1, expected1, 3)"
	.align 8
.LC14:
	.string	"issame(result2, expected2, 11)"
	.align 8
.LC21:
	.string	"issame(result3, expected3, 10)"
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
	subq	$352, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -340(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -336(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -332(%rbp)
	leaq	-328(%rbp), %rdx
	leaq	-340(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -316(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -312(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -308(%rbp)
	leaq	-316(%rbp), %rcx
	leaq	-328(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$55, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -160(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -156(%rbp)
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -152(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -148(%rbp)
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -144(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -140(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -136(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -132(%rbp)
	movss	.LC12(%rip), %xmm0
	movss	%xmm0, -128(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -124(%rbp)
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -120(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movl	$11, %esi
	movq	%rax, %rdi
	call	func0
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -40(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC12(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	leaq	-64(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movl	$11, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$61, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L25:
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -304(%rbp)
	movss	.LC15(%rip), %xmm0
	movss	%xmm0, -300(%rbp)
	movss	.LC16(%rip), %xmm0
	movss	%xmm0, -296(%rbp)
	movss	.LC17(%rip), %xmm0
	movss	%xmm0, -292(%rbp)
	movss	.LC18(%rip), %xmm0
	movss	%xmm0, -288(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -284(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -280(%rbp)
	movss	.LC19(%rip), %xmm0
	movss	%xmm0, -276(%rbp)
	movss	.LC20(%rip), %xmm0
	movss	%xmm0, -272(%rbp)
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -268(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	func0
	movss	.LC16(%rip), %xmm0
	movss	%xmm0, -208(%rbp)
	movss	.LC15(%rip), %xmm0
	movss	%xmm0, -204(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -200(%rbp)
	movss	.LC17(%rip), %xmm0
	movss	%xmm0, -196(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -192(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -188(%rbp)
	movss	.LC20(%rip), %xmm0
	movss	%xmm0, -184(%rbp)
	movss	.LC19(%rip), %xmm0
	movss	%xmm0, -180(%rbp)
	movss	.LC18(%rip), %xmm0
	movss	%xmm0, -176(%rbp)
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -172(%rbp)
	leaq	-208(%rbp), %rcx
	leaq	-256(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L26
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$67, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L26:
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
	.align 16
.LC0:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC1:
	.long	-350469331
	.long	1058682594
	.align 4
.LC2:
	.long	1065353216
	.align 4
.LC3:
	.long	1073741824
	.align 4
.LC4:
	.long	1077936128
	.align 4
.LC7:
	.long	1084227584
	.align 4
.LC8:
	.long	-1063256064
	.align 4
.LC9:
	.long	-1069547520
	.align 4
.LC10:
	.long	1091567616
	.align 4
.LC12:
	.long	1123418112
	.align 4
.LC13:
	.long	-1054867456
	.align 4
.LC15:
	.long	1090519040
	.align 4
.LC16:
	.long	-1052770304
	.align 4
.LC17:
	.long	1082130432
	.align 4
.LC18:
	.long	1102577664
	.align 4
.LC19:
	.long	1093664768
	.align 4
.LC20:
	.long	1094713344
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
