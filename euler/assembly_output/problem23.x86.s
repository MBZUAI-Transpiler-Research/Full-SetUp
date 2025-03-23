	.file	"problem23.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$28123, -24(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	$1, -40(%rbp)
	jmp	.L2
.L4:
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	is_abundant
	testl	%eax, %eax
	je	.L3
	addl	$1, -32(%rbp)
.L3:
	addl	$1, -40(%rbp)
.L2:
	movl	-40(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L4
	movl	-32(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -36(%rbp)
	movl	$1, -40(%rbp)
	jmp	.L5
.L7:
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	is_abundant
	testl	%eax, %eax
	je	.L6
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	-40(%rbp), %eax
	movl	%eax, (%rdx)
.L6:
	addl	$1, -40(%rbp)
.L5:
	movl	-40(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L7
	movl	-24(%rbp), %eax
	cltq
	movl	$1, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L8
.L13:
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.L9
.L12:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.L18
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$1, (%rax)
	addl	$1, -36(%rbp)
.L9:
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L12
	jmp	.L11
.L18:
	nop
.L11:
	addl	$1, -40(%rbp)
.L8:
	movl	-40(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L13
	movl	$1, -40(%rbp)
	jmp	.L14
.L16:
	movl	-40(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L15
	movl	-40(%rbp), %eax
	addl	%eax, -28(%rbp)
.L15:
	addl	$1, -40(%rbp)
.L14:
	movl	-40(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L16
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.type	is_abundant, @function
is_abundant:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$1, -16(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L20
.L23:
	movl	$1, -4(%rbp)
	jmp	.L21
.L22:
	movl	-4(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%eax, -8(%rbp)
.L21:
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L22
	movl	-4(%rbp), %eax
	imull	-12(%rbp), %eax
	subl	$1, %eax
	movl	-12(%rbp), %edx
	leal	-1(%rdx), %ecx
	cltd
	idivl	%ecx
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
	addl	$1, -12(%rbp)
.L20:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L23
	movl	-20(%rbp), %eax
	addl	%eax, %eax
	cmpl	%eax, -16(%rbp)
	setg	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	is_abundant, .-is_abundant
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
