	.file	"problem1.c"
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
	movss	%xmm0, -32(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L8:
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L3
.L7:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC0(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-32(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L10
	movl	$1, %eax
	jmp	.L6
.L10:
	addl	$1, -4(%rbp)
.L3:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L7
	addl	$1, -8(%rbp)
.L2:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L8
	movl	$0, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC7:
	.string	"Testing case 1"
.LC9:
	.string	"problem1.c"
.LC10:
	.string	"func0(a, 6, 0.3) == 1"
.LC12:
	.string	"func0(a, 6, 0.05) == 0"
.LC14:
	.string	"Testing case 2"
.LC16:
	.string	"func0(b, 5, 0.95) == 1"
.LC18:
	.string	"func0(b, 5, 0.8) == 0"
.LC20:
	.string	"Testing case 3"
.LC21:
	.string	"func0(c, 5, 2.0) == 1"
.LC26:
	.string	"Testing case 4"
.LC27:
	.string	"func0(d, 5, 1.0) == 1"
.LC29:
	.string	"func0(d, 5, 0.5) == 0"
.LC30:
	.string	"All tests passed"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-32(%rbp), %rax
	movl	.LC8(%rip), %edx
	movd	%edx, %xmm0
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$26, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	leaq	-32(%rbp), %rax
	movl	.LC11(%rip), %edx
	movd	%edx, %xmm0
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -128(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -124(%rbp)
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -120(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -116(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -112(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-128(%rbp), %rax
	movl	.LC15(%rip), %edx
	movd	%edx, %xmm0
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	leaq	-128(%rbp), %rax
	movl	.LC17(%rip), %edx
	movd	%edx, %xmm0
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -96(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -92(%rbp)
	movss	.LC19(%rip), %xmm0
	movss	%xmm0, -88(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -80(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-96(%rbp), %rax
	movl	.LC2(%rip), %edx
	movd	%edx, %xmm0
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movss	.LC22(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-64(%rbp), %rax
	movl	.LC1(%rip), %edx
	movd	%edx, %xmm0
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	leaq	-64(%rbp), %rax
	movl	.LC28(%rip), %edx
	movd	%edx, %xmm0
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
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
	.align 4
.LC1:
	.long	1065353216
	.align 4
.LC2:
	.long	1073741824
	.align 4
.LC3:
	.long	1081711002
	.align 4
.LC4:
	.long	1082130432
	.align 4
.LC5:
	.long	1084227584
	.align 4
.LC6:
	.long	1074580685
	.align 4
.LC8:
	.long	1050253722
	.align 4
.LC11:
	.long	1028443341
	.align 4
.LC13:
	.long	1086115021
	.align 4
.LC15:
	.long	1064514355
	.align 4
.LC17:
	.long	1061997773
	.align 4
.LC19:
	.long	1077936128
	.align 4
.LC22:
	.long	1066192077
	.align 4
.LC23:
	.long	1078355558
	.align 4
.LC24:
	.long	1082340147
	.align 4
.LC25:
	.long	1084437299
	.align 4
.LC28:
	.long	1056964608
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
