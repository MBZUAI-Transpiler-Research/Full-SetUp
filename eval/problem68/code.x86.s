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
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$0, -44(%rbp)
	movw	$0, -36(%rbp)
	movq	$0, -34(%rbp)
	movw	$0, -26(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L2
.L6:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L3
	cmpl	$0, -56(%rbp)
	jne	.L4
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-52(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -52(%rbp)
	movzbl	(%rcx), %edx
	cltq
	movb	%dl, -44(%rbp,%rax)
	jmp	.L5
.L4:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-52(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -52(%rbp)
	movzbl	(%rcx), %edx
	cltq
	movb	%dl, -34(%rbp,%rax)
	jmp	.L5
.L3:
	cmpl	$0, -56(%rbp)
	jne	.L5
	cmpl	$0, -52(%rbp)
	jle	.L5
	movl	$1, -56(%rbp)
	movl	$0, -52(%rbp)
.L5:
	addl	$1, -48(%rbp)
.L2:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L6
	leaq	-44(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	-76(%rbp), %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	leaq	-34(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	subl	%eax, %ebx
	movl	%ebx, %edx
	movl	%edx, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
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
