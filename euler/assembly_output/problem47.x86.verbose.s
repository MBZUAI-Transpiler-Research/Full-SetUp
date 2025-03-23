	.file	"problem47.c"
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
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# problem47.c:16:   unsigned i, j = 0;
	movl	$0, -4(%rbp)	#, j
# problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	movl	$2, -8(%rbp)	#, i
# problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	jmp	.L2	#
.L7:
# problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	movl	$0, -4(%rbp)	#, j
# problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	jmp	.L3	#
.L5:
# problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	addl	$1, -4(%rbp)	#, j
.L3:
# problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	cmpl	$3, -4(%rbp)	#, j
	ja	.L4	#,
# problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	movl	-8(%rbp), %edx	# i, tmp87
	movl	-4(%rbp), %eax	# j, tmp88
	addl	%edx, %eax	# tmp87, _1
	movl	%eax, %edi	# _1,
	call	distinct_factor_count	#
# problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	cmpl	$4, %eax	#, _2
	je	.L5	#,
.L4:
# problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	addl	$1, -8(%rbp)	#, i
.L2:
# problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	cmpl	$999999, -8(%rbp)	#, i
	ja	.L6	#,
# problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	cmpl	$3, -4(%rbp)	#, j
	jbe	.L7	#,
.L6:
# problem47.c:21:   printf("%u\n", i-1);
	movl	-8(%rbp), %eax	# i, tmp89
	subl	$1, %eax	#, _3
	movl	%eax, %esi	# _3,
	leaq	.LC0(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem47.c:23:   return 0;
	movl	$0, %eax	#, _18
# problem47.c:24: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	distinct_factor_count, @function
distinct_factor_count:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# n, n
# problem47.c:28:   unsigned count = 0;
	movl	$0, -8(%rbp)	#, count
# problem47.c:30:   for (i = 2; i <= n; i++) {
	movl	$2, -4(%rbp)	#, i
# problem47.c:30:   for (i = 2; i <= n; i++) {
	jmp	.L10	#
.L14:
# problem47.c:31:     if (n % i == 0) {
	movl	-20(%rbp), %eax	# n, tmp86
	movl	$0, %edx	#, tmp87
	divl	-4(%rbp)	# i
	movl	%edx, %eax	# tmp87, _1
# problem47.c:31:     if (n % i == 0) {
	testl	%eax, %eax	# _1
	jne	.L11	#,
# problem47.c:32:       count++;
	addl	$1, -8(%rbp)	#, count
# problem47.c:33:       n /= i;
	movl	-20(%rbp), %eax	# n, tmp92
	movl	$0, %edx	#, tmp91
	divl	-4(%rbp)	# i
	movl	%eax, -20(%rbp)	# tmp90, n
# problem47.c:34:       while (n % i == 0) {
	jmp	.L12	#
.L13:
# problem47.c:35:         n /= i;
	movl	-20(%rbp), %eax	# n, tmp96
	movl	$0, %edx	#, tmp95
	divl	-4(%rbp)	# i
	movl	%eax, -20(%rbp)	# tmp94, n
.L12:
# problem47.c:34:       while (n % i == 0) {
	movl	-20(%rbp), %eax	# n, tmp97
	movl	$0, %edx	#, tmp98
	divl	-4(%rbp)	# i
	movl	%edx, %eax	# tmp98, _2
# problem47.c:34:       while (n % i == 0) {
	testl	%eax, %eax	# _2
	je	.L13	#,
.L11:
# problem47.c:30:   for (i = 2; i <= n; i++) {
	addl	$1, -4(%rbp)	#, i
.L10:
# problem47.c:30:   for (i = 2; i <= n; i++) {
	movl	-4(%rbp), %eax	# i, tmp100
	cmpl	-20(%rbp), %eax	# n, tmp100
	jbe	.L14	#,
# problem47.c:39:   return count;
	movl	-8(%rbp), %eax	# count, _12
# problem47.c:40: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	distinct_factor_count, .-distinct_factor_count
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
