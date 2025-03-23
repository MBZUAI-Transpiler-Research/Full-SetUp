	.file	"problem121.c"
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
	movq	%rdi, -24(%rbp)	# arr, arr
	movl	%esi, -28(%rbp)	# arr_size, arr_size
	movl	%edx, -32(%rbp)	# k, k
	movq	%rcx, -40(%rbp)	# out, out
# problem121.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	movl	$0, -16(%rbp)	#, i
# problem121.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	jmp	.L2	#
.L6:
# problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	movl	$0, -12(%rbp)	#, j
# problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	jmp	.L3	#
.L5:
# problem121.c:7:             if (arr[j] > arr[j + 1]) {
	movl	-12(%rbp), %eax	# j, tmp118
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# arr, tmp119
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem121.c:7:             if (arr[j] > arr[j + 1]) {
	movl	-12(%rbp), %eax	# j, tmp120
	cltq
	addq	$1, %rax	#, _6
	leaq	0(,%rax,4), %rcx	#, _7
	movq	-24(%rbp), %rax	# arr, tmp121
	addq	%rcx, %rax	# _7, _8
	movl	(%rax), %eax	# *_8, _9
# problem121.c:7:             if (arr[j] > arr[j + 1]) {
	cmpl	%eax, %edx	# _9, _4
	jle	.L4	#,
# problem121.c:8:                 int temp = arr[j];
	movl	-12(%rbp), %eax	# j, tmp122
	cltq
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-24(%rbp), %rax	# arr, tmp123
	addq	%rdx, %rax	# _11, _12
# problem121.c:8:                 int temp = arr[j];
	movl	(%rax), %eax	# *_12, tmp124
	movl	%eax, -4(%rbp)	# tmp124, temp
# problem121.c:9:                 arr[j] = arr[j + 1];
	movl	-12(%rbp), %eax	# j, tmp125
	cltq
	addq	$1, %rax	#, _14
	leaq	0(,%rax,4), %rdx	#, _15
	movq	-24(%rbp), %rax	# arr, tmp126
	addq	%rdx, %rax	# _15, _16
# problem121.c:9:                 arr[j] = arr[j + 1];
	movl	-12(%rbp), %edx	# j, tmp127
	movslq	%edx, %rdx	# tmp127, _17
	leaq	0(,%rdx,4), %rcx	#, _18
	movq	-24(%rbp), %rdx	# arr, tmp128
	addq	%rcx, %rdx	# _18, _19
# problem121.c:9:                 arr[j] = arr[j + 1];
	movl	(%rax), %eax	# *_16, _20
# problem121.c:9:                 arr[j] = arr[j + 1];
	movl	%eax, (%rdx)	# _20, *_19
# problem121.c:10:                 arr[j + 1] = temp;
	movl	-12(%rbp), %eax	# j, tmp129
	cltq
	addq	$1, %rax	#, _22
	leaq	0(,%rax,4), %rdx	#, _23
	movq	-24(%rbp), %rax	# arr, tmp130
	addq	%rax, %rdx	# tmp130, _24
# problem121.c:10:                 arr[j + 1] = temp;
	movl	-4(%rbp), %eax	# temp, tmp131
	movl	%eax, (%rdx)	# tmp131, *_24
.L4:
# problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	addl	$1, -12(%rbp)	#, j
.L3:
# problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	movl	-28(%rbp), %eax	# arr_size, tmp132
	subl	-16(%rbp), %eax	# i, _25
# problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	subl	$1, %eax	#, _26
# problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	cmpl	%eax, -12(%rbp)	# _26, j
	jl	.L5	#,
# problem121.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	addl	$1, -16(%rbp)	#, i
.L2:
# problem121.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	movl	-28(%rbp), %eax	# arr_size, tmp133
	subl	$1, %eax	#, _27
# problem121.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	cmpl	%eax, -16(%rbp)	# _27, i
	jl	.L6	#,
# problem121.c:15:     for (int i = 0; i < k; i++) {
	movl	$0, -8(%rbp)	#, i
# problem121.c:15:     for (int i = 0; i < k; i++) {
	jmp	.L7	#
.L8:
# problem121.c:16:         out[i] = arr[arr_size - k + i];
	movl	-28(%rbp), %eax	# arr_size, tmp134
	subl	-32(%rbp), %eax	# k, tmp134
	movl	%eax, %edx	# tmp134, _28
# problem121.c:16:         out[i] = arr[arr_size - k + i];
	movl	-8(%rbp), %eax	# i, tmp135
	addl	%edx, %eax	# _28, _29
	cltq
# problem121.c:16:         out[i] = arr[arr_size - k + i];
	leaq	0(,%rax,4), %rdx	#, _31
	movq	-24(%rbp), %rax	# arr, tmp136
	addq	%rdx, %rax	# _31, _32
# problem121.c:16:         out[i] = arr[arr_size - k + i];
	movl	-8(%rbp), %edx	# i, tmp137
	movslq	%edx, %rdx	# tmp137, _33
	leaq	0(,%rdx,4), %rcx	#, _34
	movq	-40(%rbp), %rdx	# out, tmp138
	addq	%rcx, %rdx	# _34, _35
# problem121.c:16:         out[i] = arr[arr_size - k + i];
	movl	(%rax), %eax	# *_32, _36
# problem121.c:16:         out[i] = arr[arr_size - k + i];
	movl	%eax, (%rdx)	# _36, *_35
# problem121.c:15:     for (int i = 0; i < k; i++) {
	addl	$1, -8(%rbp)	#, i
.L7:
# problem121.c:15:     for (int i = 0; i < k; i++) {
	movl	-8(%rbp), %eax	# i, tmp139
	cmpl	-32(%rbp), %eax	# k, tmp139
	jl	.L8	#,
# problem121.c:18: }
	nop	
	nop	
	popq	%rbp	#
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
# problem121.c:27:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem121.c:27:     for (int i = 0; i < size; i++) {
	jmp	.L10	#
.L13:
# problem121.c:28:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp93
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem121.c:28:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-32(%rbp), %rax	# b, tmp95
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem121.c:28:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L11	#,
# problem121.c:28:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
	jmp	.L12	#
.L11:
# problem121.c:27:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L10:
# problem121.c:27:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp96
	cmpl	-36(%rbp), %eax	# size, tmp96
	jl	.L13	#,
# problem121.c:30:     return 1;
	movl	$1, %eax	#, _10
.L12:
# problem121.c:31: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem121.c"
.LC1:
	.string	"issame(out1, expected1, 3)"
.LC2:
	.string	"issame(out2, expected2, 2)"
.LC3:
	.string	"issame(out3, expected3, 1)"
.LC4:
	.string	"issame(out4, expected4, 3)"
.LC5:
	.string	"issame(out5, expected5, 4)"
.LC6:
	.string	"issame(out6, expected6, 7)"
.LC7:
	.string	"issame(out7, expected7, 2)"
.LC8:
	.string	"issame(out8, expected8, 1)"
.LC9:
	.string	"issame(out9, expected9, 2)"
.LC10:
	.string	"issame(out10, expected10, 2)"
.LC11:
	.string	"issame(out11, expected11, 0)"
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
	subq	$496, %rsp	#,
# problem121.c:33: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp173
	movq	%rax, -8(%rbp)	# tmp173, D.3000
	xorl	%eax, %eax	# tmp173
# problem121.c:34:     int arr1[] = {-3, -4, 5};
	movl	$-3, -392(%rbp)	#, arr1[0]
	movl	$-4, -388(%rbp)	#, arr1[1]
	movl	$5, -384(%rbp)	#, arr1[2]
# problem121.c:36:     func0(arr1, 3, 3, out1);
	leaq	-380(%rbp), %rdx	#, tmp95
	leaq	-392(%rbp), %rax	#, tmp96
	movq	%rdx, %rcx	# tmp95,
	movl	$3, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	func0	#
# problem121.c:37:     int expected1[] = {-4, -3, 5};
	movl	$-4, -368(%rbp)	#, expected1[0]
	movl	$-3, -364(%rbp)	#, expected1[1]
	movl	$5, -360(%rbp)	#, expected1[2]
# problem121.c:38:     assert(issame(out1, expected1, 3));
	leaq	-368(%rbp), %rcx	#, tmp97
	leaq	-380(%rbp), %rax	#, tmp98
	movl	$3, %edx	#,
	movq	%rcx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	issame	#
	testl	%eax, %eax	# _1
	jne	.L15	#,
# problem121.c:38:     assert(issame(out1, expected1, 3));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp99
	movq	%rax, %rcx	# tmp99,
	movl	$38, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC1(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	__assert_fail@PLT	#
.L15:
# problem121.c:40:     int arr2[] = {4, -4, 4};
	movl	$4, -356(%rbp)	#, arr2[0]
	movl	$-4, -352(%rbp)	#, arr2[1]
	movl	$4, -348(%rbp)	#, arr2[2]
# problem121.c:42:     func0(arr2, 3, 2, out2);
	leaq	-472(%rbp), %rdx	#, tmp102
	leaq	-356(%rbp), %rax	#, tmp103
	movq	%rdx, %rcx	# tmp102,
	movl	$2, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	func0	#
# problem121.c:43:     int expected2[] = {4, 4};
	movl	$4, -464(%rbp)	#, expected2[0]
	movl	$4, -460(%rbp)	#, expected2[1]
# problem121.c:44:     assert(issame(out2, expected2, 2));
	leaq	-464(%rbp), %rcx	#, tmp104
	leaq	-472(%rbp), %rax	#, tmp105
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L16	#,
# problem121.c:44:     assert(issame(out2, expected2, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$44, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC2(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L16:
# problem121.c:46:     int arr3[] = {-3, 2, 1, 2, -1, -2, 1};
	movl	$-3, -208(%rbp)	#, arr3[0]
	movl	$2, -204(%rbp)	#, arr3[1]
	movl	$1, -200(%rbp)	#, arr3[2]
	movl	$2, -196(%rbp)	#, arr3[3]
	movl	$-1, -192(%rbp)	#, arr3[4]
	movl	$-2, -188(%rbp)	#, arr3[5]
	movl	$1, -184(%rbp)	#, arr3[6]
# problem121.c:48:     func0(arr3, 7, 1, out3);
	leaq	-488(%rbp), %rdx	#, tmp109
	leaq	-208(%rbp), %rax	#, tmp110
	movq	%rdx, %rcx	# tmp109,
	movl	$1, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	func0	#
# problem121.c:49:     int expected3[] = {2};
	movl	$2, -484(%rbp)	#, expected3[0]
# problem121.c:50:     assert(issame(out3, expected3, 1));
	leaq	-484(%rbp), %rcx	#, tmp111
	leaq	-488(%rbp), %rax	#, tmp112
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp111,
	movq	%rax, %rdi	# tmp112,
	call	issame	#
	testl	%eax, %eax	# _3
	jne	.L17	#,
# problem121.c:50:     assert(issame(out3, expected3, 1));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$50, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC3(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L17:
# problem121.c:52:     int arr4[] = {123, -123, 20, 0, 1, 2, -3};
	movl	$123, -176(%rbp)	#, arr4[0]
	movl	$-123, -172(%rbp)	#, arr4[1]
	movl	$20, -168(%rbp)	#, arr4[2]
	movl	$0, -164(%rbp)	#, arr4[3]
	movl	$1, -160(%rbp)	#, arr4[4]
	movl	$2, -156(%rbp)	#, arr4[5]
	movl	$-3, -152(%rbp)	#, arr4[6]
# problem121.c:54:     func0(arr4, 7, 3, out4);
	leaq	-344(%rbp), %rdx	#, tmp116
	leaq	-176(%rbp), %rax	#, tmp117
	movq	%rdx, %rcx	# tmp116,
	movl	$3, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp117,
	call	func0	#
# problem121.c:55:     int expected4[] = {2, 20, 123};
	movl	$2, -332(%rbp)	#, expected4[0]
	movl	$20, -328(%rbp)	#, expected4[1]
	movl	$123, -324(%rbp)	#, expected4[2]
# problem121.c:56:     assert(issame(out4, expected4, 3));
	leaq	-332(%rbp), %rcx	#, tmp118
	leaq	-344(%rbp), %rax	#, tmp119
	movl	$3, %edx	#,
	movq	%rcx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp119,
	call	issame	#
	testl	%eax, %eax	# _4
	jne	.L18	#,
# problem121.c:56:     assert(issame(out4, expected4, 3));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp120
	movq	%rax, %rcx	# tmp120,
	movl	$56, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp121
	movq	%rax, %rsi	# tmp121,
	leaq	.LC4(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	__assert_fail@PLT	#
.L18:
# problem121.c:58:     int arr5[] = {-123, 20, 0, 1, 2, -3};
	movl	$-123, -272(%rbp)	#, arr5[0]
	movl	$20, -268(%rbp)	#, arr5[1]
	movl	$0, -264(%rbp)	#, arr5[2]
	movl	$1, -260(%rbp)	#, arr5[3]
	movl	$2, -256(%rbp)	#, arr5[4]
	movl	$-3, -252(%rbp)	#, arr5[5]
# problem121.c:60:     func0(arr5, 6, 4, out5);
	leaq	-320(%rbp), %rdx	#, tmp123
	leaq	-272(%rbp), %rax	#, tmp124
	movq	%rdx, %rcx	# tmp123,
	movl	$4, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp124,
	call	func0	#
# problem121.c:61:     int expected5[] = {0, 1, 2, 20};
	movl	$0, -304(%rbp)	#, expected5[0]
	movl	$1, -300(%rbp)	#, expected5[1]
	movl	$2, -296(%rbp)	#, expected5[2]
	movl	$20, -292(%rbp)	#, expected5[3]
# problem121.c:62:     assert(issame(out5, expected5, 4));
	leaq	-304(%rbp), %rcx	#, tmp125
	leaq	-320(%rbp), %rax	#, tmp126
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp125,
	movq	%rax, %rdi	# tmp126,
	call	issame	#
	testl	%eax, %eax	# _5
	jne	.L19	#,
# problem121.c:62:     assert(issame(out5, expected5, 4));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp127
	movq	%rax, %rcx	# tmp127,
	movl	$62, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	leaq	.LC5(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	__assert_fail@PLT	#
.L19:
# problem121.c:64:     int arr6[] = {5, 15, 0, 3, -13, -8, 0};
	movl	$5, -144(%rbp)	#, arr6[0]
	movl	$15, -140(%rbp)	#, arr6[1]
	movl	$0, -136(%rbp)	#, arr6[2]
	movl	$3, -132(%rbp)	#, arr6[3]
	movl	$-13, -128(%rbp)	#, arr6[4]
	movl	$-8, -124(%rbp)	#, arr6[5]
	movl	$0, -120(%rbp)	#, arr6[6]
# problem121.c:66:     func0(arr6, 7, 7, out6);
	leaq	-112(%rbp), %rdx	#, tmp130
	leaq	-144(%rbp), %rax	#, tmp131
	movq	%rdx, %rcx	# tmp130,
	movl	$7, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp131,
	call	func0	#
# problem121.c:67:     int expected6[] = {-13, -8, 0, 0, 3, 5, 15};
	movl	$-13, -80(%rbp)	#, expected6[0]
	movl	$-8, -76(%rbp)	#, expected6[1]
	movl	$0, -72(%rbp)	#, expected6[2]
	movl	$0, -68(%rbp)	#, expected6[3]
	movl	$3, -64(%rbp)	#, expected6[4]
	movl	$5, -60(%rbp)	#, expected6[5]
	movl	$15, -56(%rbp)	#, expected6[6]
# problem121.c:68:     assert(issame(out6, expected6, 7));
	leaq	-80(%rbp), %rcx	#, tmp132
	leaq	-112(%rbp), %rax	#, tmp133
	movl	$7, %edx	#,
	movq	%rcx, %rsi	# tmp132,
	movq	%rax, %rdi	# tmp133,
	call	issame	#
	testl	%eax, %eax	# _6
	jne	.L20	#,
# problem121.c:68:     assert(issame(out6, expected6, 7));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp134
	movq	%rax, %rcx	# tmp134,
	movl	$68, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp135
	movq	%rax, %rsi	# tmp135,
	leaq	.LC6(%rip), %rax	#, tmp136
	movq	%rax, %rdi	# tmp136,
	call	__assert_fail@PLT	#
.L20:
# problem121.c:70:     int arr7[] = {-1, 0, 2, 5, 3, -10};
	movl	$-1, -240(%rbp)	#, arr7[0]
	movl	$0, -236(%rbp)	#, arr7[1]
	movl	$2, -232(%rbp)	#, arr7[2]
	movl	$5, -228(%rbp)	#, arr7[3]
	movl	$3, -224(%rbp)	#, arr7[4]
	movl	$-10, -220(%rbp)	#, arr7[5]
# problem121.c:72:     func0(arr7, 6, 2, out7);
	leaq	-456(%rbp), %rdx	#, tmp137
	leaq	-240(%rbp), %rax	#, tmp138
	movq	%rdx, %rcx	# tmp137,
	movl	$2, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp138,
	call	func0	#
# problem121.c:73:     int expected7[] = {3, 5};
	movl	$3, -448(%rbp)	#, expected7[0]
	movl	$5, -444(%rbp)	#, expected7[1]
# problem121.c:74:     assert(issame(out7, expected7, 2));
	leaq	-448(%rbp), %rcx	#, tmp139
	leaq	-456(%rbp), %rax	#, tmp140
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp139,
	movq	%rax, %rdi	# tmp140,
	call	issame	#
	testl	%eax, %eax	# _7
	jne	.L21	#,
# problem121.c:74:     assert(issame(out7, expected7, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp141
	movq	%rax, %rcx	# tmp141,
	movl	$74, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp142
	movq	%rax, %rsi	# tmp142,
	leaq	.LC7(%rip), %rax	#, tmp143
	movq	%rax, %rdi	# tmp143,
	call	__assert_fail@PLT	#
.L21:
# problem121.c:76:     int arr8[] = {1, 0, 5, -7};
	movl	$1, -288(%rbp)	#, arr8[0]
	movl	$0, -284(%rbp)	#, arr8[1]
	movl	$5, -280(%rbp)	#, arr8[2]
	movl	$-7, -276(%rbp)	#, arr8[3]
# problem121.c:78:     func0(arr8, 4, 1, out8);
	leaq	-480(%rbp), %rdx	#, tmp144
	leaq	-288(%rbp), %rax	#, tmp145
	movq	%rdx, %rcx	# tmp144,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp145,
	call	func0	#
# problem121.c:79:     int expected8[] = {5};
	movl	$5, -476(%rbp)	#, expected8[0]
# problem121.c:80:     assert(issame(out8, expected8, 1));
	leaq	-476(%rbp), %rcx	#, tmp146
	leaq	-480(%rbp), %rax	#, tmp147
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp146,
	movq	%rax, %rdi	# tmp147,
	call	issame	#
	testl	%eax, %eax	# _8
	jne	.L22	#,
# problem121.c:80:     assert(issame(out8, expected8, 1));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp148
	movq	%rax, %rcx	# tmp148,
	movl	$80, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp149
	movq	%rax, %rsi	# tmp149,
	leaq	.LC8(%rip), %rax	#, tmp150
	movq	%rax, %rdi	# tmp150,
	call	__assert_fail@PLT	#
.L22:
# problem121.c:82:     int arr9[] = {4, -4};
	movl	$4, -440(%rbp)	#, arr9[0]
	movl	$-4, -436(%rbp)	#, arr9[1]
# problem121.c:84:     func0(arr9, 2, 2, out9);
	leaq	-432(%rbp), %rdx	#, tmp151
	leaq	-440(%rbp), %rax	#, tmp152
	movq	%rdx, %rcx	# tmp151,
	movl	$2, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp152,
	call	func0	#
# problem121.c:85:     int expected9[] = {-4, 4};
	movl	$-4, -424(%rbp)	#, expected9[0]
	movl	$4, -420(%rbp)	#, expected9[1]
# problem121.c:86:     assert(issame(out9, expected9, 2));
	leaq	-424(%rbp), %rcx	#, tmp153
	leaq	-432(%rbp), %rax	#, tmp154
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp153,
	movq	%rax, %rdi	# tmp154,
	call	issame	#
	testl	%eax, %eax	# _9
	jne	.L23	#,
# problem121.c:86:     assert(issame(out9, expected9, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp155
	movq	%rax, %rcx	# tmp155,
	movl	$86, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp156
	movq	%rax, %rsi	# tmp156,
	leaq	.LC9(%rip), %rax	#, tmp157
	movq	%rax, %rdi	# tmp157,
	call	__assert_fail@PLT	#
.L23:
# problem121.c:88:     int arr10[] = {-10, 10};
	movl	$-10, -416(%rbp)	#, arr10[0]
	movl	$10, -412(%rbp)	#, arr10[1]
# problem121.c:90:     func0(arr10, 2, 2, out10);
	leaq	-408(%rbp), %rdx	#, tmp158
	leaq	-416(%rbp), %rax	#, tmp159
	movq	%rdx, %rcx	# tmp158,
	movl	$2, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp159,
	call	func0	#
# problem121.c:91:     int expected10[] = {-10, 10};
	movl	$-10, -400(%rbp)	#, expected10[0]
	movl	$10, -396(%rbp)	#, expected10[1]
# problem121.c:92:     assert(issame(out10, expected10, 2));
	leaq	-400(%rbp), %rcx	#, tmp160
	leaq	-408(%rbp), %rax	#, tmp161
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp160,
	movq	%rax, %rdi	# tmp161,
	call	issame	#
	testl	%eax, %eax	# _10
	jne	.L24	#,
# problem121.c:92:     assert(issame(out10, expected10, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp162
	movq	%rax, %rcx	# tmp162,
	movl	$92, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp163
	movq	%rax, %rsi	# tmp163,
	leaq	.LC10(%rip), %rax	#, tmp164
	movq	%rax, %rdi	# tmp164,
	call	__assert_fail@PLT	#
.L24:
# problem121.c:94:     int arr11[] = {1, 2, 3, -23, 243, -400, 0};
	movl	$1, -48(%rbp)	#, arr11[0]
	movl	$2, -44(%rbp)	#, arr11[1]
	movl	$3, -40(%rbp)	#, arr11[2]
	movl	$-23, -36(%rbp)	#, arr11[3]
	movl	$243, -32(%rbp)	#, arr11[4]
	movl	$-400, -28(%rbp)	#, arr11[5]
	movl	$0, -24(%rbp)	#, arr11[6]
# problem121.c:96:     func0(arr11, 7, 0, out11); // Empty output expected
	leaq	-496(%rbp), %rdx	#, tmp165
	leaq	-48(%rbp), %rax	#, tmp166
	movq	%rdx, %rcx	# tmp165,
	movl	$0, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp166,
	call	func0	#
# problem121.c:98:     assert(issame(out11, expected11, 0));
	leaq	-492(%rbp), %rcx	#, tmp167
	leaq	-496(%rbp), %rax	#, tmp168
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp167,
	movq	%rax, %rdi	# tmp168,
	call	issame	#
	testl	%eax, %eax	# _11
	jne	.L25	#,
# problem121.c:98:     assert(issame(out11, expected11, 0));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp169
	movq	%rax, %rcx	# tmp169,
	movl	$98, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp170
	movq	%rax, %rsi	# tmp170,
	leaq	.LC11(%rip), %rax	#, tmp171
	movq	%rax, %rdi	# tmp171,
	call	__assert_fail@PLT	#
.L25:
# problem121.c:100:     return 0;
	movl	$0, %eax	#, _128
# problem121.c:101: }
	movq	-8(%rbp), %rdx	# D.3000, tmp174
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp174
	je	.L27	#,
	call	__stack_chk_fail@PLT	#
.L27:
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
