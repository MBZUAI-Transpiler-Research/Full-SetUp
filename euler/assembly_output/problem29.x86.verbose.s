	.file	"problem29.c"
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
# problem29.c:15: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp130
	movq	%rax, -8(%rbp)	# tmp130, D.5315
	xorl	%eax, %eax	# tmp130
# problem29.c:17:   int i = 0;
	movl	$0, -48(%rbp)	#, i
# problem29.c:18:   int count = 0;
	movl	$0, -44(%rbp)	#, count
# problem29.c:22:   mpz_init(t);
	leaq	-32(%rbp), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__gmpz_init@PLT	#
# problem29.c:24:   nums = malloc((N-1)*(N-1) * sizeof *nums);
	movl	$156816, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -40(%rbp)	# tmp103, nums
# problem29.c:25:   for (a = 2; a <= N; a++) {
	movl	$2, -56(%rbp)	#, a
# problem29.c:25:   for (a = 2; a <= N; a++) {
	jmp	.L2	#
.L5:
# problem29.c:26:     mpz_set_ui(t, a);
	movl	-56(%rbp), %eax	# a, tmp104
	movslq	%eax, %rdx	# tmp104, _1
	leaq	-32(%rbp), %rax	#, tmp105
	movq	%rdx, %rsi	# _1,
	movq	%rax, %rdi	# tmp105,
	call	__gmpz_set_ui@PLT	#
# problem29.c:27:     for (b = 2; b <= N; b++) {
	movl	$2, -52(%rbp)	#, b
# problem29.c:27:     for (b = 2; b <= N; b++) {
	jmp	.L3	#
.L4:
# problem29.c:28:       mpz_mul_ui(t, t, a);
	movl	-56(%rbp), %eax	# a, tmp106
	movslq	%eax, %rdx	# tmp106, _2
	leaq	-32(%rbp), %rcx	#, tmp107
	leaq	-32(%rbp), %rax	#, tmp108
	movq	%rcx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	__gmpz_mul_ui@PLT	#
# problem29.c:29:       mpz_init(nums[i]);
	movl	-48(%rbp), %eax	# i, tmp109
	cltq
	salq	$4, %rax	#, _3
	movq	%rax, %rdx	# _3, _4
	movq	-40(%rbp), %rax	# nums, tmp110
	addq	%rdx, %rax	# _4, _5
# problem29.c:29:       mpz_init(nums[i]);
	movq	%rax, %rdi	# _5,
	call	__gmpz_init@PLT	#
# problem29.c:30:       mpz_set(nums[i], t);
	movl	-48(%rbp), %eax	# i, tmp111
	cltq
	salq	$4, %rax	#, _6
	movq	%rax, %rdx	# _6, _7
	movq	-40(%rbp), %rax	# nums, tmp112
	addq	%rax, %rdx	# tmp112, _8
# problem29.c:30:       mpz_set(nums[i], t);
	leaq	-32(%rbp), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	movq	%rdx, %rdi	# _8,
	call	__gmpz_set@PLT	#
# problem29.c:31:       i++;
	addl	$1, -48(%rbp)	#, i
# problem29.c:27:     for (b = 2; b <= N; b++) {
	addl	$1, -52(%rbp)	#, b
.L3:
# problem29.c:27:     for (b = 2; b <= N; b++) {
	cmpl	$100, -52(%rbp)	#, b
	jle	.L4	#,
# problem29.c:25:   for (a = 2; a <= N; a++) {
	addl	$1, -56(%rbp)	#, a
.L2:
# problem29.c:25:   for (a = 2; a <= N; a++) {
	cmpl	$100, -56(%rbp)	#, a
	jle	.L5	#,
# problem29.c:35:   qsort(nums, (N-1)*(N-1), sizeof *nums, compare);
	movq	-40(%rbp), %rax	# nums, tmp114
	leaq	compare(%rip), %rdx	#, tmp115
	movq	%rdx, %rcx	# tmp115,
	movl	$16, %edx	#,
	movl	$9801, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	qsort@PLT	#
# problem29.c:37:   mpz_set_ui(t, 0);
	leaq	-32(%rbp), %rax	#, tmp116
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	__gmpz_set_ui@PLT	#
# problem29.c:38:   for (i = 0; i < (N-1)*(N-1); i++) {
	movl	$0, -48(%rbp)	#, i
# problem29.c:38:   for (i = 0; i < (N-1)*(N-1); i++) {
	jmp	.L6	#
.L8:
# problem29.c:39:     if (mpz_cmp(t, nums[i]) != 0) {
	movl	-48(%rbp), %eax	# i, tmp117
	cltq
	salq	$4, %rax	#, _9
	movq	%rax, %rdx	# _9, _10
	movq	-40(%rbp), %rax	# nums, tmp118
	addq	%rax, %rdx	# tmp118, _11
# problem29.c:39:     if (mpz_cmp(t, nums[i]) != 0) {
	leaq	-32(%rbp), %rax	#, tmp119
	movq	%rdx, %rsi	# _11,
	movq	%rax, %rdi	# tmp119,
	call	__gmpz_cmp@PLT	#
# problem29.c:39:     if (mpz_cmp(t, nums[i]) != 0) {
	testl	%eax, %eax	# _12
	je	.L7	#,
# problem29.c:40:       count++;
	addl	$1, -44(%rbp)	#, count
.L7:
# problem29.c:42:     mpz_set(t, nums[i]);
	movl	-48(%rbp), %eax	# i, tmp120
	cltq
	salq	$4, %rax	#, _13
	movq	%rax, %rdx	# _13, _14
	movq	-40(%rbp), %rax	# nums, tmp121
	addq	%rax, %rdx	# tmp121, _15
# problem29.c:42:     mpz_set(t, nums[i]);
	leaq	-32(%rbp), %rax	#, tmp122
	movq	%rdx, %rsi	# _15,
	movq	%rax, %rdi	# tmp122,
	call	__gmpz_set@PLT	#
# problem29.c:43:     mpz_clear(nums[i]);
	movl	-48(%rbp), %eax	# i, tmp123
	cltq
	salq	$4, %rax	#, _16
	movq	%rax, %rdx	# _16, _17
	movq	-40(%rbp), %rax	# nums, tmp124
	addq	%rdx, %rax	# _17, _18
# problem29.c:43:     mpz_clear(nums[i]);
	movq	%rax, %rdi	# _18,
	call	__gmpz_clear@PLT	#
# problem29.c:38:   for (i = 0; i < (N-1)*(N-1); i++) {
	addl	$1, -48(%rbp)	#, i
.L6:
# problem29.c:38:   for (i = 0; i < (N-1)*(N-1); i++) {
	cmpl	$9800, -48(%rbp)	#, i
	jle	.L8	#,
# problem29.c:45:   printf("%d\n", count);
	movl	-44(%rbp), %eax	# count, tmp125
	movl	%eax, %esi	# tmp125,
	leaq	.LC0(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem29.c:47:   free(nums);
	movq	-40(%rbp), %rax	# nums, tmp127
	movq	%rax, %rdi	# tmp127,
	call	free@PLT	#
# problem29.c:48:   mpz_clear(t);
	leaq	-32(%rbp), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	__gmpz_clear@PLT	#
# problem29.c:50:   return 0;
	movl	$0, %eax	#, _42
# problem29.c:51: }
	movq	-8(%rbp), %rdx	# D.5315, tmp131
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp131
	je	.L10	#,
	call	__stack_chk_fail@PLT	#
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# a, a
	movq	%rsi, -16(%rbp)	# b, b
# problem29.c:55:   return mpz_cmp(*(const mpz_t *)a, *(mpz_t const *)b);
	movq	-16(%rbp), %rdx	# b, tmp84
	movq	-8(%rbp), %rax	# a, tmp85
	movq	%rdx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	__gmpz_cmp@PLT	#
# problem29.c:56: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE27:
	.size	compare, .-compare
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
