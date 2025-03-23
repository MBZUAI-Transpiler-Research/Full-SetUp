	.file	"problem39.c"
	.text
	.section	.rodata
.LC0:
	.string	"%u\n"
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
	subq	$32, %rsp
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L2
.L9:
	movl	$0, -16(%rbp)
	movl	$1, -28(%rbp)
	jmp	.L3
.L7:
	movl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.L4
.L6:
	movl	-20(%rbp), %eax
	subl	-28(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %eax
	imull	%eax, %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	%eax, %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	imull	%eax, %eax
	cmpl	%eax, %edx
	jne	.L5
	addl	$1, -16(%rbp)
.L5:
	addl	$1, -24(%rbp)
.L4:
	movl	-20(%rbp), %eax
	shrl	%eax
	cmpl	%eax, -24(%rbp)
	jb	.L6
	addl	$1, -28(%rbp)
.L3:
	movl	-20(%rbp), %eax
	shrl	%eax
	cmpl	%eax, -28(%rbp)
	jb	.L7
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jbe	.L8
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
.L8:
	addl	$1, -20(%rbp)
.L2:
	cmpl	$1000, -20(%rbp)
	jbe	.L9
	movl	-8(%rbp), %eax
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
