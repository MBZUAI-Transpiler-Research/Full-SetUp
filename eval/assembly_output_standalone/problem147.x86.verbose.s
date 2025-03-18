	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	movq	%rdi, -40(%rbp)	# nums, nums
	movl	%esi, -44(%rbp)	# size, size
# eval/problem147//code.c:5:     int num = 0;
	movl	$0, -20(%rbp)	#, num
# eval/problem147//code.c:6:     for (int i = 0; i < size; i++) {
	movl	$0, -16(%rbp)	#, i
# eval/problem147//code.c:6:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L6:
# eval/problem147//code.c:7:         if (nums[i] > 10) {
	movl	-16(%rbp), %eax	# i, tmp97
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-40(%rbp), %rax	# nums, tmp98
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# eval/problem147//code.c:7:         if (nums[i] > 10) {
	cmpl	$10, %eax	#, _4
	jle	.L3	#,
# eval/problem147//code.c:9:             last = nums[i] % 10;
	movl	-16(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-40(%rbp), %rax	# nums, tmp100
	addq	%rdx, %rax	# _6, _7
	movl	(%rax), %edx	# *_7, _8
# eval/problem147//code.c:9:             last = nums[i] % 10;
	movslq	%edx, %rax	# _8, tmp101
	imulq	$1717986919, %rax, %rax	#, tmp101, tmp102
	shrq	$32, %rax	#, tmp103
	sarl	$2, %eax	#, tmp104
	movl	%edx, %ecx	# _8, tmp105
	sarl	$31, %ecx	#, tmp105
	subl	%ecx, %eax	# tmp105, tmp106
	movl	%eax, -8(%rbp)	# tmp106, last
	movl	-8(%rbp), %ecx	# last, tmp107
	movl	%ecx, %eax	# tmp107, tmp108
	sall	$2, %eax	#, tmp108
	addl	%ecx, %eax	# tmp107, tmp108
	addl	%eax, %eax	# tmp109
	subl	%eax, %edx	# tmp108, tmp110
	movl	%edx, -8(%rbp)	# tmp110, last
# eval/problem147//code.c:10:             int n = nums[i];
	movl	-16(%rbp), %eax	# i, tmp111
	cltq
	leaq	0(,%rax,4), %rdx	#, _10
	movq	-40(%rbp), %rax	# nums, tmp112
	addq	%rdx, %rax	# _10, _11
# eval/problem147//code.c:10:             int n = nums[i];
	movl	(%rax), %eax	# *_11, tmp113
	movl	%eax, -12(%rbp)	# tmp113, n
# eval/problem147//code.c:11:             while (n >= 10) {
	jmp	.L4	#
.L5:
# eval/problem147//code.c:12:                 n /= 10;
	movl	-12(%rbp), %eax	# n, tmp115
	movslq	%eax, %rdx	# tmp115, tmp116
	imulq	$1717986919, %rdx, %rdx	#, tmp116, tmp117
	shrq	$32, %rdx	#, tmp118
	movl	%edx, %ecx	# tmp118, tmp119
	sarl	$2, %ecx	#, tmp119
	cltd
	movl	%ecx, %eax	# tmp119, tmp119
	subl	%edx, %eax	# tmp120, tmp119
	movl	%eax, -12(%rbp)	# tmp114, n
.L4:
# eval/problem147//code.c:11:             while (n >= 10) {
	cmpl	$9, -12(%rbp)	#, n
	jg	.L5	#,
# eval/problem147//code.c:14:             first = n;
	movl	-12(%rbp), %eax	# n, tmp121
	movl	%eax, -4(%rbp)	# tmp121, first
# eval/problem147//code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	movl	-4(%rbp), %edx	# first, tmp122
	movl	%edx, %eax	# tmp122, tmp123
	sarl	$31, %eax	#, tmp123
	shrl	$31, %eax	#, tmp124
	addl	%eax, %edx	# tmp124, tmp125
	andl	$1, %edx	#, tmp126
	subl	%eax, %edx	# tmp124, tmp127
	movl	%edx, %eax	# tmp127, _12
# eval/problem147//code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	cmpl	$1, %eax	#, _12
	jne	.L3	#,
# eval/problem147//code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	movl	-8(%rbp), %edx	# last, tmp128
	movl	%edx, %eax	# tmp128, tmp129
	sarl	$31, %eax	#, tmp129
	shrl	$31, %eax	#, tmp130
	addl	%eax, %edx	# tmp130, tmp131
	andl	$1, %edx	#, tmp132
	subl	%eax, %edx	# tmp130, tmp133
	movl	%edx, %eax	# tmp133, _13
# eval/problem147//code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	cmpl	$1, %eax	#, _13
	jne	.L3	#,
# eval/problem147//code.c:16:                 num += 1;
	addl	$1, -20(%rbp)	#, num
.L3:
# eval/problem147//code.c:6:     for (int i = 0; i < size; i++) {
	addl	$1, -16(%rbp)	#, i
.L2:
# eval/problem147//code.c:6:     for (int i = 0; i < size; i++) {
	movl	-16(%rbp), %eax	# i, tmp134
	cmpl	-44(%rbp), %eax	# size, tmp134
	jl	.L6	#,
# eval/problem147//code.c:20:     return num;
	movl	-20(%rbp), %eax	# num, _21
# eval/problem147//code.c:21: }
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
