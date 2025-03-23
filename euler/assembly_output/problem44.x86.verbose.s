	.file	"problem44.c"
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
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# problem44.c:19:   unsigned min = UINT_MAX;
	movl	$-1, -12(%rbp)	#, min
# problem44.c:20:   for (i = 1; i < N; i++) {
	movl	$1, -20(%rbp)	#, i
# problem44.c:20:   for (i = 1; i < N; i++) {
	jmp	.L2	#
.L6:
# problem44.c:21:     for (j = i; j < N; j++) {
	movl	-20(%rbp), %eax	# i, tmp89
	movl	%eax, -16(%rbp)	# tmp89, j
# problem44.c:21:     for (j = i; j < N; j++) {
	jmp	.L3	#
.L5:
# problem44.c:22:       unsigned k = pentagonal(i);
	movl	-20(%rbp), %eax	# i, tmp90
	movl	%eax, %edi	# tmp90,
	call	pentagonal	#
	movl	%eax, -8(%rbp)	# tmp91, k
# problem44.c:23:       unsigned l = pentagonal(j);
	movl	-16(%rbp), %eax	# j, tmp92
	movl	%eax, %edi	# tmp92,
	call	pentagonal	#
	movl	%eax, -4(%rbp)	# tmp93, l
# problem44.c:24:       if (is_pentagonal(k+l) && is_pentagonal(l-k)) {
	movl	-8(%rbp), %edx	# k, tmp94
	movl	-4(%rbp), %eax	# l, tmp95
	addl	%edx, %eax	# tmp94, _1
	movl	%eax, %edi	# _1,
	call	is_pentagonal	#
# problem44.c:24:       if (is_pentagonal(k+l) && is_pentagonal(l-k)) {
	testl	%eax, %eax	# _2
	je	.L4	#,
# problem44.c:24:       if (is_pentagonal(k+l) && is_pentagonal(l-k)) {
	movl	-4(%rbp), %eax	# l, tmp96
	subl	-8(%rbp), %eax	# k, _3
	movl	%eax, %edi	# _3,
	call	is_pentagonal	#
# problem44.c:24:       if (is_pentagonal(k+l) && is_pentagonal(l-k)) {
	testl	%eax, %eax	# _4
	je	.L4	#,
# problem44.c:25:         if (l-k < min) {
	movl	-4(%rbp), %eax	# l, tmp97
	subl	-8(%rbp), %eax	# k, _5
# problem44.c:25:         if (l-k < min) {
	cmpl	-12(%rbp), %eax	# min, _5
	jnb	.L4	#,
# problem44.c:26:           min = l-k;
	movl	-4(%rbp), %eax	# l, tmp101
	subl	-8(%rbp), %eax	# k, tmp100
	movl	%eax, -12(%rbp)	# tmp100, min
.L4:
# problem44.c:21:     for (j = i; j < N; j++) {
	addl	$1, -16(%rbp)	#, j
.L3:
# problem44.c:21:     for (j = i; j < N; j++) {
	cmpl	$9999, -16(%rbp)	#, j
	jbe	.L5	#,
# problem44.c:20:   for (i = 1; i < N; i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# problem44.c:20:   for (i = 1; i < N; i++) {
	cmpl	$9999, -20(%rbp)	#, i
	jbe	.L6	#,
# problem44.c:31:   printf("%u\n", min);
	movl	-12(%rbp), %eax	# min, tmp102
	movl	%eax, %esi	# tmp102,
	leaq	.LC0(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem44.c:33:   return 0;
	movl	$0, %eax	#, _18
# problem44.c:34: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	pentagonal, @function
pentagonal:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# n, n
# problem44.c:38:   return n*(3*n-1)/2;
	movl	-4(%rbp), %edx	# n, tmp87
	movl	%edx, %eax	# tmp87, tmp88
	addl	%eax, %eax	# tmp88
	addl	%edx, %eax	# tmp87, _1
# problem44.c:38:   return n*(3*n-1)/2;
	subl	$1, %eax	#, _2
# problem44.c:38:   return n*(3*n-1)/2;
	imull	-4(%rbp), %eax	# n, _3
# problem44.c:38:   return n*(3*n-1)/2;
	shrl	%eax	# _5
# problem44.c:39: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	pentagonal, .-pentagonal
	.type	is_pentagonal, @function
is_pentagonal:
.LFB2:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# n, n
# problem44.c:43:   unsigned sq = sqrt(1+24*n);
	movl	-20(%rbp), %edx	# n, tmp93
	movl	%edx, %eax	# tmp93, tmp94
	addl	%eax, %eax	# tmp94
	addl	%edx, %eax	# tmp93, tmp94
	sall	$3, %eax	#, tmp95
# problem44.c:43:   unsigned sq = sqrt(1+24*n);
	addl	$1, %eax	#, _2
# problem44.c:43:   unsigned sq = sqrt(1+24*n);
	movl	%eax, %eax	# _2, tmp96
	testq	%rax, %rax	# tmp96
	js	.L11	#,
	pxor	%xmm1, %xmm1	# _3
	cvtsi2sdq	%rax, %xmm1	# tmp96, _3
	movq	%xmm1, %rax	# _3, _3
	jmp	.L12	#
.L11:
	movq	%rax, %rdx	# tmp96, tmp98
	shrq	%rdx	# tmp98
	andl	$1, %eax	#, tmp99
	orq	%rax, %rdx	# tmp99, tmp98
	pxor	%xmm0, %xmm0	# tmp97
	cvtsi2sdq	%rdx, %xmm0	# tmp98, tmp97
	addsd	%xmm0, %xmm0	# tmp97, tmp97
	movq	%xmm0, %rax	# tmp97, _3
.L12:
	movq	%rax, %xmm0	# _3,
	call	sqrt@PLT	#
# problem44.c:43:   unsigned sq = sqrt(1+24*n);
	cvttsd2siq	%xmm0, %rax	# _4, tmp100
	movl	%eax, -4(%rbp)	# tmp100, sq
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	movl	-4(%rbp), %eax	# sq, tmp101
	imull	%eax, %eax	# tmp101, tmp101
	movl	%eax, %ecx	# tmp101, _5
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	movl	-20(%rbp), %edx	# n, tmp102
	movl	%edx, %eax	# tmp102, tmp103
	addl	%eax, %eax	# tmp103
	addl	%edx, %eax	# tmp102, tmp103
	sall	$3, %eax	#, tmp104
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	addl	$1, %eax	#, _7
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	cmpl	%eax, %ecx	# _7, _5
	jne	.L13	#,
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	movl	-4(%rbp), %eax	# sq, tmp105
	leal	1(%rax), %ecx	#, _8
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	movl	%ecx, %edx	# _8, tmp106
	movl	$2863311531, %eax	#, tmp108
	imulq	%rdx, %rax	# tmp106, tmp107
	shrq	$32, %rax	#, tmp109
	movl	%eax, %edx	# tmp109, _9
	shrl	$2, %edx	#, _9
	movl	%edx, %eax	# _9, tmp110
	addl	%eax, %eax	# tmp110
	addl	%edx, %eax	# _9, tmp110
	addl	%eax, %eax	# tmp111
	subl	%eax, %ecx	# tmp110, _8
	movl	%ecx, %edx	# _8, _9
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	testl	%edx, %edx	# _9
	jne	.L13	#,
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	movl	$1, %eax	#, iftmp.0_10
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	jmp	.L15	#
.L13:
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	movl	$0, %eax	#, iftmp.0_10
.L15:
# problem44.c:45: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	is_pentagonal, .-is_pentagonal
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
