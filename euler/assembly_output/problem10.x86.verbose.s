	.file	"problem10.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%llu\n"
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
# problem10.c:13:   size_t n = 2000000;
	movq	$2000000, -16(%rbp)	#, n
# problem10.c:14:   unsigned long long sum = 0ULL;
	movq	$0, -24(%rbp)	#, sum
# problem10.c:16:   sieve = calloc(n, sizeof *sieve);
	movq	-16(%rbp), %rax	# n, tmp92
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	calloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp93, sieve
# problem10.c:17:   for (i = 2; i < n; i++) {
	movl	$2, -32(%rbp)	#, i
# problem10.c:17:   for (i = 2; i < n; i++) {
	jmp	.L2	#
.L6:
# problem10.c:18:     if (!sieve[i]) {
	movl	-32(%rbp), %edx	# i, _1
	movq	-8(%rbp), %rax	# sieve, tmp94
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# problem10.c:18:     if (!sieve[i]) {
	testb	%al, %al	# _3
	jne	.L3	#,
# problem10.c:19:       sum += i;
	movl	-32(%rbp), %eax	# i, _4
	addq	%rax, -24(%rbp)	# _4, sum
# problem10.c:20:       for (j = i*2; j < n; j += i) {
	movl	-32(%rbp), %eax	# i, tmp98
	addl	%eax, %eax	# tmp97
	movl	%eax, -28(%rbp)	# tmp97, j
# problem10.c:20:       for (j = i*2; j < n; j += i) {
	jmp	.L4	#
.L5:
# problem10.c:21:         sieve[j] = 1;
	movl	-28(%rbp), %edx	# j, _5
	movq	-8(%rbp), %rax	# sieve, tmp99
	addq	%rdx, %rax	# _5, _6
# problem10.c:21:         sieve[j] = 1;
	movb	$1, (%rax)	#, *_6
# problem10.c:20:       for (j = i*2; j < n; j += i) {
	movl	-32(%rbp), %eax	# i, tmp100
	addl	%eax, -28(%rbp)	# tmp100, j
.L4:
# problem10.c:20:       for (j = i*2; j < n; j += i) {
	movl	-28(%rbp), %eax	# j, _7
	cmpq	%rax, -16(%rbp)	# _7, n
	ja	.L5	#,
.L3:
# problem10.c:17:   for (i = 2; i < n; i++) {
	addl	$1, -32(%rbp)	#, i
.L2:
# problem10.c:17:   for (i = 2; i < n; i++) {
	movl	-32(%rbp), %eax	# i, _8
	cmpq	%rax, -16(%rbp)	# _8, n
	ja	.L6	#,
# problem10.c:25:   free(sieve);
	movq	-8(%rbp), %rax	# sieve, tmp101
	movq	%rax, %rdi	# tmp101,
	call	free@PLT	#
# problem10.c:27:   printf("%llu\n", sum);
	movq	-24(%rbp), %rax	# sum, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC0(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem10.c:29:   return 0;
	movl	$0, %eax	#, _24
# problem10.c:30: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
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
