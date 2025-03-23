	.file	"problem72.c"
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
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movss	%xmm2, -28(%rbp)
	movss	-20(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	addss	-24(%rbp), %xmm1
	movss	-28(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L2
	movss	-20(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	addss	-28(%rbp), %xmm1
	movss	-24(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L2
	movss	-24(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	addss	-28(%rbp), %xmm1
	movss	-20(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jb	.L6
.L2:
	movss	.LC0(%rip), %xmm0
	jmp	.L5
.L6:
	movss	-20(%rbp), %xmm0
	addss	-24(%rbp), %xmm0
	addss	-28(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	subss	-20(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-8(%rbp), %xmm1
	movss	-8(%rbp), %xmm0
	subss	-24(%rbp), %xmm0
	mulss	%xmm0, %xmm1
	movss	-8(%rbp), %xmm0
	subss	-28(%rbp), %xmm0
	mulss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movd	%eax, %xmm0
	call	sqrtf@PLT
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movss	-4(%rbp), %xmm1
	movss	.LC2(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movd	%eax, %xmm0
	call	roundf@PLT
	movd	%xmm0, %eax
	movss	.LC2(%rip), %xmm1
	movd	%eax, %xmm0
	divss	%xmm1, %xmm0
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC9:
	.string	"problem72.c"
	.align 8
.LC10:
	.string	"fabs(func0(3, 4, 5) - 6.00) < 0.01"
	.align 8
.LC14:
	.string	"fabs(func0(1, 2, 10) + 1) < 0.01"
	.align 8
.LC17:
	.string	"fabs(func0(4, 8, 5) - 8.18) < 0.01"
	.align 8
.LC19:
	.string	"fabs(func0(2, 2, 2) - 1.73) < 0.01"
	.align 8
.LC20:
	.string	"fabs(func0(1, 2, 3) + 1) < 0.01"
	.align 8
.LC23:
	.string	"fabs(func0(10, 5, 7) - 16.25) < 0.01"
	.align 8
.LC25:
	.string	"fabs(func0(2, 6, 3) + 1) < 0.01"
	.align 8
.LC27:
	.string	"fabs(func0(1, 1, 1) - 0.43) < 0.01"
	.align 8
.LC28:
	.string	"fabs(func0(2, 2, 10) + 1) < 0.01"
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
	movss	.LC3(%rip), %xmm2
	movss	.LC4(%rip), %xmm1
	movl	.LC5(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC6(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC7(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC8(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L8
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$18, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L8:
	movss	.LC11(%rip), %xmm2
	movss	.LC1(%rip), %xmm1
	movl	.LC12(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	movss	.LC12(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	.LC13(%rip), %xmm1
	andps	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LC8(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$19, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	movss	.LC3(%rip), %xmm2
	movss	.LC15(%rip), %xmm1
	movl	.LC4(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC16(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC7(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC8(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	movss	.LC1(%rip), %xmm2
	movss	.LC1(%rip), %xmm1
	movl	.LC1(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC18(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC7(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC8(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	movss	.LC5(%rip), %xmm2
	movss	.LC1(%rip), %xmm1
	movl	.LC12(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	movss	.LC12(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	.LC13(%rip), %xmm1
	andps	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LC8(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	movss	.LC21(%rip), %xmm2
	movss	.LC3(%rip), %xmm1
	movl	.LC11(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC22(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC7(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC8(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movss	.LC5(%rip), %xmm2
	movss	.LC24(%rip), %xmm1
	movl	.LC1(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	movss	.LC12(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	.LC13(%rip), %xmm1
	andps	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LC8(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$24, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	movss	.LC12(%rip), %xmm2
	movss	.LC12(%rip), %xmm1
	movl	.LC12(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC26(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC7(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC8(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$25, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movss	.LC11(%rip), %xmm2
	movss	.LC1(%rip), %xmm1
	movl	.LC1(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	movss	.LC12(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	.LC13(%rip), %xmm1
	andps	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LC8(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$26, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
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
	.long	-1082130432
	.align 4
.LC1:
	.long	1073741824
	.align 4
.LC2:
	.long	1120403456
	.align 4
.LC3:
	.long	1084227584
	.align 4
.LC4:
	.long	1082130432
	.align 4
.LC5:
	.long	1077936128
	.align 8
.LC6:
	.long	0
	.long	1075314688
	.align 16
.LC7:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC8:
	.long	1202590843
	.long	1065646817
	.align 4
.LC11:
	.long	1092616192
	.align 4
.LC12:
	.long	1065353216
	.align 16
.LC13:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC15:
	.long	1090519040
	.align 8
.LC16:
	.long	-171798692
	.long	1075862568
	.align 8
.LC18:
	.long	2061584302
	.long	1073458708
	.align 4
.LC21:
	.long	1088421888
	.align 8
.LC22:
	.long	0
	.long	1076903936
	.align 4
.LC24:
	.long	1086324736
	.align 8
.LC26:
	.long	-1202590843
	.long	1071351070
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
