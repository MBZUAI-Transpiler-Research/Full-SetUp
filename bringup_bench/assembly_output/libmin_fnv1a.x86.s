	.file	"libmin_fnv1a.c"
	.text
	.globl	libmin_fnv32a
	.type	libmin_fnv32a, @function
libmin_fnv32a:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L2
.L3:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	xorl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-36(%rbp), %eax
	sall	$4, %eax
	addl	%eax, %edx
	movl	-36(%rbp), %eax
	sall	$7, %eax
	addl	%eax, %edx
	movl	-36(%rbp), %eax
	sall	$8, %eax
	addl	%eax, %edx
	movl	-36(%rbp), %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -36(%rbp)
.L2:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L3
	movl	-36(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_fnv32a, .-libmin_fnv32a
	.globl	libmin_fnv64a
	.type	libmin_fnv64a, @function
libmin_fnv64a:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L6
.L7:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	xorq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	salq	$4, %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	salq	$7, %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	salq	$8, %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	salq	$40, %rax
	addq	%rdx, %rax
	addq	%rax, -40(%rbp)
.L6:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L7
	movq	-40(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	libmin_fnv64a, .-libmin_fnv64a
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
