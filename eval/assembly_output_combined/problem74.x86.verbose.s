	.file	"problem74.c"
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
	movq	%rdi, -24(%rbp)	# arr, arr
	movl	%esi, -28(%rbp)	# size, size
# problem74.c:4:     int out = 0;
	movl	$0, -8(%rbp)	#, out
# problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	movl	$0, -4(%rbp)	#, i
# problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	jmp	.L2	#
.L4:
# problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# arr, tmp96
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	movl	-28(%rbp), %eax	# size, tmp97
	subl	$1, %eax	#, _5
# problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	subl	-4(%rbp), %eax	# i, _6
	cltq
# problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	leaq	0(,%rax,4), %rcx	#, _8
	movq	-24(%rbp), %rax	# arr, tmp98
	addq	%rcx, %rax	# _8, _9
	movl	(%rax), %eax	# *_9, _10
# problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	cmpl	%eax, %edx	# _10, _4
	je	.L3	#,
# problem74.c:7:             out++;
	addl	$1, -8(%rbp)	#, out
.L3:
# problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	movl	-28(%rbp), %eax	# size, tmp99
	movl	%eax, %edx	# tmp99, tmp100
	shrl	$31, %edx	#, tmp100
	addl	%edx, %eax	# tmp100, tmp101
	sarl	%eax	# tmp102
# problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	cmpl	%eax, -4(%rbp)	# _11, i
	jl	.L4	#,
# problem74.c:10:     return out;
	movl	-8(%rbp), %eax	# out, _18
# problem74.c:11: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem74.c"
.LC1:
	.string	"func0(test1, 8) == 4"
.LC2:
	.string	"func0(test2, 7) == 1"
.LC3:
	.string	"func0(test3, 3) == 1"
.LC4:
	.string	"func0(test4, 4) == 1"
.LC5:
	.string	"func0(test5, 5) == 0"
.LC6:
	.string	"func0(test6, 4) == 0"
.LC7:
	.string	"func0(test7, 1) == 0"
.LC8:
	.string	"func0(test8, 2) == 1"
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
	subq	$176, %rsp	#,
# problem74.c:18: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	movq	%rax, -8(%rbp)	# tmp125, D.3248
	xorl	%eax, %eax	# tmp125
# problem74.c:19:     int test1[] = {1, 2, 3, 5, 4, 7, 9, 6};
	movl	$1, -48(%rbp)	#, test1[0]
	movl	$2, -44(%rbp)	#, test1[1]
	movl	$3, -40(%rbp)	#, test1[2]
	movl	$5, -36(%rbp)	#, test1[3]
	movl	$4, -32(%rbp)	#, test1[4]
	movl	$7, -28(%rbp)	#, test1[5]
	movl	$9, -24(%rbp)	#, test1[6]
	movl	$6, -20(%rbp)	#, test1[7]
# problem74.c:20:     assert(func0(test1, 8) == 4);
	leaq	-48(%rbp), %rax	#, tmp92
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	func0	#
# problem74.c:20:     assert(func0(test1, 8) == 4);
	cmpl	$4, %eax	#, _1
	je	.L7	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp93
	movq	%rax, %rcx	# tmp93,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	leaq	.LC1(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	__assert_fail@PLT	#
.L7:
# problem74.c:22:     int test2[] = {1, 2, 3, 4, 3, 2, 2};
	movl	$1, -80(%rbp)	#, test2[0]
	movl	$2, -76(%rbp)	#, test2[1]
	movl	$3, -72(%rbp)	#, test2[2]
	movl	$4, -68(%rbp)	#, test2[3]
	movl	$3, -64(%rbp)	#, test2[4]
	movl	$2, -60(%rbp)	#, test2[5]
	movl	$2, -56(%rbp)	#, test2[6]
# problem74.c:23:     assert(func0(test2, 7) == 1);
	leaq	-80(%rbp), %rax	#, tmp96
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	func0	#
# problem74.c:23:     assert(func0(test2, 7) == 1);
	cmpl	$1, %eax	#, _2
	je	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$23, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC2(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L8:
# problem74.c:25:     int test3[] = {1, 4, 2};
	movl	$1, -156(%rbp)	#, test3[0]
	movl	$4, -152(%rbp)	#, test3[1]
	movl	$2, -148(%rbp)	#, test3[2]
# problem74.c:26:     assert(func0(test3, 3) == 1);
	leaq	-156(%rbp), %rax	#, tmp100
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	func0	#
# problem74.c:26:     assert(func0(test3, 3) == 1);
	cmpl	$1, %eax	#, _3
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$26, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC3(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L9:
# problem74.c:28:     int test4[] = {1, 4, 4, 2};
	movl	$1, -144(%rbp)	#, test4[0]
	movl	$4, -140(%rbp)	#, test4[1]
	movl	$4, -136(%rbp)	#, test4[2]
	movl	$2, -132(%rbp)	#, test4[3]
# problem74.c:29:     assert(func0(test4, 4) == 1);
	leaq	-144(%rbp), %rax	#, tmp104
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	func0	#
# problem74.c:29:     assert(func0(test4, 4) == 1);
	cmpl	$1, %eax	#, _4
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$29, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC4(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L10:
# problem74.c:31:     int test5[] = {1, 2, 3, 2, 1};
	movl	$1, -112(%rbp)	#, test5[0]
	movl	$2, -108(%rbp)	#, test5[1]
	movl	$3, -104(%rbp)	#, test5[2]
	movl	$2, -100(%rbp)	#, test5[3]
	movl	$1, -96(%rbp)	#, test5[4]
# problem74.c:32:     assert(func0(test5, 5) == 0);
	leaq	-112(%rbp), %rax	#, tmp108
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp108,
	call	func0	#
# problem74.c:32:     assert(func0(test5, 5) == 0);
	testl	%eax, %eax	# _5
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$32, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC5(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L11:
# problem74.c:34:     int test6[] = {3, 1, 1, 3};
	movl	$3, -128(%rbp)	#, test6[0]
	movl	$1, -124(%rbp)	#, test6[1]
	movl	$1, -120(%rbp)	#, test6[2]
	movl	$3, -116(%rbp)	#, test6[3]
# problem74.c:35:     assert(func0(test6, 4) == 0);
	leaq	-128(%rbp), %rax	#, tmp112
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	func0	#
# problem74.c:35:     assert(func0(test6, 4) == 0);
	testl	%eax, %eax	# _6
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$35, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC6(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L12:
# problem74.c:37:     int test7[] = {1};
	movl	$1, -168(%rbp)	#, test7[0]
# problem74.c:38:     assert(func0(test7, 1) == 0);
	leaq	-168(%rbp), %rax	#, tmp116
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	func0	#
# problem74.c:38:     assert(func0(test7, 1) == 0);
	testl	%eax, %eax	# _7
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$38, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC7(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L13:
# problem74.c:40:     int test8[] = {0, 1};
	movl	$0, -164(%rbp)	#, test8[0]
	movl	$1, -160(%rbp)	#, test8[1]
# problem74.c:41:     assert(func0(test8, 2) == 1);
	leaq	-164(%rbp), %rax	#, tmp120
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp120,
	call	func0	#
# problem74.c:41:     assert(func0(test8, 2) == 1);
	cmpl	$1, %eax	#, _8
	je	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$41, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC8(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	__assert_fail@PLT	#
.L14:
# problem74.c:43:     return 0;
	movl	$0, %eax	#, _60
# problem74.c:44: }
	movq	-8(%rbp), %rdx	# D.3248, tmp126
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L16	#,
	call	__stack_chk_fail@PLT	#
.L16:
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
