	.file	"problem12.c"
	.text
	.section	.rodata
.LC0:
	.string	"%lu\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$1, -16(%rbp)
	movq	$1, -8(%rbp)
	jmp	.L2
.L3:
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
.L2:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	divisor_count
	cmpl	$499, %eax
	jbe	.L3
	movq	-8(%rbp), %rax
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
.LFE0:
	.size	main, .-main
	.type	divisor_count, @function
divisor_count:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$1, -16(%rbp)
	movq	$2, -8(%rbp)
	jmp	.L6
.L9:
	movl	$0, -12(%rbp)
	jmp	.L7
.L8:
	addl	$1, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %edx
	divq	-8(%rbp)
	movq	%rax, -24(%rbp)
.L7:
	movq	-24(%rbp), %rax
	movl	$0, %edx
	divq	-8(%rbp)
	movq	%rdx, %rax
	testq	%rax, %rax
	je	.L8
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	-16(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
	addq	$1, -8(%rbp)
.L6:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.L9
	movl	-16(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	divisor_count, .-divisor_count
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
