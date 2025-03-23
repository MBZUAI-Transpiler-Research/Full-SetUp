	.file	"problem15.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB20:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init@PLT
	leaq	-48(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	__gmpz_fac_ui@PLT
	leaq	-32(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	__gmpz_fac_ui@PLT
	leaq	-32(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__gmpz_mul@PLT
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__gmpz_divexact@PLT
	movq	stdout(%rip), %rax
	leaq	-48(%rbp), %rdx
	movl	$10, %esi
	movq	%rax, %rdi
	call	__gmpz_out_str@PLT
	movl	$10, %edi
	call	putchar@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
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
