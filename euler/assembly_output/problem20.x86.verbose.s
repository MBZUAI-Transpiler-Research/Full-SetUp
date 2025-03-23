	.file	"problem20.c"
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
	subq	$48, %rsp	#,
# problem20.c:11: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp105
	movq	%rax, -8(%rbp)	# tmp105, D.5293
	xorl	%eax, %eax	# tmp105
# problem20.c:15:   int sum = 0;
	movl	$0, -44(%rbp)	#, sum
# problem20.c:17:   mpz_init(n);
	leaq	-32(%rbp), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	__gmpz_init@PLT	#
# problem20.c:18:   mpz_fac_ui(n, 100);
	leaq	-32(%rbp), %rax	#, tmp93
	movl	$100, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	__gmpz_fac_ui@PLT	#
# problem20.c:19:   str = mpz_get_str(NULL, 10, n);
	leaq	-32(%rbp), %rax	#, tmp94
	movq	%rax, %rdx	# tmp94,
	movl	$10, %esi	#,
	movl	$0, %edi	#,
	call	__gmpz_get_str@PLT	#
	movq	%rax, -40(%rbp)	# tmp95, str
# problem20.c:20:   for (i = 0; str[i]; i++) {
	movl	$0, -48(%rbp)	#, i
# problem20.c:20:   for (i = 0; str[i]; i++) {
	jmp	.L2	#
.L3:
# problem20.c:21:     sum += str[i]-'0';
	movl	-48(%rbp), %eax	# i, tmp96
	movslq	%eax, %rdx	# tmp96, _1
	movq	-40(%rbp), %rax	# str, tmp97
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
	movsbl	%al, %eax	# _3, _4
# problem20.c:21:     sum += str[i]-'0';
	subl	$48, %eax	#, _5
# problem20.c:21:     sum += str[i]-'0';
	addl	%eax, -44(%rbp)	# _5, sum
# problem20.c:20:   for (i = 0; str[i]; i++) {
	addl	$1, -48(%rbp)	#, i
.L2:
# problem20.c:20:   for (i = 0; str[i]; i++) {
	movl	-48(%rbp), %eax	# i, tmp98
	movslq	%eax, %rdx	# tmp98, _6
	movq	-40(%rbp), %rax	# str, tmp99
	addq	%rdx, %rax	# _6, _7
	movzbl	(%rax), %eax	# *_7, _8
# problem20.c:20:   for (i = 0; str[i]; i++) {
	testb	%al, %al	# _8
	jne	.L3	#,
# problem20.c:23:   printf("%d\n", sum);
	movl	-44(%rbp), %eax	# sum, tmp100
	movl	%eax, %esi	# tmp100,
	leaq	.LC0(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem20.c:25:   free(str);
	movq	-40(%rbp), %rax	# str, tmp102
	movq	%rax, %rdi	# tmp102,
	call	free@PLT	#
# problem20.c:26:   mpz_clear(n);
	leaq	-32(%rbp), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__gmpz_clear@PLT	#
# problem20.c:28:   return 0;
	movl	$0, %eax	#, _21
# problem20.c:29: }
	movq	-8(%rbp), %rdx	# D.5293, tmp106
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	je	.L5	#,
	call	__stack_chk_fail@PLT	#
.L5:
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
