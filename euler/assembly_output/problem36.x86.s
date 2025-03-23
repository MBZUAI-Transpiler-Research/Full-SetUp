	.file	"problem36.c"
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
	movl	$0, -4(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L2
.L4:
	movl	-8(%rbp), %eax
	movl	$10, %esi
	movl	%eax, %edi
	call	palindromic_base
	testl	%eax, %eax
	je	.L3
	movl	-8(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	palindromic_base
	testl	%eax, %eax
	je	.L3
	movl	-8(%rbp), %eax
	addl	%eax, -4(%rbp)
.L3:
	addl	$1, -8(%rbp)
.L2:
	cmpl	$999999, -8(%rbp)
	jle	.L4
	movl	-4(%rbp), %eax
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
	.type	palindromic_base, @function
palindromic_base:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L7
.L8:
	movl	-24(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	movl	%edx, %eax
	addl	%ecx, %eax
	movl	%eax, -8(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	movl	%eax, -20(%rbp)
.L7:
	cmpl	$0, -20(%rbp)
	jne	.L8
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	palindromic_base, .-palindromic_base
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
