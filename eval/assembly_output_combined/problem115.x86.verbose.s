	.file	"problem115.c"
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
	movq	%rdi, -40(%rbp)	# nums, nums
	movl	%esi, -44(%rbp)	# size, size
# problem115.c:4:     long long current = nums[0];
	movq	-40(%rbp), %rax	# nums, tmp92
	movq	(%rax), %rax	# *nums_14(D), tmp93
	movq	%rax, -16(%rbp)	# tmp93, current
# problem115.c:5:     long long min = nums[0];
	movq	-40(%rbp), %rax	# nums, tmp94
	movq	(%rax), %rax	# *nums_14(D), tmp95
	movq	%rax, -8(%rbp)	# tmp95, min
# problem115.c:6:     for (int i = 1; i < size; i++) {
	movl	$1, -20(%rbp)	#, i
# problem115.c:6:     for (int i = 1; i < size; i++) {
	jmp	.L2	#
.L6:
# problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	cmpq	$0, -16(%rbp)	#, current
	jns	.L3	#,
# problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	movl	-20(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-40(%rbp), %rax	# nums, tmp97
	addq	%rdx, %rax	# _2, _3
	movq	(%rax), %rdx	# *_3, _4
# problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	movq	-16(%rbp), %rax	# current, tmp98
	addq	%rdx, %rax	# _4, iftmp.0_12
	jmp	.L4	#
.L3:
# problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	movl	-20(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,8), %rdx	#, _6
	movq	-40(%rbp), %rax	# nums, tmp100
	addq	%rdx, %rax	# _6, _7
# problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	movq	(%rax), %rax	# *_7, iftmp.0_12
.L4:
# problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	movq	%rax, -16(%rbp)	# iftmp.0_12, current
# problem115.c:8:         if (current < min) min = current;
	movq	-16(%rbp), %rax	# current, tmp101
	cmpq	-8(%rbp), %rax	# min, tmp101
	jge	.L5	#,
# problem115.c:8:         if (current < min) min = current;
	movq	-16(%rbp), %rax	# current, tmp102
	movq	%rax, -8(%rbp)	# tmp102, min
.L5:
# problem115.c:6:     for (int i = 1; i < size; i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# problem115.c:6:     for (int i = 1; i < size; i++) {
	movl	-20(%rbp), %eax	# i, tmp103
	cmpl	-44(%rbp), %eax	# size, tmp103
	jl	.L6	#,
# problem115.c:10:     return min;
	movq	-8(%rbp), %rax	# min, _19
# problem115.c:11: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem115.c"
.LC1:
	.string	"func0(nums1, 6) == 1"
.LC2:
	.string	"func0(nums2, 3) == -6"
.LC3:
	.string	"func0(nums3, 5) == -14"
	.align 8
.LC4:
	.string	"func0(nums4, 1) == -9999999999999999"
.LC5:
	.string	"func0(nums5, 4) == 0"
.LC6:
	.string	"func0(nums6, 5) == -6"
.LC7:
	.string	"func0(nums7, 6) == -6"
.LC8:
	.string	"func0(nums8, 6) == 3"
.LC9:
	.string	"func0(nums9, 6) == -33"
.LC10:
	.string	"func0(nums10, 1) == -10"
.LC11:
	.string	"func0(nums11, 1) == 7"
.LC12:
	.string	"func0(nums12, 2) == -1"
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
	subq	$416, %rsp	#,
# problem115.c:17: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp146
	movq	%rax, -8(%rbp)	# tmp146, D.2439
	xorl	%eax, %eax	# tmp146
# problem115.c:18:     long long nums1[] = {2, 3, 4, 1, 2, 4};
	movq	$2, -208(%rbp)	#, nums1[0]
	movq	$3, -200(%rbp)	#, nums1[1]
	movq	$4, -192(%rbp)	#, nums1[2]
	movq	$1, -184(%rbp)	#, nums1[3]
	movq	$2, -176(%rbp)	#, nums1[4]
	movq	$4, -168(%rbp)	#, nums1[5]
# problem115.c:19:     assert(func0(nums1, 6) == 1);
	leaq	-208(%rbp), %rax	#, tmp96
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	func0	#
	cmpq	$1, %rax	#, _1
	je	.L9	#,
# problem115.c:19:     assert(func0(nums1, 6) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$19, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC1(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L9:
# problem115.c:21:     long long nums2[] = {-1, -2, -3};
	movq	$-1, -368(%rbp)	#, nums2[0]
	movq	$-2, -360(%rbp)	#, nums2[1]
	movq	$-3, -352(%rbp)	#, nums2[2]
# problem115.c:22:     assert(func0(nums2, 3) == -6);
	leaq	-368(%rbp), %rax	#, tmp100
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	func0	#
	cmpq	$-6, %rax	#, _2
	je	.L10	#,
# problem115.c:22:     assert(func0(nums2, 3) == -6);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC2(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L10:
# problem115.c:24:     long long nums3[] = {-1, -2, -3, 2, -10};
	movq	$-1, -304(%rbp)	#, nums3[0]
	movq	$-2, -296(%rbp)	#, nums3[1]
	movq	$-3, -288(%rbp)	#, nums3[2]
	movq	$2, -280(%rbp)	#, nums3[3]
	movq	$-10, -272(%rbp)	#, nums3[4]
# problem115.c:25:     assert(func0(nums3, 5) == -14);
	leaq	-304(%rbp), %rax	#, tmp104
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	func0	#
	cmpq	$-14, %rax	#, _3
	je	.L11	#,
# problem115.c:25:     assert(func0(nums3, 5) == -14);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$25, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC3(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L11:
# problem115.c:27:     long long nums4[] = {-9999999999999999};
	movabsq	$-9999999999999999, %rax	#, tmp149
	movq	%rax, -408(%rbp)	# tmp149, nums4[0]
# problem115.c:28:     assert(func0(nums4, 1) == -9999999999999999);
	leaq	-408(%rbp), %rax	#, tmp108
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp108,
	call	func0	#
	movabsq	$-9999999999999999, %rdx	#, tmp109
	cmpq	%rdx, %rax	# tmp109, _4
	je	.L12	#,
# problem115.c:28:     assert(func0(nums4, 1) == -9999999999999999);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp110
	movq	%rax, %rcx	# tmp110,
	movl	$28, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	leaq	.LC4(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	__assert_fail@PLT	#
.L12:
# problem115.c:30:     long long nums5[] = {0, 10, 20, 1000000};
	movq	$0, -336(%rbp)	#, nums5[0]
	movq	$10, -328(%rbp)	#, nums5[1]
	movq	$20, -320(%rbp)	#, nums5[2]
	movq	$1000000, -312(%rbp)	#, nums5[3]
# problem115.c:31:     assert(func0(nums5, 4) == 0);
	leaq	-336(%rbp), %rax	#, tmp113
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	func0	#
	testq	%rax, %rax	# _5
	je	.L13	#,
# problem115.c:31:     assert(func0(nums5, 4) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$31, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC5(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	__assert_fail@PLT	#
.L13:
# problem115.c:33:     long long nums6[] = {-1, -2, -3, 10, -5};
	movq	$-1, -256(%rbp)	#, nums6[0]
	movq	$-2, -248(%rbp)	#, nums6[1]
	movq	$-3, -240(%rbp)	#, nums6[2]
	movq	$10, -232(%rbp)	#, nums6[3]
	movq	$-5, -224(%rbp)	#, nums6[4]
# problem115.c:34:     assert(func0(nums6, 5) == -6);
	leaq	-256(%rbp), %rax	#, tmp117
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp117,
	call	func0	#
	cmpq	$-6, %rax	#, _6
	je	.L14	#,
# problem115.c:34:     assert(func0(nums6, 5) == -6);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp118
	movq	%rax, %rcx	# tmp118,
	movl	$34, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp119
	movq	%rax, %rsi	# tmp119,
	leaq	.LC6(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	__assert_fail@PLT	#
.L14:
# problem115.c:36:     long long nums7[] = {100, -1, -2, -3, 10, -5};
	movq	$100, -160(%rbp)	#, nums7[0]
	movq	$-1, -152(%rbp)	#, nums7[1]
	movq	$-2, -144(%rbp)	#, nums7[2]
	movq	$-3, -136(%rbp)	#, nums7[3]
	movq	$10, -128(%rbp)	#, nums7[4]
	movq	$-5, -120(%rbp)	#, nums7[5]
# problem115.c:37:     assert(func0(nums7, 6) == -6);
	leaq	-160(%rbp), %rax	#, tmp121
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	func0	#
	cmpq	$-6, %rax	#, _7
	je	.L15	#,
# problem115.c:37:     assert(func0(nums7, 6) == -6);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp122
	movq	%rax, %rcx	# tmp122,
	movl	$37, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp123
	movq	%rax, %rsi	# tmp123,
	leaq	.LC7(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	__assert_fail@PLT	#
.L15:
# problem115.c:39:     long long nums8[] = {10, 11, 13, 8, 3, 4};
	movq	$10, -112(%rbp)	#, nums8[0]
	movq	$11, -104(%rbp)	#, nums8[1]
	movq	$13, -96(%rbp)	#, nums8[2]
	movq	$8, -88(%rbp)	#, nums8[3]
	movq	$3, -80(%rbp)	#, nums8[4]
	movq	$4, -72(%rbp)	#, nums8[5]
# problem115.c:40:     assert(func0(nums8, 6) == 3);
	leaq	-112(%rbp), %rax	#, tmp125
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp125,
	call	func0	#
	cmpq	$3, %rax	#, _8
	je	.L16	#,
# problem115.c:40:     assert(func0(nums8, 6) == 3);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp126
	movq	%rax, %rcx	# tmp126,
	movl	$40, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp127
	movq	%rax, %rsi	# tmp127,
	leaq	.LC8(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	__assert_fail@PLT	#
.L16:
# problem115.c:42:     long long nums9[] = {100, -33, 32, -1, 0, -2};
	movq	$100, -64(%rbp)	#, nums9[0]
	movq	$-33, -56(%rbp)	#, nums9[1]
	movq	$32, -48(%rbp)	#, nums9[2]
	movq	$-1, -40(%rbp)	#, nums9[3]
	movq	$0, -32(%rbp)	#, nums9[4]
	movq	$-2, -24(%rbp)	#, nums9[5]
# problem115.c:43:     assert(func0(nums9, 6) == -33);
	leaq	-64(%rbp), %rax	#, tmp129
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp129,
	call	func0	#
	cmpq	$-33, %rax	#, _9
	je	.L17	#,
# problem115.c:43:     assert(func0(nums9, 6) == -33);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp130
	movq	%rax, %rcx	# tmp130,
	movl	$43, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp131
	movq	%rax, %rsi	# tmp131,
	leaq	.LC9(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	__assert_fail@PLT	#
.L17:
# problem115.c:45:     long long nums10[] = {-10};
	movq	$-10, -400(%rbp)	#, nums10[0]
# problem115.c:46:     assert(func0(nums10, 1) == -10);
	leaq	-400(%rbp), %rax	#, tmp133
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp133,
	call	func0	#
	cmpq	$-10, %rax	#, _10
	je	.L18	#,
# problem115.c:46:     assert(func0(nums10, 1) == -10);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp134
	movq	%rax, %rcx	# tmp134,
	movl	$46, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp135
	movq	%rax, %rsi	# tmp135,
	leaq	.LC10(%rip), %rax	#, tmp136
	movq	%rax, %rdi	# tmp136,
	call	__assert_fail@PLT	#
.L18:
# problem115.c:48:     long long nums11[] = {7};
	movq	$7, -392(%rbp)	#, nums11[0]
# problem115.c:49:     assert(func0(nums11, 1) == 7);
	leaq	-392(%rbp), %rax	#, tmp137
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp137,
	call	func0	#
	cmpq	$7, %rax	#, _11
	je	.L19	#,
# problem115.c:49:     assert(func0(nums11, 1) == 7);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp138
	movq	%rax, %rcx	# tmp138,
	movl	$49, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp139
	movq	%rax, %rsi	# tmp139,
	leaq	.LC11(%rip), %rax	#, tmp140
	movq	%rax, %rdi	# tmp140,
	call	__assert_fail@PLT	#
.L19:
# problem115.c:51:     long long nums12[] = {1, -1};
	movq	$1, -384(%rbp)	#, nums12[0]
	movq	$-1, -376(%rbp)	#, nums12[1]
# problem115.c:52:     assert(func0(nums12, 2) == -1);
	leaq	-384(%rbp), %rax	#, tmp141
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp141,
	call	func0	#
	cmpq	$-1, %rax	#, _12
	je	.L20	#,
# problem115.c:52:     assert(func0(nums12, 2) == -1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp142
	movq	%rax, %rcx	# tmp142,
	movl	$52, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp143
	movq	%rax, %rsi	# tmp143,
	leaq	.LC12(%rip), %rax	#, tmp144
	movq	%rax, %rdi	# tmp144,
	call	__assert_fail@PLT	#
.L20:
# problem115.c:54:     return 0;
	movl	$0, %eax	#, _84
# problem115.c:55: }
	movq	-8(%rbp), %rdx	# D.2439, tmp147
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp147
	je	.L22	#,
	call	__stack_chk_fail@PLT	#
.L22:
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
