	.file	"libmin_atoi.c"
	.text
	.globl	libmin_atoi
	.type	libmin_atoi, @function
libmin_atoi:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	addq	$1, -24(%rbp)
.L2:
	movq	_pctype(%rip), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L3
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$43, %eax
	je	.L4
	cmpl	$45, %eax
	jne	.L6
	movl	$1, -4(%rbp)
.L4:
	addq	$1, -24(%rbp)
	jmp	.L6
.L7:
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	leal	-48(%rax), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -8(%rbp)
.L6:
	movq	_pctype(%rip), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L7
	cmpl	$0, -4(%rbp)
	jne	.L8
	movl	-8(%rbp), %eax
	negl	%eax
	jmp	.L10
.L8:
	movl	-8(%rbp), %eax
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_atoi, .-libmin_atoi
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
