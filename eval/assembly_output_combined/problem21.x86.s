	.file	"problem21.c"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-56(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-40(%rbp), %rax
	movss	4(%rax), %xmm0
	movss	%xmm0, (%rdx)
	movl	$0, -16(%rbp)
	jmp	.L2
.L7:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L3
.L6:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-20(%rbp), %xmm0
	comiss	-4(%rbp), %xmm0
	jbe	.L4
	movss	-4(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
.L4:
	addl	$1, -12(%rbp)
.L3:
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L6
	addl	$1, -16(%rbp)
.L2:
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L7
	movq	-56(%rbp), %rax
	movss	(%rax), %xmm0
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movss	(%rax), %xmm1
	comiss	%xmm1, %xmm0
	ja	.L11
	jmp	.L12
.L11:
	movq	-56(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -8(%rbp)
	movq	-56(%rbp), %rax
	movss	4(%rax), %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movss	-8(%rbp), %xmm0
	movss	%xmm0, (%rax)
.L12:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
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
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L14
.L18:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	comiss	-4(%rbp), %xmm0
	jbe	.L20
	movl	$0, %eax
	jmp	.L17
.L20:
	addl	$1, -8(%rbp)
.L14:
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L18
	movl	$1, %eax
.L17:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
.LC9:
	.string	"problem21.c"
.LC10:
	.string	"issame(result, expected1, 2)"
.LC12:
	.string	"issame(result, expected2, 2)"
.LC14:
	.string	"issame(result, expected3, 2)"
.LC15:
	.string	"issame(result, expected4, 2)"
.LC20:
	.string	"issame(result, expected5, 2)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -96(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -92(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -88(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -76(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -200(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -196(%rbp)
	leaq	-208(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-200(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$49, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -160(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -156(%rbp)
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -152(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -148(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -144(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -192(%rbp)
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -188(%rbp)
	leaq	-208(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-192(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$54, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -184(%rbp)
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -180(%rbp)
	leaq	-208(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-184(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$59, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -176(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -172(%rbp)
	leaq	-208(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-176(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$64, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L25:
	movss	.LC16(%rip), %xmm0
	movss	%xmm0, -128(%rbp)
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -124(%rbp)
	movss	.LC17(%rip), %xmm0
	movss	%xmm0, -120(%rbp)
	movss	.LC18(%rip), %xmm0
	movss	%xmm0, -116(%rbp)
	movss	.LC19(%rip), %xmm0
	movss	%xmm0, -112(%rbp)
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -168(%rbp)
	movss	.LC17(%rip), %xmm0
	movss	%xmm0, -164(%rbp)
	leaq	-208(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-168(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L26
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$69, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
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
.LFE2:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align 4
.LC0:
	.long	2139095039
	.align 16
.LC1:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC2:
	.long	953267991
	.align 4
.LC3:
	.long	1065353216
	.align 4
.LC4:
	.long	1073741824
	.align 4
.LC5:
	.long	1081711002
	.align 4
.LC6:
	.long	1082130432
	.align 4
.LC7:
	.long	1084227584
	.align 4
.LC8:
	.long	1074580685
	.align 4
.LC11:
	.long	1086115021
	.align 4
.LC13:
	.long	1077936128
	.align 4
.LC16:
	.long	1066192077
	.align 4
.LC17:
	.long	1078355558
	.align 4
.LC18:
	.long	1082340147
	.align 4
.LC19:
	.long	1084437299
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
