	.file	"problem14.c"
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
	subq	$16, %rsp
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	$1, -16(%rbp)
	jmp	.L2
.L4:
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	collatz_count
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jnb	.L3
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
.L3:
	addl	$1, -16(%rbp)
.L2:
	cmpl	$999999, -16(%rbp)
	jbe	.L4
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
	.type	collatz_count, @function
collatz_count:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L7
.L10:
	movl	-20(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L8
	movl	-20(%rbp), %eax
	shrl	%eax
	jmp	.L9
.L8:
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$1, %eax
.L9:
	movl	%eax, -20(%rbp)
	addl	$1, -4(%rbp)
.L7:
	cmpl	$1, -20(%rbp)
	ja	.L10
	movl	-4(%rbp), %eax
	addl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	collatz_count, .-collatz_count
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
