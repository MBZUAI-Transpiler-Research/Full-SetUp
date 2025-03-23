	.file	"problem29.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB26:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init@PLT
	movl	$156816, %edi
	call	malloc@PLT
	movq	%rax, -40(%rbp)
	movl	$2, -56(%rbp)
	jmp	.L2
.L5:
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	__gmpz_set_ui@PLT
	movl	$2, -52(%rbp)
	jmp	.L3
.L4:
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-32(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__gmpz_mul_ui@PLT
	movl	-48(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	__gmpz_init@PLT
	movl	-48(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	__gmpz_set@PLT
	addl	$1, -48(%rbp)
	addl	$1, -52(%rbp)
.L3:
	cmpl	$100, -52(%rbp)
	jle	.L4
	addl	$1, -56(%rbp)
.L2:
	cmpl	$100, -56(%rbp)
	jle	.L5
	movq	-40(%rbp), %rax
	leaq	compare(%rip), %rdx
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	$9801, %esi
	movq	%rax, %rdi
	call	qsort@PLT
	leaq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	__gmpz_set_ui@PLT
	movl	$0, -48(%rbp)
	jmp	.L6
.L8:
	movl	-48(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	__gmpz_cmp@PLT
	testl	%eax, %eax
	je	.L7
	addl	$1, -44(%rbp)
.L7:
	movl	-48(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	__gmpz_set@PLT
	movl	-48(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	__gmpz_clear@PLT
	addl	$1, -48(%rbp)
.L6:
	cmpl	$9800, -48(%rbp)
	jle	.L8
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	main, .-main
	.type	compare, @function
compare:
.LFB27:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	__gmpz_cmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	compare, .-compare
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
