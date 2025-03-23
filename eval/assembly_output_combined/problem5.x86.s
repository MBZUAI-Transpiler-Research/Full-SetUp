	.file	"problem5.c"
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
	pxor	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L3:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	-16(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	addl	$1, -8(%rbp)
.L2:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L3
	pxor	%xmm1, %xmm1
	cvtsi2ssl	-28(%rbp), %xmm1
	movss	-16(%rbp), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L4
.L5:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	subss	-4(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-12(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	addl	$1, -8(%rbp)
.L4:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L5
	pxor	%xmm1, %xmm1
	cvtsi2ssl	-28(%rbp), %xmm1
	movss	-12(%rbp), %xmm0
	divss	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC8:
	.string	"problem5.c"
	.align 8
.LC9:
	.string	"fabs(func0(case1, 3) - 2.0/3.0) < 1e-4"
	.align 8
.LC12:
	.string	"fabs(func0(case2, 4) - 1.0) < 1e-4"
	.align 8
.LC15:
	.string	"fabs(func0(case3, 5) - 6.0/5.0) < 1e-4"
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
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	leaq	-60(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC5(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC6(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC7(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L8
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L8:
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -40(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -36(%rbp)
	leaq	-48(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC11(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC6(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC7(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	leaq	-32(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC14(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC6(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC7(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	leaq	.LC8(%rip), %rax
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
	.align 16
.LC1:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC2:
	.long	1065353216
	.align 4
.LC3:
	.long	1073741824
	.align 4
.LC4:
	.long	1077936128
	.align 8
.LC5:
	.long	1431655765
	.long	1071994197
	.align 16
.LC6:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC7:
	.long	-350469331
	.long	1058682594
	.align 4
.LC10:
	.long	1082130432
	.align 8
.LC11:
	.long	0
	.long	1072693248
	.align 4
.LC13:
	.long	1084227584
	.align 8
.LC14:
	.long	858993459
	.long	1072902963
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
