	.file	"problem21.c"
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
	movl	$0, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L2
.L4:
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	divisors_sum
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.L3
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	divisors_sum
	cmpl	%eax, -12(%rbp)
	jne	.L3
	movl	-12(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -8(%rbp)
.L3:
	addl	$1, -12(%rbp)
.L2:
	cmpl	$9999, -12(%rbp)
	jle	.L4
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
	.type	divisors_sum, @function
divisors_sum:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$1, -16(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L7
.L10:
	movl	$1, -4(%rbp)
	jmp	.L8
.L9:
	movl	-4(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%eax, -8(%rbp)
.L8:
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L9
	movl	-4(%rbp), %eax
	imull	-12(%rbp), %eax
	subl	$1, %eax
	movl	-12(%rbp), %edx
	leal	-1(%rdx), %ecx
	cltd
	idivl	%ecx
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
	addl	$1, -12(%rbp)
.L7:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L10
	movl	-16(%rbp), %eax
	subl	-20(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	divisors_sum, .-divisors_sum
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
