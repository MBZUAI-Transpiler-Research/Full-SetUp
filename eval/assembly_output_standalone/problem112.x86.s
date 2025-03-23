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
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-112(%rbp), %rdx
	movl	$0, %eax
	movl	$13, %ecx
	movq	%rdx, %rdi
	rep stosq
	movl	$0, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	$0, -132(%rbp)
	jmp	.L2
.L4:
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L3
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$97, %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	leal	1(%rax), %edx
	movl	-124(%rbp), %eax
	cltq
	movl	%edx, -112(%rbp,%rax,4)
	movl	-124(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	cmpl	%eax, -136(%rbp)
	jge	.L3
	movl	-124(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	movl	%eax, -136(%rbp)
.L3:
	addq	$1, -120(%rbp)
.L2:
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L4
	movl	$0, -128(%rbp)
	jmp	.L5
.L7:
	movl	-128(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-160(%rbp), %rax
	addq	%rax, %rdx
	movl	-128(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	movl	%eax, (%rdx)
	movl	-128(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	cmpl	%eax, -136(%rbp)
	jne	.L6
	movl	-128(%rbp), %eax
	leal	97(%rax), %ecx
	movl	-132(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -132(%rbp)
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L6:
	addl	$1, -128(%rbp)
.L5:
	cmpl	$25, -128(%rbp)
	jle	.L7
	movq	-168(%rbp), %rax
	movl	-136(%rbp), %edx
	movl	%edx, (%rax)
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
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
