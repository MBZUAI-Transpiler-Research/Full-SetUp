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
	movl	%esi, -44(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	imulq	$1431655766, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$31, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L2
.L7:
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cmpl	%eax, -24(%rbp)
	jge	.L3
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	sall	$2, %eax
	subl	%eax, %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	jmp	.L4
.L3:
	movl	$3, %eax
.L4:
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	leaq	-12(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-16(%rbp), %eax
	cltq
	movb	$0, -12(%rbp,%rax)
	cmpl	$3, -16(%rbp)
	jne	.L5
	cmpl	$0, -44(%rbp)
	je	.L6
	movzbl	-10(%rbp), %eax
	movb	%al, -29(%rbp)
	movzbl	-11(%rbp), %eax
	movb	%al, -10(%rbp)
	movzbl	-12(%rbp), %eax
	movb	%al, -11(%rbp)
	movzbl	-29(%rbp), %eax
	movb	%al, -12(%rbp)
	jmp	.L5
.L6:
	movzbl	-12(%rbp), %eax
	movb	%al, -30(%rbp)
	movzbl	-11(%rbp), %eax
	movb	%al, -12(%rbp)
	movzbl	-10(%rbp), %eax
	movb	%al, -11(%rbp)
	movzbl	-30(%rbp), %eax
	movb	%al, -10(%rbp)
.L5:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy@PLT
	addl	$1, -28(%rbp)
.L2:
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L7
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
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
