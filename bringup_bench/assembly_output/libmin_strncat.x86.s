	.file	"libmin_strncat.c"
	.text
	.globl	libmin_strncat
	.type	libmin_strncat, @function
libmin_strncat:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_strlen@PLT
	addq	%rax, -24(%rbp)
	jmp	.L2
.L4:
	subq	$1, -40(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L2:
	cmpq	$0, -40(%rbp)
	je	.L3
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L4
.L3:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strncat, .-libmin_strncat
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
