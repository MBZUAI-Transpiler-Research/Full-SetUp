	.file	"problem37.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
# problem37.c:14:   unsigned count = 0, sum = 0;
	movl	$0, -16(%rbp)	#, count
# problem37.c:14:   unsigned count = 0, sum = 0;
	movl	$0, -12(%rbp)	#, sum
# problem37.c:16:   for (i = 10; count < 11; i++) {
	movl	$10, -20(%rbp)	#, i
# problem37.c:16:   for (i = 10; count < 11; i++) {
	jmp	.L2	#
.L14:
# problem37.c:20:     k = i;
	movl	-20(%rbp), %eax	# i, tmp91
	movl	%eax, -8(%rbp)	# tmp91, k
# problem37.c:21:     while (k != 0) {
	jmp	.L3	#
.L6:
# problem37.c:22:       if (!is_prime(k)) {
	movl	-8(%rbp), %eax	# k, tmp92
	movl	%eax, %edi	# tmp92,
	call	is_prime	#
# problem37.c:22:       if (!is_prime(k)) {
	testl	%eax, %eax	# _1
	je	.L16	#,
# problem37.c:25:       k /= 10;
	movl	-8(%rbp), %eax	# k, tmp94
	movl	%eax, %edx	# tmp94, tmp95
	movl	$3435973837, %eax	#, tmp97
	imulq	%rdx, %rax	# tmp95, tmp96
	shrq	$32, %rax	#, tmp98
	shrl	$3, %eax	#, tmp93
	movl	%eax, -8(%rbp)	# tmp93, k
.L3:
# problem37.c:21:     while (k != 0) {
	cmpl	$0, -8(%rbp)	#, k
	jne	.L6	#,
# problem37.c:29:     k = i;
	movl	-20(%rbp), %eax	# i, tmp99
	movl	%eax, -8(%rbp)	# tmp99, k
# problem37.c:30:     d = log10(k);
	movl	-8(%rbp), %eax	# k, tmp100
	testq	%rax, %rax	# tmp100
	js	.L7	#,
	pxor	%xmm2, %xmm2	# _2
	cvtsi2sdq	%rax, %xmm2	# tmp100, _2
	movq	%xmm2, %rax	# _2, _2
	jmp	.L8	#
.L7:
	movq	%rax, %rdx	# tmp100, tmp102
	shrq	%rdx	# tmp102
	andl	$1, %eax	#, tmp103
	orq	%rax, %rdx	# tmp103, tmp102
	pxor	%xmm0, %xmm0	# tmp101
	cvtsi2sdq	%rdx, %xmm0	# tmp102, tmp101
	addsd	%xmm0, %xmm0	# tmp101, tmp101
	movq	%xmm0, %rax	# tmp101, _2
.L8:
	movq	%rax, %xmm0	# _2,
	call	log10@PLT	#
# problem37.c:30:     d = log10(k);
	cvttsd2siq	%xmm0, %rax	# _3, tmp104
	movl	%eax, -4(%rbp)	# tmp104, d
# problem37.c:31:     d = pow(10, d);
	movl	-4(%rbp), %eax	# d, tmp105
	testq	%rax, %rax	# tmp105
	js	.L9	#,
	pxor	%xmm0, %xmm0	# _4
	cvtsi2sdq	%rax, %xmm0	# tmp105, _4
	jmp	.L10	#
.L9:
	movq	%rax, %rdx	# tmp105, tmp107
	shrq	%rdx	# tmp107
	andl	$1, %eax	#, tmp108
	orq	%rax, %rdx	# tmp108, tmp107
	pxor	%xmm0, %xmm0	# tmp106
	cvtsi2sdq	%rdx, %xmm0	# tmp107, tmp106
	addsd	%xmm0, %xmm0	# tmp106, _4
.L10:
	movq	.LC0(%rip), %rax	#, tmp109
	movapd	%xmm0, %xmm1	# _4,
	movq	%rax, %xmm0	# tmp109,
	call	pow@PLT	#
# problem37.c:31:     d = pow(10, d);
	cvttsd2siq	%xmm0, %rax	# _5, tmp110
	movl	%eax, -4(%rbp)	# tmp110, d
# problem37.c:32:     while (d != 1) {
	jmp	.L11	#
.L13:
# problem37.c:33:       if (!is_prime(k % d)) {
	movl	-8(%rbp), %eax	# k, tmp111
	movl	$0, %edx	#, tmp112
	divl	-4(%rbp)	# d
	movl	%edx, %eax	# tmp112, _6
	movl	%eax, %edi	# _6,
	call	is_prime	#
# problem37.c:33:       if (!is_prime(k % d)) {
	testl	%eax, %eax	# _7
	je	.L17	#,
# problem37.c:36:       d /= 10;
	movl	-4(%rbp), %eax	# d, tmp115
	movl	%eax, %edx	# tmp115, tmp116
	movl	$3435973837, %eax	#, tmp118
	imulq	%rdx, %rax	# tmp116, tmp117
	shrq	$32, %rax	#, tmp119
	shrl	$3, %eax	#, tmp114
	movl	%eax, -4(%rbp)	# tmp114, d
.L11:
# problem37.c:32:     while (d != 1) {
	cmpl	$1, -4(%rbp)	#, d
	jne	.L13	#,
# problem37.c:38:     sum += i;
	movl	-20(%rbp), %eax	# i, tmp120
	addl	%eax, -12(%rbp)	# tmp120, sum
# problem37.c:39:     count++;
	addl	$1, -16(%rbp)	#, count
	jmp	.L5	#
.L16:
# problem37.c:23:         goto NEXT;
	nop	
	jmp	.L5	#
.L17:
# problem37.c:34:         goto NEXT;
	nop	
.L5:
# problem37.c:16:   for (i = 10; count < 11; i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# problem37.c:16:   for (i = 10; count < 11; i++) {
	cmpl	$10, -16(%rbp)	#, count
	jbe	.L14	#,
# problem37.c:44:   printf("%u\n", sum);
	movl	-12(%rbp), %eax	# sum, tmp121
	movl	%eax, %esi	# tmp121,
	leaq	.LC1(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem37.c:46:   return 0;
	movl	$0, %eax	#, _24
# problem37.c:47: }
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
# problem37.c:51:   if (n <= 1) {
	cmpl	$1, -20(%rbp)	#, n
	ja	.L19	#,
# problem37.c:52:     return 0;
	movl	$0, %eax	#, _4
	jmp	.L20	#
.L19:
# problem37.c:54:   else if (n == 2) {
	cmpl	$2, -20(%rbp)	#, n
	jne	.L21	#,
# problem37.c:55:     return 1;
	movl	$1, %eax	#, _4
	jmp	.L20	#
.L21:
# problem37.c:59:     for (i = 2; i*i <= n; i++) {
	movl	$2, -4(%rbp)	#, i
# problem37.c:59:     for (i = 2; i*i <= n; i++) {
	jmp	.L22	#
.L24:
# problem37.c:60:       if (n % i == 0) {
	movl	-20(%rbp), %eax	# n, tmp86
	movl	$0, %edx	#, tmp87
	divl	-4(%rbp)	# i
	movl	%edx, %eax	# tmp87, _1
# problem37.c:60:       if (n % i == 0) {
	testl	%eax, %eax	# _1
	jne	.L23	#,
# problem37.c:61:         return 0;
	movl	$0, %eax	#, _4
	jmp	.L20	#
.L23:
# problem37.c:59:     for (i = 2; i*i <= n; i++) {
	addl	$1, -4(%rbp)	#, i
.L22:
# problem37.c:59:     for (i = 2; i*i <= n; i++) {
	movl	-4(%rbp), %eax	# i, tmp89
	imull	%eax, %eax	# tmp89, _2
# problem37.c:59:     for (i = 2; i*i <= n; i++) {
	cmpl	%eax, -20(%rbp)	# _2, n
	jnb	.L24	#,
# problem37.c:64:     return 1;
	movl	$1, %eax	#, _4
.L20:
# problem37.c:66: }
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
