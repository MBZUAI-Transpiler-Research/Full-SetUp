	.file	"problem143.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# lst, lst
	movl	%esi, -28(%rbp)	# size, size
# problem143.c:4:     int sum = 0;
	movl	$0, -8(%rbp)	#, sum
# problem143.c:5:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem143.c:5:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L6:
# problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	movl	-4(%rbp), %ecx	# i, tmp114
	movslq	%ecx, %rax	# tmp114, tmp115
	imulq	$1431655766, %rax, %rax	#, tmp115, tmp116
	shrq	$32, %rax	#, tmp116
	movq	%rax, %rdx	# tmp116, tmp117
	movl	%ecx, %eax	# tmp114, tmp118
	sarl	$31, %eax	#, tmp118
	subl	%eax, %edx	# tmp118, _1
	movl	%edx, %eax	# _1, tmp119
	addl	%eax, %eax	# tmp119
	addl	%edx, %eax	# _1, tmp119
	subl	%eax, %ecx	# tmp119, tmp114
	movl	%ecx, %edx	# tmp114, _1
# problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	testl	%edx, %edx	# _1
	jne	.L3	#,
# problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	movl	-4(%rbp), %eax	# i, tmp120
	cltq
	leaq	0(,%rax,4), %rdx	#, _3
	movq	-24(%rbp), %rax	# lst, tmp121
	addq	%rdx, %rax	# _3, _4
	movl	(%rax), %edx	# *_4, _5
# problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	movl	-4(%rbp), %eax	# i, tmp122
	cltq
	leaq	0(,%rax,4), %rcx	#, _7
	movq	-24(%rbp), %rax	# lst, tmp123
	addq	%rcx, %rax	# _7, _8
	movl	(%rax), %eax	# *_8, _9
# problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	imull	%edx, %eax	# _5, _10
# problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	addl	%eax, -8(%rbp)	# _10, sum
	jmp	.L4	#
.L3:
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	movl	-4(%rbp), %eax	# i, i.0_11
	andl	$3, %eax	#, _12
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	testl	%eax, %eax	# _12
	jne	.L5	#,
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	movl	-4(%rbp), %eax	# i, tmp124
	cltq
	leaq	0(,%rax,4), %rdx	#, _14
	movq	-24(%rbp), %rax	# lst, tmp125
	addq	%rdx, %rax	# _14, _15
	movl	(%rax), %edx	# *_15, _16
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	movl	-4(%rbp), %eax	# i, tmp126
	cltq
	leaq	0(,%rax,4), %rcx	#, _18
	movq	-24(%rbp), %rax	# lst, tmp127
	addq	%rcx, %rax	# _18, _19
	movl	(%rax), %eax	# *_19, _20
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	imull	%eax, %edx	# _20, _21
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	movl	-4(%rbp), %eax	# i, tmp128
	cltq
	leaq	0(,%rax,4), %rcx	#, _23
	movq	-24(%rbp), %rax	# lst, tmp129
	addq	%rcx, %rax	# _23, _24
	movl	(%rax), %eax	# *_24, _25
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	imull	%edx, %eax	# _21, _26
# problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	addl	%eax, -8(%rbp)	# _26, sum
	jmp	.L4	#
.L5:
# problem143.c:8:         else sum += lst[i];
	movl	-4(%rbp), %eax	# i, tmp130
	cltq
	leaq	0(,%rax,4), %rdx	#, _28
	movq	-24(%rbp), %rax	# lst, tmp131
	addq	%rdx, %rax	# _28, _29
	movl	(%rax), %eax	# *_29, _30
# problem143.c:8:         else sum += lst[i];
	addl	%eax, -8(%rbp)	# _30, sum
.L4:
# problem143.c:5:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# problem143.c:5:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp132
	cmpl	-28(%rbp), %eax	# size, tmp132
	jl	.L6	#,
# problem143.c:10:     return sum;
	movl	-8(%rbp), %eax	# sum, _37
# problem143.c:11: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem143.c"
	.align 8
.LC1:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 6"
	.align 8
.LC2:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 14"
	.align 8
.LC3:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 0"
	.align 8
.LC4:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 9"
	.align 8
.LC5:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -3"
	.align 8
.LC6:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -126"
	.align 8
.LC7:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 3030"
	.align 8
.LC8:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -14196"
	.align 8
.LC9:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -1448"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
# problem143.c:17: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp140
	movq	%rax, -8(%rbp)	# tmp140, D.3264
	xorl	%eax, %eax	# tmp140
# problem143.c:19:         int lst[] = {1, 2, 3};
	movl	$1, -96(%rbp)	#, MEM[(int[3] *)_127][0]
	movl	$2, -92(%rbp)	#, MEM[(int[3] *)_127][1]
	movl	$3, -88(%rbp)	#, MEM[(int[3] *)_127][2]
# problem143.c:20:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 6);
	leaq	-96(%rbp), %rax	#, tmp95
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	func0	#
# problem143.c:20:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 6);
	cmpl	$6, %eax	#, _1
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC1(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L9:
# problem143.c:23:         int lst[] = {1, 4, 9};
	movl	$1, -96(%rbp)	#, MEM[(int[3] *)_127][0]
	movl	$4, -92(%rbp)	#, MEM[(int[3] *)_127][1]
	movl	$9, -88(%rbp)	#, MEM[(int[3] *)_127][2]
# problem143.c:24:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 14);
	leaq	-96(%rbp), %rax	#, tmp99
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	func0	#
# problem143.c:24:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 14);
	cmpl	$14, %eax	#, _2
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$24, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC2(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L10:
# problem143.c:28:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	leaq	-96(%rbp), %rax	#, tmp103
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	func0	#
# problem143.c:28:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	testl	%eax, %eax	# _3
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$28, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC3(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L11:
# problem143.c:31:         int lst[] = {1, 1, 1, 1, 1, 1, 1, 1, 1};
	movl	$1, -96(%rbp)	#, MEM[(int[9] *)_127][0]
	movl	$1, -92(%rbp)	#, MEM[(int[9] *)_127][1]
	movl	$1, -88(%rbp)	#, MEM[(int[9] *)_127][2]
	movl	$1, -84(%rbp)	#, MEM[(int[9] *)_127][3]
	movl	$1, -80(%rbp)	#, MEM[(int[9] *)_127][4]
	movl	$1, -76(%rbp)	#, MEM[(int[9] *)_127][5]
	movl	$1, -72(%rbp)	#, MEM[(int[9] *)_127][6]
	movl	$1, -68(%rbp)	#, MEM[(int[9] *)_127][7]
	movl	$1, -64(%rbp)	#, MEM[(int[9] *)_127][8]
# problem143.c:32:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 9);
	leaq	-96(%rbp), %rax	#, tmp107
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	func0	#
# problem143.c:32:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 9);
	cmpl	$9, %eax	#, _4
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp108
	movq	%rax, %rcx	# tmp108,
	movl	$32, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp109
	movq	%rax, %rsi	# tmp109,
	leaq	.LC4(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	__assert_fail@PLT	#
.L12:
# problem143.c:35:         int lst[] = {-1, -1, -1, -1, -1, -1, -1, -1, -1};
	movl	$-1, -96(%rbp)	#, MEM[(int[9] *)_127][0]
	movl	$-1, -92(%rbp)	#, MEM[(int[9] *)_127][1]
	movl	$-1, -88(%rbp)	#, MEM[(int[9] *)_127][2]
	movl	$-1, -84(%rbp)	#, MEM[(int[9] *)_127][3]
	movl	$-1, -80(%rbp)	#, MEM[(int[9] *)_127][4]
	movl	$-1, -76(%rbp)	#, MEM[(int[9] *)_127][5]
	movl	$-1, -72(%rbp)	#, MEM[(int[9] *)_127][6]
	movl	$-1, -68(%rbp)	#, MEM[(int[9] *)_127][7]
	movl	$-1, -64(%rbp)	#, MEM[(int[9] *)_127][8]
# problem143.c:36:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -3);
	leaq	-96(%rbp), %rax	#, tmp111
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	func0	#
# problem143.c:36:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -3);
	cmpl	$-3, %eax	#, _5
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$36, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC5(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L13:
# problem143.c:39:         int lst[] = {0};
	movl	$0, -96(%rbp)	#, MEM[(int[1] *)_127][0]
# problem143.c:40:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	leaq	-96(%rbp), %rax	#, tmp115
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp115,
	call	func0	#
# problem143.c:40:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	testl	%eax, %eax	# _6
	je	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$40, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC3(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L14:
# problem143.c:43:         int lst[] = {-1, -5, 2, -1, -5};
	movl	$-1, -96(%rbp)	#, MEM[(int[5] *)_127][0]
	movl	$-5, -92(%rbp)	#, MEM[(int[5] *)_127][1]
	movl	$2, -88(%rbp)	#, MEM[(int[5] *)_127][2]
	movl	$-1, -84(%rbp)	#, MEM[(int[5] *)_127][3]
	movl	$-5, -80(%rbp)	#, MEM[(int[5] *)_127][4]
# problem143.c:44:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -126);
	leaq	-96(%rbp), %rax	#, tmp119
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp119,
	call	func0	#
# problem143.c:44:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -126);
	cmpl	$-126, %eax	#, _7
	je	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp120
	movq	%rax, %rcx	# tmp120,
	movl	$44, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp121
	movq	%rax, %rsi	# tmp121,
	leaq	.LC6(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	__assert_fail@PLT	#
.L15:
# problem143.c:47:         int lst[] = {-56, -99, 1, 0, -2};
	movl	$-56, -96(%rbp)	#, MEM[(int[5] *)_127][0]
	movl	$-99, -92(%rbp)	#, MEM[(int[5] *)_127][1]
	movl	$1, -88(%rbp)	#, MEM[(int[5] *)_127][2]
	movl	$0, -84(%rbp)	#, MEM[(int[5] *)_127][3]
	movl	$-2, -80(%rbp)	#, MEM[(int[5] *)_127][4]
# problem143.c:48:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 3030);
	leaq	-96(%rbp), %rax	#, tmp123
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	func0	#
# problem143.c:48:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 3030);
	cmpl	$3030, %eax	#, _8
	je	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp124
	movq	%rax, %rcx	# tmp124,
	movl	$48, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp125
	movq	%rax, %rsi	# tmp125,
	leaq	.LC7(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	__assert_fail@PLT	#
.L16:
# problem143.c:51:         int lst[] = {-1, 0, 0, 0, 0, 0, 0, 0, -1};
	movl	$-1, -96(%rbp)	#, MEM[(int[9] *)_127][0]
	movl	$0, -92(%rbp)	#, MEM[(int[9] *)_127][1]
	movl	$0, -88(%rbp)	#, MEM[(int[9] *)_127][2]
	movl	$0, -84(%rbp)	#, MEM[(int[9] *)_127][3]
	movl	$0, -80(%rbp)	#, MEM[(int[9] *)_127][4]
	movl	$0, -76(%rbp)	#, MEM[(int[9] *)_127][5]
	movl	$0, -72(%rbp)	#, MEM[(int[9] *)_127][6]
	movl	$0, -68(%rbp)	#, MEM[(int[9] *)_127][7]
	movl	$-1, -64(%rbp)	#, MEM[(int[9] *)_127][8]
# problem143.c:52:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	leaq	-96(%rbp), %rax	#, tmp127
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp127,
	call	func0	#
# problem143.c:52:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	testl	%eax, %eax	# _9
	je	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp128
	movq	%rax, %rcx	# tmp128,
	movl	$52, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp129
	movq	%rax, %rsi	# tmp129,
	leaq	.LC3(%rip), %rax	#, tmp130
	movq	%rax, %rdi	# tmp130,
	call	__assert_fail@PLT	#
.L17:
# problem143.c:55:         int lst[] = {-16, -9, -2, 36, 36, 26, -20, 25, -40, 20, -4, 12, -26, 35, 37};
	movl	$-16, -96(%rbp)	#, MEM[(int[15] *)_127][0]
	movl	$-9, -92(%rbp)	#, MEM[(int[15] *)_127][1]
	movl	$-2, -88(%rbp)	#, MEM[(int[15] *)_127][2]
	movl	$36, -84(%rbp)	#, MEM[(int[15] *)_127][3]
	movl	$36, -80(%rbp)	#, MEM[(int[15] *)_127][4]
	movl	$26, -76(%rbp)	#, MEM[(int[15] *)_127][5]
	movl	$-20, -72(%rbp)	#, MEM[(int[15] *)_127][6]
	movl	$25, -68(%rbp)	#, MEM[(int[15] *)_127][7]
	movl	$-40, -64(%rbp)	#, MEM[(int[15] *)_127][8]
	movl	$20, -60(%rbp)	#, MEM[(int[15] *)_127][9]
	movl	$-4, -56(%rbp)	#, MEM[(int[15] *)_127][10]
	movl	$12, -52(%rbp)	#, MEM[(int[15] *)_127][11]
	movl	$-26, -48(%rbp)	#, MEM[(int[15] *)_127][12]
	movl	$35, -44(%rbp)	#, MEM[(int[15] *)_127][13]
	movl	$37, -40(%rbp)	#, MEM[(int[15] *)_127][14]
# problem143.c:56:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -14196);
	leaq	-96(%rbp), %rax	#, tmp131
	movl	$15, %esi	#,
	movq	%rax, %rdi	# tmp131,
	call	func0	#
# problem143.c:56:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -14196);
	cmpl	$-14196, %eax	#, _10
	je	.L18	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp132
	movq	%rax, %rcx	# tmp132,
	movl	$56, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp133
	movq	%rax, %rsi	# tmp133,
	leaq	.LC8(%rip), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	call	__assert_fail@PLT	#
.L18:
# problem143.c:59:         int lst[] = {-1, -3, 17, -1, -15, 13, -1, 14, -14, -12, -5, 14, -14, 6, 13, 11, 16, 16, 4, 10};
	movl	$-1, -96(%rbp)	#, MEM[(int[20] *)_127][0]
	movl	$-3, -92(%rbp)	#, MEM[(int[20] *)_127][1]
	movl	$17, -88(%rbp)	#, MEM[(int[20] *)_127][2]
	movl	$-1, -84(%rbp)	#, MEM[(int[20] *)_127][3]
	movl	$-15, -80(%rbp)	#, MEM[(int[20] *)_127][4]
	movl	$13, -76(%rbp)	#, MEM[(int[20] *)_127][5]
	movl	$-1, -72(%rbp)	#, MEM[(int[20] *)_127][6]
	movl	$14, -68(%rbp)	#, MEM[(int[20] *)_127][7]
	movl	$-14, -64(%rbp)	#, MEM[(int[20] *)_127][8]
	movl	$-12, -60(%rbp)	#, MEM[(int[20] *)_127][9]
	movl	$-5, -56(%rbp)	#, MEM[(int[20] *)_127][10]
	movl	$14, -52(%rbp)	#, MEM[(int[20] *)_127][11]
	movl	$-14, -48(%rbp)	#, MEM[(int[20] *)_127][12]
	movl	$6, -44(%rbp)	#, MEM[(int[20] *)_127][13]
	movl	$13, -40(%rbp)	#, MEM[(int[20] *)_127][14]
	movl	$11, -36(%rbp)	#, MEM[(int[20] *)_127][15]
	movl	$16, -32(%rbp)	#, MEM[(int[20] *)_127][16]
	movl	$16, -28(%rbp)	#, MEM[(int[20] *)_127][17]
	movl	$4, -24(%rbp)	#, MEM[(int[20] *)_127][18]
	movl	$10, -20(%rbp)	#, MEM[(int[20] *)_127][19]
# problem143.c:60:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -1448);
	leaq	-96(%rbp), %rax	#, tmp135
	movl	$20, %esi	#,
	movq	%rax, %rdi	# tmp135,
	call	func0	#
# problem143.c:60:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -1448);
	cmpl	$-1448, %eax	#, _11
	je	.L19	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp136
	movq	%rax, %rcx	# tmp136,
	movl	$60, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp137
	movq	%rax, %rsi	# tmp137,
	leaq	.LC9(%rip), %rax	#, tmp138
	movq	%rax, %rdi	# tmp138,
	call	__assert_fail@PLT	#
.L19:
# problem143.c:63:     return 0;
	movl	$0, %eax	#, _125
# problem143.c:64: }
	movq	-8(%rbp), %rdx	# D.3264, tmp141
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp141
	je	.L21	#,
	call	__stack_chk_fail@PLT	#
.L21:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
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
