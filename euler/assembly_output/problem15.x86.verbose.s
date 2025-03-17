	.file	"problem15.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	main
	.type	main, @function
main:
.LFB20:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
# problem15.c:10: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp99
	movq	%rax, -8(%rbp)	# tmp99, D.4762
	xorl	%eax, %eax	# tmp99
# problem15.c:14:   mpz_init(n); mpz_init(m);
	leaq	-48(%rbp), %rax	#, tmp85
	movq	%rax, %rdi	# tmp85,
	call	__gmpz_init@PLT	#
# problem15.c:14:   mpz_init(n); mpz_init(m);
	leaq	-32(%rbp), %rax	#, tmp86
	movq	%rax, %rdi	# tmp86,
	call	__gmpz_init@PLT	#
# problem15.c:15:   mpz_fac_ui(n, 40); mpz_fac_ui(m, 20);
	leaq	-48(%rbp), %rax	#, tmp87
	movl	$40, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	__gmpz_fac_ui@PLT	#
# problem15.c:15:   mpz_fac_ui(n, 40); mpz_fac_ui(m, 20);
	leaq	-32(%rbp), %rax	#, tmp88
	movl	$20, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	__gmpz_fac_ui@PLT	#
# problem15.c:16:   mpz_mul(m, m, m);
	leaq	-32(%rbp), %rdx	#, tmp89
	leaq	-32(%rbp), %rcx	#, tmp90
	leaq	-32(%rbp), %rax	#, tmp91
	movq	%rcx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	__gmpz_mul@PLT	#
# problem15.c:17:   mpz_divexact(n, n, m);
	leaq	-32(%rbp), %rdx	#, tmp92
	leaq	-48(%rbp), %rcx	#, tmp93
	leaq	-48(%rbp), %rax	#, tmp94
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	__gmpz_divexact@PLT	#
# problem15.c:19:   mpz_out_str(stdout, 10, n);
	movq	stdout(%rip), %rax	# stdout, stdout.0_1
	leaq	-48(%rbp), %rdx	#, tmp95
	movl	$10, %esi	#,
	movq	%rax, %rdi	# stdout.0_1,
	call	__gmpz_out_str@PLT	#
# problem15.c:20:   putchar('\n');
	movl	$10, %edi	#,
	call	putchar@PLT	#
# problem15.c:22:   mpz_clear(n);
	leaq	-48(%rbp), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__gmpz_clear@PLT	#
# problem15.c:23:   mpz_clear(m);
	leaq	-32(%rbp), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__gmpz_clear@PLT	#
# problem15.c:25:   return 0;
	movl	$0, %eax	#, _13
# problem15.c:26: }
	movq	-8(%rbp), %rdx	# D.4762, tmp100
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp100
	je	.L3	#,
	call	__stack_chk_fail@PLT	#
.L3:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE20:
	.size	main, .-main
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
