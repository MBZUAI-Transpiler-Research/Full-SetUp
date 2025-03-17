	.file	"problem63.c"
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
	movq	%rdi, -24(%rbp)	# xs, xs
	movl	%esi, -28(%rbp)	# xs_size, xs_size
	movq	%rdx, -40(%rbp)	# out, out
# problem63.c:4:     for (int i = 1; i < xs_size; i++) {
	movl	$1, -4(%rbp)	#, i
# problem63.c:4:     for (int i = 1; i < xs_size; i++) {
	jmp	.L2	#
.L3:
# problem63.c:5:         out[i - 1] = i * xs[i];
	pxor	%xmm1, %xmm1	# _1
	cvtsi2ssl	-4(%rbp), %xmm1	# i, _1
# problem63.c:5:         out[i - 1] = i * xs[i];
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,4), %rdx	#, _3
	movq	-24(%rbp), %rax	# xs, tmp93
	addq	%rdx, %rax	# _3, _4
	movss	(%rax), %xmm0	# *_4, _5
# problem63.c:5:         out[i - 1] = i * xs[i];
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	salq	$2, %rax	#, _7
	leaq	-4(%rax), %rdx	#, _8
	movq	-40(%rbp), %rax	# out, tmp95
	addq	%rdx, %rax	# _8, _9
# problem63.c:5:         out[i - 1] = i * xs[i];
	mulss	%xmm1, %xmm0	# _1, _10
# problem63.c:5:         out[i - 1] = i * xs[i];
	movss	%xmm0, (%rax)	# _10, *_9
# problem63.c:4:     for (int i = 1; i < xs_size; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# problem63.c:4:     for (int i = 1; i < xs_size; i++) {
	movl	-4(%rbp), %eax	# i, tmp96
	cmpl	-28(%rbp), %eax	# xs_size, tmp96
	jl	.L3	#,
# problem63.c:7: }
	nop	
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
	movq	%rdi, -24(%rbp)	# a, a
	movl	%esi, -28(%rbp)	# a_size, a_size
	movq	%rdx, -40(%rbp)	# b, b
	movl	%ecx, -32(%rbp)	# b_size, b_size
# problem63.c:17:     if (a_size != b_size) return false;
	movl	-28(%rbp), %eax	# a_size, tmp95
	cmpl	-32(%rbp), %eax	# b_size, tmp95
	je	.L5	#,
# problem63.c:17:     if (a_size != b_size) return false;
	movl	$0, %eax	#, _13
# problem63.c:17:     if (a_size != b_size) return false;
	jmp	.L6	#
.L5:
# problem63.c:18:     for (int i = 0; i < a_size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem63.c:18:     for (int i = 0; i < a_size; i++) {
	jmp	.L7	#
.L10:
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp97
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	movl	-4(%rbp), %eax	# i, tmp98
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-40(%rbp), %rax	# b, tmp99
	addq	%rdx, %rax	# _6, _7
	movss	(%rax), %xmm1	# *_7, _8
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	subss	%xmm1, %xmm0	# _8, _9
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	movss	.LC0(%rip), %xmm1	#, tmp100
	andps	%xmm1, %xmm0	# tmp100, _10
	cvtss2sd	%xmm0, %xmm0	# _10, _11
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	comisd	.LC1(%rip), %xmm0	#, _11
	jbe	.L12	#,
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	movl	$0, %eax	#, _13
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	jmp	.L6	#
.L12:
# problem63.c:18:     for (int i = 0; i < a_size; i++) {
	addl	$1, -4(%rbp)	#, i
.L7:
# problem63.c:18:     for (int i = 0; i < a_size; i++) {
	movl	-4(%rbp), %eax	# i, tmp101
	cmpl	-28(%rbp), %eax	# a_size, tmp101
	jl	.L10	#,
# problem63.c:21:     return true;
	movl	$1, %eax	#, _13
.L6:
# problem63.c:22: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
.LC9:
	.string	"problem63.c"
	.align 8
.LC10:
	.string	"issame(result, 4, expected1, 4)"
	.align 8
.LC12:
	.string	"issame(result, 2, expected2, 2)"
	.align 8
.LC13:
	.string	"issame(result, 2, expected3, 2)"
	.align 8
.LC16:
	.string	"issame(result, 4, expected4, 4)"
.LC17:
	.string	"issame(result, 0, NULL, 0)"
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
	subq	$160, %rsp	#,
# problem63.c:24: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp153
	movq	%rax, -8(%rbp)	# tmp153, D.4521
	xorl	%eax, %eax	# tmp153
# problem63.c:27:     float case1[] = {3, 1, 2, 4, 5};
	movss	.LC2(%rip), %xmm0	#, tmp89
	movss	%xmm0, -64(%rbp)	# tmp89, case1[0]
	movss	.LC3(%rip), %xmm0	#, tmp90
	movss	%xmm0, -60(%rbp)	# tmp90, case1[1]
	movss	.LC4(%rip), %xmm0	#, tmp91
	movss	%xmm0, -56(%rbp)	# tmp91, case1[2]
	movss	.LC5(%rip), %xmm0	#, tmp92
	movss	%xmm0, -52(%rbp)	# tmp92, case1[3]
	movss	.LC6(%rip), %xmm0	#, tmp93
	movss	%xmm0, -48(%rbp)	# tmp93, case1[4]
# problem63.c:28:     float expected1[] = {1, 4, 12, 20};
	movss	.LC3(%rip), %xmm0	#, tmp94
	movss	%xmm0, -96(%rbp)	# tmp94, expected1[0]
	movss	.LC5(%rip), %xmm0	#, tmp95
	movss	%xmm0, -92(%rbp)	# tmp95, expected1[1]
	movss	.LC7(%rip), %xmm0	#, tmp96
	movss	%xmm0, -88(%rbp)	# tmp96, expected1[2]
	movss	.LC8(%rip), %xmm0	#, tmp97
	movss	%xmm0, -84(%rbp)	# tmp97, expected1[3]
# problem63.c:29:     func0(case1, 5, result);
	leaq	-112(%rbp), %rdx	#, tmp98
	leaq	-64(%rbp), %rax	#, tmp99
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	func0	#
# problem63.c:30:     assert(issame(result, 4, expected1, 4));
	leaq	-96(%rbp), %rdx	#, tmp100
	leaq	-112(%rbp), %rax	#, tmp101
	movl	$4, %ecx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	issame	#
# problem63.c:30:     assert(issame(result, 4, expected1, 4));
	testb	%al, %al	# _1
	jne	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$30, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC10(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	__assert_fail@PLT	#
.L14:
# problem63.c:32:     float case2[] = {1, 2, 3};
	movss	.LC3(%rip), %xmm0	#, tmp105
	movss	%xmm0, -136(%rbp)	# tmp105, case2[0]
	movss	.LC4(%rip), %xmm0	#, tmp106
	movss	%xmm0, -132(%rbp)	# tmp106, case2[1]
	movss	.LC2(%rip), %xmm0	#, tmp107
	movss	%xmm0, -128(%rbp)	# tmp107, case2[2]
# problem63.c:33:     float expected2[] = {2, 6};
	movss	.LC4(%rip), %xmm0	#, tmp108
	movss	%xmm0, -152(%rbp)	# tmp108, expected2[0]
	movss	.LC11(%rip), %xmm0	#, tmp109
	movss	%xmm0, -148(%rbp)	# tmp109, expected2[1]
# problem63.c:34:     func0(case2, 3, result);
	leaq	-112(%rbp), %rdx	#, tmp110
	leaq	-136(%rbp), %rax	#, tmp111
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	func0	#
# problem63.c:35:     assert(issame(result, 2, expected2, 2));
	leaq	-152(%rbp), %rdx	#, tmp112
	leaq	-112(%rbp), %rax	#, tmp113
	movl	$2, %ecx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	issame	#
# problem63.c:35:     assert(issame(result, 2, expected2, 2));
	testb	%al, %al	# _2
	jne	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$35, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC12(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	__assert_fail@PLT	#
.L15:
# problem63.c:37:     float case3[] = {3, 2, 1};
	movss	.LC2(%rip), %xmm0	#, tmp117
	movss	%xmm0, -124(%rbp)	# tmp117, case3[0]
	movss	.LC4(%rip), %xmm0	#, tmp118
	movss	%xmm0, -120(%rbp)	# tmp118, case3[1]
	movss	.LC3(%rip), %xmm0	#, tmp119
	movss	%xmm0, -116(%rbp)	# tmp119, case3[2]
# problem63.c:38:     float expected3[] = {2, 2};
	movss	.LC4(%rip), %xmm0	#, tmp120
	movss	%xmm0, -144(%rbp)	# tmp120, expected3[0]
	movss	.LC4(%rip), %xmm0	#, tmp121
	movss	%xmm0, -140(%rbp)	# tmp121, expected3[1]
# problem63.c:39:     func0(case3, 3, result);
	leaq	-112(%rbp), %rdx	#, tmp122
	leaq	-124(%rbp), %rax	#, tmp123
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	func0	#
# problem63.c:40:     assert(issame(result, 2, expected3, 2));
	leaq	-144(%rbp), %rdx	#, tmp124
	leaq	-112(%rbp), %rax	#, tmp125
	movl	$2, %ecx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp125,
	call	issame	#
# problem63.c:40:     assert(issame(result, 2, expected3, 2));
	testb	%al, %al	# _3
	jne	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp126
	movq	%rax, %rcx	# tmp126,
	movl	$40, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp127
	movq	%rax, %rsi	# tmp127,
	leaq	.LC13(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	__assert_fail@PLT	#
.L16:
# problem63.c:42:     float case4[] = {3, 2, 1, 0, 4};
	movss	.LC2(%rip), %xmm0	#, tmp129
	movss	%xmm0, -32(%rbp)	# tmp129, case4[0]
	movss	.LC4(%rip), %xmm0	#, tmp130
	movss	%xmm0, -28(%rbp)	# tmp130, case4[1]
	movss	.LC3(%rip), %xmm0	#, tmp131
	movss	%xmm0, -24(%rbp)	# tmp131, case4[2]
	pxor	%xmm0, %xmm0	# tmp132
	movss	%xmm0, -20(%rbp)	# tmp132, case4[3]
	movss	.LC5(%rip), %xmm0	#, tmp133
	movss	%xmm0, -16(%rbp)	# tmp133, case4[4]
# problem63.c:43:     float expected4[] = {2, 2, 0, 16};
	movss	.LC4(%rip), %xmm0	#, tmp134
	movss	%xmm0, -80(%rbp)	# tmp134, expected4[0]
	movss	.LC4(%rip), %xmm0	#, tmp135
	movss	%xmm0, -76(%rbp)	# tmp135, expected4[1]
	pxor	%xmm0, %xmm0	# tmp136
	movss	%xmm0, -72(%rbp)	# tmp136, expected4[2]
	movss	.LC15(%rip), %xmm0	#, tmp137
	movss	%xmm0, -68(%rbp)	# tmp137, expected4[3]
# problem63.c:44:     func0(case4, 5, result);
	leaq	-112(%rbp), %rdx	#, tmp138
	leaq	-32(%rbp), %rax	#, tmp139
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp139,
	call	func0	#
# problem63.c:45:     assert(issame(result, 4, expected4, 4));
	leaq	-80(%rbp), %rdx	#, tmp140
	leaq	-112(%rbp), %rax	#, tmp141
	movl	$4, %ecx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp141,
	call	issame	#
# problem63.c:45:     assert(issame(result, 4, expected4, 4));
	testb	%al, %al	# _4
	jne	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp142
	movq	%rax, %rcx	# tmp142,
	movl	$45, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp143
	movq	%rax, %rsi	# tmp143,
	leaq	.LC16(%rip), %rax	#, tmp144
	movq	%rax, %rdi	# tmp144,
	call	__assert_fail@PLT	#
.L17:
# problem63.c:47:     float case5[] = {1};
	movss	.LC3(%rip), %xmm0	#, tmp145
	movss	%xmm0, -156(%rbp)	# tmp145, case5[0]
# problem63.c:48:     func0(case5, 1, result);
	leaq	-112(%rbp), %rdx	#, tmp146
	leaq	-156(%rbp), %rax	#, tmp147
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp147,
	call	func0	#
# problem63.c:49:     assert(issame(result, 0, NULL, 0));
	leaq	-112(%rbp), %rax	#, tmp148
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp148,
	call	issame	#
# problem63.c:49:     assert(issame(result, 0, NULL, 0));
	testb	%al, %al	# _5
	jne	.L18	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp149
	movq	%rax, %rcx	# tmp149,
	movl	$49, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp150
	movq	%rax, %rsi	# tmp150,
	leaq	.LC17(%rip), %rax	#, tmp151
	movq	%rax, %rdi	# tmp151,
	call	__assert_fail@PLT	#
.L18:
# problem63.c:51:     return 0;
	movl	$0, %eax	#, _51
# problem63.c:52: }
	movq	-8(%rbp), %rdx	# D.4521, tmp154
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp154
	je	.L20	#,
	call	__stack_chk_fail@PLT	#
.L20:
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
	.align 16
.LC0:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC1:
	.long	-350469331
	.long	1058682594
	.align 4
.LC2:
	.long	1077936128
	.align 4
.LC3:
	.long	1065353216
	.align 4
.LC4:
	.long	1073741824
	.align 4
.LC5:
	.long	1082130432
	.align 4
.LC6:
	.long	1084227584
	.align 4
.LC7:
	.long	1094713344
	.align 4
.LC8:
	.long	1101004800
	.align 4
.LC11:
	.long	1086324736
	.align 4
.LC15:
	.long	1098907648
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
