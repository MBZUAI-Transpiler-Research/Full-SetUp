	.file	"problem109.c"
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
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L7:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L3
	addl	$1, -16(%rbp)
	jmp	.L4
.L3:
	movl	$0, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	movl	%eax, -4(%rbp)
	jmp	.L5
.L6:
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	sarl	$2, %eax
	movl	%ecx, %esi
	sarl	$31, %esi
	subl	%esi, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	addl	%edx, -8(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$2, %edx
	sarl	$31, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, -4(%rbp)
.L5:
	cmpl	$9, -4(%rbp)
	jg	.L6
	movl	-4(%rbp), %eax
	subl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jle	.L4
	addl	$1, -16(%rbp)
.L4:
	addl	$1, -12(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L7
	movl	-16(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem109.c"
.LC1:
	.string	"func0((int[]){}, 0) == 0"
	.align 8
.LC2:
	.string	"func0((int[]){-1, -2, 0}, 3) == 0"
	.align 8
.LC3:
	.string	"func0((int[]){1, 1, 2, -2, 3, 4, 5}, 7) == 6"
	.align 8
.LC4:
	.string	"func0((int[]){1, 6, 9, -6, 0, 1, 5}, 7) == 5"
	.align 8
.LC5:
	.string	"func0((int[]){1, 100, 98, -7, 1, -1}, 6) == 4"
	.align 8
.LC6:
	.string	"func0((int[]){12, 23, 34, -45, -56, 0}, 6) == 5"
.LC7:
	.string	"func0((int[]){-0, 1}, 2) == 1"
.LC8:
	.string	"func0((int[]){1}, 1) == 1"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	movl	$-1, -48(%rbp)
	movl	$-2, -44(%rbp)
	movl	$0, -40(%rbp)
	leaq	-48(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$29, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	movl	$1, -48(%rbp)
	movl	$1, -44(%rbp)
	movl	$2, -40(%rbp)
	movl	$-2, -36(%rbp)
	movl	$3, -32(%rbp)
	movl	$4, -28(%rbp)
	movl	$5, -24(%rbp)
	leaq	-48(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$6, %eax
	je	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$30, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	movl	$1, -48(%rbp)
	movl	$6, -44(%rbp)
	movl	$9, -40(%rbp)
	movl	$-6, -36(%rbp)
	movl	$0, -32(%rbp)
	movl	$1, -28(%rbp)
	movl	$5, -24(%rbp)
	leaq	-48(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$5, %eax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movl	$1, -48(%rbp)
	movl	$100, -44(%rbp)
	movl	$98, -40(%rbp)
	movl	$-7, -36(%rbp)
	movl	$1, -32(%rbp)
	movl	$-1, -28(%rbp)
	leaq	-48(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$4, %eax
	je	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	movl	$12, -48(%rbp)
	movl	$23, -44(%rbp)
	movl	$34, -40(%rbp)
	movl	$-45, -36(%rbp)
	movl	$-56, -32(%rbp)
	movl	$0, -28(%rbp)
	leaq	-48(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$5, %eax
	je	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movl	$0, -48(%rbp)
	movl	$1, -44(%rbp)
	leaq	-48(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movl	$1, -48(%rbp)
	leaq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
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
