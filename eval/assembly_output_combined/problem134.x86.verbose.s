	.file	"problem134.c"
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
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# lst, lst
	movl	%esi, -44(%rbp)	# size, size
# problem134.c:5:     int sum = 0;
	movl	$0, -24(%rbp)	#, sum
# problem134.c:6:     for (int i = 0; i < size; i++) {
	movl	$0, -20(%rbp)	#, i
# problem134.c:6:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L3:
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	movl	-20(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-40(%rbp), %rax	# lst, tmp100
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	pxor	%xmm1, %xmm1	# _5
	cvtss2sd	%xmm0, %xmm1	# _4, _5
	movq	%xmm1, %rax	# _5, _5
	movq	%rax, %xmm0	# _5,
	call	ceil@PLT	#
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	cvttsd2sil	%xmm0, %ebx	# _6, _7
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	movl	-20(%rbp), %eax	# i, tmp101
	cltq
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-40(%rbp), %rax	# lst, tmp102
	addq	%rdx, %rax	# _9, _10
	movss	(%rax), %xmm0	# *_10, _11
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	pxor	%xmm2, %xmm2	# _12
	cvtss2sd	%xmm0, %xmm2	# _11, _12
	movq	%xmm2, %rax	# _12, _12
	movq	%rax, %xmm0	# _12,
	call	ceil@PLT	#
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	cvttsd2sil	%xmm0, %eax	# _13, _14
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	imull	%ebx, %eax	# _7, _15
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	addl	%eax, -24(%rbp)	# _15, sum
# problem134.c:6:     for (int i = 0; i < size; i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# problem134.c:6:     for (int i = 0; i < size; i++) {
	movl	-20(%rbp), %eax	# i, tmp103
	cmpl	-44(%rbp), %eax	# size, tmp103
	jl	.L3	#,
# problem134.c:9:     return sum;
	movl	-24(%rbp), %eax	# sum, _21
# problem134.c:10: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC3:
	.string	"problem134.c"
.LC4:
	.string	"func0(lst1, 3) == 14"
.LC5:
	.string	"func0(lst2, 3) == 14"
.LC8:
	.string	"func0(lst3, 4) == 84"
.LC12:
	.string	"func0(lst4, 3) == 29"
.LC14:
	.string	"func0(lst5, 3) == 6"
.LC17:
	.string	"func0(lst6, 4) == 10230"
.LC19:
	.string	"func0(lst7, 2) == 200000000"
.LC23:
	.string	"func0(lst8, 3) == 75"
.LC27:
	.string	"func0(lst9, 4) == 1086"
.LC28:
	.string	"func0(lst10, 1) == 0"
.LC30:
	.string	"func0(lst11, 1) == 1"
.LC31:
	.string	"func0(lst12, 3) == 2"
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
	subq	$160, %rsp	#,
# problem134.c:16: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp179
	movq	%rax, -8(%rbp)	# tmp179, D.3485
	xorl	%eax, %eax	# tmp179
# problem134.c:17:     float lst1[] = {1, 2, 3};
	movss	.LC0(%rip), %xmm0	#, tmp96
	movss	%xmm0, -136(%rbp)	# tmp96, lst1[0]
	movss	.LC1(%rip), %xmm0	#, tmp97
	movss	%xmm0, -132(%rbp)	# tmp97, lst1[1]
	movss	.LC2(%rip), %xmm0	#, tmp98
	movss	%xmm0, -128(%rbp)	# tmp98, lst1[2]
# problem134.c:18:     assert(func0(lst1, 3) == 14);
	leaq	-136(%rbp), %rax	#, tmp99
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	func0	#
	cmpl	$14, %eax	#, _1
	je	.L6	#,
# problem134.c:18:     assert(func0(lst1, 3) == 14);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$18, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC4(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L6:
# problem134.c:20:     float lst2[] = {1.0, 2, 3};
	movss	.LC0(%rip), %xmm0	#, tmp103
	movss	%xmm0, -124(%rbp)	# tmp103, lst2[0]
	movss	.LC1(%rip), %xmm0	#, tmp104
	movss	%xmm0, -120(%rbp)	# tmp104, lst2[1]
	movss	.LC2(%rip), %xmm0	#, tmp105
	movss	%xmm0, -116(%rbp)	# tmp105, lst2[2]
# problem134.c:21:     assert(func0(lst2, 3) == 14);
	leaq	-124(%rbp), %rax	#, tmp106
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp106,
	call	func0	#
	cmpl	$14, %eax	#, _2
	je	.L7	#,
# problem134.c:21:     assert(func0(lst2, 3) == 14);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$21, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC5(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L7:
# problem134.c:23:     float lst3[] = {1, 3, 5, 7};
	movss	.LC0(%rip), %xmm0	#, tmp110
	movss	%xmm0, -64(%rbp)	# tmp110, lst3[0]
	movss	.LC2(%rip), %xmm0	#, tmp111
	movss	%xmm0, -60(%rbp)	# tmp111, lst3[1]
	movss	.LC6(%rip), %xmm0	#, tmp112
	movss	%xmm0, -56(%rbp)	# tmp112, lst3[2]
	movss	.LC7(%rip), %xmm0	#, tmp113
	movss	%xmm0, -52(%rbp)	# tmp113, lst3[3]
# problem134.c:24:     assert(func0(lst3, 4) == 84);
	leaq	-64(%rbp), %rax	#, tmp114
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	func0	#
	cmpl	$84, %eax	#, _3
	je	.L8	#,
# problem134.c:24:     assert(func0(lst3, 4) == 84);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp115
	movq	%rax, %rcx	# tmp115,
	movl	$24, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	leaq	.LC8(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	__assert_fail@PLT	#
.L8:
# problem134.c:26:     float lst4[] = {1.4, 4.2, 0};
	movss	.LC9(%rip), %xmm0	#, tmp118
	movss	%xmm0, -112(%rbp)	# tmp118, lst4[0]
	movss	.LC10(%rip), %xmm0	#, tmp119
	movss	%xmm0, -108(%rbp)	# tmp119, lst4[1]
	pxor	%xmm0, %xmm0	# tmp120
	movss	%xmm0, -104(%rbp)	# tmp120, lst4[2]
# problem134.c:27:     assert(func0(lst4, 3) == 29);
	leaq	-112(%rbp), %rax	#, tmp121
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	func0	#
	cmpl	$29, %eax	#, _4
	je	.L9	#,
# problem134.c:27:     assert(func0(lst4, 3) == 29);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp122
	movq	%rax, %rcx	# tmp122,
	movl	$27, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp123
	movq	%rax, %rsi	# tmp123,
	leaq	.LC12(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	__assert_fail@PLT	#
.L9:
# problem134.c:29:     float lst5[] = {-2.4, 1, 1};
	movss	.LC13(%rip), %xmm0	#, tmp125
	movss	%xmm0, -100(%rbp)	# tmp125, lst5[0]
	movss	.LC0(%rip), %xmm0	#, tmp126
	movss	%xmm0, -96(%rbp)	# tmp126, lst5[1]
	movss	.LC0(%rip), %xmm0	#, tmp127
	movss	%xmm0, -92(%rbp)	# tmp127, lst5[2]
# problem134.c:30:     assert(func0(lst5, 3) == 6);
	leaq	-100(%rbp), %rax	#, tmp128
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	func0	#
	cmpl	$6, %eax	#, _5
	je	.L10	#,
# problem134.c:30:     assert(func0(lst5, 3) == 6);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp129
	movq	%rax, %rcx	# tmp129,
	movl	$30, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp130
	movq	%rax, %rsi	# tmp130,
	leaq	.LC14(%rip), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	call	__assert_fail@PLT	#
.L10:
# problem134.c:32:     float lst6[] = {100, 1, 15, 2};
	movss	.LC15(%rip), %xmm0	#, tmp132
	movss	%xmm0, -48(%rbp)	# tmp132, lst6[0]
	movss	.LC0(%rip), %xmm0	#, tmp133
	movss	%xmm0, -44(%rbp)	# tmp133, lst6[1]
	movss	.LC16(%rip), %xmm0	#, tmp134
	movss	%xmm0, -40(%rbp)	# tmp134, lst6[2]
	movss	.LC1(%rip), %xmm0	#, tmp135
	movss	%xmm0, -36(%rbp)	# tmp135, lst6[3]
# problem134.c:33:     assert(func0(lst6, 4) == 10230);
	leaq	-48(%rbp), %rax	#, tmp136
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	func0	#
	cmpl	$10230, %eax	#, _6
	je	.L11	#,
# problem134.c:33:     assert(func0(lst6, 4) == 10230);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp137
	movq	%rax, %rcx	# tmp137,
	movl	$33, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp138
	movq	%rax, %rsi	# tmp138,
	leaq	.LC17(%rip), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	__assert_fail@PLT	#
.L11:
# problem134.c:35:     float lst7[] = {10000, 10000};
	movss	.LC18(%rip), %xmm0	#, tmp140
	movss	%xmm0, -144(%rbp)	# tmp140, lst7[0]
	movss	.LC18(%rip), %xmm0	#, tmp141
	movss	%xmm0, -140(%rbp)	# tmp141, lst7[1]
# problem134.c:36:     assert(func0(lst7, 2) == 200000000);
	leaq	-144(%rbp), %rax	#, tmp142
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	func0	#
	cmpl	$200000000, %eax	#, _7
	je	.L12	#,
# problem134.c:36:     assert(func0(lst7, 2) == 200000000);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp143
	movq	%rax, %rcx	# tmp143,
	movl	$36, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp144
	movq	%rax, %rsi	# tmp144,
	leaq	.LC19(%rip), %rax	#, tmp145
	movq	%rax, %rdi	# tmp145,
	call	__assert_fail@PLT	#
.L12:
# problem134.c:38:     float lst8[] = {-1.4, 4.6, 6.3};
	movss	.LC20(%rip), %xmm0	#, tmp146
	movss	%xmm0, -88(%rbp)	# tmp146, lst8[0]
	movss	.LC21(%rip), %xmm0	#, tmp147
	movss	%xmm0, -84(%rbp)	# tmp147, lst8[1]
	movss	.LC22(%rip), %xmm0	#, tmp148
	movss	%xmm0, -80(%rbp)	# tmp148, lst8[2]
# problem134.c:39:     assert(func0(lst8, 3) == 75);
	leaq	-88(%rbp), %rax	#, tmp149
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp149,
	call	func0	#
	cmpl	$75, %eax	#, _8
	je	.L13	#,
# problem134.c:39:     assert(func0(lst8, 3) == 75);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp150
	movq	%rax, %rcx	# tmp150,
	movl	$39, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp151
	movq	%rax, %rsi	# tmp151,
	leaq	.LC23(%rip), %rax	#, tmp152
	movq	%rax, %rdi	# tmp152,
	call	__assert_fail@PLT	#
.L13:
# problem134.c:41:     float lst9[] = {-1.4, 17.9, 18.9, 19.9};
	movss	.LC20(%rip), %xmm0	#, tmp153
	movss	%xmm0, -32(%rbp)	# tmp153, lst9[0]
	movss	.LC24(%rip), %xmm0	#, tmp154
	movss	%xmm0, -28(%rbp)	# tmp154, lst9[1]
	movss	.LC25(%rip), %xmm0	#, tmp155
	movss	%xmm0, -24(%rbp)	# tmp155, lst9[2]
	movss	.LC26(%rip), %xmm0	#, tmp156
	movss	%xmm0, -20(%rbp)	# tmp156, lst9[3]
# problem134.c:42:     assert(func0(lst9, 4) == 1086);
	leaq	-32(%rbp), %rax	#, tmp157
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp157,
	call	func0	#
	cmpl	$1086, %eax	#, _9
	je	.L14	#,
# problem134.c:42:     assert(func0(lst9, 4) == 1086);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp158
	movq	%rax, %rcx	# tmp158,
	movl	$42, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp159
	movq	%rax, %rsi	# tmp159,
	leaq	.LC27(%rip), %rax	#, tmp160
	movq	%rax, %rdi	# tmp160,
	call	__assert_fail@PLT	#
.L14:
# problem134.c:44:     float lst10[] = {0};
	pxor	%xmm0, %xmm0	# tmp161
	movss	%xmm0, -152(%rbp)	# tmp161, lst10[0]
# problem134.c:45:     assert(func0(lst10, 1) == 0);
	leaq	-152(%rbp), %rax	#, tmp162
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp162,
	call	func0	#
	testl	%eax, %eax	# _10
	je	.L15	#,
# problem134.c:45:     assert(func0(lst10, 1) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp163
	movq	%rax, %rcx	# tmp163,
	movl	$45, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp164
	movq	%rax, %rsi	# tmp164,
	leaq	.LC28(%rip), %rax	#, tmp165
	movq	%rax, %rdi	# tmp165,
	call	__assert_fail@PLT	#
.L15:
# problem134.c:47:     float lst11[] = {-1};
	movss	.LC29(%rip), %xmm0	#, tmp166
	movss	%xmm0, -148(%rbp)	# tmp166, lst11[0]
# problem134.c:48:     assert(func0(lst11, 1) == 1);
	leaq	-148(%rbp), %rax	#, tmp167
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp167,
	call	func0	#
	cmpl	$1, %eax	#, _11
	je	.L16	#,
# problem134.c:48:     assert(func0(lst11, 1) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp168
	movq	%rax, %rcx	# tmp168,
	movl	$48, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp169
	movq	%rax, %rsi	# tmp169,
	leaq	.LC30(%rip), %rax	#, tmp170
	movq	%rax, %rdi	# tmp170,
	call	__assert_fail@PLT	#
.L16:
# problem134.c:50:     float lst12[] = {-1, 1, 0};
	movss	.LC29(%rip), %xmm0	#, tmp171
	movss	%xmm0, -76(%rbp)	# tmp171, lst12[0]
	movss	.LC0(%rip), %xmm0	#, tmp172
	movss	%xmm0, -72(%rbp)	# tmp172, lst12[1]
	pxor	%xmm0, %xmm0	# tmp173
	movss	%xmm0, -68(%rbp)	# tmp173, lst12[2]
# problem134.c:51:     assert(func0(lst12, 3) == 2);
	leaq	-76(%rbp), %rax	#, tmp174
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp174,
	call	func0	#
	cmpl	$2, %eax	#, _12
	je	.L17	#,
# problem134.c:51:     assert(func0(lst12, 3) == 2);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp175
	movq	%rax, %rcx	# tmp175,
	movl	$51, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp176
	movq	%rax, %rsi	# tmp176,
	leaq	.LC31(%rip), %rax	#, tmp177
	movq	%rax, %rdi	# tmp177,
	call	__assert_fail@PLT	#
.L17:
# problem134.c:53:     return 0;
	movl	$0, %eax	#, _72
# problem134.c:54: }
	movq	-8(%rbp), %rdx	# D.3485, tmp180
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp180
	je	.L19	#,
	call	__stack_chk_fail@PLT	#
.L19:
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
	.align 4
.LC0:
	.long	1065353216
	.align 4
.LC1:
	.long	1073741824
	.align 4
.LC2:
	.long	1077936128
	.align 4
.LC6:
	.long	1084227584
	.align 4
.LC7:
	.long	1088421888
	.align 4
.LC9:
	.long	1068708659
	.align 4
.LC10:
	.long	1082549862
	.align 4
.LC13:
	.long	-1072064102
	.align 4
.LC15:
	.long	1120403456
	.align 4
.LC16:
	.long	1097859072
	.align 4
.LC18:
	.long	1176256512
	.align 4
.LC20:
	.long	-1078774989
	.align 4
.LC21:
	.long	1083388723
	.align 4
.LC22:
	.long	1086953882
	.align 4
.LC24:
	.long	1099903795
	.align 4
.LC25:
	.long	1100428083
	.align 4
.LC26:
	.long	1100952371
	.align 4
.LC29:
	.long	-1082130432
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
