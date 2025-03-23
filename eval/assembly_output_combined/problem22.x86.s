	.file	"problem22.c"
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
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -16(%rbp)
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -12(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L2
.L7:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movss	-16(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L3
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -16(%rbp)
.L3:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	comiss	-12(%rbp), %xmm0
	jbe	.L5
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -12(%rbp)
.L5:
	addl	$1, -8(%rbp)
.L2:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L7
	movl	$0, -4(%rbp)
	jmp	.L8
.L9:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	subss	-16(%rbp), %xmm0
	movss	-12(%rbp), %xmm1
	subss	-16(%rbp), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	divss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -4(%rbp)
.L8:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L9
	nop
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
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L13
.L17:
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
	jbe	.L19
	movl	$0, %eax
	jmp	.L16
.L19:
	addl	$1, -8(%rbp)
.L13:
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L17
	movl	$1, %eax
.L16:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
.LC6:
	.string	"problem22.c"
.LC7:
	.string	"issame(test1, expected1, 2)"
.LC9:
	.string	"issame(test2, expected2, 2)"
.LC16:
	.string	"issame(test3, expected3, 5)"
.LC17:
	.string	"issame(test4, expected4, 5)"
.LC23:
	.string	"issame(test5, expected5, 5)"
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
	subq	$224, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -224(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -220(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -216(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -212(%rbp)
	leaq	-224(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-216(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -208(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -204(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -200(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -196(%rbp)
	leaq	-208(%rbp), %rax
	movl	$2, %esi
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
	movl	$37, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -192(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -188(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -184(%rbp)
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -180(%rbp)
	movss	.LC12(%rip), %xmm0
	movss	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -160(%rbp)
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -156(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, -152(%rbp)
	movss	.LC15(%rip), %xmm0
	movss	%xmm0, -148(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -144(%rbp)
	leaq	-192(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-160(%rbp), %rcx
	leaq	-192(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$42, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -128(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -124(%rbp)
	movss	.LC12(%rip), %xmm0
	movss	%xmm0, -120(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -116(%rbp)
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -112(%rbp)
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -96(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -92(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -88(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	.LC15(%rip), %xmm0
	movss	%xmm0, -80(%rbp)
	leaq	-128(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-96(%rbp), %rcx
	leaq	-128(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$47, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	movss	.LC18(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	.LC19(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	.LC20(%rip), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	.LC21(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	.LC22(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	.LC15(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	leaq	-64(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$52, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
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
.LFE2:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align 4
.LC0:
	.long	953267991
	.align 16
.LC1:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC2:
	.long	1073741824
	.align 4
.LC3:
	.long	1111988634
	.align 4
.LC5:
	.long	1065353216
	.align 4
.LC8:
	.long	1120403456
	.align 4
.LC10:
	.long	1077936128
	.align 4
.LC11:
	.long	1082130432
	.align 4
.LC12:
	.long	1084227584
	.align 4
.LC13:
	.long	1048576000
	.align 4
.LC14:
	.long	1056964608
	.align 4
.LC15:
	.long	1061158912
	.align 4
.LC18:
	.long	1094713344
	.align 4
.LC19:
	.long	1093664768
	.align 4
.LC20:
	.long	1097859072
	.align 4
.LC21:
	.long	1095761920
	.align 4
.LC22:
	.long	1096810496
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
