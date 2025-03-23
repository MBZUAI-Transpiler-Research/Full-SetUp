	.file	"problem36.c"
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
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	comiss	-8(%rbp), %xmm0
	jbe	.L3
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -8(%rbp)
.L3:
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L5
	movss	-8(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC6:
	.string	"problem36.c"
	.align 8
.LC7:
	.string	"fabs(func0(list1, 3) - 3) < 1e-4"
	.align 8
.LC15:
	.string	"fabs(func0(list2, 11) - 124) < 1e-4"
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
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -76(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -72(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -68(%rbp)
	leaq	-76(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movd	%xmm0, %eax
	movss	.LC3(%rip), %xmm1
	movd	%eax, %xmm0
	subss	%xmm1, %xmm0
	movss	.LC4(%rip), %xmm1
	andps	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$18, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -40(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	leaq	-64(%rbp), %rax
	movl	$11, %esi
	movq	%rax, %rdi
	call	func0
	movd	%xmm0, %eax
	movss	.LC13(%rip), %xmm1
	movd	%eax, %xmm0
	subss	%xmm1, %xmm0
	movss	.LC4(%rip), %xmm1
	andps	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
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
	.long	-971227136
	.align 4
.LC1:
	.long	1065353216
	.align 4
.LC2:
	.long	1073741824
	.align 4
.LC3:
	.long	1077936128
	.align 16
.LC4:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC5:
	.long	-350469331
	.long	1058682594
	.align 4
.LC8:
	.long	1084227584
	.align 4
.LC9:
	.long	-1063256064
	.align 4
.LC10:
	.long	-1069547520
	.align 4
.LC11:
	.long	1091567616
	.align 4
.LC13:
	.long	1123549184
	.align 4
.LC14:
	.long	-1054867456
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
