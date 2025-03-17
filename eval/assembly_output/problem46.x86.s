	.file	"problem46.c"
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
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	-4(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-8(%rbp), %xmm1
	movss	.LC0(%rip), %xmm0
	mulss	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC6:
	.string	"problem46.c"
	.align 8
.LC7:
	.string	"fabs(func0(5, 3) - 7.5) < 1e-4"
	.align 8
.LC10:
	.string	"fabs(func0(2, 2) - 2.0) < 1e-4"
	.align 8
.LC14:
	.string	"fabs(func0(10, 8) - 40.0) < 1e-4"
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
	movss	.LC1(%rip), %xmm1
	movl	.LC2(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC3(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC4(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L4
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$15, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L4:
	movss	.LC8(%rip), %xmm1
	movl	.LC8(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC9(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC4(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L5
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$16, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L5:
	movss	.LC11(%rip), %xmm1
	movl	.LC12(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC13(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC4(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L6
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$17, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L6:
	movl	$0, %eax
	popq	%rbp
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
	.long	1056964608
	.align 4
.LC1:
	.long	1077936128
	.align 4
.LC2:
	.long	1084227584
	.align 8
.LC3:
	.long	0
	.long	1075707904
	.align 16
.LC4:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC5:
	.long	-350469331
	.long	1058682594
	.align 4
.LC8:
	.long	1073741824
	.align 8
.LC9:
	.long	0
	.long	1073741824
	.align 4
.LC11:
	.long	1090519040
	.align 4
.LC12:
	.long	1092616192
	.align 8
.LC13:
	.long	0
	.long	1078198272
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
