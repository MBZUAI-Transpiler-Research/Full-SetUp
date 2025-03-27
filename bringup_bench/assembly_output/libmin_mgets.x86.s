	.file	"libmin_mgets.c"
	.text
	.globl	libmin_mgets
	.type	libmin_mgets, @function
libmin_mgets:
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
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L5
	movq	-32(%rbp), %rax
	subq	$1, %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_meof@PLT
	testl	%eax, %eax
	je	.L6
.L5:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L7
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 24(%rax)
.L7:
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_mgets, .-libmin_mgets
	.globl	libmin_getline
	.type	libmin_getline, @function
libmin_getline:
.LFB4:
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
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L9
	movq	-32(%rbp), %rax
	movq	$80, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	libmin_malloc@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
.L9:
	movl	$0, -12(%rbp)
.L16:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L10
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rax
	movq	%rax, %rdi
	call	libmin_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	libmin_strncpy@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	libmin_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L10:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_mgetc@PLT
	movb	%al, -13(%rbp)
	cmpb	$10, -13(%rbp)
	je	.L11
	cmpb	$-1, -13(%rbp)
	jne	.L12
.L11:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	nop
	cmpl	$0, -12(%rbp)
	jle	.L17
	jmp	.L20
.L12:
	cmpb	$8, -13(%rbp)
	jne	.L14
	cmpl	$0, -12(%rbp)
	jle	.L14
	subl	$2, -12(%rbp)
	jmp	.L15
.L14:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	-13(%rbp), %eax
	movb	%al, (%rdx)
.L15:
	addl	$1, -12(%rbp)
	jmp	.L16
.L20:
	movl	-12(%rbp), %eax
	jmp	.L19
.L17:
	movl	$-1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	libmin_getline, .-libmin_getline
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
