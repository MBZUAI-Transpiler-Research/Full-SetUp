	.file	"problem158.c"
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
	movss	%xmm2, -12(%rbp)
	movss	-4(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movss	-8(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm0, %xmm1
	movss	-12(%rbp), %xmm0
	movaps	%xmm0, %xmm2
	mulss	%xmm0, %xmm2
	subss	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	movss	.LC0(%rip), %xmm1
	andps	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L2
	movss	-4(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movss	-12(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm0, %xmm1
	movss	-8(%rbp), %xmm0
	movaps	%xmm0, %xmm2
	mulss	%xmm0, %xmm2
	subss	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	movss	.LC0(%rip), %xmm1
	andps	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L2
	movss	-8(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movss	-12(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm0, %xmm1
	movss	-4(%rbp), %xmm0
	movaps	%xmm0, %xmm2
	mulss	%xmm0, %xmm2
	subss	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	movss	.LC0(%rip), %xmm1
	andps	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L6
.L2:
	movl	$1, %eax
	jmp	.L5
.L6:
	movl	$0, %eax
.L5:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC5:
	.string	"problem158.c"
.LC6:
	.string	"func0(3, 4, 5) == 1"
.LC9:
	.string	"func0(1, 2, 3) == 0"
.LC13:
	.string	"func0(10, 6, 8) == 1"
.LC14:
	.string	"func0(2, 2, 2) == 0"
.LC18:
	.string	"func0(7, 24, 25) == 1"
.LC19:
	.string	"func0(10, 5, 7) == 0"
.LC22:
	.string	"func0(5, 12, 13) == 1"
.LC25:
	.string	"func0(15, 8, 17) == 1"
.LC29:
	.string	"func0(48, 55, 73) == 1"
.LC30:
	.string	"func0(1, 1, 1) == 0"
.LC31:
	.string	"func0(2, 2, 10) == 0"
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
	movss	.LC2(%rip), %xmm2
	movss	.LC3(%rip), %xmm1
	movl	.LC4(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cmpl	$1, %eax
	je	.L8
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$14, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L8:
	movss	.LC4(%rip), %xmm2
	movss	.LC7(%rip), %xmm1
	movl	.LC8(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	testl	%eax, %eax
	je	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$15, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	movss	.LC10(%rip), %xmm2
	movss	.LC11(%rip), %xmm1
	movl	.LC12(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cmpl	$1, %eax
	je	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$16, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	movss	.LC7(%rip), %xmm2
	movss	.LC7(%rip), %xmm1
	movl	.LC7(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	testl	%eax, %eax
	je	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$17, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	movss	.LC15(%rip), %xmm2
	movss	.LC16(%rip), %xmm1
	movl	.LC17(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cmpl	$1, %eax
	je	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$18, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	movss	.LC17(%rip), %xmm2
	movss	.LC2(%rip), %xmm1
	movl	.LC12(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	testl	%eax, %eax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$19, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movss	.LC20(%rip), %xmm2
	movss	.LC21(%rip), %xmm1
	movl	.LC2(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cmpl	$1, %eax
	je	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	movss	.LC23(%rip), %xmm2
	movss	.LC10(%rip), %xmm1
	movl	.LC24(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cmpl	$1, %eax
	je	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movss	.LC26(%rip), %xmm2
	movss	.LC27(%rip), %xmm1
	movl	.LC28(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cmpl	$1, %eax
	je	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movss	.LC8(%rip), %xmm2
	movss	.LC8(%rip), %xmm1
	movl	.LC8(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	testl	%eax, %eax
	je	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	movss	.LC12(%rip), %xmm2
	movss	.LC7(%rip), %xmm1
	movl	.LC7(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	testl	%eax, %eax
	je	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$24, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
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
	.align 16
.LC0:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC1:
	.long	-350469331
	.long	1058682594
	.align 4
.LC2:
	.long	1084227584
	.align 4
.LC3:
	.long	1082130432
	.align 4
.LC4:
	.long	1077936128
	.align 4
.LC7:
	.long	1073741824
	.align 4
.LC8:
	.long	1065353216
	.align 4
.LC10:
	.long	1090519040
	.align 4
.LC11:
	.long	1086324736
	.align 4
.LC12:
	.long	1092616192
	.align 4
.LC15:
	.long	1103626240
	.align 4
.LC16:
	.long	1103101952
	.align 4
.LC17:
	.long	1088421888
	.align 4
.LC20:
	.long	1095761920
	.align 4
.LC21:
	.long	1094713344
	.align 4
.LC23:
	.long	1099431936
	.align 4
.LC24:
	.long	1097859072
	.align 4
.LC26:
	.long	1116864512
	.align 4
.LC27:
	.long	1113325568
	.align 4
.LC28:
	.long	1111490560
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
