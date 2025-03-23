	.file	"problem31.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
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
	subq	$48, %rsp
	movl	$0, -36(%rbp)
	movl	$200, -4(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L2
.L16:
	movl	$0, -28(%rbp)
	jmp	.L3
.L15:
	movl	$0, -24(%rbp)
	jmp	.L4
.L14:
	movl	$0, -20(%rbp)
	jmp	.L5
.L13:
	movl	$0, -16(%rbp)
	jmp	.L6
.L12:
	movl	$0, -12(%rbp)
	jmp	.L7
.L11:
	movl	$0, -8(%rbp)
	jmp	.L8
.L10:
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	addl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%eax, %edx
	movl	-16(%rbp), %eax
	addl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cmpl	$200, %eax
	jg	.L9
	addl	$1, -36(%rbp)
.L9:
	addl	$2, -8(%rbp)
.L8:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L10
	addl	$5, -12(%rbp)
.L7:
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L11
	addl	$10, -16(%rbp)
.L6:
	movl	-16(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L12
	addl	$20, -20(%rbp)
.L5:
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L13
	addl	$50, -24(%rbp)
.L4:
	movl	-24(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L14
	addl	$100, -28(%rbp)
.L3:
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L15
	addl	$200, -32(%rbp)
.L2:
	movl	-32(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L16
	movl	-36(%rbp), %eax
	movl	%eax, %esi
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
