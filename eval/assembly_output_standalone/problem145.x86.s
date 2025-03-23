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
	subq	$272, %rsp
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -248(%rbp)
	jmp	.L2
.L3:
	movl	-248(%rbp), %eax
	movslq	%eax, %rdx
	movq	-264(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-248(%rbp), %eax
	cltq
	movb	%dl, -224(%rbp,%rax)
	addl	$1, -248(%rbp)
.L2:
	movl	-248(%rbp), %eax
	movslq	%eax, %rdx
	movq	-264(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L3
	movl	-248(%rbp), %eax
	cltq
	movb	$0, -224(%rbp,%rax)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -240(%rbp)
	movl	$0, -244(%rbp)
	addl	$1, -248(%rbp)
	jmp	.L4
.L5:
	movl	-248(%rbp), %eax
	movslq	%eax, %rdx
	movq	-264(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-244(%rbp), %eax
	cltq
	movb	%dl, -112(%rbp,%rax)
	addl	$1, -248(%rbp)
	addl	$1, -244(%rbp)
.L4:
	movl	-248(%rbp), %eax
	movslq	%eax, %rdx
	movq	-264(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L5
	movl	-244(%rbp), %eax
	cltq
	movb	$0, -112(%rbp,%rax)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -236(%rbp)
	movl	$0, -248(%rbp)
	jmp	.L6
.L7:
	movl	-248(%rbp), %eax
	movslq	%eax, %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-248(%rbp), %eax
	cltq
	movb	%dl, -224(%rbp,%rax)
	addl	$1, -248(%rbp)
.L6:
	movl	-248(%rbp), %eax
	movslq	%eax, %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L7
	movl	-248(%rbp), %eax
	cltq
	movb	$0, -224(%rbp,%rax)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -232(%rbp)
	movl	$0, -244(%rbp)
	addl	$1, -248(%rbp)
	jmp	.L8
.L9:
	movl	-248(%rbp), %eax
	movslq	%eax, %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-244(%rbp), %eax
	cltq
	movb	%dl, -112(%rbp,%rax)
	addl	$1, -248(%rbp)
	addl	$1, -244(%rbp)
.L8:
	movl	-248(%rbp), %eax
	movslq	%eax, %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9
	movl	-244(%rbp), %eax
	cltq
	movb	$0, -112(%rbp,%rax)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -228(%rbp)
	movl	-240(%rbp), %eax
	imull	-232(%rbp), %eax
	movl	-236(%rbp), %edx
	movl	%edx, %ecx
	imull	-228(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L10
	movl	$1, %eax
	jmp	.L12
.L10:
	movl	$0, %eax
.L12:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
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
