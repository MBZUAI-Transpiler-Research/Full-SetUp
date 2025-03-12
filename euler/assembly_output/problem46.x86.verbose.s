	.file	"problem46.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# problem46.c:17:   char *sieve = prime_sieve(N);
	movl	$10000, %edi	#,
	call	prime_sieve	#
	movq	%rax, -16(%rbp)	# tmp111, sieve
# problem46.c:18:   unsigned *primes = malloc(sizeof(unsigned) * N);
	movl	$40000, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp112, primes
# problem46.c:19:   unsigned i, j = 0;
	movl	$0, -24(%rbp)	#, j
# problem46.c:21:   for (i = 0; i < N; i++) {
	movl	$0, -28(%rbp)	#, i
# problem46.c:21:   for (i = 0; i < N; i++) {
	jmp	.L2	#
.L4:
# problem46.c:22:     if (!sieve[i]) {
	movl	-28(%rbp), %edx	# i, _1
	movq	-16(%rbp), %rax	# sieve, tmp113
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# problem46.c:22:     if (!sieve[i]) {
	testb	%al, %al	# _3
	jne	.L3	#,
# problem46.c:23:       primes[j++] = i;
	movl	-24(%rbp), %eax	# j, j.0_4
	leal	1(%rax), %edx	#, tmp114
	movl	%edx, -24(%rbp)	# tmp114, j
	movl	%eax, %eax	# j.0_4, _5
# problem46.c:23:       primes[j++] = i;
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-8(%rbp), %rax	# primes, tmp115
	addq	%rax, %rdx	# tmp115, _7
# problem46.c:23:       primes[j++] = i;
	movl	-28(%rbp), %eax	# i, tmp116
	movl	%eax, (%rdx)	# tmp116, *_7
.L3:
# problem46.c:21:   for (i = 0; i < N; i++) {
	addl	$1, -28(%rbp)	#, i
.L2:
# problem46.c:21:   for (i = 0; i < N; i++) {
	cmpl	$9999, -28(%rbp)	#, i
	jbe	.L4	#,
# problem46.c:26:   primes[j] = 0;
	movl	-24(%rbp), %eax	# j, _8
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-8(%rbp), %rax	# primes, tmp117
	addq	%rdx, %rax	# _9, _10
# problem46.c:26:   primes[j] = 0;
	movl	$0, (%rax)	#, *_10
# problem46.c:28:   for (i = 3; i < N; i += 2) {
	movl	$3, -28(%rbp)	#, i
# problem46.c:28:   for (i = 3; i < N; i += 2) {
	jmp	.L5	#
.L13:
# problem46.c:29:     if (!sieve[i]) {
	movl	-28(%rbp), %edx	# i, _11
	movq	-16(%rbp), %rax	# sieve, tmp118
	addq	%rdx, %rax	# _11, _12
	movzbl	(%rax), %eax	# *_12, _13
# problem46.c:29:     if (!sieve[i]) {
	testb	%al, %al	# _13
	je	.L15	#,
# problem46.c:33:     for (j = 0; primes[j]; j++) {
	movl	$0, -24(%rbp)	#, j
# problem46.c:33:     for (j = 0; primes[j]; j++) {
	jmp	.L8	#
.L12:
# problem46.c:36:       if (primes[j] > i) {
	movl	-24(%rbp), %eax	# j, _14
	leaq	0(,%rax,4), %rdx	#, _15
	movq	-8(%rbp), %rax	# primes, tmp119
	addq	%rdx, %rax	# _15, _16
	movl	(%rax), %eax	# *_16, _17
# problem46.c:36:       if (primes[j] > i) {
	cmpl	%eax, -28(%rbp)	# _17, i
	jnb	.L9	#,
# problem46.c:37:         printf("%u\n", i);
	movl	-28(%rbp), %eax	# i, tmp120
	movl	%eax, %esi	# tmp120,
	leaq	.LC0(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem46.c:38:         goto FINISH;
	jmp	.L10	#
.L9:
# problem46.c:41:       s = (i - primes[j])/2;
	movl	-24(%rbp), %eax	# j, _18
	leaq	0(,%rax,4), %rdx	#, _19
	movq	-8(%rbp), %rax	# primes, tmp122
	addq	%rdx, %rax	# _19, _20
	movl	(%rax), %eax	# *_20, _21
# problem46.c:41:       s = (i - primes[j])/2;
	movl	-28(%rbp), %edx	# i, tmp123
	subl	%eax, %edx	# _21, _22
# problem46.c:41:       s = (i - primes[j])/2;
	movl	%edx, %eax	# _22, _22
	shrl	%eax	# _22
	movl	%eax, -20(%rbp)	# tmp124, s
# problem46.c:42:       if (is_square(s)) {
	movl	-20(%rbp), %eax	# s, tmp125
	movl	%eax, %edi	# tmp125,
	call	is_square	#
# problem46.c:42:       if (is_square(s)) {
	testl	%eax, %eax	# _23
	jne	.L16	#,
# problem46.c:33:     for (j = 0; primes[j]; j++) {
	addl	$1, -24(%rbp)	#, j
.L8:
# problem46.c:33:     for (j = 0; primes[j]; j++) {
	movl	-24(%rbp), %eax	# j, _24
	leaq	0(,%rax,4), %rdx	#, _25
	movq	-8(%rbp), %rax	# primes, tmp126
	addq	%rdx, %rax	# _25, _26
	movl	(%rax), %eax	# *_26, _27
# problem46.c:33:     for (j = 0; primes[j]; j++) {
	testl	%eax, %eax	# _27
	jne	.L12	#,
	jmp	.L7	#
.L15:
# problem46.c:31:       continue;
	nop	
	jmp	.L7	#
.L16:
# problem46.c:43:         break;
	nop	
.L7:
# problem46.c:28:   for (i = 3; i < N; i += 2) {
	addl	$2, -28(%rbp)	#, i
.L5:
# problem46.c:28:   for (i = 3; i < N; i += 2) {
	cmpl	$9999, -28(%rbp)	#, i
	jbe	.L13	#,
# problem46.c:47: FINISH:
	nop	
.L10:
# problem46.c:48:   free(sieve);
	movq	-16(%rbp), %rax	# sieve, tmp127
	movq	%rax, %rdi	# tmp127,
	call	free@PLT	#
# problem46.c:49:   free(primes);
	movq	-8(%rbp), %rax	# primes, tmp128
	movq	%rax, %rdi	# tmp128,
	call	free@PLT	#
# problem46.c:51:   return 0;
	movl	$0, %eax	#, _56
# problem46.c:52: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.type	prime_sieve, @function
prime_sieve:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# n, n
# problem46.c:56:   char *sieve = calloc(n, sizeof *sieve);
	movl	-20(%rbp), %eax	# n, _1
	movl	$1, %esi	#,
	movq	%rax, %rdi	# _1,
	call	calloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp92, sieve
# problem46.c:58:   sieve[0] = sieve[1] = 1;
	movq	-8(%rbp), %rax	# sieve, tmp93
	addq	$1, %rax	#, _2
# problem46.c:58:   sieve[0] = sieve[1] = 1;
	movb	$1, (%rax)	#, *_2
# problem46.c:58:   sieve[0] = sieve[1] = 1;
	movzbl	(%rax), %edx	# *_2, _3
# problem46.c:58:   sieve[0] = sieve[1] = 1;
	movq	-8(%rbp), %rax	# sieve, tmp94
	movb	%dl, (%rax)	# _3, *sieve_17
# problem46.c:59:   for (i = 2; i < n; i++) {
	movl	$2, -16(%rbp)	#, i
# problem46.c:59:   for (i = 2; i < n; i++) {
	jmp	.L18	#
.L22:
# problem46.c:60:     if (!sieve[i]) {
	movl	-16(%rbp), %edx	# i, _4
	movq	-8(%rbp), %rax	# sieve, tmp95
	addq	%rdx, %rax	# _4, _5
	movzbl	(%rax), %eax	# *_5, _6
# problem46.c:60:     if (!sieve[i]) {
	testb	%al, %al	# _6
	jne	.L19	#,
# problem46.c:62:       for (j = i*2; j < n; j += i) {
	movl	-16(%rbp), %eax	# i, tmp99
	addl	%eax, %eax	# tmp98
	movl	%eax, -12(%rbp)	# tmp98, j
# problem46.c:62:       for (j = i*2; j < n; j += i) {
	jmp	.L20	#
.L21:
# problem46.c:63:         sieve[j] = 1;
	movl	-12(%rbp), %edx	# j, _7
	movq	-8(%rbp), %rax	# sieve, tmp100
	addq	%rdx, %rax	# _7, _8
# problem46.c:63:         sieve[j] = 1;
	movb	$1, (%rax)	#, *_8
# problem46.c:62:       for (j = i*2; j < n; j += i) {
	movl	-16(%rbp), %eax	# i, tmp101
	addl	%eax, -12(%rbp)	# tmp101, j
.L20:
# problem46.c:62:       for (j = i*2; j < n; j += i) {
	movl	-12(%rbp), %eax	# j, tmp102
	cmpl	-20(%rbp), %eax	# n, tmp102
	jb	.L21	#,
.L19:
# problem46.c:59:   for (i = 2; i < n; i++) {
	addl	$1, -16(%rbp)	#, i
.L18:
# problem46.c:59:   for (i = 2; i < n; i++) {
	movl	-16(%rbp), %eax	# i, tmp103
	cmpl	-20(%rbp), %eax	# n, tmp103
	jb	.L22	#,
# problem46.c:67:   return sieve;
	movq	-8(%rbp), %rax	# sieve, _21
# problem46.c:68: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	prime_sieve, .-prime_sieve
	.type	is_square, @function
is_square:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# n, n
# problem46.c:72:   unsigned sq = sqrt(n);
	movl	-20(%rbp), %eax	# n, tmp88
	testq	%rax, %rax	# tmp88
	js	.L25	#,
	pxor	%xmm1, %xmm1	# _1
	cvtsi2sdq	%rax, %xmm1	# tmp88, _1
	movq	%xmm1, %rax	# _1, _1
	jmp	.L26	#
.L25:
	movq	%rax, %rdx	# tmp88, tmp90
	shrq	%rdx	# tmp90
	andl	$1, %eax	#, tmp91
	orq	%rax, %rdx	# tmp91, tmp90
	pxor	%xmm0, %xmm0	# tmp89
	cvtsi2sdq	%rdx, %xmm0	# tmp90, tmp89
	addsd	%xmm0, %xmm0	# tmp89, tmp89
	movq	%xmm0, %rax	# tmp89, _1
.L26:
	movq	%rax, %xmm0	# _1,
	call	sqrt@PLT	#
# problem46.c:72:   unsigned sq = sqrt(n);
	cvttsd2siq	%xmm0, %rax	# _2, tmp92
	movl	%eax, -4(%rbp)	# tmp92, sq
# problem46.c:73:   return sq*sq == n;
	movl	-4(%rbp), %eax	# sq, tmp93
	imull	%eax, %eax	# tmp93, _3
# problem46.c:73:   return sq*sq == n;
	cmpl	%eax, -20(%rbp)	# _3, n
	sete	%al	#, _4
	movzbl	%al, %eax	# _4, _9
# problem46.c:74: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	is_square, .-is_square
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
