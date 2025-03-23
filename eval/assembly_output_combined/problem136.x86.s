	.file	"problem136.c"
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
	movl	$-1, -8(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L2
.L4:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L3
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.L3:
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L4
	movl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem136.c"
.LC1:
	.string	"func0(arr1, 5) == 3"
.LC2:
	.string	"func0(arr2, 4) == -1"
.LC3:
	.string	"func0(arr3, 9) == 2"
.LC4:
	.string	"func0(arr4, 5) == 4"
.LC5:
	.string	"func0(NULL, 0) == -1"
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
	addq	$-128, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -112(%rbp)
	movl	$2, -108(%rbp)
	movl	$4, -104(%rbp)
	movl	$3, -100(%rbp)
	movl	$5, -96(%rbp)
	leaq	-112(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$3, %eax
	je	.L7
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$19, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L7:
	movl	$1, -128(%rbp)
	movl	$2, -124(%rbp)
	movl	$4, -120(%rbp)
	movl	$5, -116(%rbp)
	leaq	-128(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$-1, %eax
	je	.L8
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L8:
	movl	$1, -48(%rbp)
	movl	$4, -44(%rbp)
	movl	$2, -40(%rbp)
	movl	$5, -36(%rbp)
	movl	$6, -32(%rbp)
	movl	$7, -28(%rbp)
	movl	$8, -24(%rbp)
	movl	$9, -20(%rbp)
	movl	$10, -16(%rbp)
	leaq	-48(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$2, %eax
	je	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$25, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	movl	$4, -80(%rbp)
	movl	$8, -76(%rbp)
	movl	$5, -72(%rbp)
	movl	$7, -68(%rbp)
	movl	$3, -64(%rbp)
	leaq	-80(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$4, %eax
	je	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	movl	$0, %esi
	movl	$0, %edi
	call	func0
	cmpl	$-1, %eax
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
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
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
