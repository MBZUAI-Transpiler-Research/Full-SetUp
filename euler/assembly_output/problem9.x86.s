	.file	"problem9.c"
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
	subq	$16, %rsp
	movl	$1, -12(%rbp)
	jmp	.L2
.L6:
	movl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L3
.L5:
	movl	$1000, %eax
	subl	-12(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	imull	%eax, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	imull	%eax, %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	imull	%eax, %eax
	cmpl	%eax, %edx
	jne	.L4
	movl	-12(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L4:
	addl	$1, -8(%rbp)
.L3:
	cmpl	$666, -8(%rbp)
	jle	.L5
	addl	$1, -12(%rbp)
.L2:
	cmpl	$333, -12(%rbp)
	jle	.L6
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
