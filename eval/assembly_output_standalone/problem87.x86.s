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
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	addl	$2, %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -72(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -92(%rbp)
	jmp	.L2
.L14:
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L3
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L4
.L3:
	movl	$0, -88(%rbp)
	jmp	.L5
.L9:
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.L6
.L8:
	movl	-88(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %edx
	movl	-84(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %eax
	cmpb	%al, %dl
	jle	.L7
	movl	-88(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %eax
	movb	%al, -101(%rbp)
	movl	-84(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %edx
	movl	-88(%rbp), %eax
	cltq
	movb	%dl, -64(%rbp,%rax)
	movl	-84(%rbp), %eax
	cltq
	movzbl	-101(%rbp), %edx
	movb	%dl, -64(%rbp,%rax)
.L7:
	addl	$1, -84(%rbp)
.L6:
	movl	-84(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jl	.L8
	addl	$1, -88(%rbp)
.L5:
	movl	-96(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -88(%rbp)
	jl	.L9
	cmpl	$0, -100(%rbp)
	jle	.L10
	movl	-100(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -100(%rbp)
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$32, (%rax)
.L10:
	movl	$0, -80(%rbp)
	jmp	.L11
.L12:
	movl	-100(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -100(%rbp)
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movl	-80(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -80(%rbp)
.L11:
	movl	-80(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jl	.L12
	movl	$0, -96(%rbp)
	jmp	.L13
.L4:
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-96(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -96(%rbp)
	movzbl	(%rcx), %edx
	cltq
	movb	%dl, -64(%rbp,%rax)
.L13:
	addl	$1, -92(%rbp)
.L2:
	movl	-92(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jle	.L14
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
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
