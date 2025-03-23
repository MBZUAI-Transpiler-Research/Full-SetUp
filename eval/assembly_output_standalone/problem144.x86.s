	.file	"code.c"
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
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L13:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L3
	addl	$1, -20(%rbp)
	jmp	.L4
.L3:
	cmpl	$1, -20(%rbp)
	jle	.L5
	movb	$1, -21(%rbp)
	movl	$2, -8(%rbp)
	jmp	.L6
.L9:
	movl	-20(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L7
	movb	$0, -21(%rbp)
	jmp	.L10
.L7:
	addl	$1, -8(%rbp)
.L6:
	movl	-8(%rbp), %eax
	imull	%eax, %eax
	cmpl	%eax, -20(%rbp)
	jge	.L9
	jmp	.L10
.L5:
	movb	$0, -21(%rbp)
.L10:
	cmpb	$0, -21(%rbp)
	je	.L11
	cmpl	$0, -16(%rbp)
	jle	.L12
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$32, (%rax)
.L12:
	movl	-20(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movslq	%edx, %rcx
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movl	-16(%rbp), %edx
	movslq	%edx, %rcx
	movq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-20(%rbp), %eax
	addl	%eax, -16(%rbp)
.L11:
	movl	$0, -20(%rbp)
.L4:
	addl	$1, -12(%rbp)
.L2:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L13
	cmpl	$1, -20(%rbp)
	jle	.L14
	movb	$1, -21(%rbp)
	movl	$2, -8(%rbp)
	jmp	.L15
.L18:
	movl	-20(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L16
	movb	$0, -21(%rbp)
	jmp	.L19
.L16:
	addl	$1, -8(%rbp)
.L15:
	movl	-8(%rbp), %eax
	imull	%eax, %eax
	cmpl	%eax, -20(%rbp)
	jge	.L18
	jmp	.L19
.L14:
	movb	$0, -21(%rbp)
.L19:
	cmpb	$0, -21(%rbp)
	je	.L20
	cmpl	$0, -16(%rbp)
	jle	.L21
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$32, (%rax)
.L21:
	movl	-20(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movslq	%edx, %rcx
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movl	-16(%rbp), %edx
	movslq	%edx, %rcx
	movq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-20(%rbp), %eax
	addl	%eax, -16(%rbp)
.L20:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
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
