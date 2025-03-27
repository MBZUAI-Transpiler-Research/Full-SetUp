	.file	"libmin_memmove.c"
	.text
	.globl	libmin_memmove
	.type	libmin_memmove, @function
libmin_memmove:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L2
	movq	$0, -24(%rbp)
	jmp	.L3
.L4:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -24(%rbp)
.L3:
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L4
	jmp	.L5
.L2:
	movq	-8(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L5
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L6
.L7:
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	leaq	-1(%rdx), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	subq	$1, -24(%rbp)
.L6:
	cmpq	$0, -24(%rbp)
	jne	.L7
.L5:
	movq	-40(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_memmove, .-libmin_memmove
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
