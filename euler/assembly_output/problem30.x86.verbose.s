	.file	"problem30.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC2:
	.string	"%d\n"
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
	subq	$48, %rsp	#,
# problem30.c:13: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	movq	%rax, -8(%rbp)	# tmp106, D.4251
	xorl	%eax, %eax	# tmp106
# problem30.c:16:   int ttl = 0;
	movl	$0, -44(%rbp)	#, ttl
# problem30.c:17:   for (i = 10; i < M; i++) {
	movl	$10, -48(%rbp)	#, i
# problem30.c:17:   for (i = 10; i < M; i++) {
	jmp	.L2	#
.L6:
# problem30.c:18:     int sum = 0, j;
	movl	$0, -40(%rbp)	#, sum
# problem30.c:20:     snprintf(buf, sizeof buf, "%d", i);
	movl	-48(%rbp), %edx	# i, tmp92
	leaq	-32(%rbp), %rax	#, tmp93
	movl	%edx, %ecx	# tmp92,
	leaq	.LC0(%rip), %rdx	#, tmp94
	movl	$16, %esi	#,
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	snprintf@PLT	#
# problem30.c:21:     for (j = 0; buf[j]; j++) {
	movl	$0, -36(%rbp)	#, j
# problem30.c:21:     for (j = 0; buf[j]; j++) {
	jmp	.L3	#
.L4:
# problem30.c:22:       sum += pow(buf[j]-'0', E);
	movl	-36(%rbp), %eax	# j, tmp96
	cltq
	movzbl	-32(%rbp,%rax), %eax	# buf[j_12], _1
	movsbl	%al, %eax	# _1, _2
# problem30.c:22:       sum += pow(buf[j]-'0', E);
	subl	$48, %eax	#, _3
# problem30.c:22:       sum += pow(buf[j]-'0', E);
	pxor	%xmm2, %xmm2	# _4
	cvtsi2sdl	%eax, %xmm2	# _3, _4
	movq	%xmm2, %rax	# _4, _4
	movsd	.LC1(%rip), %xmm0	#, tmp97
	movapd	%xmm0, %xmm1	# tmp97,
	movq	%rax, %xmm0	# _4,
	call	pow@PLT	#
# problem30.c:22:       sum += pow(buf[j]-'0', E);
	pxor	%xmm1, %xmm1	# _5
	cvtsi2sdl	-40(%rbp), %xmm1	# sum, _5
	addsd	%xmm1, %xmm0	# _5, _6
	cvttsd2sil	%xmm0, %eax	# _6, tmp98
	movl	%eax, -40(%rbp)	# tmp98, sum
# problem30.c:21:     for (j = 0; buf[j]; j++) {
	addl	$1, -36(%rbp)	#, j
.L3:
# problem30.c:21:     for (j = 0; buf[j]; j++) {
	movl	-36(%rbp), %eax	# j, tmp100
	cltq
	movzbl	-32(%rbp,%rax), %eax	# buf[j_12], _7
# problem30.c:21:     for (j = 0; buf[j]; j++) {
	testb	%al, %al	# _7
	jne	.L4	#,
# problem30.c:24:     if (i == sum) {
	movl	-48(%rbp), %eax	# i, tmp101
	cmpl	-40(%rbp), %eax	# sum, tmp101
	jne	.L5	#,
# problem30.c:25:       ttl += i;
	movl	-48(%rbp), %eax	# i, tmp102
	addl	%eax, -44(%rbp)	# tmp102, ttl
.L5:
# problem30.c:17:   for (i = 10; i < M; i++) {
	addl	$1, -48(%rbp)	#, i
.L2:
# problem30.c:17:   for (i = 10; i < M; i++) {
	cmpl	$999999, -48(%rbp)	#, i
	jle	.L6	#,
# problem30.c:28:   printf("%d\n", ttl);
	movl	-44(%rbp), %eax	# ttl, tmp103
	movl	%eax, %esi	# tmp103,
	leaq	.LC2(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem30.c:29:   return 0;
	movl	$0, %eax	#, _19
# problem30.c:30: }
	movq	-8(%rbp), %rdx	# D.4251, tmp107
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp107
	je	.L8	#,
	call	__stack_chk_fail@PLT	#
.L8:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1075052544
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
