	.file	"problem25.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
# problem25.c:12: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp97
	movq	%rax, -8(%rbp)	# tmp97, D.5505
	xorl	%eax, %eax	# tmp97
# problem25.c:14:   int i = 1;
	movl	$1, -52(%rbp)	#, i
# problem25.c:16:   mpz_init(n);
	leaq	-32(%rbp), %rax	#, tmp85
	movq	%rax, %rdi	# tmp85,
	call	__gmpz_init@PLT	#
# problem25.c:18:   for (i = 1;; i++) {
	movl	$1, -52(%rbp)	#, i
.L4:
# problem25.c:22:     mpz_fib_ui(n, i);
	movl	-52(%rbp), %eax	# i, tmp86
	movslq	%eax, %rdx	# tmp86, _1
	leaq	-32(%rbp), %rax	#, tmp87
	movq	%rdx, %rsi	# _1,
	movq	%rax, %rdi	# tmp87,
	call	__gmpz_fib_ui@PLT	#
# problem25.c:23:     str = mpz_get_str(NULL, 10, n);
	leaq	-32(%rbp), %rax	#, tmp88
	movq	%rax, %rdx	# tmp88,
	movl	$10, %esi	#,
	movl	$0, %edi	#,
	call	__gmpz_get_str@PLT	#
	movq	%rax, -48(%rbp)	# tmp89, str
# problem25.c:24:     len = strlen(str);
	movq	-48(%rbp), %rax	# str, tmp90
	movq	%rax, %rdi	# tmp90,
	call	strlen@PLT	#
	movq	%rax, -40(%rbp)	# tmp91, len
# problem25.c:25:     free(str);
	movq	-48(%rbp), %rax	# str, tmp92
	movq	%rax, %rdi	# tmp92,
	call	free@PLT	#
# problem25.c:26:     if (len == 1000) {
	cmpq	$1000, -40(%rbp)	#, len
	jne	.L2	#,
# problem25.c:27:       printf("%d\n", i);
	movl	-52(%rbp), %eax	# i, tmp93
	movl	%eax, %esi	# tmp93,
	leaq	.LC0(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem25.c:28:       break;
	nop	
# problem25.c:32:   mpz_clear(n);
	leaq	-32(%rbp), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	__gmpz_clear@PLT	#
# problem25.c:34:   return 0;
	movl	$0, %eax	#, _16
# problem25.c:35: }
	movq	-8(%rbp), %rdx	# D.5505, tmp98
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp98
	je	.L6	#,
	jmp	.L7	#
.L2:
# problem25.c:18:   for (i = 1;; i++) {
	addl	$1, -52(%rbp)	#, i
# problem25.c:18:   for (i = 1;; i++) {
	jmp	.L4	#
.L7:
# problem25.c:35: }
	call	__stack_chk_fail@PLT	#
.L6:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE26:
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
