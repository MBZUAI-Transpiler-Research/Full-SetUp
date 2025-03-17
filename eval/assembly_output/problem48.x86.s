	.file	"problem48.c"
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
	movl	$0, -12(%rbp)
	jmp	.L2
.L7:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.L3
.L6:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L4
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -4(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	-4(%rbp), %xmm0
	movss	%xmm0, (%rax)
.L4:
	addl	$1, -8(%rbp)
.L3:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L6
	addl	$1, -12(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L7
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$1, %eax
	jne	.L8
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	jmp	.L9
.L8:
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm0, %xmm1
	movss	.LC0(%rip), %xmm0
	mulss	%xmm1, %xmm0
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC8:
	.string	"problem48.c"
	.align 8
.LC9:
	.string	"fabs(func0(list1, 5) - 3) < 1e-4"
	.align 8
.LC17:
	.string	"fabs(func0(list2, 6) - 8.0) < 1e-4"
	.align 8
.LC18:
	.string	"fabs(func0(list3, 1) - 5) < 1e-4"
	.align 8
.LC20:
	.string	"fabs(func0(list4, 2) - 5.5) < 1e-4"
	.align 8
.LC24:
	.string	"fabs(func0(list5, 7) - 7) < 1e-4"
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
	movss	%xmm0, -112(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -108(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -104(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -100(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -96(%rbp)
	leaq	-112(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	movd	%xmm0, %eax
	movss	.LC1(%rip), %xmm1
	movd	%eax, %xmm0
	subss	%xmm1, %xmm0
	movss	.LC6(%rip), %xmm1
	andps	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LC7(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -76(%rbp)
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -72(%rbp)
	movss	.LC12(%rip), %xmm0
	movss	%xmm0, -68(%rbp)
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	leaq	-80(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC15(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC16(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC7(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$30, %edx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -124(%rbp)
	leaq	-124(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	movd	%xmm0, %eax
	movss	.LC5(%rip), %xmm1
	movd	%eax, %xmm0
	subss	%xmm1, %xmm0
	movss	.LC6(%rip), %xmm1
	andps	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LC7(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -120(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -116(%rbp)
	leaq	-120(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	func0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC19(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC16(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC7(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movss	.LC21(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -40(%rbp)
	movss	.LC22(%rip), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	.LC22(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	leaq	-48(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	func0
	movd	%xmm0, %eax
	movss	.LC23(%rip), %xmm1
	movd	%eax, %xmm0
	subss	%xmm1, %xmm0
	movss	.LC6(%rip), %xmm1
	andps	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LC7(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$39, %edx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
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
	.align 4
.LC0:
	.long	1056964608
	.align 4
.LC1:
	.long	1077936128
	.align 4
.LC2:
	.long	1065353216
	.align 4
.LC3:
	.long	1073741824
	.align 4
.LC4:
	.long	1082130432
	.align 4
.LC5:
	.long	1084227584
	.align 16
.LC6:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC7:
	.long	-350469331
	.long	1058682594
	.align 4
.LC10:
	.long	-1054867456
	.align 4
.LC11:
	.long	1086324736
	.align 4
.LC12:
	.long	1148846080
	.align 4
.LC13:
	.long	1092616192
	.align 4
.LC14:
	.long	1101004800
	.align 8
.LC15:
	.long	0
	.long	1075838976
	.align 16
.LC16:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC19:
	.long	0
	.long	1075183616
	.align 4
.LC21:
	.long	1090519040
	.align 4
.LC22:
	.long	1091567616
	.align 4
.LC23:
	.long	1088421888
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
