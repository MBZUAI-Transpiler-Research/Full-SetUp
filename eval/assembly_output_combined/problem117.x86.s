	.file	"problem117.c"
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
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L11:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.L3
.L10:
	movl	$0, -24(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	jmp	.L4
.L5:
	movl	-20(%rbp), %eax
	andl	$1, %eax
	addl	%eax, -24(%rbp)
	sarl	-20(%rbp)
.L4:
	cmpl	$0, -20(%rbp)
	jg	.L5
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L6
.L7:
	movl	-16(%rbp), %eax
	andl	$1, %eax
	addl	%eax, -24(%rbp)
	sarl	-16(%rbp)
.L6:
	cmpl	$0, -16(%rbp)
	jg	.L7
	movl	-24(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L8
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.L9
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L9
.L8:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
.L9:
	addl	$1, -8(%rbp)
.L3:
	movl	-8(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L10
	addl	$1, -12(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L11
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	movl	$0, -4(%rbp)
	jmp	.L15
.L17:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L16
	movl	$0, %eax
	jmp	.L14
.L16:
	addl	$1, -4(%rbp)
.L15:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L17
	movl	$1, %eax
.L14:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem117.c"
	.align 8
.LC1:
	.string	"issame(test1, 5, expected1, 5)"
	.align 8
.LC2:
	.string	"issame(test3, 5, expected3, 5)"
	.align 8
.LC3:
	.string	"issame(test4, 11, expected4, 11)"
	.align 8
.LC4:
	.string	"issame(test5, 6, expected5, 6)"
	.align 8
.LC5:
	.string	"issame(test6, 5, expected6, 5)"
.LC6:
	.string	"All tests passed!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -368(%rbp)
	movl	$5, -364(%rbp)
	movl	$2, -360(%rbp)
	movl	$3, -356(%rbp)
	movl	$4, -352(%rbp)
	movl	$1, -336(%rbp)
	movl	$2, -332(%rbp)
	movl	$4, -328(%rbp)
	movl	$3, -324(%rbp)
	movl	$5, -320(%rbp)
	leaq	-368(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-336(%rbp), %rdx
	leaq	-368(%rbp), %rax
	movl	$5, %ecx
	movl	$5, %esi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$48, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	movl	$1, -304(%rbp)
	movl	$0, -300(%rbp)
	movl	$2, -296(%rbp)
	movl	$3, -292(%rbp)
	movl	$4, -288(%rbp)
	movl	$0, -272(%rbp)
	movl	$1, -268(%rbp)
	movl	$2, -264(%rbp)
	movl	$4, -260(%rbp)
	movl	$3, -256(%rbp)
	leaq	-304(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-272(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movl	$5, %ecx
	movl	$5, %esi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$53, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	movl	$2, -112(%rbp)
	movl	$5, -108(%rbp)
	movl	$77, -104(%rbp)
	movl	$4, -100(%rbp)
	movl	$5, -96(%rbp)
	movl	$3, -92(%rbp)
	movl	$5, -88(%rbp)
	movl	$7, -84(%rbp)
	movl	$2, -80(%rbp)
	movl	$3, -76(%rbp)
	movl	$4, -72(%rbp)
	movl	$2, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	$4, -56(%rbp)
	movl	$4, -52(%rbp)
	movl	$3, -48(%rbp)
	movl	$3, -44(%rbp)
	movl	$5, -40(%rbp)
	movl	$5, -36(%rbp)
	movl	$5, -32(%rbp)
	movl	$7, -28(%rbp)
	movl	$77, -24(%rbp)
	leaq	-112(%rbp), %rax
	movl	$11, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-64(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movl	$11, %ecx
	movl	$11, %esi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$58, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	movl	$3, -176(%rbp)
	movl	$6, -172(%rbp)
	movl	$44, -168(%rbp)
	movl	$12, -164(%rbp)
	movl	$32, -160(%rbp)
	movl	$5, -156(%rbp)
	movl	$32, -144(%rbp)
	movl	$3, -140(%rbp)
	movl	$5, -136(%rbp)
	movl	$6, -132(%rbp)
	movl	$12, -128(%rbp)
	movl	$44, -124(%rbp)
	leaq	-176(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-144(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movl	$6, %ecx
	movl	$6, %esi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$63, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movl	$2, -240(%rbp)
	movl	$4, -236(%rbp)
	movl	$8, -232(%rbp)
	movl	$16, -228(%rbp)
	movl	$32, -224(%rbp)
	movl	$2, -208(%rbp)
	movl	$4, -204(%rbp)
	movl	$8, -200(%rbp)
	movl	$16, -196(%rbp)
	movl	$32, -192(%rbp)
	leaq	-240(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-208(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movl	$5, %ecx
	movl	$5, %esi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$68, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L25
	call	__stack_chk_fail@PLT
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
