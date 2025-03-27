	.file	"libmin_mread.c"
	.text
	.globl	libmin_mread
	.type	libmin_mread, @function
libmin_mread:
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_meof@PLT
	testl	%eax, %eax
	je	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L4
.L6:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	leal	1(%rax), %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, 24(%rdx)
	cltq
	addq	%rsi, %rax
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L4:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L5
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_meof@PLT
	testl	%eax, %eax
	je	.L6
.L5:
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_mread, .-libmin_mread
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
