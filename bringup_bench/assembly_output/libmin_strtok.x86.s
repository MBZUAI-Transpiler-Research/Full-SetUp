	.file	"libmin_strtok.c"
	.text
	.globl	libmin_strtok
	.type	libmin_strtok, @function
libmin_strtok:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movq	p.0(%rip), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strspn@PLT
	addq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L4
	movq	$0, p.0(%rip)
	movq	p.0(%rip), %rax
	jmp	.L3
.L4:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcspn@PLT
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, p.0(%rip)
	movq	p.0(%rip), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L5
	movq	p.0(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, p.0(%rip)
	movb	$0, (%rax)
	jmp	.L6
.L5:
	movq	$0, p.0(%rip)
.L6:
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strtok, .-libmin_strtok
	.local	p.0
	.comm	p.0,8,8
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
