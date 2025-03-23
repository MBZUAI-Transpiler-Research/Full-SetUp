	.file	"problem3.c"
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
	movss	-4(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	pxor	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	movss	-4(%rbp), %xmm0
	subss	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"Testing problem 3"
.LC3:
	.string	"problem3.c"
.LC4:
	.string	"func0(3.5f) == 0.5f"
	.align 8
.LC9:
	.string	"fabs(func0(1.33f) - 0.33f) < 1e-4"
	.align 8
.LC12:
	.string	"fabs(func0(123.456f) - 0.456f) < 1e-4"
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
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	.LC1(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	movd	%xmm0, %eax
	movd	%eax, %xmm2
	ucomiss	.LC2(%rip), %xmm2
	jp	.L9
	movd	%eax, %xmm3
	ucomiss	.LC2(%rip), %xmm3
	je	.L4
.L9:
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$16, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L4:
	movl	.LC5(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	movd	%xmm0, %eax
	movss	.LC6(%rip), %xmm1
	movd	%eax, %xmm0
	subss	%xmm1, %xmm0
	movss	.LC7(%rip), %xmm1
	andps	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LC8(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L6
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$17, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L6:
	movl	.LC10(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	movd	%xmm0, %eax
	movss	.LC11(%rip), %xmm1
	movd	%eax, %xmm0
	subss	%xmm1, %xmm0
	movss	.LC7(%rip), %xmm1
	andps	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LC8(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L7
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$18, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L7:
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
.LC1:
	.long	1080033280
	.align 4
.LC2:
	.long	1056964608
	.align 4
.LC5:
	.long	1068121457
	.align 4
.LC6:
	.long	1051260355
	.align 16
.LC7:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC8:
	.long	-350469331
	.long	1058682594
	.align 4
.LC10:
	.long	1123477881
	.align 4
.LC11:
	.long	1055488213
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
