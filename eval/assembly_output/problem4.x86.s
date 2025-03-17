	.file	"problem4.c"
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
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L3
	movl	$1, %eax
	jmp	.L4
.L3:
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L5
	movl	$0, %eax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem4.c"
.LC1:
	.string	"func0(case1, 0) == 0"
.LC2:
	.string	"func0(case2, 6) == 0"
.LC3:
	.string	"func0(case3, 5) == 1"
.LC4:
	.string	"func0(case4, 8) == 0"
.LC5:
	.string	"func0(case5, 8) == 1"
.LC6:
	.string	"func0(case6, 8) == 1"
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
	subq	$192, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-180(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L7
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$18, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L7:
	movl	$1, -144(%rbp)
	movl	$2, -140(%rbp)
	movl	$-3, -136(%rbp)
	movl	$1, -132(%rbp)
	movl	$2, -128(%rbp)
	movl	$-3, -124(%rbp)
	leaq	-144(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L8
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L8:
	movl	$1, -176(%rbp)
	movl	$2, -172(%rbp)
	movl	$-4, -168(%rbp)
	movl	$5, -164(%rbp)
	movl	$6, -160(%rbp)
	leaq	-176(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$24, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	movl	$1, -112(%rbp)
	movl	$-1, -108(%rbp)
	movl	$2, -104(%rbp)
	movl	$-2, -100(%rbp)
	movl	$5, -96(%rbp)
	movl	$-5, -92(%rbp)
	movl	$4, -88(%rbp)
	movl	$-4, -84(%rbp)
	leaq	-112(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	movl	$1, -80(%rbp)
	movl	$-1, -76(%rbp)
	movl	$2, -72(%rbp)
	movl	$-2, -68(%rbp)
	movl	$5, -64(%rbp)
	movl	$-5, -60(%rbp)
	movl	$4, -56(%rbp)
	movl	$-5, -52(%rbp)
	leaq	-80(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$30, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	movl	$1, -48(%rbp)
	movl	$-2, -44(%rbp)
	movl	$2, -40(%rbp)
	movl	$-2, -36(%rbp)
	movl	$5, -32(%rbp)
	movl	$-5, -28(%rbp)
	movl	$4, -24(%rbp)
	movl	$-4, -20(%rbp)
	leaq	-48(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
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
