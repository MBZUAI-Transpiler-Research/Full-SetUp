	.file	"problem134.c"
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
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L2
.L3:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	ceil@PLT
	cvttsd2sil	%xmm0, %ebx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	call	ceil@PLT
	cvttsd2sil	%xmm0, %eax
	imull	%ebx, %eax
	addl	%eax, -24(%rbp)
	addl	$1, -20(%rbp)
.L2:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L3
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC3:
	.string	"problem134.c"
.LC4:
	.string	"func0(lst1, 3) == 14"
.LC5:
	.string	"func0(lst2, 3) == 14"
.LC8:
	.string	"func0(lst3, 4) == 84"
.LC12:
	.string	"func0(lst4, 3) == 29"
.LC14:
	.string	"func0(lst5, 3) == 6"
.LC17:
	.string	"func0(lst6, 4) == 10230"
.LC19:
	.string	"func0(lst7, 2) == 200000000"
.LC23:
	.string	"func0(lst8, 3) == 75"
.LC27:
	.string	"func0(lst9, 4) == 1086"
.LC28:
	.string	"func0(lst10, 1) == 0"
.LC30:
	.string	"func0(lst11, 1) == 1"
.LC31:
	.string	"func0(lst12, 3) == 2"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -136(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -132(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -128(%rbp)
	leaq	-136(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$14, %eax
	je	.L6
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$18, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L6:
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -124(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -120(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -116(%rbp)
	leaq	-124(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$14, %eax
	je	.L7
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L7:
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	leaq	-64(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$84, %eax
	je	.L8
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$24, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L8:
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -112(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -108(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -104(%rbp)
	leaq	-112(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$29, %eax
	je	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -100(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -96(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -92(%rbp)
	leaq	-100(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$6, %eax
	je	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$30, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	movss	.LC15(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	.LC16(%rip), %xmm0
	movss	%xmm0, -40(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -36(%rbp)
	leaq	-48(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$10230, %eax
	je	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	movss	.LC18(%rip), %xmm0
	movss	%xmm0, -144(%rbp)
	movss	.LC18(%rip), %xmm0
	movss	%xmm0, -140(%rbp)
	leaq	-144(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$200000000, %eax
	je	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	movss	.LC20(%rip), %xmm0
	movss	%xmm0, -88(%rbp)
	movss	.LC21(%rip), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	.LC22(%rip), %xmm0
	movss	%xmm0, -80(%rbp)
	leaq	-88(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$75, %eax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$39, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movss	.LC20(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	.LC26(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	leaq	-32(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$1086, %eax
	je	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$42, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -152(%rbp)
	leaq	-152(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$45, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movss	.LC29(%rip), %xmm0
	movss	%xmm0, -148(%rbp)
	leaq	-148(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$48, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movss	.LC29(%rip), %xmm0
	movss	%xmm0, -76(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -72(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -68(%rbp)
	leaq	-76(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$2, %eax
	je	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$51, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align 4
.LC0:
	.long	1065353216
	.align 4
.LC1:
	.long	1073741824
	.align 4
.LC2:
	.long	1077936128
	.align 4
.LC6:
	.long	1084227584
	.align 4
.LC7:
	.long	1088421888
	.align 4
.LC9:
	.long	1068708659
	.align 4
.LC10:
	.long	1082549862
	.align 4
.LC13:
	.long	-1072064102
	.align 4
.LC15:
	.long	1120403456
	.align 4
.LC16:
	.long	1097859072
	.align 4
.LC18:
	.long	1176256512
	.align 4
.LC20:
	.long	-1078774989
	.align 4
.LC21:
	.long	1083388723
	.align 4
.LC22:
	.long	1086953882
	.align 4
.LC24:
	.long	1099903795
	.align 4
.LC25:
	.long	1100428083
	.align 4
.LC26:
	.long	1100952371
	.align 4
.LC29:
	.long	-1082130432
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
