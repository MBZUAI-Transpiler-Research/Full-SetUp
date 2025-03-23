	.file	"problem7.c"
	.text
	.section	.rodata
.LC0:
	.string	"%lu\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, -40(%rbp)
	movq	$1000000, -16(%rbp)
	movl	$10001, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, -8(%rbp)
	movq	$2, -32(%rbp)
	jmp	.L2
.L8:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	addl	$1, -40(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.L4
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L5
.L4:
	movq	-32(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -24(%rbp)
	jmp	.L6
.L7:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$1, (%rax)
	movq	-32(%rbp), %rax
	addq	%rax, -24(%rbp)
.L6:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L7
.L3:
	addq	$1, -32(%rbp)
.L2:
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L8
.L5:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
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
