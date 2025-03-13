	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# n, n
# code.c:5:     int* counts = (int*)malloc(2 * sizeof(int));
	movl	$8, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp94, counts
# code.c:6:     counts[0] = 0;
	movq	-8(%rbp), %rax	# counts, tmp95
	movl	$0, (%rax)	#, *counts_18
# code.c:7:     counts[1] = 0;
	movq	-8(%rbp), %rax	# counts, tmp96
	addq	$4, %rax	#, _1
# code.c:7:     counts[1] = 0;
	movl	$0, (%rax)	#, *_1
# code.c:9:     for (int i = 1; i <= n; i++) {
	movl	$1, -24(%rbp)	#, i
# code.c:9:     for (int i = 1; i <= n; i++) {
	jmp	.L2	#
.L7:
# code.c:10:         int reversed = 0, original = i;
	movl	$0, -20(%rbp)	#, reversed
# code.c:10:         int reversed = 0, original = i;
	movl	-24(%rbp), %eax	# i, tmp97
	movl	%eax, -12(%rbp)	# tmp97, original
# code.c:12:         int number = i;
	movl	-24(%rbp), %eax	# i, tmp98
	movl	%eax, -16(%rbp)	# tmp98, number
# code.c:13:         while (number != 0) {
	jmp	.L3	#
.L4:
# code.c:14:             reversed = reversed * 10 + number % 10;
	movl	-20(%rbp), %edx	# reversed, tmp99
	movl	%edx, %eax	# tmp99, tmp100
	sall	$2, %eax	#, tmp100
	addl	%edx, %eax	# tmp99, tmp100
	addl	%eax, %eax	# tmp101
	movl	%eax, %esi	# tmp100, _2
# code.c:14:             reversed = reversed * 10 + number % 10;
	movl	-16(%rbp), %ecx	# number, tmp102
	movslq	%ecx, %rax	# tmp102, tmp103
	imulq	$1717986919, %rax, %rax	#, tmp103, tmp104
	shrq	$32, %rax	#, tmp105
	movl	%eax, %edx	# tmp105, tmp106
	sarl	$2, %edx	#, tmp106
	movl	%ecx, %eax	# tmp102, tmp107
	sarl	$31, %eax	#, tmp107
	subl	%eax, %edx	# tmp107, _3
	movl	%edx, %eax	# _3, tmp108
	sall	$2, %eax	#, tmp108
	addl	%edx, %eax	# _3, tmp108
	addl	%eax, %eax	# tmp109
	subl	%eax, %ecx	# tmp108, tmp102
	movl	%ecx, %edx	# tmp102, _3
# code.c:14:             reversed = reversed * 10 + number % 10;
	leal	(%rsi,%rdx), %eax	#, tmp110
	movl	%eax, -20(%rbp)	# tmp110, reversed
# code.c:15:             number /= 10;
	movl	-16(%rbp), %eax	# number, tmp112
	movslq	%eax, %rdx	# tmp112, tmp113
	imulq	$1717986919, %rdx, %rdx	#, tmp113, tmp114
	shrq	$32, %rdx	#, tmp115
	movl	%edx, %ecx	# tmp115, tmp116
	sarl	$2, %ecx	#, tmp116
	cltd
	movl	%ecx, %eax	# tmp116, tmp116
	subl	%edx, %eax	# tmp117, tmp116
	movl	%eax, -16(%rbp)	# tmp111, number
.L3:
# code.c:13:         while (number != 0) {
	cmpl	$0, -16(%rbp)	#, number
	jne	.L4	#,
# code.c:18:         if (original == reversed) {
	movl	-12(%rbp), %eax	# original, tmp118
	cmpl	-20(%rbp), %eax	# reversed, tmp118
	jne	.L5	#,
# code.c:19:             if (original % 2 == 0) counts[0]++;
	movl	-12(%rbp), %eax	# original, original.0_4
	andl	$1, %eax	#, _5
# code.c:19:             if (original % 2 == 0) counts[0]++;
	testl	%eax, %eax	# _5
	jne	.L6	#,
# code.c:19:             if (original % 2 == 0) counts[0]++;
	movq	-8(%rbp), %rax	# counts, tmp119
	movl	(%rax), %eax	# *counts_18, _6
# code.c:19:             if (original % 2 == 0) counts[0]++;
	leal	1(%rax), %edx	#, _7
	movq	-8(%rbp), %rax	# counts, tmp120
	movl	%edx, (%rax)	# _7, *counts_18
	jmp	.L5	#
.L6:
# code.c:20:             else counts[1]++;
	movq	-8(%rbp), %rax	# counts, tmp121
	addq	$4, %rax	#, _8
	movl	(%rax), %edx	# *_8, _9
# code.c:20:             else counts[1]++;
	addl	$1, %edx	#, _10
	movl	%edx, (%rax)	# _10, *_8
.L5:
# code.c:9:     for (int i = 1; i <= n; i++) {
	addl	$1, -24(%rbp)	#, i
.L2:
# code.c:9:     for (int i = 1; i <= n; i++) {
	movl	-24(%rbp), %eax	# i, tmp122
	cmpl	-36(%rbp), %eax	# n, tmp122
	jle	.L7	#,
# code.c:24:     return counts;
	movq	-8(%rbp), %rax	# counts, _23
# code.c:25: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
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
