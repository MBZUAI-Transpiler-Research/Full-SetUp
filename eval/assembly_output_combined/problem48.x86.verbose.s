	.file	"problem48.c"
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
	movq	%rdi, -24(%rbp)	# l, l
	movl	%esi, -28(%rbp)	# size, size
# problem48.c:6:     for (int i = 0; i < size; i++) {
	movl	$0, -12(%rbp)	#, i
# problem48.c:6:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L7:
# problem48.c:7:         for (int j = i + 1; j < size; j++) {
	movl	-12(%rbp), %eax	# i, tmp125
	addl	$1, %eax	#, tmp124
	movl	%eax, -8(%rbp)	# tmp124, j
# problem48.c:7:         for (int j = i + 1; j < size; j++) {
	jmp	.L3	#
.L6:
# problem48.c:8:             if (l[i] > l[j]) {
	movl	-12(%rbp), %eax	# i, tmp126
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# l, tmp127
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
# problem48.c:8:             if (l[i] > l[j]) {
	movl	-8(%rbp), %eax	# j, tmp128
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-24(%rbp), %rax	# l, tmp129
	addq	%rdx, %rax	# _6, _7
	movss	(%rax), %xmm1	# *_7, _8
# problem48.c:8:             if (l[i] > l[j]) {
	comiss	%xmm1, %xmm0	# _8, _4
	jbe	.L4	#,
# problem48.c:9:                 float temp = l[i];
	movl	-12(%rbp), %eax	# i, tmp130
	cltq
	leaq	0(,%rax,4), %rdx	#, _10
	movq	-24(%rbp), %rax	# l, tmp131
	addq	%rdx, %rax	# _10, _11
# problem48.c:9:                 float temp = l[i];
	movss	(%rax), %xmm0	# *_11, tmp132
	movss	%xmm0, -4(%rbp)	# tmp132, temp
# problem48.c:10:                 l[i] = l[j];
	movl	-8(%rbp), %eax	# j, tmp133
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-24(%rbp), %rax	# l, tmp134
	addq	%rax, %rdx	# tmp134, _14
# problem48.c:10:                 l[i] = l[j];
	movl	-12(%rbp), %eax	# i, tmp135
	cltq
	leaq	0(,%rax,4), %rcx	#, _16
	movq	-24(%rbp), %rax	# l, tmp136
	addq	%rcx, %rax	# _16, _17
# problem48.c:10:                 l[i] = l[j];
	movss	(%rdx), %xmm0	# *_14, _18
# problem48.c:10:                 l[i] = l[j];
	movss	%xmm0, (%rax)	# _18, *_17
# problem48.c:11:                 l[j] = temp;
	movl	-8(%rbp), %eax	# j, tmp137
	cltq
	leaq	0(,%rax,4), %rdx	#, _20
	movq	-24(%rbp), %rax	# l, tmp138
	addq	%rdx, %rax	# _20, _21
# problem48.c:11:                 l[j] = temp;
	movss	-4(%rbp), %xmm0	# temp, tmp139
	movss	%xmm0, (%rax)	# tmp139, *_21
.L4:
# problem48.c:7:         for (int j = i + 1; j < size; j++) {
	addl	$1, -8(%rbp)	#, j
.L3:
# problem48.c:7:         for (int j = i + 1; j < size; j++) {
	movl	-8(%rbp), %eax	# j, tmp140
	cmpl	-28(%rbp), %eax	# size, tmp140
	jl	.L6	#,
# problem48.c:6:     for (int i = 0; i < size; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# problem48.c:6:     for (int i = 0; i < size; i++) {
	movl	-12(%rbp), %eax	# i, tmp141
	cmpl	-28(%rbp), %eax	# size, tmp141
	jl	.L7	#,
# problem48.c:15:     if (size % 2 == 1) return l[size / 2];
	movl	-28(%rbp), %eax	# size, tmp142
	cltd
	shrl	$31, %edx	#, tmp144
	addl	%edx, %eax	# tmp144, tmp145
	andl	$1, %eax	#, tmp146
	subl	%edx, %eax	# tmp144, tmp147
# problem48.c:15:     if (size % 2 == 1) return l[size / 2];
	cmpl	$1, %eax	#, _22
	jne	.L8	#,
# problem48.c:15:     if (size % 2 == 1) return l[size / 2];
	movl	-28(%rbp), %eax	# size, tmp148
	movl	%eax, %edx	# tmp148, tmp149
	shrl	$31, %edx	#, tmp149
	addl	%edx, %eax	# tmp149, tmp150
	sarl	%eax	# tmp151
	cltq
# problem48.c:15:     if (size % 2 == 1) return l[size / 2];
	leaq	0(,%rax,4), %rdx	#, _25
	movq	-24(%rbp), %rax	# l, tmp152
	addq	%rdx, %rax	# _25, _26
	movss	(%rax), %xmm0	# *_26, _41
	jmp	.L9	#
.L8:
# problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	movl	-28(%rbp), %eax	# size, tmp153
	movl	%eax, %edx	# tmp153, tmp154
	shrl	$31, %edx	#, tmp154
	addl	%edx, %eax	# tmp154, tmp155
	sarl	%eax	# tmp156
	cltq
# problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	leaq	0(,%rax,4), %rdx	#, _29
	movq	-24(%rbp), %rax	# l, tmp157
	addq	%rdx, %rax	# _29, _30
	movss	(%rax), %xmm1	# *_30, _31
# problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	movl	-28(%rbp), %eax	# size, tmp158
	movl	%eax, %edx	# tmp158, tmp159
	shrl	$31, %edx	#, tmp159
	addl	%edx, %eax	# tmp159, tmp160
	sarl	%eax	# tmp161
	cltq
# problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	salq	$2, %rax	#, _34
	leaq	-4(%rax), %rdx	#, _35
	movq	-24(%rbp), %rax	# l, tmp162
	addq	%rdx, %rax	# _35, _36
	movss	(%rax), %xmm0	# *_36, _37
# problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	addss	%xmm0, %xmm1	# _37, _38
# problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	movss	.LC0(%rip), %xmm0	#, tmp163
	mulss	%xmm1, %xmm0	# _38, _41
.L9:
# problem48.c:17: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC8:
	.string	"problem48.c"
	.align 8
.LC9:
	.string	"fabs(func0(list1, 5) - 3) < 1e-4"
	.align 8
.LC17:
	.string	"fabs(func0(list2, 6) - 8.0) < 1e-4"
	.align 8
.LC18:
	.string	"fabs(func0(list3, 1) - 5) < 1e-4"
	.align 8
.LC20:
	.string	"fabs(func0(list4, 2) - 5.5) < 1e-4"
	.align 8
.LC24:
	.string	"fabs(func0(list5, 7) - 7) < 1e-4"
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
	addq	$-128, %rsp	#,
# problem48.c:25: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp161
	movq	%rax, -8(%rbp)	# tmp161, D.3985
	xorl	%eax, %eax	# tmp161
# problem48.c:26:     float list1[] = {3, 1, 2, 4, 5};
	movss	.LC1(%rip), %xmm0	#, tmp104
	movss	%xmm0, -112(%rbp)	# tmp104, list1[0]
	movss	.LC2(%rip), %xmm0	#, tmp105
	movss	%xmm0, -108(%rbp)	# tmp105, list1[1]
	movss	.LC3(%rip), %xmm0	#, tmp106
	movss	%xmm0, -104(%rbp)	# tmp106, list1[2]
	movss	.LC4(%rip), %xmm0	#, tmp107
	movss	%xmm0, -100(%rbp)	# tmp107, list1[3]
	movss	.LC5(%rip), %xmm0	#, tmp108
	movss	%xmm0, -96(%rbp)	# tmp108, list1[4]
# problem48.c:27:     assert(fabs(func0(list1, 5) - 3) < 1e-4);
	leaq	-112(%rbp), %rax	#, tmp109
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	func0	#
	movd	%xmm0, %eax	#, _1
	movss	.LC1(%rip), %xmm1	#, tmp110
	movd	%eax, %xmm0	# _1, _1
	subss	%xmm1, %xmm0	# tmp110, _1
	movss	.LC6(%rip), %xmm1	#, tmp111
	andps	%xmm1, %xmm0	# tmp111, _3
	pxor	%xmm1, %xmm1	# _4
	cvtss2sd	%xmm0, %xmm1	# _3, _4
	movsd	.LC7(%rip), %xmm0	#, tmp112
	comisd	%xmm1, %xmm0	# _4, tmp112
	ja	.L12	#,
# problem48.c:27:     assert(fabs(func0(list1, 5) - 3) < 1e-4);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$27, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC9(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L12:
# problem48.c:29:     float list2[] = {-10, 4, 6, 1000, 10, 20};
	movss	.LC10(%rip), %xmm0	#, tmp116
	movss	%xmm0, -80(%rbp)	# tmp116, list2[0]
	movss	.LC4(%rip), %xmm0	#, tmp117
	movss	%xmm0, -76(%rbp)	# tmp117, list2[1]
	movss	.LC11(%rip), %xmm0	#, tmp118
	movss	%xmm0, -72(%rbp)	# tmp118, list2[2]
	movss	.LC12(%rip), %xmm0	#, tmp119
	movss	%xmm0, -68(%rbp)	# tmp119, list2[3]
	movss	.LC13(%rip), %xmm0	#, tmp120
	movss	%xmm0, -64(%rbp)	# tmp120, list2[4]
	movss	.LC14(%rip), %xmm0	#, tmp121
	movss	%xmm0, -60(%rbp)	# tmp121, list2[5]
# problem48.c:30:     assert(fabs(func0(list2, 6) - 8.0) < 1e-4);
	leaq	-80(%rbp), %rax	#, tmp122
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	func0	#
	cvtss2sd	%xmm0, %xmm0	# _5, _6
	movsd	.LC15(%rip), %xmm1	#, tmp123
	subsd	%xmm1, %xmm0	# tmp123, _7
	movq	.LC16(%rip), %xmm1	#, tmp124
	andpd	%xmm0, %xmm1	# _7, _8
	movsd	.LC7(%rip), %xmm0	#, tmp125
	comisd	%xmm1, %xmm0	# _8, tmp125
	ja	.L13	#,
# problem48.c:30:     assert(fabs(func0(list2, 6) - 8.0) < 1e-4);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp126
	movq	%rax, %rcx	# tmp126,
	movl	$30, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp127
	movq	%rax, %rsi	# tmp127,
	leaq	.LC17(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	__assert_fail@PLT	#
.L13:
# problem48.c:32:     float list3[] = {5};
	movss	.LC5(%rip), %xmm0	#, tmp129
	movss	%xmm0, -124(%rbp)	# tmp129, list3[0]
# problem48.c:33:     assert(fabs(func0(list3, 1) - 5) < 1e-4);
	leaq	-124(%rbp), %rax	#, tmp130
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	func0	#
	movd	%xmm0, %eax	#, _9
	movss	.LC5(%rip), %xmm1	#, tmp131
	movd	%eax, %xmm0	# _9, _9
	subss	%xmm1, %xmm0	# tmp131, _9
	movss	.LC6(%rip), %xmm1	#, tmp132
	andps	%xmm1, %xmm0	# tmp132, _11
	pxor	%xmm1, %xmm1	# _12
	cvtss2sd	%xmm0, %xmm1	# _11, _12
	movsd	.LC7(%rip), %xmm0	#, tmp133
	comisd	%xmm1, %xmm0	# _12, tmp133
	ja	.L14	#,
# problem48.c:33:     assert(fabs(func0(list3, 1) - 5) < 1e-4);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp134
	movq	%rax, %rcx	# tmp134,
	movl	$33, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp135
	movq	%rax, %rsi	# tmp135,
	leaq	.LC18(%rip), %rax	#, tmp136
	movq	%rax, %rdi	# tmp136,
	call	__assert_fail@PLT	#
.L14:
# problem48.c:35:     float list4[] = {6, 5};
	movss	.LC11(%rip), %xmm0	#, tmp137
	movss	%xmm0, -120(%rbp)	# tmp137, list4[0]
	movss	.LC5(%rip), %xmm0	#, tmp138
	movss	%xmm0, -116(%rbp)	# tmp138, list4[1]
# problem48.c:36:     assert(fabs(func0(list4, 2) - 5.5) < 1e-4);
	leaq	-120(%rbp), %rax	#, tmp139
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp139,
	call	func0	#
	cvtss2sd	%xmm0, %xmm0	# _13, _14
	movsd	.LC19(%rip), %xmm1	#, tmp140
	subsd	%xmm1, %xmm0	# tmp140, _15
	movq	.LC16(%rip), %xmm1	#, tmp141
	andpd	%xmm0, %xmm1	# _15, _16
	movsd	.LC7(%rip), %xmm0	#, tmp142
	comisd	%xmm1, %xmm0	# _16, tmp142
	ja	.L15	#,
# problem48.c:36:     assert(fabs(func0(list4, 2) - 5.5) < 1e-4);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp143
	movq	%rax, %rcx	# tmp143,
	movl	$36, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp144
	movq	%rax, %rsi	# tmp144,
	leaq	.LC20(%rip), %rax	#, tmp145
	movq	%rax, %rdi	# tmp145,
	call	__assert_fail@PLT	#
.L15:
# problem48.c:38:     float list5[] = {8, 1, 3, 9, 9, 2, 7};
	movss	.LC21(%rip), %xmm0	#, tmp146
	movss	%xmm0, -48(%rbp)	# tmp146, list5[0]
	movss	.LC2(%rip), %xmm0	#, tmp147
	movss	%xmm0, -44(%rbp)	# tmp147, list5[1]
	movss	.LC1(%rip), %xmm0	#, tmp148
	movss	%xmm0, -40(%rbp)	# tmp148, list5[2]
	movss	.LC22(%rip), %xmm0	#, tmp149
	movss	%xmm0, -36(%rbp)	# tmp149, list5[3]
	movss	.LC22(%rip), %xmm0	#, tmp150
	movss	%xmm0, -32(%rbp)	# tmp150, list5[4]
	movss	.LC3(%rip), %xmm0	#, tmp151
	movss	%xmm0, -28(%rbp)	# tmp151, list5[5]
	movss	.LC23(%rip), %xmm0	#, tmp152
	movss	%xmm0, -24(%rbp)	# tmp152, list5[6]
# problem48.c:39:     assert(fabs(func0(list5, 7) - 7) < 1e-4);
	leaq	-48(%rbp), %rax	#, tmp153
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp153,
	call	func0	#
	movd	%xmm0, %eax	#, _17
	movss	.LC23(%rip), %xmm1	#, tmp154
	movd	%eax, %xmm0	# _17, _17
	subss	%xmm1, %xmm0	# tmp154, _17
	movss	.LC6(%rip), %xmm1	#, tmp155
	andps	%xmm1, %xmm0	# tmp155, _19
	pxor	%xmm1, %xmm1	# _20
	cvtss2sd	%xmm0, %xmm1	# _19, _20
	movsd	.LC7(%rip), %xmm0	#, tmp156
	comisd	%xmm1, %xmm0	# _20, tmp156
	ja	.L16	#,
# problem48.c:39:     assert(fabs(func0(list5, 7) - 7) < 1e-4);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp157
	movq	%rax, %rcx	# tmp157,
	movl	$39, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp158
	movq	%rax, %rsi	# tmp158,
	leaq	.LC24(%rip), %rax	#, tmp159
	movq	%rax, %rdi	# tmp159,
	call	__assert_fail@PLT	#
.L16:
# problem48.c:41:     return 0;
	movl	$0, %eax	#, _53
# problem48.c:42: }
	movq	-8(%rbp), %rdx	# D.3985, tmp162
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp162
	je	.L18	#,
	call	__stack_chk_fail@PLT	#
.L18:
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
	.align 4
.LC0:
	.long	1056964608
	.align 4
.LC1:
	.long	1077936128
	.align 4
.LC2:
	.long	1065353216
	.align 4
.LC3:
	.long	1073741824
	.align 4
.LC4:
	.long	1082130432
	.align 4
.LC5:
	.long	1084227584
	.align 16
.LC6:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC7:
	.long	-350469331
	.long	1058682594
	.align 4
.LC10:
	.long	-1054867456
	.align 4
.LC11:
	.long	1086324736
	.align 4
.LC12:
	.long	1148846080
	.align 4
.LC13:
	.long	1092616192
	.align 4
.LC14:
	.long	1101004800
	.align 8
.LC15:
	.long	0
	.long	1075838976
	.align 16
.LC16:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC19:
	.long	0
	.long	1075183616
	.align 4
.LC21:
	.long	1090519040
	.align 4
.LC22:
	.long	1091567616
	.align 4
.LC23:
	.long	1088421888
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
