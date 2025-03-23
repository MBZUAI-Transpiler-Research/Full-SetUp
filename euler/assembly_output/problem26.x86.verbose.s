	.file	"problem26.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%u\n"
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
	subq	$64, %rsp	#,
# problem26.c:12: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp111
	movq	%rax, -8(%rbp)	# tmp111, D.3948
	xorl	%eax, %eax	# tmp111
# problem26.c:14:   unsigned maxlen = 0, imax = 0;
	movl	$0, -64(%rbp)	#, maxlen
# problem26.c:14:   unsigned maxlen = 0, imax = 0;
	movl	$0, -60(%rbp)	#, imax
# problem26.c:17:   mpz_init(p); mpz_init(r);
	leaq	-48(%rbp), %rax	#, tmp88
	movq	%rax, %rdi	# tmp88,
	call	__gmpz_init@PLT	#
# problem26.c:17:   mpz_init(p); mpz_init(r);
	leaq	-32(%rbp), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	__gmpz_init@PLT	#
# problem26.c:19:   for (i = 2; i < M; i++) {
	movl	$2, -56(%rbp)	#, i
# problem26.c:19:   for (i = 2; i < M; i++) {
	jmp	.L2	#
.L8:
# problem26.c:20:     unsigned len = 1;
	movl	$1, -52(%rbp)	#, len
# problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	movl	-56(%rbp), %eax	# i, tmp90
	andl	$1, %eax	#, _1
# problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	testl	%eax, %eax	# _1
	je	.L11	#,
# problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	movl	-56(%rbp), %ecx	# i, tmp91
	movl	%ecx, %edx	# tmp91, tmp92
	movl	$3435973837, %eax	#, tmp94
	imulq	%rdx, %rax	# tmp92, tmp93
	shrq	$32, %rax	#, tmp95
	shrl	$2, %eax	#, _2
	movl	%eax, %edx	# _2, tmp96
	sall	$2, %edx	#, tmp96
	addl	%eax, %edx	# _2, tmp96
	movl	%ecx, %eax	# tmp91, tmp91
	subl	%edx, %eax	# tmp96, tmp91
# problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	testl	%eax, %eax	# _2
	je	.L11	#,
# problem26.c:26:     mpz_set_ui(p, 10);
	leaq	-48(%rbp), %rax	#, tmp97
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	__gmpz_set_ui@PLT	#
# problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	jmp	.L6	#
.L7:
# problem26.c:28:       len++;
	addl	$1, -52(%rbp)	#, len
# problem26.c:29:       mpz_mul_ui(p, p, 10);
	leaq	-48(%rbp), %rcx	#, tmp98
	leaq	-48(%rbp), %rax	#, tmp99
	movl	$10, %edx	#,
	movq	%rcx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	__gmpz_mul_ui@PLT	#
.L6:
# problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	movl	-56(%rbp), %edx	# i, _3
	leaq	-48(%rbp), %rcx	#, tmp100
	leaq	-32(%rbp), %rax	#, tmp101
	movq	%rcx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	__gmpz_fdiv_r_ui@PLT	#
# problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	leaq	-32(%rbp), %rax	#, tmp102
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	__gmpz_cmp_ui@PLT	#
# problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	testl	%eax, %eax	# _4
	jne	.L7	#,
# problem26.c:31:     if (len > maxlen) {
	movl	-52(%rbp), %eax	# len, tmp103
	cmpl	-64(%rbp), %eax	# maxlen, tmp103
	jbe	.L5	#,
# problem26.c:32:       maxlen = len;
	movl	-52(%rbp), %eax	# len, tmp104
	movl	%eax, -64(%rbp)	# tmp104, maxlen
# problem26.c:33:       imax = i;
	movl	-56(%rbp), %eax	# i, tmp105
	movl	%eax, -60(%rbp)	# tmp105, imax
	jmp	.L5	#
.L11:
# problem26.c:23:       continue;
	nop	
.L5:
# problem26.c:19:   for (i = 2; i < M; i++) {
	addl	$1, -56(%rbp)	#, i
.L2:
# problem26.c:19:   for (i = 2; i < M; i++) {
	cmpl	$999, -56(%rbp)	#, i
	jbe	.L8	#,
# problem26.c:36:   printf("%u\n", imax);
	movl	-60(%rbp), %eax	# imax, tmp106
	movl	%eax, %esi	# tmp106,
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem26.c:38:   mpz_clear(p);
	leaq	-48(%rbp), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__gmpz_clear@PLT	#
# problem26.c:39:   mpz_clear(r);
	leaq	-32(%rbp), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__gmpz_clear@PLT	#
# problem26.c:41:   return 0;
	movl	$0, %eax	#, _23
# problem26.c:42: }
	movq	-8(%rbp), %rdx	# D.3948, tmp112
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp112
	je	.L10	#,
	call	__stack_chk_fail@PLT	#
.L10:
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
