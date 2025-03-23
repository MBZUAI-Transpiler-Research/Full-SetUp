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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L2
.L9:
	movb	$0, -26(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L3
.L6:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L4
	movb	$1, -26(%rbp)
	jmp	.L5
.L4:
	addl	$1, -20(%rbp)
.L3:
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L6
.L5:
	movzbl	-26(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L7
	movl	$0, %eax
	jmp	.L8
.L7:
	addl	$1, -24(%rbp)
.L2:
	movl	-24(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L9
	movl	$0, -16(%rbp)
	jmp	.L10
.L16:
	movb	$0, -25(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L11
.L14:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L12
	movb	$1, -25(%rbp)
	jmp	.L13
.L12:
	addl	$1, -12(%rbp)
.L11:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L14
.L13:
	movzbl	-25(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L15
	movl	$0, %eax
	jmp	.L8
.L15:
	addl	$1, -16(%rbp)
.L10:
	movl	-16(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L16
	movl	$1, %eax
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
