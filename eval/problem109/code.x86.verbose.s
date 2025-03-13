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
	movq	%rdi, -24(%rbp)	# n, n
	movl	%esi, -28(%rbp)	# size, size
# code.c:5:     int num = 0;
	movl	$0, -16(%rbp)	#, num
# code.c:6:     for (int i = 0; i < size; i++) {
	movl	$0, -12(%rbp)	#, i
# code.c:6:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L7:
# code.c:7:         if (n[i] > 0) {
	movl	-12(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# n, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# code.c:7:         if (n[i] > 0) {
	testl	%eax, %eax	# _4
	jle	.L3	#,
# code.c:8:             num += 1;
	addl	$1, -16(%rbp)	#, num
	jmp	.L4	#
.L3:
# code.c:10:             int sum = 0;
	movl	$0, -8(%rbp)	#, sum
# code.c:11:             int w = abs(n[i]);
	movl	-12(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-24(%rbp), %rax	# n, tmp96
	addq	%rdx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# code.c:11:             int w = abs(n[i]);
	movl	%eax, %edx	# _8, tmp116
	negl	%edx	# tmp116
	cmovns	%edx, %eax	# tmp116,, tmp97
	movl	%eax, -4(%rbp)	# tmp97, w
# code.c:12:             while (w >= 10) {
	jmp	.L5	#
.L6:
# code.c:13:                 sum += w % 10;
	movl	-4(%rbp), %ecx	# w, tmp98
	movslq	%ecx, %rax	# tmp98, tmp99
	imulq	$1717986919, %rax, %rax	#, tmp99, tmp100
	shrq	$32, %rax	#, tmp101
	movl	%eax, %edx	# tmp101, tmp102
	sarl	$2, %edx	#, tmp102
	movl	%ecx, %eax	# tmp98, tmp103
	sarl	$31, %eax	#, tmp103
	subl	%eax, %edx	# tmp103, _9
	movl	%edx, %eax	# _9, tmp104
	sall	$2, %eax	#, tmp104
	addl	%edx, %eax	# _9, tmp104
	addl	%eax, %eax	# tmp105
	subl	%eax, %ecx	# tmp104, tmp98
	movl	%ecx, %edx	# tmp98, _9
# code.c:13:                 sum += w % 10;
	addl	%edx, -8(%rbp)	# _9, sum
# code.c:14:                 w = w / 10;
	movl	-4(%rbp), %eax	# w, tmp107
	movslq	%eax, %rdx	# tmp107, tmp108
	imulq	$1717986919, %rdx, %rdx	#, tmp108, tmp109
	shrq	$32, %rdx	#, tmp110
	movl	%edx, %ecx	# tmp110, tmp111
	sarl	$2, %ecx	#, tmp111
	cltd
	movl	%ecx, %eax	# tmp111, tmp111
	subl	%edx, %eax	# tmp112, tmp111
	movl	%eax, -4(%rbp)	# tmp106, w
.L5:
# code.c:12:             while (w >= 10) {
	cmpl	$9, -4(%rbp)	#, w
	jg	.L6	#,
# code.c:16:             sum -= w;
	movl	-4(%rbp), %eax	# w, tmp113
	subl	%eax, -8(%rbp)	# tmp113, sum
# code.c:17:             if (sum > 0) num += 1;
	cmpl	$0, -8(%rbp)	#, sum
	jle	.L4	#,
# code.c:17:             if (sum > 0) num += 1;
	addl	$1, -16(%rbp)	#, num
.L4:
# code.c:6:     for (int i = 0; i < size; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# code.c:6:     for (int i = 0; i < size; i++) {
	movl	-12(%rbp), %eax	# i, tmp114
	cmpl	-28(%rbp), %eax	# size, tmp114
	jl	.L7	#,
# code.c:20:     return num;
	movl	-16(%rbp), %eax	# num, _18
# code.c:21: }
	popq	%rbp	#
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
