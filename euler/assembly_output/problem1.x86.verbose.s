	.file	"problem1.c"
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
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# problem1.c:10:   int s3 = 0, s5 = 0, s15 = 0;
	movl	$0, -16(%rbp)	#, s3
# problem1.c:10:   int s3 = 0, s5 = 0, s15 = 0;
	movl	$0, -12(%rbp)	#, s5
# problem1.c:10:   int s3 = 0, s5 = 0, s15 = 0;
	movl	$0, -8(%rbp)	#, s15
# problem1.c:13:   for (i = 0; i < 1000; i++) {
	movl	$0, -4(%rbp)	#, i
# problem1.c:13:   for (i = 0; i < 1000; i++) {
	jmp	.L2	#
.L6:
# problem1.c:14:     if (i % 3 == 0) {
	movl	-4(%rbp), %ecx	# i, tmp89
	movslq	%ecx, %rax	# tmp89, tmp90
	imulq	$1431655766, %rax, %rax	#, tmp90, tmp91
	shrq	$32, %rax	#, tmp91
	movq	%rax, %rdx	# tmp91, tmp92
	movl	%ecx, %eax	# tmp89, tmp93
	sarl	$31, %eax	#, tmp93
	subl	%eax, %edx	# tmp93, _1
	movl	%edx, %eax	# _1, tmp94
	addl	%eax, %eax	# tmp94
	addl	%edx, %eax	# _1, tmp94
	subl	%eax, %ecx	# tmp94, tmp89
	movl	%ecx, %edx	# tmp89, _1
# problem1.c:14:     if (i % 3 == 0) {
	testl	%edx, %edx	# _1
	jne	.L3	#,
# problem1.c:15:       s3 += i;
	movl	-4(%rbp), %eax	# i, tmp95
	addl	%eax, -16(%rbp)	# tmp95, s3
.L3:
# problem1.c:17:     if (i % 5 == 0) {
	movl	-4(%rbp), %ecx	# i, tmp96
	movslq	%ecx, %rax	# tmp96, tmp97
	imulq	$1717986919, %rax, %rax	#, tmp97, tmp98
	shrq	$32, %rax	#, tmp99
	movl	%eax, %edx	# tmp99, tmp100
	sarl	%edx	# tmp100
	movl	%ecx, %eax	# tmp96, tmp101
	sarl	$31, %eax	#, tmp101
	subl	%eax, %edx	# tmp101, _2
	movl	%edx, %eax	# _2, tmp102
	sall	$2, %eax	#, tmp102
	addl	%edx, %eax	# _2, tmp102
	subl	%eax, %ecx	# tmp102, tmp96
	movl	%ecx, %edx	# tmp96, _2
# problem1.c:17:     if (i % 5 == 0) {
	testl	%edx, %edx	# _2
	jne	.L4	#,
# problem1.c:18:       s5 += i;
	movl	-4(%rbp), %eax	# i, tmp103
	addl	%eax, -12(%rbp)	# tmp103, s5
.L4:
# problem1.c:20:     if (i % 15 == 0) {
	movl	-4(%rbp), %eax	# i, tmp104
	movslq	%eax, %rdx	# tmp104, tmp105
	imulq	$-2004318071, %rdx, %rdx	#, tmp105, tmp106
	shrq	$32, %rdx	#, tmp107
	addl	%eax, %edx	# tmp104, tmp108
	sarl	$3, %edx	#, tmp109
	movl	%eax, %ecx	# tmp104, tmp110
	sarl	$31, %ecx	#, tmp110
	subl	%ecx, %edx	# tmp110, _3
	movl	%edx, %ecx	# _3, tmp111
	sall	$4, %ecx	#, tmp112
	subl	%edx, %ecx	# _3, tmp111
	subl	%ecx, %eax	# tmp111, tmp104
	movl	%eax, %edx	# tmp104, _3
# problem1.c:20:     if (i % 15 == 0) {
	testl	%edx, %edx	# _3
	jne	.L5	#,
# problem1.c:21:       s15 += i;
	movl	-4(%rbp), %eax	# i, tmp113
	addl	%eax, -8(%rbp)	# tmp113, s15
.L5:
# problem1.c:13:   for (i = 0; i < 1000; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# problem1.c:13:   for (i = 0; i < 1000; i++) {
	cmpl	$999, -4(%rbp)	#, i
	jle	.L6	#,
# problem1.c:24:   printf("%d\n", s3 + s5 - s15);
	movl	-16(%rbp), %edx	# s3, tmp114
	movl	-12(%rbp), %eax	# s5, tmp115
	addl	%edx, %eax	# tmp114, _4
# problem1.c:24:   printf("%d\n", s3 + s5 - s15);
	subl	-8(%rbp), %eax	# s15, _5
	movl	%eax, %esi	# _5,
	leaq	.LC0(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem1.c:26:   return 0;
	movl	$0, %eax	#, _19
# problem1.c:27: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
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
