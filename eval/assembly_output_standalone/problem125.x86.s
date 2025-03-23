	.file	"code.c"
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
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$10, %rax
	je	.L2
	movl	$0, %eax
	jmp	.L18
.L2:
	movl	$0, -36(%rbp)
	jmp	.L4
.L10:
	cmpl	$2, -36(%rbp)
	je	.L5
	cmpl	$5, -36(%rbp)
	jne	.L6
.L5:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L8
	movl	$0, %eax
	jmp	.L18
.L6:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L9
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jle	.L8
.L9:
	movl	$0, %eax
	jmp	.L18
.L8:
	addl	$1, -36(%rbp)
.L4:
	cmpl	$9, -36(%rbp)
	jle	.L10
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -19(%rbp)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movb	%al, -18(%rbp)
	movb	$0, -17(%rbp)
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movb	%al, -16(%rbp)
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movb	%al, -15(%rbp)
	movb	$0, -14(%rbp)
	movq	-56(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movb	%al, -13(%rbp)
	movq	-56(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movb	%al, -12(%rbp)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movb	%al, -11(%rbp)
	movq	-56(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movb	$0, -9(%rbp)
	leaq	-19(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -32(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -28(%rbp)
	leaq	-13(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -32(%rbp)
	jle	.L11
	cmpl	$12, -32(%rbp)
	jle	.L12
.L11:
	movl	$0, %eax
	jmp	.L18
.L12:
	cmpl	$0, -28(%rbp)
	jle	.L13
	cmpl	$31, -28(%rbp)
	jle	.L14
.L13:
	movl	$0, %eax
	jmp	.L18
.L14:
	cmpl	$4, -32(%rbp)
	je	.L15
	cmpl	$6, -32(%rbp)
	je	.L15
	cmpl	$9, -32(%rbp)
	je	.L15
	cmpl	$11, -32(%rbp)
	jne	.L16
.L15:
	cmpl	$31, -28(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L18
.L16:
	cmpl	$2, -32(%rbp)
	jne	.L17
	cmpl	$29, -28(%rbp)
	jle	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movl	$1, %eax
.L18:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
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
