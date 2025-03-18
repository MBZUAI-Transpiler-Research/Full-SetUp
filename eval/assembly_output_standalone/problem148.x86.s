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
	subq	$104, %rsp
	.cfi_offset 3, -24
	movl	%edi, -100(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -40(%rbp)
	movl	-100(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -32(%rbp)
	movl	-100(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -84(%rbp)
	jmp	.L2
.L3:
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$4, %esi
	movl	$3, %edi
	call	calloc@PLT
	movq	%rax, (%rbx)
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$4, %esi
	movl	$3, %edi
	call	calloc@PLT
	movq	%rax, (%rbx)
	addl	$1, -84(%rbp)
.L2:
	movl	-84(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jle	.L3
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movl	$0, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movl	$0, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	$1, -80(%rbp)
	jmp	.L4
.L7:
	movl	-80(%rbp), %eax
	imull	%eax, %eax
	subl	-80(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-80(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movslq	%ecx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, (%rsi)
	movl	$0, -76(%rbp)
	jmp	.L5
.L6:
	movl	-80(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -76(%rbp)
.L5:
	cmpl	$2, -76(%rbp)
	jle	.L6
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	-4(%rdx), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	-4(%rcx), %rsi
	movq	-40(%rbp), %rcx
	addq	%rsi, %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	addl	$1, %edx
	movl	%edx, (%rax)
	addl	$1, -80(%rbp)
.L4:
	movl	-80(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jle	.L7
	movl	$1, -72(%rbp)
	jmp	.L8
.L20:
	movl	$1, -68(%rbp)
	jmp	.L9
.L15:
	movl	$0, -64(%rbp)
	jmp	.L10
.L11:
	movl	-68(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-64(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -64(%rbp)
.L10:
	cmpl	$2, -64(%rbp)
	jle	.L11
	cmpl	$0, -68(%rbp)
	jle	.L12
	movl	$0, -60(%rbp)
	jmp	.L13
.L14:
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-68(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-60(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movslq	%ecx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movl	%ecx, %edx
	sarl	$31, %edx
	subl	%edx, %eax
	movl	%eax, %edx
	addl	%edx, %edx
	addl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movslq	%eax, %rdx
	salq	$2, %rdx
	addq	%rsi, %rdx
	movl	(%rdx), %ecx
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	-8(%rdx), %rsi
	movq	-32(%rbp), %rdx
	addq	%rsi, %rdx
	movq	(%rdx), %rdx
	movl	-60(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rdx
	movl	(%rdx), %edx
	movl	-68(%rbp), %esi
	movslq	%esi, %rsi
	leaq	0(,%rsi,8), %rdi
	movq	-24(%rbp), %rsi
	addq	%rdi, %rsi
	movq	(%rsi), %rsi
	cltq
	salq	$2, %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -60(%rbp)
.L13:
	cmpl	$2, -60(%rbp)
	jle	.L14
.L12:
	addl	$1, -68(%rbp)
.L9:
	movl	-68(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jle	.L15
	movl	$0, -56(%rbp)
	jmp	.L16
.L19:
	movl	$0, -52(%rbp)
	jmp	.L17
.L18:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -52(%rbp)
.L17:
	cmpl	$2, -52(%rbp)
	jle	.L18
	addl	$1, -56(%rbp)
.L16:
	movl	-56(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jle	.L19
	addl	$1, -72(%rbp)
.L8:
	cmpl	$2, -72(%rbp)
	jle	.L20
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L21
.L22:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -48(%rbp)
.L21:
	movl	-48(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jle	.L22
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-44(%rbp), %eax
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
