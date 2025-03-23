	.file	"problem46.c"
	.text
	.section	.rodata
.LC0:
	.string	"%u\n"
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
	subq	$32, %rsp
	movl	$10000, %edi
	call	prime_sieve
	movq	%rax, -16(%rbp)
	movl	$40000, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L2
.L4:
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movl	-24(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -24(%rbp)
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
.L3:
	addl	$1, -28(%rbp)
.L2:
	cmpl	$9999, -28(%rbp)
	jbe	.L4
	movl	-24(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	$3, -28(%rbp)
	jmp	.L5
.L13:
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L15
	movl	$0, -24(%rbp)
	jmp	.L8
.L12:
	movl	-24(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jnb	.L9
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L10
.L9:
	movl	-24(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	subl	%edx, %eax
	shrl	%eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	is_square
	testl	%eax, %eax
	jne	.L16
	addl	$1, -24(%rbp)
.L8:
	movl	-24(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L12
	jmp	.L7
.L15:
	nop
	jmp	.L7
.L16:
	nop
.L7:
	addl	$2, -28(%rbp)
.L5:
	cmpl	$9999, -28(%rbp)
	jbe	.L13
	nop
.L10:
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
	.type	prime_sieve, @function
prime_sieve:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	$1, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movb	$1, (%rax)
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movl	$2, -16(%rbp)
	jmp	.L18
.L22:
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L19
	movl	-16(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -12(%rbp)
	jmp	.L20
.L21:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$1, (%rax)
	movl	-16(%rbp), %eax
	addl	%eax, -12(%rbp)
.L20:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L21
.L19:
	addl	$1, -16(%rbp)
.L18:
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L22
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	prime_sieve, .-prime_sieve
	.type	is_square, @function
is_square:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	testq	%rax, %rax
	js	.L25
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movq	%xmm1, %rax
	jmp	.L26
.L25:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
	movq	%xmm0, %rax
.L26:
	movq	%rax, %xmm0
	call	sqrt@PLT
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	imull	%eax, %eax
	cmpl	%eax, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	is_square, .-is_square
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
