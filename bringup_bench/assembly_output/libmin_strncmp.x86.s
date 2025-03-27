	.file	"libmin_strncmp.c"
	.text
	.globl	libmin_strncmp
	.type	libmin_strncmp, @function
libmin_strncmp:
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
	jmp	.L2
.L5:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	cmpb	-1(%rbp), %al
	je	.L3
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %edx
	subl	%edx, %eax
	jmp	.L4
.L3:
	cmpb	$0, -2(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L4
.L2:
	movq	%rdx, %rax
	leaq	-1(%rax), %rdx
	testq	%rax, %rax
	jne	.L5
	movl	$0, %eax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strncmp, .-libmin_strncmp
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
