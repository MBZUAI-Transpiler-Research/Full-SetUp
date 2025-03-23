	.file	"problem39.c"
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
	.section	.rodata
.LC0:
	.string	"problem39.c"
.LC1:
	.string	"strcmp(decoded_str, str) == 0"
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
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, %edi
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	movl	$0, -108(%rbp)
	jmp	.L10
.L14:
	call	rand@PLT
	movl	%eax, %ecx
	movslq	%ecx, %rax
	imulq	$780903145, %rax, %rax
	shrq	$32, %rax
	sarl	%eax
	movl	%ecx, %esi
	sarl	$31, %esi
	subl	%esi, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	leal	10(%rdx), %eax
	movl	%eax, -100(%rbp)
	movl	$0, -104(%rbp)
	jmp	.L11
.L12:
	call	rand@PLT
	movslq	%eax, %rdx
	imulq	$1321528399, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$3, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	imull	$26, %edx, %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	$97, %eax
	movl	%eax, %edx
	movl	-104(%rbp), %eax
	cltq
	movb	%dl, -96(%rbp,%rax)
	addl	$1, -104(%rbp)
.L11:
	movl	-104(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L12
	movl	-100(%rbp), %eax
	cltq
	movb	$0, -96(%rbp,%rax)
	leaq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-96(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$55, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	addl	$1, -108(%rbp)
.L10:
	cmpl	$99, -108(%rbp)
	jle	.L14
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
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
