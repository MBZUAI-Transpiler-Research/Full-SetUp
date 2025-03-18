	.file	"problem147.c"
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
# problem147.c:5:     int num = 0;
	movl	$0, -20(%rbp)	#, num
# problem147.c:6:     for (int i = 0; i < size; i++) {
	movl	$0, -16(%rbp)	#, i
# problem147.c:6:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L6:
# problem147.c:7:         if (nums[i] > 10) {
	movl	-16(%rbp), %eax	# i, tmp97
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-40(%rbp), %rax	# nums, tmp98
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# problem147.c:7:         if (nums[i] > 10) {
	cmpl	$10, %eax	#, _4
	jle	.L3	#,
# problem147.c:9:             last = nums[i] % 10;
	movl	-16(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-40(%rbp), %rax	# nums, tmp100
	addq	%rdx, %rax	# _6, _7
	movl	(%rax), %edx	# *_7, _8
# problem147.c:9:             last = nums[i] % 10;
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
# problem147.c:10:             int n = nums[i];
	movl	-16(%rbp), %eax	# i, tmp111
	cltq
	leaq	0(,%rax,4), %rdx	#, _10
	movq	-40(%rbp), %rax	# nums, tmp112
	addq	%rdx, %rax	# _10, _11
# problem147.c:10:             int n = nums[i];
	movl	(%rax), %eax	# *_11, tmp113
	movl	%eax, -12(%rbp)	# tmp113, n
# problem147.c:11:             while (n >= 10) {
	jmp	.L4	#
.L5:
# problem147.c:12:                 n /= 10;
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
# problem147.c:11:             while (n >= 10) {
	cmpl	$9, -12(%rbp)	#, n
	jg	.L5	#,
# problem147.c:14:             first = n;
	movl	-12(%rbp), %eax	# n, tmp121
	movl	%eax, -4(%rbp)	# tmp121, first
# problem147.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	movl	-4(%rbp), %edx	# first, tmp122
	movl	%edx, %eax	# tmp122, tmp123
	sarl	$31, %eax	#, tmp123
	shrl	$31, %eax	#, tmp124
	addl	%eax, %edx	# tmp124, tmp125
	andl	$1, %edx	#, tmp126
	subl	%eax, %edx	# tmp124, tmp127
	movl	%edx, %eax	# tmp127, _12
# problem147.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	cmpl	$1, %eax	#, _12
	jne	.L3	#,
# problem147.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	movl	-8(%rbp), %edx	# last, tmp128
	movl	%edx, %eax	# tmp128, tmp129
	sarl	$31, %eax	#, tmp129
	shrl	$31, %eax	#, tmp130
	addl	%eax, %edx	# tmp130, tmp131
	andl	$1, %edx	#, tmp132
	subl	%eax, %edx	# tmp130, tmp133
	movl	%edx, %eax	# tmp133, _13
# problem147.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	cmpl	$1, %eax	#, _13
	jne	.L3	#,
# problem147.c:16:                 num += 1;
	addl	$1, -20(%rbp)	#, num
.L3:
# problem147.c:6:     for (int i = 0; i < size; i++) {
	addl	$1, -16(%rbp)	#, i
.L2:
# problem147.c:6:     for (int i = 0; i < size; i++) {
	movl	-16(%rbp), %eax	# i, tmp134
	cmpl	-44(%rbp), %eax	# size, tmp134
	jl	.L6	#,
# problem147.c:20:     return num;
	movl	-20(%rbp), %eax	# num, _21
# problem147.c:21: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem147.c"
	.align 8
.LC1:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 0"
	.align 8
.LC2:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 1"
	.align 8
.LC3:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 2"
	.align 8
.LC4:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 4"
	.align 8
.LC5:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 3"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# problem147.c:27: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp120
	movq	%rax, -8(%rbp)	# tmp120, D.3780
	xorl	%eax, %eax	# tmp120
# problem147.c:29:         int nums[] = {5, -2, 1, -5};
	movl	$5, -32(%rbp)	#, MEM[(int[4] *)_59][0]
	movl	$-2, -28(%rbp)	#, MEM[(int[4] *)_59][1]
	movl	$1, -24(%rbp)	#, MEM[(int[4] *)_59][2]
	movl	$-5, -20(%rbp)	#, MEM[(int[4] *)_59][3]
# problem147.c:30:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	leaq	-32(%rbp), %rax	#, tmp91
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	func0	#
# problem147.c:30:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	testl	%eax, %eax	# _1
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$30, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC1(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L9:
# problem147.c:34:         int nums[] = {15, -73, 14, -15};
	movl	$15, -32(%rbp)	#, MEM[(int[4] *)_59][0]
	movl	$-73, -28(%rbp)	#, MEM[(int[4] *)_59][1]
	movl	$14, -24(%rbp)	#, MEM[(int[4] *)_59][2]
	movl	$-15, -20(%rbp)	#, MEM[(int[4] *)_59][3]
# problem147.c:35:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 1);
	leaq	-32(%rbp), %rax	#, tmp95
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	func0	#
# problem147.c:35:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 1);
	cmpl	$1, %eax	#, _2
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$35, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC2(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L10:
# problem147.c:39:         int nums[] = {33, -2, -3, 45, 21, 109};
	movl	$33, -32(%rbp)	#, MEM[(int[6] *)_59][0]
	movl	$-2, -28(%rbp)	#, MEM[(int[6] *)_59][1]
	movl	$-3, -24(%rbp)	#, MEM[(int[6] *)_59][2]
	movl	$45, -20(%rbp)	#, MEM[(int[6] *)_59][3]
	movl	$21, -16(%rbp)	#, MEM[(int[6] *)_59][4]
	movl	$109, -12(%rbp)	#, MEM[(int[6] *)_59][5]
# problem147.c:40:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 2);
	leaq	-32(%rbp), %rax	#, tmp99
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	func0	#
# problem147.c:40:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 2);
	cmpl	$2, %eax	#, _3
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$40, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC3(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L11:
# problem147.c:44:         int nums[] = {43, -12, 93, 125, 121, 109};
	movl	$43, -32(%rbp)	#, MEM[(int[6] *)_59][0]
	movl	$-12, -28(%rbp)	#, MEM[(int[6] *)_59][1]
	movl	$93, -24(%rbp)	#, MEM[(int[6] *)_59][2]
	movl	$125, -20(%rbp)	#, MEM[(int[6] *)_59][3]
	movl	$121, -16(%rbp)	#, MEM[(int[6] *)_59][4]
	movl	$109, -12(%rbp)	#, MEM[(int[6] *)_59][5]
# problem147.c:45:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 4);
	leaq	-32(%rbp), %rax	#, tmp103
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	func0	#
# problem147.c:45:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 4);
	cmpl	$4, %eax	#, _4
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$45, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC4(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L12:
# problem147.c:49:         int nums[] = {71, -2, -33, 75, 21, 19};
	movl	$71, -32(%rbp)	#, MEM[(int[6] *)_59][0]
	movl	$-2, -28(%rbp)	#, MEM[(int[6] *)_59][1]
	movl	$-33, -24(%rbp)	#, MEM[(int[6] *)_59][2]
	movl	$75, -20(%rbp)	#, MEM[(int[6] *)_59][3]
	movl	$21, -16(%rbp)	#, MEM[(int[6] *)_59][4]
	movl	$19, -12(%rbp)	#, MEM[(int[6] *)_59][5]
# problem147.c:50:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 3);
	leaq	-32(%rbp), %rax	#, tmp107
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	func0	#
# problem147.c:50:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 3);
	cmpl	$3, %eax	#, _5
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp108
	movq	%rax, %rcx	# tmp108,
	movl	$50, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp109
	movq	%rax, %rsi	# tmp109,
	leaq	.LC5(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	__assert_fail@PLT	#
.L13:
# problem147.c:54:         int nums[] = {1};
	movl	$1, -32(%rbp)	#, MEM[(int[1] *)_59][0]
# problem147.c:55:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	leaq	-32(%rbp), %rax	#, tmp111
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	func0	#
# problem147.c:55:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	testl	%eax, %eax	# _6
	je	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$55, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC1(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L14:
# problem147.c:60:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	leaq	-32(%rbp), %rax	#, tmp115
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp115,
	call	func0	#
# problem147.c:60:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	testl	%eax, %eax	# _7
	je	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$60, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC1(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L15:
# problem147.c:63:     return 0;
	movl	$0, %eax	#, _57
# problem147.c:64: }
	movq	-8(%rbp), %rdx	# D.3780, tmp121
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp121
	je	.L17	#,
	call	__stack_chk_fail@PLT	#
.L17:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
