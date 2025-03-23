	.file	"problem48.c"
	.text
	.section	.rodata
.LC0:
	.string	"%llu\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movl	$1, -24(%rbp)
	jmp	.L2
.L5:
	movq	$1, -8(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L3
.L4:
	movl	-24(%rbp), %eax
	imulq	-8(%rbp), %rax
	movq	%rax, %rcx
	movabsq	$-2601111570856684097, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$33, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$10000000000, %rdx
	imulq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movq	%rax, -8(%rbp)
	addl	$1, -20(%rbp)
.L3:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jb	.L4
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movabsq	$-2601111570856684097, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$33, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movabsq	$10000000000, %rdx
	imulq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movq	%rax, -16(%rbp)
	addl	$1, -24(%rbp)
.L2:
	cmpl	$999, -24(%rbp)
	jbe	.L5
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
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
