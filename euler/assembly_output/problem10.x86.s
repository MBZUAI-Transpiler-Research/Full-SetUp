	.file	"problem10.c"
	.text
	.section	.rodata
.LC0:
	.string	"%llu\n"
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
	subq	$32, %rsp
	movq	$2000000, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, -8(%rbp)
	movl	$2, -32(%rbp)
	jmp	.L2
.L6:
	movl	-32(%rbp), %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movl	-32(%rbp), %eax
	addq	%rax, -24(%rbp)
	movl	-32(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -28(%rbp)
	jmp	.L4
.L5:
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$1, (%rax)
	movl	-32(%rbp), %eax
	addl	%eax, -28(%rbp)
.L4:
	movl	-28(%rbp), %eax
	cmpq	%rax, -16(%rbp)
	ja	.L5
.L3:
	addl	$1, -32(%rbp)
.L2:
	movl	-32(%rbp), %eax
	cmpq	%rax, -16(%rbp)
	ja	.L6
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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
