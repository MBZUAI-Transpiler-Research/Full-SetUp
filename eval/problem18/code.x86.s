	.file	"code.c"
	.text
	.section	.rodata
.LC0:
	.string	"o"
.LC1:
	.string	"o|"
.LC2:
	.string	".|"
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
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -40(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -52(%rbp)
	movw	$0, -11(%rbp)
	movb	$0, -9(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movw	$32, (%rax)
	movl	$0, -48(%rbp)
	jmp	.L2
.L17:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L3
	leaq	-11(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L4
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.L5
	cmpl	$0, -52(%rbp)
	jle	.L6
	movl	-52(%rbp), %eax
	addl	%eax, %eax
	jmp	.L7
.L6:
	movl	$4, %eax
.L7:
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -40(%rbp)
.L5:
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -56(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	$4, (%rax)
.L4:
	leaq	-11(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L8
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.L9
	cmpl	$0, -52(%rbp)
	jle	.L10
	movl	-52(%rbp), %eax
	addl	%eax, %eax
	jmp	.L11
.L10:
	movl	$4, %eax
.L11:
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -40(%rbp)
.L9:
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -56(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	$2, (%rax)
.L8:
	leaq	-11(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L12
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.L13
	cmpl	$0, -52(%rbp)
	jle	.L14
	movl	-52(%rbp), %eax
	addl	%eax, %eax
	jmp	.L15
.L14:
	movl	$4, %eax
.L15:
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -40(%rbp)
.L13:
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -56(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
.L12:
	movb	$0, -11(%rbp)
	jmp	.L16
.L3:
	leaq	-11(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$1, -24(%rbp)
	ja	.L16
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	leaq	-11(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movb	$0, -11(%rbp,%rax)
.L16:
	addl	$1, -48(%rbp)
.L2:
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L17
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-80(%rbp), %rax
	movl	-56(%rbp), %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
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
