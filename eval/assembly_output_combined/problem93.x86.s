	.file	"problem93.c"
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
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	%xmm2, -12(%rbp)
	movl	-4(%rbp), %eax
	movd	%eax, %xmm0
	call	roundf@PLT
	movd	%xmm0, %eax
	movd	%eax, %xmm3
	ucomiss	-4(%rbp), %xmm3
	jp	.L14
	movd	%eax, %xmm4
	ucomiss	-4(%rbp), %xmm4
	je	.L2
.L14:
	movl	$0, %eax
	jmp	.L4
.L2:
	movl	-8(%rbp), %eax
	movd	%eax, %xmm0
	call	roundf@PLT
	movd	%xmm0, %eax
	movd	%eax, %xmm5
	ucomiss	-8(%rbp), %xmm5
	jp	.L15
	movd	%eax, %xmm6
	ucomiss	-8(%rbp), %xmm6
	je	.L5
.L15:
	movl	$0, %eax
	jmp	.L4
.L5:
	movl	-12(%rbp), %eax
	movd	%eax, %xmm0
	call	roundf@PLT
	movd	%xmm0, %eax
	movd	%eax, %xmm7
	ucomiss	-12(%rbp), %xmm7
	jp	.L16
	movd	%eax, %xmm1
	ucomiss	-12(%rbp), %xmm1
	je	.L7
.L16:
	movl	$0, %eax
	jmp	.L4
.L7:
	movss	-4(%rbp), %xmm0
	addss	-8(%rbp), %xmm0
	ucomiss	-12(%rbp), %xmm0
	jp	.L17
	ucomiss	-12(%rbp), %xmm0
	je	.L9
.L17:
	movss	-4(%rbp), %xmm0
	addss	-12(%rbp), %xmm0
	ucomiss	-8(%rbp), %xmm0
	jp	.L18
	ucomiss	-8(%rbp), %xmm0
	je	.L9
.L18:
	movss	-8(%rbp), %xmm0
	addss	-12(%rbp), %xmm0
	ucomiss	-4(%rbp), %xmm0
	jp	.L12
	ucomiss	-4(%rbp), %xmm0
	jne	.L12
.L9:
	movl	$1, %eax
	jmp	.L4
.L12:
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC3:
	.string	"problem93.c"
.LC4:
	.string	"func0(2, 3, 1) == 1"
.LC6:
	.string	"func0(2.5, 2, 3) == 0"
.LC10:
	.string	"func0(1.5, 5, 3.5) == 0"
.LC12:
	.string	"func0(2, 6, 2) == 0"
.LC14:
	.string	"func0(4, 2, 2) == 1"
.LC16:
	.string	"func0(2.2, 2.2, 2.2) == 0"
.LC18:
	.string	"func0(-4, 6, 2) == 1"
.LC19:
	.string	"func0(2, 1, 1) == 1"
.LC21:
	.string	"func0(3, 4, 7) == 1"
.LC23:
	.string	"func0(3.01, 4, 7) == 0"
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
	movss	.LC0(%rip), %xmm2
	movss	.LC1(%rip), %xmm1
	movl	.LC2(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cmpl	$1, %eax
	je	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$17, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	movss	.LC1(%rip), %xmm2
	movss	.LC2(%rip), %xmm1
	movl	.LC5(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	testl	%eax, %eax
	je	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$18, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	movss	.LC7(%rip), %xmm2
	movss	.LC8(%rip), %xmm1
	movl	.LC9(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	testl	%eax, %eax
	je	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$19, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movss	.LC2(%rip), %xmm2
	movss	.LC11(%rip), %xmm1
	movl	.LC2(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	testl	%eax, %eax
	je	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	movss	.LC2(%rip), %xmm2
	movss	.LC2(%rip), %xmm1
	movl	.LC13(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cmpl	$1, %eax
	je	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	movss	.LC15(%rip), %xmm2
	movss	.LC15(%rip), %xmm1
	movl	.LC15(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	testl	%eax, %eax
	je	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L25:
	movss	.LC2(%rip), %xmm2
	movss	.LC11(%rip), %xmm1
	movl	.LC17(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cmpl	$1, %eax
	je	.L26
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L26:
	movss	.LC0(%rip), %xmm2
	movss	.LC0(%rip), %xmm1
	movl	.LC2(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cmpl	$1, %eax
	je	.L27
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$24, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L27:
	movss	.LC20(%rip), %xmm2
	movss	.LC13(%rip), %xmm1
	movl	.LC1(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	cmpl	$1, %eax
	je	.L28
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$25, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L28:
	movss	.LC20(%rip), %xmm2
	movss	.LC13(%rip), %xmm1
	movl	.LC22(%rip), %eax
	movd	%eax, %xmm0
	call	func0
	testl	%eax, %eax
	je	.L29
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$26, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L29:
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
	.long	1065353216
	.align 4
.LC1:
	.long	1077936128
	.align 4
.LC2:
	.long	1073741824
	.align 4
.LC5:
	.long	1075838976
	.align 4
.LC7:
	.long	1080033280
	.align 4
.LC8:
	.long	1084227584
	.align 4
.LC9:
	.long	1069547520
	.align 4
.LC11:
	.long	1086324736
	.align 4
.LC13:
	.long	1082130432
	.align 4
.LC15:
	.long	1074580685
	.align 4
.LC17:
	.long	-1065353216
	.align 4
.LC20:
	.long	1088421888
	.align 4
.LC22:
	.long	1077978071
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
