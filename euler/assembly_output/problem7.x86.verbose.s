	.file	"problem7.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%lu\n"
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
	subq	$48, %rsp	#,
# problem7.c:13:   unsigned count = 0;
	movl	$0, -40(%rbp)	#, count
# problem7.c:14:   size_t n = 1000000;
	movq	$1000000, -16(%rbp)	#, n
# problem7.c:15:   const unsigned target = 10001;
	movl	$10001, -36(%rbp)	#, target
# problem7.c:17:   sieve = calloc(n, sizeof *sieve);
	movq	-16(%rbp), %rax	# n, tmp87
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	calloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp88, sieve
# problem7.c:18:   for (i = 2; i < n; i++) {
	movq	$2, -32(%rbp)	#, i
# problem7.c:18:   for (i = 2; i < n; i++) {
	jmp	.L2	#
.L8:
# problem7.c:19:     if (!sieve[i]) {
	movq	-8(%rbp), %rdx	# sieve, tmp89
	movq	-32(%rbp), %rax	# i, tmp90
	addq	%rdx, %rax	# tmp89, _1
	movzbl	(%rax), %eax	# *_1, _2
# problem7.c:19:     if (!sieve[i]) {
	testb	%al, %al	# _2
	jne	.L3	#,
# problem7.c:22:       count++;
	addl	$1, -40(%rbp)	#, count
# problem7.c:23:       if (count == target) {
	movl	-40(%rbp), %eax	# count, tmp91
	cmpl	-36(%rbp), %eax	# target, tmp91
	jne	.L4	#,
# problem7.c:24:         printf("%lu\n", i);
	movq	-32(%rbp), %rax	# i, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem7.c:25:         break;
	jmp	.L5	#
.L4:
# problem7.c:27:       for (j = i*2; j < n; j += i) {
	movq	-32(%rbp), %rax	# i, tmp97
	addq	%rax, %rax	# tmp96
	movq	%rax, -24(%rbp)	# tmp96, j
# problem7.c:27:       for (j = i*2; j < n; j += i) {
	jmp	.L6	#
.L7:
# problem7.c:28:         sieve[j] = 1;
	movq	-8(%rbp), %rdx	# sieve, tmp98
	movq	-24(%rbp), %rax	# j, tmp99
	addq	%rdx, %rax	# tmp98, _3
# problem7.c:28:         sieve[j] = 1;
	movb	$1, (%rax)	#, *_3
# problem7.c:27:       for (j = i*2; j < n; j += i) {
	movq	-32(%rbp), %rax	# i, tmp100
	addq	%rax, -24(%rbp)	# tmp100, j
.L6:
# problem7.c:27:       for (j = i*2; j < n; j += i) {
	movq	-24(%rbp), %rax	# j, tmp101
	cmpq	-16(%rbp), %rax	# n, tmp101
	jb	.L7	#,
.L3:
# problem7.c:18:   for (i = 2; i < n; i++) {
	addq	$1, -32(%rbp)	#, i
.L2:
# problem7.c:18:   for (i = 2; i < n; i++) {
	movq	-32(%rbp), %rax	# i, tmp102
	cmpq	-16(%rbp), %rax	# n, tmp102
	jb	.L8	#,
.L5:
# problem7.c:32:   free(sieve);
	movq	-8(%rbp), %rax	# sieve, tmp103
	movq	%rax, %rdi	# tmp103,
	call	free@PLT	#
# problem7.c:34:   return 0;
	movl	$0, %eax	#, _26
# problem7.c:35: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
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
