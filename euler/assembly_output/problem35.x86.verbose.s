	.file	"problem35.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC1:
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
	subq	$32, %rsp	#,
# problem35.c:15:   unsigned i, count = 0;
	movl	$0, -24(%rbp)	#, count
# problem35.c:17:   for (i = 2; i < N; i++) {
	movl	$2, -28(%rbp)	#, i
# problem35.c:17:   for (i = 2; i < N; i++) {
	jmp	.L2	#
.L13:
# problem35.c:22:     if (!is_prime(i)) {
	movl	-28(%rbp), %eax	# i, tmp91
	movl	%eax, %edi	# tmp91,
	call	is_prime	#
# problem35.c:22:     if (!is_prime(i)) {
	testl	%eax, %eax	# _1
	je	.L15	#,
# problem35.c:25:     digits = log10(i);
	movl	-28(%rbp), %eax	# i, tmp92
	testq	%rax, %rax	# tmp92
	js	.L5	#,
	pxor	%xmm2, %xmm2	# _2
	cvtsi2sdq	%rax, %xmm2	# tmp92, _2
	movq	%xmm2, %rax	# _2, _2
	jmp	.L6	#
.L5:
	movq	%rax, %rdx	# tmp92, tmp94
	shrq	%rdx	# tmp94
	andl	$1, %eax	#, tmp95
	orq	%rax, %rdx	# tmp95, tmp94
	pxor	%xmm0, %xmm0	# tmp93
	cvtsi2sdq	%rdx, %xmm0	# tmp94, tmp93
	addsd	%xmm0, %xmm0	# tmp93, tmp93
	movq	%xmm0, %rax	# tmp93, _2
.L6:
	movq	%rax, %xmm0	# _2,
	call	log10@PLT	#
# problem35.c:25:     digits = log10(i);
	cvttsd2siq	%xmm0, %rax	# _3, tmp96
	movl	%eax, -12(%rbp)	# tmp96, digits
# problem35.c:26:     k = i;
	movl	-28(%rbp), %eax	# i, tmp97
	movl	%eax, -20(%rbp)	# tmp97, k
# problem35.c:27:     for (j = 0; j < digits; j++) {
	movl	$0, -16(%rbp)	#, j
# problem35.c:27:     for (j = 0; j < digits; j++) {
	jmp	.L7	#
.L12:
# problem35.c:28:       unsigned l = pow(10, digits);
	movl	-12(%rbp), %eax	# digits, tmp98
	testq	%rax, %rax	# tmp98
	js	.L8	#,
	pxor	%xmm0, %xmm0	# _4
	cvtsi2sdq	%rax, %xmm0	# tmp98, _4
	jmp	.L9	#
.L8:
	movq	%rax, %rdx	# tmp98, tmp100
	shrq	%rdx	# tmp100
	andl	$1, %eax	#, tmp101
	orq	%rax, %rdx	# tmp101, tmp100
	pxor	%xmm0, %xmm0	# tmp99
	cvtsi2sdq	%rdx, %xmm0	# tmp100, tmp99
	addsd	%xmm0, %xmm0	# tmp99, _4
.L9:
	movq	.LC0(%rip), %rax	#, tmp102
	movapd	%xmm0, %xmm1	# _4,
	movq	%rax, %xmm0	# tmp102,
	call	pow@PLT	#
# problem35.c:28:       unsigned l = pow(10, digits);
	cvttsd2siq	%xmm0, %rax	# _5, tmp103
	movl	%eax, -8(%rbp)	# tmp103, l
# problem35.c:29:       unsigned t = k % l;
	movl	-20(%rbp), %eax	# k, tmp105
	movl	$0, %edx	#, tmp106
	divl	-8(%rbp)	# l
	movl	%edx, -4(%rbp)	# tmp106, t
# problem35.c:30:       k /= l;
	movl	-20(%rbp), %eax	# k, tmp111
	movl	$0, %edx	#, tmp110
	divl	-8(%rbp)	# l
	movl	%eax, -20(%rbp)	# tmp109, k
# problem35.c:31:       k += t*10;
	movl	-4(%rbp), %edx	# t, tmp112
	movl	%edx, %eax	# tmp112, tmp113
	sall	$2, %eax	#, tmp113
	addl	%edx, %eax	# tmp112, tmp113
	addl	%eax, %eax	# tmp114
# problem35.c:31:       k += t*10;
	addl	%eax, -20(%rbp)	# _6, k
# problem35.c:32:       if (!is_prime(k)) {
	movl	-20(%rbp), %eax	# k, tmp115
	movl	%eax, %edi	# tmp115,
	call	is_prime	#
# problem35.c:32:       if (!is_prime(k)) {
	testl	%eax, %eax	# _7
	je	.L16	#,
# problem35.c:27:     for (j = 0; j < digits; j++) {
	addl	$1, -16(%rbp)	#, j
.L7:
# problem35.c:27:     for (j = 0; j < digits; j++) {
	movl	-16(%rbp), %eax	# j, tmp116
	cmpl	-12(%rbp), %eax	# digits, tmp116
	jb	.L12	#,
# problem35.c:36:     count++;
	addl	$1, -24(%rbp)	#, count
	jmp	.L4	#
.L11:
.L15:
# problem35.c:23:       continue;
	nop	
	jmp	.L4	#
.L16:
# problem35.c:33:         goto NEXT;
	nop	
.L4:
# problem35.c:17:   for (i = 2; i < N; i++) {
	addl	$1, -28(%rbp)	#, i
.L2:
# problem35.c:17:   for (i = 2; i < N; i++) {
	cmpl	$999999, -28(%rbp)	#, i
	jbe	.L13	#,
# problem35.c:40:   printf("%u\n", count);
	movl	-24(%rbp), %eax	# count, tmp117
	movl	%eax, %esi	# tmp117,
	leaq	.LC1(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem35.c:42:   return 0;
	movl	$0, %eax	#, _22
# problem35.c:43: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	is_prime, @function
is_prime:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# n, n
# problem35.c:47:   if (n <= 1) {
	cmpl	$1, -20(%rbp)	#, n
	ja	.L18	#,
# problem35.c:48:     return 0;
	movl	$0, %eax	#, _4
	jmp	.L19	#
.L18:
# problem35.c:50:   else if (n == 2) {
	cmpl	$2, -20(%rbp)	#, n
	jne	.L20	#,
# problem35.c:51:     return 1;
	movl	$1, %eax	#, _4
	jmp	.L19	#
.L20:
# problem35.c:55:     for (i = 2; i*i <= n; i++) {
	movl	$2, -4(%rbp)	#, i
# problem35.c:55:     for (i = 2; i*i <= n; i++) {
	jmp	.L21	#
.L23:
# problem35.c:56:       if (n % i == 0) {
	movl	-20(%rbp), %eax	# n, tmp86
	movl	$0, %edx	#, tmp87
	divl	-4(%rbp)	# i
	movl	%edx, %eax	# tmp87, _1
# problem35.c:56:       if (n % i == 0) {
	testl	%eax, %eax	# _1
	jne	.L22	#,
# problem35.c:57:         return 0;
	movl	$0, %eax	#, _4
	jmp	.L19	#
.L22:
# problem35.c:55:     for (i = 2; i*i <= n; i++) {
	addl	$1, -4(%rbp)	#, i
.L21:
# problem35.c:55:     for (i = 2; i*i <= n; i++) {
	movl	-4(%rbp), %eax	# i, tmp89
	imull	%eax, %eax	# tmp89, _2
# problem35.c:55:     for (i = 2; i*i <= n; i++) {
	cmpl	%eax, -20(%rbp)	# _2, n
	jnb	.L23	#,
# problem35.c:60:     return 1;
	movl	$1, %eax	#, _4
.L19:
# problem35.c:62: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	is_prime, .-is_prime
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1076101120
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
