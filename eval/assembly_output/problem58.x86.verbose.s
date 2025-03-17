	.file	"problem58.c"
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
	movq	%rdi, -24(%rbp)	# l, l
	movl	%esi, -28(%rbp)	# size, size
# problem58.c:6:     incr = decr = 0;
	movl	$0, -8(%rbp)	#, decr
# problem58.c:6:     incr = decr = 0;
	movl	-8(%rbp), %eax	# decr, tmp103
	movl	%eax, -12(%rbp)	# tmp103, incr
# problem58.c:8:     for (int i = 1; i < size; i++) {
	movl	$1, -4(%rbp)	#, i
# problem58.c:8:     for (int i = 1; i < size; i++) {
	jmp	.L2	#
.L7:
# problem58.c:9:         if (l[i] > l[i - 1]) incr = 1;
	movl	-4(%rbp), %eax	# i, tmp104
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# l, tmp105
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
# problem58.c:9:         if (l[i] > l[i - 1]) incr = 1;
	movl	-4(%rbp), %eax	# i, tmp106
	cltq
	salq	$2, %rax	#, _6
	leaq	-4(%rax), %rdx	#, _7
	movq	-24(%rbp), %rax	# l, tmp107
	addq	%rdx, %rax	# _7, _8
	movss	(%rax), %xmm1	# *_8, _9
# problem58.c:9:         if (l[i] > l[i - 1]) incr = 1;
	comiss	%xmm1, %xmm0	# _9, _4
	jbe	.L3	#,
# problem58.c:9:         if (l[i] > l[i - 1]) incr = 1;
	movl	$1, -12(%rbp)	#, incr
.L3:
# problem58.c:10:         if (l[i] < l[i - 1]) decr = 1;
	movl	-4(%rbp), %eax	# i, tmp108
	cltq
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-24(%rbp), %rax	# l, tmp109
	addq	%rdx, %rax	# _11, _12
	movss	(%rax), %xmm1	# *_12, _13
# problem58.c:10:         if (l[i] < l[i - 1]) decr = 1;
	movl	-4(%rbp), %eax	# i, tmp110
	cltq
	salq	$2, %rax	#, _15
	leaq	-4(%rax), %rdx	#, _16
	movq	-24(%rbp), %rax	# l, tmp111
	addq	%rdx, %rax	# _16, _17
	movss	(%rax), %xmm0	# *_17, _18
# problem58.c:10:         if (l[i] < l[i - 1]) decr = 1;
	comiss	%xmm1, %xmm0	# _13, _18
	jbe	.L5	#,
# problem58.c:10:         if (l[i] < l[i - 1]) decr = 1;
	movl	$1, -8(%rbp)	#, decr
.L5:
# problem58.c:8:     for (int i = 1; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# problem58.c:8:     for (int i = 1; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp112
	cmpl	-28(%rbp), %eax	# size, tmp112
	jl	.L7	#,
# problem58.c:12:     if (incr + decr == 2) return false;
	movl	-12(%rbp), %edx	# incr, tmp113
	movl	-8(%rbp), %eax	# decr, tmp114
	addl	%edx, %eax	# tmp113, _19
# problem58.c:12:     if (incr + decr == 2) return false;
	cmpl	$2, %eax	#, _19
	jne	.L8	#,
# problem58.c:12:     if (incr + decr == 2) return false;
	movl	$0, %eax	#, _25
# problem58.c:12:     if (incr + decr == 2) return false;
	jmp	.L9	#
.L8:
# problem58.c:13:     return true;
	movl	$1, %eax	#, _25
.L9:
# problem58.c:14: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC11:
	.string	"problem58.c"
.LC12:
	.string	"func0(list1, 4) == true"
.LC13:
	.string	"func0(list2, 4) == true"
.LC14:
	.string	"func0(list3, 4) == false"
.LC15:
	.string	"func0(list4, 4) == true"
.LC16:
	.string	"func0(list5, 4) == true"
.LC17:
	.string	"func0(list6, 6) == false"
.LC18:
	.string	"func0(list7, 6) == true"
.LC19:
	.string	"func0(list8, 4) == true"
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
# problem58.c:21: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp163
	movq	%rax, -8(%rbp)	# tmp163, D.3253
	xorl	%eax, %eax	# tmp163
# problem58.c:22:     float list1[] = {1, 2, 4, 10};
	movss	.LC0(%rip), %xmm0	#, tmp94
	movss	%xmm0, -160(%rbp)	# tmp94, list1[0]
	movss	.LC1(%rip), %xmm0	#, tmp95
	movss	%xmm0, -156(%rbp)	# tmp95, list1[1]
	movss	.LC2(%rip), %xmm0	#, tmp96
	movss	%xmm0, -152(%rbp)	# tmp96, list1[2]
	movss	.LC3(%rip), %xmm0	#, tmp97
	movss	%xmm0, -148(%rbp)	# tmp97, list1[3]
# problem58.c:23:     float list2[] = {1, 2, 4, 20};
	movss	.LC0(%rip), %xmm0	#, tmp98
	movss	%xmm0, -144(%rbp)	# tmp98, list2[0]
	movss	.LC1(%rip), %xmm0	#, tmp99
	movss	%xmm0, -140(%rbp)	# tmp99, list2[1]
	movss	.LC2(%rip), %xmm0	#, tmp100
	movss	%xmm0, -136(%rbp)	# tmp100, list2[2]
	movss	.LC4(%rip), %xmm0	#, tmp101
	movss	%xmm0, -132(%rbp)	# tmp101, list2[3]
# problem58.c:24:     float list3[] = {1, 20, 4, 10};
	movss	.LC0(%rip), %xmm0	#, tmp102
	movss	%xmm0, -128(%rbp)	# tmp102, list3[0]
	movss	.LC4(%rip), %xmm0	#, tmp103
	movss	%xmm0, -124(%rbp)	# tmp103, list3[1]
	movss	.LC2(%rip), %xmm0	#, tmp104
	movss	%xmm0, -120(%rbp)	# tmp104, list3[2]
	movss	.LC3(%rip), %xmm0	#, tmp105
	movss	%xmm0, -116(%rbp)	# tmp105, list3[3]
# problem58.c:25:     float list4[] = {4, 1, 0, -10};
	movss	.LC2(%rip), %xmm0	#, tmp106
	movss	%xmm0, -112(%rbp)	# tmp106, list4[0]
	movss	.LC0(%rip), %xmm0	#, tmp107
	movss	%xmm0, -108(%rbp)	# tmp107, list4[1]
	pxor	%xmm0, %xmm0	# tmp108
	movss	%xmm0, -104(%rbp)	# tmp108, list4[2]
	movss	.LC6(%rip), %xmm0	#, tmp109
	movss	%xmm0, -100(%rbp)	# tmp109, list4[3]
# problem58.c:26:     float list5[] = {4, 1, 1, 0};
	movss	.LC2(%rip), %xmm0	#, tmp110
	movss	%xmm0, -96(%rbp)	# tmp110, list5[0]
	movss	.LC0(%rip), %xmm0	#, tmp111
	movss	%xmm0, -92(%rbp)	# tmp111, list5[1]
	movss	.LC0(%rip), %xmm0	#, tmp112
	movss	%xmm0, -88(%rbp)	# tmp112, list5[2]
	pxor	%xmm0, %xmm0	# tmp113
	movss	%xmm0, -84(%rbp)	# tmp113, list5[3]
# problem58.c:27:     float list6[] = {1, 2, 3, 2, 5, 60};
	movss	.LC0(%rip), %xmm0	#, tmp114
	movss	%xmm0, -64(%rbp)	# tmp114, list6[0]
	movss	.LC1(%rip), %xmm0	#, tmp115
	movss	%xmm0, -60(%rbp)	# tmp115, list6[1]
	movss	.LC7(%rip), %xmm0	#, tmp116
	movss	%xmm0, -56(%rbp)	# tmp116, list6[2]
	movss	.LC1(%rip), %xmm0	#, tmp117
	movss	%xmm0, -52(%rbp)	# tmp117, list6[3]
	movss	.LC8(%rip), %xmm0	#, tmp118
	movss	%xmm0, -48(%rbp)	# tmp118, list6[4]
	movss	.LC9(%rip), %xmm0	#, tmp119
	movss	%xmm0, -44(%rbp)	# tmp119, list6[5]
# problem58.c:28:     float list7[] = {1, 2, 3, 4, 5, 60};
	movss	.LC0(%rip), %xmm0	#, tmp120
	movss	%xmm0, -32(%rbp)	# tmp120, list7[0]
	movss	.LC1(%rip), %xmm0	#, tmp121
	movss	%xmm0, -28(%rbp)	# tmp121, list7[1]
	movss	.LC7(%rip), %xmm0	#, tmp122
	movss	%xmm0, -24(%rbp)	# tmp122, list7[2]
	movss	.LC2(%rip), %xmm0	#, tmp123
	movss	%xmm0, -20(%rbp)	# tmp123, list7[3]
	movss	.LC8(%rip), %xmm0	#, tmp124
	movss	%xmm0, -16(%rbp)	# tmp124, list7[4]
	movss	.LC9(%rip), %xmm0	#, tmp125
	movss	%xmm0, -12(%rbp)	# tmp125, list7[5]
# problem58.c:29:     float list8[] = {9, 9, 9, 9};
	movss	.LC10(%rip), %xmm0	#, tmp126
	movss	%xmm0, -80(%rbp)	# tmp126, list8[0]
	movss	.LC10(%rip), %xmm0	#, tmp127
	movss	%xmm0, -76(%rbp)	# tmp127, list8[1]
	movss	.LC10(%rip), %xmm0	#, tmp128
	movss	%xmm0, -72(%rbp)	# tmp128, list8[2]
	movss	.LC10(%rip), %xmm0	#, tmp129
	movss	%xmm0, -68(%rbp)	# tmp129, list8[3]
# problem58.c:31:     assert(func0(list1, 4) == true);
	leaq	-160(%rbp), %rax	#, tmp130
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	func0	#
# problem58.c:31:     assert(func0(list1, 4) == true);
	testb	%al, %al	# _1
	jne	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp131
	movq	%rax, %rcx	# tmp131,
	movl	$31, %edx	#,
	leaq	.LC11(%rip), %rax	#, tmp132
	movq	%rax, %rsi	# tmp132,
	leaq	.LC12(%rip), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	__assert_fail@PLT	#
.L13:
# problem58.c:32:     assert(func0(list2, 4) == true);
	leaq	-144(%rbp), %rax	#, tmp134
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp134,
	call	func0	#
# problem58.c:32:     assert(func0(list2, 4) == true);
	testb	%al, %al	# _2
	jne	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp135
	movq	%rax, %rcx	# tmp135,
	movl	$32, %edx	#,
	leaq	.LC11(%rip), %rax	#, tmp136
	movq	%rax, %rsi	# tmp136,
	leaq	.LC13(%rip), %rax	#, tmp137
	movq	%rax, %rdi	# tmp137,
	call	__assert_fail@PLT	#
.L14:
# problem58.c:33:     assert(func0(list3, 4) == false);
	leaq	-128(%rbp), %rax	#, tmp138
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp138,
	call	func0	#
# problem58.c:33:     assert(func0(list3, 4) == false);
	xorl	$1, %eax	#, _4
	testb	%al, %al	# _4
	jne	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp139
	movq	%rax, %rcx	# tmp139,
	movl	$33, %edx	#,
	leaq	.LC11(%rip), %rax	#, tmp140
	movq	%rax, %rsi	# tmp140,
	leaq	.LC14(%rip), %rax	#, tmp141
	movq	%rax, %rdi	# tmp141,
	call	__assert_fail@PLT	#
.L15:
# problem58.c:34:     assert(func0(list4, 4) == true);
	leaq	-112(%rbp), %rax	#, tmp142
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	func0	#
# problem58.c:34:     assert(func0(list4, 4) == true);
	testb	%al, %al	# _5
	jne	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp143
	movq	%rax, %rcx	# tmp143,
	movl	$34, %edx	#,
	leaq	.LC11(%rip), %rax	#, tmp144
	movq	%rax, %rsi	# tmp144,
	leaq	.LC15(%rip), %rax	#, tmp145
	movq	%rax, %rdi	# tmp145,
	call	__assert_fail@PLT	#
.L16:
# problem58.c:35:     assert(func0(list5, 4) == true);
	leaq	-96(%rbp), %rax	#, tmp146
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp146,
	call	func0	#
# problem58.c:35:     assert(func0(list5, 4) == true);
	testb	%al, %al	# _6
	jne	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp147
	movq	%rax, %rcx	# tmp147,
	movl	$35, %edx	#,
	leaq	.LC11(%rip), %rax	#, tmp148
	movq	%rax, %rsi	# tmp148,
	leaq	.LC16(%rip), %rax	#, tmp149
	movq	%rax, %rdi	# tmp149,
	call	__assert_fail@PLT	#
.L17:
# problem58.c:36:     assert(func0(list6, 6) == false);
	leaq	-64(%rbp), %rax	#, tmp150
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp150,
	call	func0	#
# problem58.c:36:     assert(func0(list6, 6) == false);
	xorl	$1, %eax	#, _8
	testb	%al, %al	# _8
	jne	.L18	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp151
	movq	%rax, %rcx	# tmp151,
	movl	$36, %edx	#,
	leaq	.LC11(%rip), %rax	#, tmp152
	movq	%rax, %rsi	# tmp152,
	leaq	.LC17(%rip), %rax	#, tmp153
	movq	%rax, %rdi	# tmp153,
	call	__assert_fail@PLT	#
.L18:
# problem58.c:37:     assert(func0(list7, 6) == true);
	leaq	-32(%rbp), %rax	#, tmp154
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp154,
	call	func0	#
# problem58.c:37:     assert(func0(list7, 6) == true);
	testb	%al, %al	# _9
	jne	.L19	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp155
	movq	%rax, %rcx	# tmp155,
	movl	$37, %edx	#,
	leaq	.LC11(%rip), %rax	#, tmp156
	movq	%rax, %rsi	# tmp156,
	leaq	.LC18(%rip), %rax	#, tmp157
	movq	%rax, %rdi	# tmp157,
	call	__assert_fail@PLT	#
.L19:
# problem58.c:38:     assert(func0(list8, 4) == true);
	leaq	-80(%rbp), %rax	#, tmp158
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp158,
	call	func0	#
# problem58.c:38:     assert(func0(list8, 4) == true);
	testb	%al, %al	# _10
	jne	.L20	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp159
	movq	%rax, %rcx	# tmp159,
	movl	$38, %edx	#,
	leaq	.LC11(%rip), %rax	#, tmp160
	movq	%rax, %rsi	# tmp160,
	leaq	.LC19(%rip), %rax	#, tmp161
	movq	%rax, %rdi	# tmp161,
	call	__assert_fail@PLT	#
.L20:
# problem58.c:40:     return 0;
	movl	$0, %eax	#, _64
# problem58.c:41: }
	movq	-8(%rbp), %rdx	# D.3253, tmp164
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp164
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
	.align 4
.LC0:
	.long	1065353216
	.align 4
.LC1:
	.long	1073741824
	.align 4
.LC2:
	.long	1082130432
	.align 4
.LC3:
	.long	1092616192
	.align 4
.LC4:
	.long	1101004800
	.align 4
.LC6:
	.long	-1054867456
	.align 4
.LC7:
	.long	1077936128
	.align 4
.LC8:
	.long	1084227584
	.align 4
.LC9:
	.long	1114636288
	.align 4
.LC10:
	.long	1091567616
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
