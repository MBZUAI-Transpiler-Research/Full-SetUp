	.file	"problem137.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	movq	%rdx, -40(%rbp)	# result, result
# problem137.c:4:     int maxneg = 0;
	movl	$0, -12(%rbp)	#, maxneg
# problem137.c:5:     int minpos = 0;
	movl	$0, -8(%rbp)	#, minpos
# problem137.c:6:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem137.c:6:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L7:
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	movl	-4(%rbp), %eax	# i, tmp105
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# lst, tmp106
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	testl	%eax, %eax	# _4
	jns	.L3	#,
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	cmpl	$0, -12(%rbp)	#, maxneg
	je	.L4	#,
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	movl	-4(%rbp), %eax	# i, tmp107
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-24(%rbp), %rax	# lst, tmp108
	addq	%rdx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	cmpl	%eax, -12(%rbp)	# _8, maxneg
	jge	.L3	#,
.L4:
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	movl	-4(%rbp), %eax	# i, tmp109
	cltq
	leaq	0(,%rax,4), %rdx	#, _10
	movq	-24(%rbp), %rax	# lst, tmp110
	addq	%rdx, %rax	# _10, _11
# problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	movl	(%rax), %eax	# *_11, tmp111
	movl	%eax, -12(%rbp)	# tmp111, maxneg
.L3:
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	movl	-4(%rbp), %eax	# i, tmp112
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-24(%rbp), %rax	# lst, tmp113
	addq	%rdx, %rax	# _13, _14
	movl	(%rax), %eax	# *_14, _15
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	testl	%eax, %eax	# _15
	jle	.L5	#,
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	cmpl	$0, -8(%rbp)	#, minpos
	je	.L6	#,
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	movl	-4(%rbp), %eax	# i, tmp114
	cltq
	leaq	0(,%rax,4), %rdx	#, _17
	movq	-24(%rbp), %rax	# lst, tmp115
	addq	%rdx, %rax	# _17, _18
	movl	(%rax), %eax	# *_18, _19
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	cmpl	%eax, -8(%rbp)	# _19, minpos
	jle	.L5	#,
.L6:
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	movl	-4(%rbp), %eax	# i, tmp116
	cltq
	leaq	0(,%rax,4), %rdx	#, _21
	movq	-24(%rbp), %rax	# lst, tmp117
	addq	%rdx, %rax	# _21, _22
# problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	movl	(%rax), %eax	# *_22, tmp118
	movl	%eax, -8(%rbp)	# tmp118, minpos
.L5:
# problem137.c:6:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# problem137.c:6:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp119
	cmpl	-28(%rbp), %eax	# size, tmp119
	jl	.L7	#,
# problem137.c:10:     result[0] = maxneg;
	movq	-40(%rbp), %rax	# result, tmp120
	movl	-12(%rbp), %edx	# maxneg, tmp121
	movl	%edx, (%rax)	# tmp121, *result_34(D)
# problem137.c:11:     result[1] = minpos;
	movq	-40(%rbp), %rax	# result, tmp122
	leaq	4(%rax), %rdx	#, _23
# problem137.c:11:     result[1] = minpos;
	movl	-8(%rbp), %eax	# minpos, tmp123
	movl	%eax, (%rdx)	# tmp123, *_23
# problem137.c:12: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# a, a
	movq	%rsi, -16(%rbp)	# b, b
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	movq	-8(%rbp), %rax	# a, tmp90
	movl	(%rax), %edx	# *a_9(D), _1
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	movq	-16(%rbp), %rax	# b, tmp91
	movl	(%rax), %eax	# *b_10(D), _2
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	cmpl	%eax, %edx	# _2, _1
	jne	.L9	#,
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	movq	-8(%rbp), %rax	# a, tmp92
	addq	$4, %rax	#, _3
	movl	(%rax), %edx	# *_3, _4
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	movq	-16(%rbp), %rax	# b, tmp93
	addq	$4, %rax	#, _5
	movl	(%rax), %eax	# *_5, _6
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	cmpl	%eax, %edx	# _6, _4
	jne	.L9	#,
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	movl	$1, %eax	#, iftmp.0_7
	jmp	.L11	#
.L9:
# problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	movl	$0, %eax	#, iftmp.0_7
.L11:
# problem137.c:20: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem137.c"
.LC1:
	.string	"issame(result, (int[]){0, 1})"
	.align 8
.LC2:
	.string	"issame(result, (int[]){-2, 1})"
	.align 8
.LC3:
	.string	"issame(result, (int[]){-7, 2})"
	.align 8
.LC4:
	.string	"issame(result, (int[]){-9, 2})"
.LC5:
	.string	"issame(result, (int[]){0, 0})"
	.align 8
.LC6:
	.string	"issame(result, (int[]){-1, 0})"
	.align 8
.LC7:
	.string	"issame(result, (int[]){-3, 1})"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$320, %rsp	#,
# problem137.c:22: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp173
	movq	%rax, -8(%rbp)	# tmp173, D.2476
	xorl	%eax, %eax	# tmp173
# problem137.c:25:     func0((int[]){2, 4, 1, 3, 5, 7}, 6, result);
	movl	$2, -208(%rbp)	#, D.2384[0]
	movl	$4, -204(%rbp)	#, D.2384[1]
	movl	$1, -200(%rbp)	#, D.2384[2]
	movl	$3, -196(%rbp)	#, D.2384[3]
	movl	$5, -192(%rbp)	#, D.2384[4]
	movl	$7, -188(%rbp)	#, D.2384[5]
# problem137.c:25:     func0((int[]){2, 4, 1, 3, 5, 7}, 6, result);
	leaq	-304(%rbp), %rdx	#, tmp95
	leaq	-208(%rbp), %rax	#, tmp96
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	func0	#
# problem137.c:26:     assert(issame(result, (int[]){0, 1}));
	movl	$0, -48(%rbp)	#, MEM[(int[2] *)_161][0]
	movl	$1, -44(%rbp)	#, MEM[(int[2] *)_161][1]
	leaq	-48(%rbp), %rdx	#, tmp97
	leaq	-304(%rbp), %rax	#, tmp98
	movq	%rdx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	issame	#
	testl	%eax, %eax	# _1
	jne	.L13	#,
# problem137.c:26:     assert(issame(result, (int[]){0, 1}));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp99
	movq	%rax, %rcx	# tmp99,
	movl	$26, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC1(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	__assert_fail@PLT	#
.L13:
# problem137.c:28:     func0((int[]){2, 4, 1, 3, 5, 7, 0}, 7, result);
	movl	$2, -144(%rbp)	#, D.2388[0]
	movl	$4, -140(%rbp)	#, D.2388[1]
	movl	$1, -136(%rbp)	#, D.2388[2]
	movl	$3, -132(%rbp)	#, D.2388[3]
	movl	$5, -128(%rbp)	#, D.2388[4]
	movl	$7, -124(%rbp)	#, D.2388[5]
	movl	$0, -120(%rbp)	#, D.2388[6]
# problem137.c:28:     func0((int[]){2, 4, 1, 3, 5, 7, 0}, 7, result);
	leaq	-304(%rbp), %rdx	#, tmp102
	leaq	-144(%rbp), %rax	#, tmp103
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	func0	#
# problem137.c:29:     assert(issame(result, (int[]){0, 1}));
	movl	$0, -48(%rbp)	#, MEM[(int[2] *)_161][0]
	movl	$1, -44(%rbp)	#, MEM[(int[2] *)_161][1]
	leaq	-48(%rbp), %rdx	#, tmp104
	leaq	-304(%rbp), %rax	#, tmp105
	movq	%rdx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$29, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC1(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L14:
# problem137.c:31:     func0((int[]){1, 3, 2, 4, 5, 6, -2}, 7, result);
	movl	$1, -112(%rbp)	#, D.2391[0]
	movl	$3, -108(%rbp)	#, D.2391[1]
	movl	$2, -104(%rbp)	#, D.2391[2]
	movl	$4, -100(%rbp)	#, D.2391[3]
	movl	$5, -96(%rbp)	#, D.2391[4]
	movl	$6, -92(%rbp)	#, D.2391[5]
	movl	$-2, -88(%rbp)	#, D.2391[6]
# problem137.c:31:     func0((int[]){1, 3, 2, 4, 5, 6, -2}, 7, result);
	leaq	-304(%rbp), %rdx	#, tmp109
	leaq	-112(%rbp), %rax	#, tmp110
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	func0	#
# problem137.c:32:     assert(issame(result, (int[]){-2, 1}));
	movl	$-2, -48(%rbp)	#, MEM[(int[2] *)_161][0]
	movl	$1, -44(%rbp)	#, MEM[(int[2] *)_161][1]
	leaq	-48(%rbp), %rdx	#, tmp111
	leaq	-304(%rbp), %rax	#, tmp112
	movq	%rdx, %rsi	# tmp111,
	movq	%rax, %rdi	# tmp112,
	call	issame	#
	testl	%eax, %eax	# _3
	jne	.L15	#,
# problem137.c:32:     assert(issame(result, (int[]){-2, 1}));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$32, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC2(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L15:
# problem137.c:34:     func0((int[]){4, 5, 3, 6, 2, 7, -7}, 7, result);
	movl	$4, -80(%rbp)	#, D.2394[0]
	movl	$5, -76(%rbp)	#, D.2394[1]
	movl	$3, -72(%rbp)	#, D.2394[2]
	movl	$6, -68(%rbp)	#, D.2394[3]
	movl	$2, -64(%rbp)	#, D.2394[4]
	movl	$7, -60(%rbp)	#, D.2394[5]
	movl	$-7, -56(%rbp)	#, D.2394[6]
# problem137.c:34:     func0((int[]){4, 5, 3, 6, 2, 7, -7}, 7, result);
	leaq	-304(%rbp), %rdx	#, tmp116
	leaq	-80(%rbp), %rax	#, tmp117
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp117,
	call	func0	#
# problem137.c:35:     assert(issame(result, (int[]){-7, 2}));
	movl	$-7, -48(%rbp)	#, MEM[(int[2] *)_161][0]
	movl	$2, -44(%rbp)	#, MEM[(int[2] *)_161][1]
	leaq	-48(%rbp), %rdx	#, tmp118
	leaq	-304(%rbp), %rax	#, tmp119
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp119,
	call	issame	#
	testl	%eax, %eax	# _4
	jne	.L16	#,
# problem137.c:35:     assert(issame(result, (int[]){-7, 2}));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp120
	movq	%rax, %rcx	# tmp120,
	movl	$35, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp121
	movq	%rax, %rsi	# tmp121,
	leaq	.LC3(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	__assert_fail@PLT	#
.L16:
# problem137.c:37:     func0((int[]){7, 3, 8, 4, 9, 2, 5, -9}, 8, result);
	movl	$7, -48(%rbp)	#, MEM[(int[8] *)_161][0]
	movl	$3, -44(%rbp)	#, MEM[(int[8] *)_161][1]
	movl	$8, -40(%rbp)	#, MEM[(int[8] *)_161][2]
	movl	$4, -36(%rbp)	#, MEM[(int[8] *)_161][3]
	movl	$9, -32(%rbp)	#, MEM[(int[8] *)_161][4]
	movl	$2, -28(%rbp)	#, MEM[(int[8] *)_161][5]
	movl	$5, -24(%rbp)	#, MEM[(int[8] *)_161][6]
	movl	$-9, -20(%rbp)	#, MEM[(int[8] *)_161][7]
# problem137.c:37:     func0((int[]){7, 3, 8, 4, 9, 2, 5, -9}, 8, result);
	leaq	-304(%rbp), %rdx	#, tmp123
	leaq	-48(%rbp), %rax	#, tmp124
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp124,
	call	func0	#
# problem137.c:38:     assert(issame(result, (int[]){-9, 2}));
	movl	$-9, -176(%rbp)	#, MEM[(int[2] *)_162][0]
	movl	$2, -172(%rbp)	#, MEM[(int[2] *)_162][1]
	leaq	-176(%rbp), %rdx	#, tmp125
	leaq	-304(%rbp), %rax	#, tmp126
	movq	%rdx, %rsi	# tmp125,
	movq	%rax, %rdi	# tmp126,
	call	issame	#
	testl	%eax, %eax	# _5
	jne	.L17	#,
# problem137.c:38:     assert(issame(result, (int[]){-9, 2}));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp127
	movq	%rax, %rcx	# tmp127,
	movl	$38, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	leaq	.LC4(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	__assert_fail@PLT	#
.L17:
# problem137.c:40:     func0((int[]){}, 0, result);
	leaq	-304(%rbp), %rdx	#, tmp130
	leaq	-312(%rbp), %rax	#, tmp131
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp131,
	call	func0	#
# problem137.c:41:     assert(issame(result, (int[]){0, 0}));
	movl	$0, -176(%rbp)	#, MEM[(int[2] *)_162][0]
	movl	$0, -172(%rbp)	#, MEM[(int[2] *)_162][1]
	leaq	-176(%rbp), %rdx	#, tmp132
	leaq	-304(%rbp), %rax	#, tmp133
	movq	%rdx, %rsi	# tmp132,
	movq	%rax, %rdi	# tmp133,
	call	issame	#
	testl	%eax, %eax	# _6
	jne	.L18	#,
# problem137.c:41:     assert(issame(result, (int[]){0, 0}));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp134
	movq	%rax, %rcx	# tmp134,
	movl	$41, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp135
	movq	%rax, %rsi	# tmp135,
	leaq	.LC5(%rip), %rax	#, tmp136
	movq	%rax, %rdi	# tmp136,
	call	__assert_fail@PLT	#
.L18:
# problem137.c:43:     func0((int[]){0}, 1, result);
	movl	$0, -308(%rbp)	#, D.2403[0]
# problem137.c:43:     func0((int[]){0}, 1, result);
	leaq	-304(%rbp), %rdx	#, tmp137
	leaq	-308(%rbp), %rax	#, tmp138
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp138,
	call	func0	#
# problem137.c:44:     assert(issame(result, (int[]){0, 0}));
	movl	$0, -176(%rbp)	#, MEM[(int[2] *)_162][0]
	movl	$0, -172(%rbp)	#, MEM[(int[2] *)_162][1]
	leaq	-176(%rbp), %rdx	#, tmp139
	leaq	-304(%rbp), %rax	#, tmp140
	movq	%rdx, %rsi	# tmp139,
	movq	%rax, %rdi	# tmp140,
	call	issame	#
	testl	%eax, %eax	# _7
	jne	.L19	#,
# problem137.c:44:     assert(issame(result, (int[]){0, 0}));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp141
	movq	%rax, %rcx	# tmp141,
	movl	$44, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp142
	movq	%rax, %rsi	# tmp142,
	leaq	.LC5(%rip), %rax	#, tmp143
	movq	%rax, %rdi	# tmp143,
	call	__assert_fail@PLT	#
.L19:
# problem137.c:46:     func0((int[]){-1, -3, -5, -6}, 4, result);
	movl	$-1, -288(%rbp)	#, D.2406[0]
	movl	$-3, -284(%rbp)	#, D.2406[1]
	movl	$-5, -280(%rbp)	#, D.2406[2]
	movl	$-6, -276(%rbp)	#, D.2406[3]
# problem137.c:46:     func0((int[]){-1, -3, -5, -6}, 4, result);
	leaq	-304(%rbp), %rdx	#, tmp144
	leaq	-288(%rbp), %rax	#, tmp145
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp145,
	call	func0	#
# problem137.c:47:     assert(issame(result, (int[]){-1, 0}));
	movl	$-1, -176(%rbp)	#, MEM[(int[2] *)_162][0]
	movl	$0, -172(%rbp)	#, MEM[(int[2] *)_162][1]
	leaq	-176(%rbp), %rdx	#, tmp146
	leaq	-304(%rbp), %rax	#, tmp147
	movq	%rdx, %rsi	# tmp146,
	movq	%rax, %rdi	# tmp147,
	call	issame	#
	testl	%eax, %eax	# _8
	jne	.L20	#,
# problem137.c:47:     assert(issame(result, (int[]){-1, 0}));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp148
	movq	%rax, %rcx	# tmp148,
	movl	$47, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp149
	movq	%rax, %rsi	# tmp149,
	leaq	.LC6(%rip), %rax	#, tmp150
	movq	%rax, %rdi	# tmp150,
	call	__assert_fail@PLT	#
.L20:
# problem137.c:49:     func0((int[]){-1, -3, -5, -6, 0}, 5, result);
	movl	$-1, -272(%rbp)	#, D.2409[0]
	movl	$-3, -268(%rbp)	#, D.2409[1]
	movl	$-5, -264(%rbp)	#, D.2409[2]
	movl	$-6, -260(%rbp)	#, D.2409[3]
	movl	$0, -256(%rbp)	#, D.2409[4]
# problem137.c:49:     func0((int[]){-1, -3, -5, -6, 0}, 5, result);
	leaq	-304(%rbp), %rdx	#, tmp151
	leaq	-272(%rbp), %rax	#, tmp152
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp152,
	call	func0	#
# problem137.c:50:     assert(issame(result, (int[]){-1, 0}));
	movl	$-1, -176(%rbp)	#, MEM[(int[2] *)_162][0]
	movl	$0, -172(%rbp)	#, MEM[(int[2] *)_162][1]
	leaq	-176(%rbp), %rdx	#, tmp153
	leaq	-304(%rbp), %rax	#, tmp154
	movq	%rdx, %rsi	# tmp153,
	movq	%rax, %rdi	# tmp154,
	call	issame	#
	testl	%eax, %eax	# _9
	jne	.L21	#,
# problem137.c:50:     assert(issame(result, (int[]){-1, 0}));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp155
	movq	%rax, %rcx	# tmp155,
	movl	$50, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp156
	movq	%rax, %rsi	# tmp156,
	leaq	.LC6(%rip), %rax	#, tmp157
	movq	%rax, %rdi	# tmp157,
	call	__assert_fail@PLT	#
.L21:
# problem137.c:52:     func0((int[]){-6, -4, -4, -3, 1}, 5, result);
	movl	$-6, -240(%rbp)	#, D.2412[0]
	movl	$-4, -236(%rbp)	#, D.2412[1]
	movl	$-4, -232(%rbp)	#, D.2412[2]
	movl	$-3, -228(%rbp)	#, D.2412[3]
	movl	$1, -224(%rbp)	#, D.2412[4]
# problem137.c:52:     func0((int[]){-6, -4, -4, -3, 1}, 5, result);
	leaq	-304(%rbp), %rdx	#, tmp158
	leaq	-240(%rbp), %rax	#, tmp159
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp159,
	call	func0	#
# problem137.c:53:     assert(issame(result, (int[]){-3, 1}));
	movl	$-3, -176(%rbp)	#, MEM[(int[2] *)_162][0]
	movl	$1, -172(%rbp)	#, MEM[(int[2] *)_162][1]
	leaq	-176(%rbp), %rdx	#, tmp160
	leaq	-304(%rbp), %rax	#, tmp161
	movq	%rdx, %rsi	# tmp160,
	movq	%rax, %rdi	# tmp161,
	call	issame	#
	testl	%eax, %eax	# _10
	jne	.L22	#,
# problem137.c:53:     assert(issame(result, (int[]){-3, 1}));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp162
	movq	%rax, %rcx	# tmp162,
	movl	$53, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp163
	movq	%rax, %rsi	# tmp163,
	leaq	.LC7(%rip), %rax	#, tmp164
	movq	%rax, %rdi	# tmp164,
	call	__assert_fail@PLT	#
.L22:
# problem137.c:55:     func0((int[]){-6, -4, -4, -3, -100, 1}, 6, result);
	movl	$-6, -176(%rbp)	#, MEM[(int[6] *)_162][0]
	movl	$-4, -172(%rbp)	#, MEM[(int[6] *)_162][1]
	movl	$-4, -168(%rbp)	#, MEM[(int[6] *)_162][2]
	movl	$-3, -164(%rbp)	#, MEM[(int[6] *)_162][3]
	movl	$-100, -160(%rbp)	#, MEM[(int[6] *)_162][4]
	movl	$1, -156(%rbp)	#, MEM[(int[6] *)_162][5]
# problem137.c:55:     func0((int[]){-6, -4, -4, -3, -100, 1}, 6, result);
	leaq	-304(%rbp), %rdx	#, tmp165
	leaq	-176(%rbp), %rax	#, tmp166
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp166,
	call	func0	#
# problem137.c:56:     assert(issame(result, (int[]){-3, 1}));
	movl	$-3, -296(%rbp)	#, D.2417[0]
	movl	$1, -292(%rbp)	#, D.2417[1]
	leaq	-296(%rbp), %rdx	#, tmp167
	leaq	-304(%rbp), %rax	#, tmp168
	movq	%rdx, %rsi	# tmp167,
	movq	%rax, %rdi	# tmp168,
	call	issame	#
	testl	%eax, %eax	# _11
	jne	.L23	#,
# problem137.c:56:     assert(issame(result, (int[]){-3, 1}));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp169
	movq	%rax, %rcx	# tmp169,
	movl	$56, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp170
	movq	%rax, %rsi	# tmp170,
	leaq	.LC7(%rip), %rax	#, tmp171
	movq	%rax, %rdi	# tmp171,
	call	__assert_fail@PLT	#
.L23:
# problem137.c:58:     return 0;
	movl	$0, %eax	#, _136
# problem137.c:59: }
	movq	-8(%rbp), %rdx	# D.2476, tmp174
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp174
	je	.L25	#,
# problem137.c:59: }
	call	__stack_chk_fail@PLT	#
.L25:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
