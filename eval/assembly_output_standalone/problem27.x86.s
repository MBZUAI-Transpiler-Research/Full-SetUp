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
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movl	-92(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	movl	-92(%rbp), %eax
	cltq
	movl	$4, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, -16(%rbp)
	movl	-92(%rbp), %eax
	cltq
	movl	$4, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -64(%rbp)
	jmp	.L2
.L14:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L3
.L6:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L4
	movl	$1, -60(%rbp)
	jmp	.L5
.L4:
	addl	$1, -56(%rbp)
.L3:
	movl	-56(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.L6
.L5:
	cmpl	$0, -60(%rbp)
	jne	.L23
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L9
.L12:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L10
	movl	$1, -52(%rbp)
	jmp	.L11
.L10:
	addl	$1, -48(%rbp)
.L9:
	movl	-48(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L12
.L11:
	cmpl	$0, -52(%rbp)
	je	.L13
	movl	-72(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -72(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L8
.L13:
	movl	-76(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -76(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L8
.L23:
	nop
.L8:
	addl	$1, -64(%rbp)
.L2:
	movl	-64(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L14
	movl	$0, -44(%rbp)
	jmp	.L15
.L21:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L16
.L19:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jne	.L17
	movl	$1, -40(%rbp)
	jmp	.L18
.L17:
	addl	$1, -36(%rbp)
.L16:
	movl	-36(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.L19
.L18:
	cmpl	$0, -40(%rbp)
	jne	.L20
	movl	-68(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -68(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, (%rdx)
.L20:
	addl	$1, -44(%rbp)
.L15:
	movl	-44(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L21
	movq	-104(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
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
