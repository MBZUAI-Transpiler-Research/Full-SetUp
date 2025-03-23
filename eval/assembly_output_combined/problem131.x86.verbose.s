	.file	"problem131.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# n, n
# problem131.c:5:     int* out = (int*)malloc((n + 1) * sizeof(int));
	movl	-20(%rbp), %eax	# n, tmp113
	addl	$1, %eax	#, _1
	cltq
# problem131.c:5:     int* out = (int*)malloc((n + 1) * sizeof(int));
	salq	$2, %rax	#, _3
	movq	%rax, %rdi	# _3,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp114, out
# problem131.c:6:     out[0] = 1;
	movq	-8(%rbp), %rax	# out, tmp115
	movl	$1, (%rax)	#, *out_38
# problem131.c:7:     if (n == 0) return out;
	cmpl	$0, -20(%rbp)	#, n
	jne	.L2	#,
# problem131.c:7:     if (n == 0) return out;
	movq	-8(%rbp), %rax	# out, _31
	jmp	.L3	#
.L2:
# problem131.c:8:     out[1] = 3;
	movq	-8(%rbp), %rax	# out, tmp116
	addq	$4, %rax	#, _4
# problem131.c:8:     out[1] = 3;
	movl	$3, (%rax)	#, *_4
# problem131.c:9:     for (int i = 2; i <= n; i++) {
	movl	$2, -12(%rbp)	#, i
# problem131.c:9:     for (int i = 2; i <= n; i++) {
	jmp	.L4	#
.L7:
# problem131.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	movl	-12(%rbp), %eax	# i, i.0_5
	andl	$1, %eax	#, _6
# problem131.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	testl	%eax, %eax	# _6
	jne	.L5	#,
# problem131.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	movl	-12(%rbp), %eax	# i, tmp117
	movl	%eax, %edx	# tmp117, tmp118
	shrl	$31, %edx	#, tmp118
	addl	%edx, %eax	# tmp118, tmp119
	sarl	%eax	# tmp120
	movl	%eax, %edx	# tmp120, _7
# problem131.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	movl	-12(%rbp), %eax	# i, tmp121
	cltq
	leaq	0(,%rax,4), %rcx	#, _9
	movq	-8(%rbp), %rax	# out, tmp122
	addq	%rcx, %rax	# _9, _10
# problem131.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	addl	$1, %edx	#, _11
# problem131.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	movl	%edx, (%rax)	# _11, *_10
	jmp	.L6	#
.L5:
# problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	movl	-12(%rbp), %eax	# i, tmp123
	cltq
	salq	$2, %rax	#, _13
	leaq	-4(%rax), %rdx	#, _14
	movq	-8(%rbp), %rax	# out, tmp124
	addq	%rdx, %rax	# _14, _15
	movl	(%rax), %edx	# *_15, _16
# problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	movl	-12(%rbp), %eax	# i, tmp125
	cltq
	salq	$2, %rax	#, _18
	leaq	-8(%rax), %rcx	#, _19
	movq	-8(%rbp), %rax	# out, tmp126
	addq	%rcx, %rax	# _19, _20
	movl	(%rax), %eax	# *_20, _21
# problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	addl	%edx, %eax	# _16, _22
# problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	leal	1(%rax), %edx	#, _23
# problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	movl	-12(%rbp), %eax	# i, tmp127
	addl	$1, %eax	#, _24
# problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	movl	%eax, %ecx	# _24, tmp128
	shrl	$31, %ecx	#, tmp128
	addl	%ecx, %eax	# tmp128, tmp129
	sarl	%eax	# tmp130
	movl	%eax, %esi	# tmp130, _25
# problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	movl	-12(%rbp), %eax	# i, tmp131
	cltq
	leaq	0(,%rax,4), %rcx	#, _27
	movq	-8(%rbp), %rax	# out, tmp132
	addq	%rcx, %rax	# _27, _28
# problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	addl	%esi, %edx	# _25, _29
# problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	movl	%edx, (%rax)	# _29, *_28
.L6:
# problem131.c:9:     for (int i = 2; i <= n; i++) {
	addl	$1, -12(%rbp)	#, i
.L4:
# problem131.c:9:     for (int i = 2; i <= n; i++) {
	movl	-12(%rbp), %eax	# i, tmp133
	cmpl	-20(%rbp), %eax	# n, tmp133
	jle	.L7	#,
# problem131.c:13:     return out;
	movq	-8(%rbp), %rax	# out, _31
.L3:
# problem131.c:14: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movl	%edx, -36(%rbp)	# size, size
# problem131.c:23:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem131.c:23:     for (int i = 0; i < size; i++) {
	jmp	.L9	#
.L12:
# problem131.c:24:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp93
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem131.c:24:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-32(%rbp), %rax	# b, tmp95
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem131.c:24:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L10	#,
# problem131.c:24:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
	jmp	.L11	#
.L10:
# problem131.c:23:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L9:
# problem131.c:23:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp96
	cmpl	-36(%rbp), %eax	# size, tmp96
	jl	.L12	#,
# problem131.c:26:     return 1;
	movl	$1, %eax	#, _10
.L11:
# problem131.c:27: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem131.c"
.LC1:
	.string	"issame(out3, tri_3, size)"
.LC2:
	.string	"issame(out4, tri_4, size)"
.LC3:
	.string	"issame(out5, tri_5, size)"
.LC4:
	.string	"issame(out6, tri_6, size)"
.LC5:
	.string	"issame(out7, tri_7, size)"
.LC6:
	.string	"issame(out8, tri_8, size)"
.LC7:
	.string	"issame(out9, tri_9, size)"
.LC8:
	.string	"issame(out20, tri_20, size)"
.LC9:
	.string	"issame(out0, tri_0, size)"
.LC10:
	.string	"issame(out1, tri_1, size)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$448, %rsp	#,
# problem131.c:29: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp175
	movq	%rax, -8(%rbp)	# tmp175, D.2971
	xorl	%eax, %eax	# tmp175
# problem131.c:32:     int tri_3[] = {1, 3, 2, 8};
	movl	$1, -336(%rbp)	#, tri_3[0]
	movl	$3, -332(%rbp)	#, tri_3[1]
	movl	$2, -328(%rbp)	#, tri_3[2]
	movl	$8, -324(%rbp)	#, tri_3[3]
# problem131.c:33:     size = 4;
	movl	$4, -436(%rbp)	#, size
# problem131.c:34:     int* out3 = func0(3);
	movl	$3, %edi	#,
	call	func0	#
	movq	%rax, -432(%rbp)	# tmp94, out3
# problem131.c:35:     assert(issame(out3, tri_3, size));
	movl	-436(%rbp), %edx	# size, tmp95
	leaq	-336(%rbp), %rcx	#, tmp96
	movq	-432(%rbp), %rax	# out3, tmp97
	movq	%rcx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	issame	#
	testl	%eax, %eax	# _1
	jne	.L14	#,
# problem131.c:35:     assert(issame(out3, tri_3, size));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$35, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC1(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L14:
# problem131.c:36:     free(out3);
	movq	-432(%rbp), %rax	# out3, tmp101
	movq	%rax, %rdi	# tmp101,
	call	free@PLT	#
# problem131.c:38:     int tri_4[] = {1, 3, 2, 8, 3};
	movl	$1, -320(%rbp)	#, tri_4[0]
	movl	$3, -316(%rbp)	#, tri_4[1]
	movl	$2, -312(%rbp)	#, tri_4[2]
	movl	$8, -308(%rbp)	#, tri_4[3]
	movl	$3, -304(%rbp)	#, tri_4[4]
# problem131.c:39:     size = 5;
	movl	$5, -436(%rbp)	#, size
# problem131.c:40:     int* out4 = func0(4);
	movl	$4, %edi	#,
	call	func0	#
	movq	%rax, -424(%rbp)	# tmp102, out4
# problem131.c:41:     assert(issame(out4, tri_4, size));
	movl	-436(%rbp), %edx	# size, tmp103
	leaq	-320(%rbp), %rcx	#, tmp104
	movq	-424(%rbp), %rax	# out4, tmp105
	movq	%rcx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L15	#,
# problem131.c:41:     assert(issame(out4, tri_4, size));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$41, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC2(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L15:
# problem131.c:42:     free(out4);
	movq	-424(%rbp), %rax	# out4, tmp109
	movq	%rax, %rdi	# tmp109,
	call	free@PLT	#
# problem131.c:44:     int tri_5[] = {1, 3, 2, 8, 3, 15};
	movl	$1, -288(%rbp)	#, tri_5[0]
	movl	$3, -284(%rbp)	#, tri_5[1]
	movl	$2, -280(%rbp)	#, tri_5[2]
	movl	$8, -276(%rbp)	#, tri_5[3]
	movl	$3, -272(%rbp)	#, tri_5[4]
	movl	$15, -268(%rbp)	#, tri_5[5]
# problem131.c:45:     size = 6;
	movl	$6, -436(%rbp)	#, size
# problem131.c:46:     int* out5 = func0(5);
	movl	$5, %edi	#,
	call	func0	#
	movq	%rax, -416(%rbp)	# tmp110, out5
# problem131.c:47:     assert(issame(out5, tri_5, size));
	movl	-436(%rbp), %edx	# size, tmp111
	leaq	-288(%rbp), %rcx	#, tmp112
	movq	-416(%rbp), %rax	# out5, tmp113
	movq	%rcx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp113,
	call	issame	#
	testl	%eax, %eax	# _3
	jne	.L16	#,
# problem131.c:47:     assert(issame(out5, tri_5, size));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$47, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC3(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	__assert_fail@PLT	#
.L16:
# problem131.c:48:     free(out5);
	movq	-416(%rbp), %rax	# out5, tmp117
	movq	%rax, %rdi	# tmp117,
	call	free@PLT	#
# problem131.c:50:     int tri_6[] = {1, 3, 2, 8, 3, 15, 4};
	movl	$1, -256(%rbp)	#, tri_6[0]
	movl	$3, -252(%rbp)	#, tri_6[1]
	movl	$2, -248(%rbp)	#, tri_6[2]
	movl	$8, -244(%rbp)	#, tri_6[3]
	movl	$3, -240(%rbp)	#, tri_6[4]
	movl	$15, -236(%rbp)	#, tri_6[5]
	movl	$4, -232(%rbp)	#, tri_6[6]
# problem131.c:51:     size = 7;
	movl	$7, -436(%rbp)	#, size
# problem131.c:52:     int* out6 = func0(6);
	movl	$6, %edi	#,
	call	func0	#
	movq	%rax, -408(%rbp)	# tmp118, out6
# problem131.c:53:     assert(issame(out6, tri_6, size));
	movl	-436(%rbp), %edx	# size, tmp119
	leaq	-256(%rbp), %rcx	#, tmp120
	movq	-408(%rbp), %rax	# out6, tmp121
	movq	%rcx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	issame	#
	testl	%eax, %eax	# _4
	jne	.L17	#,
# problem131.c:53:     assert(issame(out6, tri_6, size));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp122
	movq	%rax, %rcx	# tmp122,
	movl	$53, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp123
	movq	%rax, %rsi	# tmp123,
	leaq	.LC4(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	__assert_fail@PLT	#
.L17:
# problem131.c:54:     free(out6);
	movq	-408(%rbp), %rax	# out6, tmp125
	movq	%rax, %rdi	# tmp125,
	call	free@PLT	#
# problem131.c:56:     int tri_7[] = {1, 3, 2, 8, 3, 15, 4, 24};
	movl	$1, -224(%rbp)	#, tri_7[0]
	movl	$3, -220(%rbp)	#, tri_7[1]
	movl	$2, -216(%rbp)	#, tri_7[2]
	movl	$8, -212(%rbp)	#, tri_7[3]
	movl	$3, -208(%rbp)	#, tri_7[4]
	movl	$15, -204(%rbp)	#, tri_7[5]
	movl	$4, -200(%rbp)	#, tri_7[6]
	movl	$24, -196(%rbp)	#, tri_7[7]
# problem131.c:57:     size = 8;
	movl	$8, -436(%rbp)	#, size
# problem131.c:58:     int* out7 = func0(7);
	movl	$7, %edi	#,
	call	func0	#
	movq	%rax, -400(%rbp)	# tmp126, out7
# problem131.c:59:     assert(issame(out7, tri_7, size));
	movl	-436(%rbp), %edx	# size, tmp127
	leaq	-224(%rbp), %rcx	#, tmp128
	movq	-400(%rbp), %rax	# out7, tmp129
	movq	%rcx, %rsi	# tmp128,
	movq	%rax, %rdi	# tmp129,
	call	issame	#
	testl	%eax, %eax	# _5
	jne	.L18	#,
# problem131.c:59:     assert(issame(out7, tri_7, size));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp130
	movq	%rax, %rcx	# tmp130,
	movl	$59, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp131
	movq	%rax, %rsi	# tmp131,
	leaq	.LC5(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	__assert_fail@PLT	#
.L18:
# problem131.c:60:     free(out7);
	movq	-400(%rbp), %rax	# out7, tmp133
	movq	%rax, %rdi	# tmp133,
	call	free@PLT	#
# problem131.c:62:     int tri_8[] = {1, 3, 2, 8, 3, 15, 4, 24, 5};
	movl	$1, -192(%rbp)	#, tri_8[0]
	movl	$3, -188(%rbp)	#, tri_8[1]
	movl	$2, -184(%rbp)	#, tri_8[2]
	movl	$8, -180(%rbp)	#, tri_8[3]
	movl	$3, -176(%rbp)	#, tri_8[4]
	movl	$15, -172(%rbp)	#, tri_8[5]
	movl	$4, -168(%rbp)	#, tri_8[6]
	movl	$24, -164(%rbp)	#, tri_8[7]
	movl	$5, -160(%rbp)	#, tri_8[8]
# problem131.c:63:     size = 9;
	movl	$9, -436(%rbp)	#, size
# problem131.c:64:     int* out8 = func0(8);
	movl	$8, %edi	#,
	call	func0	#
	movq	%rax, -392(%rbp)	# tmp134, out8
# problem131.c:65:     assert(issame(out8, tri_8, size));
	movl	-436(%rbp), %edx	# size, tmp135
	leaq	-192(%rbp), %rcx	#, tmp136
	movq	-392(%rbp), %rax	# out8, tmp137
	movq	%rcx, %rsi	# tmp136,
	movq	%rax, %rdi	# tmp137,
	call	issame	#
	testl	%eax, %eax	# _6
	jne	.L19	#,
# problem131.c:65:     assert(issame(out8, tri_8, size));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp138
	movq	%rax, %rcx	# tmp138,
	movl	$65, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp139
	movq	%rax, %rsi	# tmp139,
	leaq	.LC6(%rip), %rax	#, tmp140
	movq	%rax, %rdi	# tmp140,
	call	__assert_fail@PLT	#
.L19:
# problem131.c:66:     free(out8);
	movq	-392(%rbp), %rax	# out8, tmp141
	movq	%rax, %rdi	# tmp141,
	call	free@PLT	#
# problem131.c:68:     int tri_9[] = {1, 3, 2, 8, 3, 15, 4, 24, 5, 35};
	movl	$1, -144(%rbp)	#, tri_9[0]
	movl	$3, -140(%rbp)	#, tri_9[1]
	movl	$2, -136(%rbp)	#, tri_9[2]
	movl	$8, -132(%rbp)	#, tri_9[3]
	movl	$3, -128(%rbp)	#, tri_9[4]
	movl	$15, -124(%rbp)	#, tri_9[5]
	movl	$4, -120(%rbp)	#, tri_9[6]
	movl	$24, -116(%rbp)	#, tri_9[7]
	movl	$5, -112(%rbp)	#, tri_9[8]
	movl	$35, -108(%rbp)	#, tri_9[9]
# problem131.c:69:     size = 10;
	movl	$10, -436(%rbp)	#, size
# problem131.c:70:     int* out9 = func0(9);
	movl	$9, %edi	#,
	call	func0	#
	movq	%rax, -384(%rbp)	# tmp142, out9
# problem131.c:71:     assert(issame(out9, tri_9, size));
	movl	-436(%rbp), %edx	# size, tmp143
	leaq	-144(%rbp), %rcx	#, tmp144
	movq	-384(%rbp), %rax	# out9, tmp145
	movq	%rcx, %rsi	# tmp144,
	movq	%rax, %rdi	# tmp145,
	call	issame	#
	testl	%eax, %eax	# _7
	jne	.L20	#,
# problem131.c:71:     assert(issame(out9, tri_9, size));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp146
	movq	%rax, %rcx	# tmp146,
	movl	$71, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp147
	movq	%rax, %rsi	# tmp147,
	leaq	.LC7(%rip), %rax	#, tmp148
	movq	%rax, %rdi	# tmp148,
	call	__assert_fail@PLT	#
.L20:
# problem131.c:72:     free(out9);
	movq	-384(%rbp), %rax	# out9, tmp149
	movq	%rax, %rdi	# tmp149,
	call	free@PLT	#
# problem131.c:74:     int tri_20[] = {1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11};
	movl	$1, -96(%rbp)	#, tri_20[0]
	movl	$3, -92(%rbp)	#, tri_20[1]
	movl	$2, -88(%rbp)	#, tri_20[2]
	movl	$8, -84(%rbp)	#, tri_20[3]
	movl	$3, -80(%rbp)	#, tri_20[4]
	movl	$15, -76(%rbp)	#, tri_20[5]
	movl	$4, -72(%rbp)	#, tri_20[6]
	movl	$24, -68(%rbp)	#, tri_20[7]
	movl	$5, -64(%rbp)	#, tri_20[8]
	movl	$35, -60(%rbp)	#, tri_20[9]
	movl	$6, -56(%rbp)	#, tri_20[10]
	movl	$48, -52(%rbp)	#, tri_20[11]
	movl	$7, -48(%rbp)	#, tri_20[12]
	movl	$63, -44(%rbp)	#, tri_20[13]
	movl	$8, -40(%rbp)	#, tri_20[14]
	movl	$80, -36(%rbp)	#, tri_20[15]
	movl	$9, -32(%rbp)	#, tri_20[16]
	movl	$99, -28(%rbp)	#, tri_20[17]
	movl	$10, -24(%rbp)	#, tri_20[18]
	movl	$120, -20(%rbp)	#, tri_20[19]
	movl	$11, -16(%rbp)	#, tri_20[20]
# problem131.c:75:     size = 21;
	movl	$21, -436(%rbp)	#, size
# problem131.c:76:     int* out20 = func0(20);
	movl	$20, %edi	#,
	call	func0	#
	movq	%rax, -376(%rbp)	# tmp150, out20
# problem131.c:77:     assert(issame(out20, tri_20, size));
	movl	-436(%rbp), %edx	# size, tmp151
	leaq	-96(%rbp), %rcx	#, tmp152
	movq	-376(%rbp), %rax	# out20, tmp153
	movq	%rcx, %rsi	# tmp152,
	movq	%rax, %rdi	# tmp153,
	call	issame	#
	testl	%eax, %eax	# _8
	jne	.L21	#,
# problem131.c:77:     assert(issame(out20, tri_20, size));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp154
	movq	%rax, %rcx	# tmp154,
	movl	$77, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp155
	movq	%rax, %rsi	# tmp155,
	leaq	.LC8(%rip), %rax	#, tmp156
	movq	%rax, %rdi	# tmp156,
	call	__assert_fail@PLT	#
.L21:
# problem131.c:78:     free(out20);
	movq	-376(%rbp), %rax	# out20, tmp157
	movq	%rax, %rdi	# tmp157,
	call	free@PLT	#
# problem131.c:80:     int tri_0[] = {1};
	movl	$1, -348(%rbp)	#, tri_0[0]
# problem131.c:81:     size = 1;
	movl	$1, -436(%rbp)	#, size
# problem131.c:82:     int* out0 = func0(0);
	movl	$0, %edi	#,
	call	func0	#
	movq	%rax, -368(%rbp)	# tmp158, out0
# problem131.c:83:     assert(issame(out0, tri_0, size));
	movl	-436(%rbp), %edx	# size, tmp159
	leaq	-348(%rbp), %rcx	#, tmp160
	movq	-368(%rbp), %rax	# out0, tmp161
	movq	%rcx, %rsi	# tmp160,
	movq	%rax, %rdi	# tmp161,
	call	issame	#
	testl	%eax, %eax	# _9
	jne	.L22	#,
# problem131.c:83:     assert(issame(out0, tri_0, size));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp162
	movq	%rax, %rcx	# tmp162,
	movl	$83, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp163
	movq	%rax, %rsi	# tmp163,
	leaq	.LC9(%rip), %rax	#, tmp164
	movq	%rax, %rdi	# tmp164,
	call	__assert_fail@PLT	#
.L22:
# problem131.c:84:     free(out0);
	movq	-368(%rbp), %rax	# out0, tmp165
	movq	%rax, %rdi	# tmp165,
	call	free@PLT	#
# problem131.c:86:     int tri_1[] = {1, 3};
	movl	$1, -344(%rbp)	#, tri_1[0]
	movl	$3, -340(%rbp)	#, tri_1[1]
# problem131.c:87:     size = 2;
	movl	$2, -436(%rbp)	#, size
# problem131.c:88:     int* out1 = func0(1);
	movl	$1, %edi	#,
	call	func0	#
	movq	%rax, -360(%rbp)	# tmp166, out1
# problem131.c:89:     assert(issame(out1, tri_1, size));
	movl	-436(%rbp), %edx	# size, tmp167
	leaq	-344(%rbp), %rcx	#, tmp168
	movq	-360(%rbp), %rax	# out1, tmp169
	movq	%rcx, %rsi	# tmp168,
	movq	%rax, %rdi	# tmp169,
	call	issame	#
	testl	%eax, %eax	# _10
	jne	.L23	#,
# problem131.c:89:     assert(issame(out1, tri_1, size));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp170
	movq	%rax, %rcx	# tmp170,
	movl	$89, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp171
	movq	%rax, %rsi	# tmp171,
	leaq	.LC10(%rip), %rax	#, tmp172
	movq	%rax, %rdi	# tmp172,
	call	__assert_fail@PLT	#
.L23:
# problem131.c:90:     free(out1);
	movq	-360(%rbp), %rax	# out1, tmp173
	movq	%rax, %rdi	# tmp173,
	call	free@PLT	#
# problem131.c:92:     return 0;
	movl	$0, %eax	#, _145
# problem131.c:93: }
	movq	-8(%rbp), %rdx	# D.2971, tmp176
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp176
	je	.L25	#,
	call	__stack_chk_fail@PLT	#
.L25:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
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
