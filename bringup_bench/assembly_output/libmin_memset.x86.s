	.file	"libmin_memset.c"
	.text
	.globl	libmin_memset
	.type	libmin_memset, @function
libmin_memset:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L2
	movq	-24(%rbp), %rax
	jmp	.L3
.L2:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	cmpq	$2, -40(%rbp)
	ja	.L4
	movq	-24(%rbp), %rax
	jmp	.L3
.L4:
	movq	-40(%rbp), %rax
	leaq	-2(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-40(%rbp), %rax
	leaq	-3(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rdx
	addq	$2, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	cmpq	$6, -40(%rbp)
	ja	.L5
	movq	-24(%rbp), %rax
	jmp	.L3
.L5:
	movq	-40(%rbp), %rax
	leaq	-4(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rdx
	addq	$3, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	cmpq	$8, -40(%rbp)
	ja	.L6
	movq	-24(%rbp), %rax
	jmp	.L3
.L6:
	movq	-16(%rbp), %rax
	negq	%rax
	andl	$3, %eax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	subq	%rax, -40(%rbp)
	andq	$-4, -40(%rbp)
	jmp	.L7
.L8:
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	subq	$1, -40(%rbp)
	addq	$1, -16(%rbp)
.L7:
	cmpq	$0, -40(%rbp)
	jne	.L8
	movq	-24(%rbp), %rax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_memset, .-libmin_memset
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
