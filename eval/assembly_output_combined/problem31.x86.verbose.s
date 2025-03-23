	.file	"problem31.c"
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
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# l, l
	movl	%esi, -28(%rbp)	# count, count
	movq	%rdx, -40(%rbp)	# out_count, out_count
# problem31.c:5:     float* out = (float*)malloc(count * sizeof(float));
	movl	-28(%rbp), %eax	# count, tmp99
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp100, out
# problem31.c:6:     *out_count = 0;
	movq	-40(%rbp), %rax	# out_count, tmp101
	movl	$0, (%rax)	#, *out_count_24(D)
# problem31.c:8:     for (int i = 0; i < count; i++) {
	movl	$0, -12(%rbp)	#, i
# problem31.c:8:     for (int i = 0; i < count; i++) {
	jmp	.L2	#
.L5:
# problem31.c:9:         if (l[i] > 0) {
	movl	-12(%rbp), %eax	# i, tmp102
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-24(%rbp), %rax	# l, tmp103
	addq	%rdx, %rax	# _4, _5
	movss	(%rax), %xmm0	# *_5, _6
# problem31.c:9:         if (l[i] > 0) {
	pxor	%xmm1, %xmm1	# tmp104
	comiss	%xmm1, %xmm0	# tmp104, _6
	jbe	.L3	#,
# problem31.c:10:             out[(*out_count)++] = l[i];
	movl	-12(%rbp), %eax	# i, tmp105
	cltq
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-24(%rbp), %rax	# l, tmp106
	leaq	(%rdx,%rax), %rsi	#, _9
# problem31.c:10:             out[(*out_count)++] = l[i];
	movq	-40(%rbp), %rax	# out_count, tmp107
	movl	(%rax), %eax	# *out_count_24(D), _10
# problem31.c:10:             out[(*out_count)++] = l[i];
	leal	1(%rax), %ecx	#, _12
	movq	-40(%rbp), %rdx	# out_count, tmp108
	movl	%ecx, (%rdx)	# _12, *out_count_24(D)
	cltq
# problem31.c:10:             out[(*out_count)++] = l[i];
	leaq	0(,%rax,4), %rdx	#, _14
	movq	-8(%rbp), %rax	# out, tmp109
	addq	%rdx, %rax	# _14, _15
# problem31.c:10:             out[(*out_count)++] = l[i];
	movss	(%rsi), %xmm0	# *_9, _16
# problem31.c:10:             out[(*out_count)++] = l[i];
	movss	%xmm0, (%rax)	# _16, *_15
.L3:
# problem31.c:8:     for (int i = 0; i < count; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# problem31.c:8:     for (int i = 0; i < count; i++) {
	movl	-12(%rbp), %eax	# i, tmp110
	cmpl	-28(%rbp), %eax	# count, tmp110
	jl	.L5	#,
# problem31.c:14:     return out;
	movq	-8(%rbp), %rax	# out, _27
# problem31.c:15: }
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
	movl	%esi, -28(%rbp)	# a_count, a_count
	movq	%rdx, -40(%rbp)	# b, b
	movl	%ecx, -32(%rbp)	# b_count, b_count
# problem31.c:25:     if (a_count != b_count) return 0;
	movl	-28(%rbp), %eax	# a_count, tmp95
	cmpl	-32(%rbp), %eax	# b_count, tmp95
	je	.L9	#,
# problem31.c:25:     if (a_count != b_count) return 0;
	movl	$0, %eax	#, _13
	jmp	.L10	#
.L9:
# problem31.c:26:     for (int i = 0; i < a_count; i++) {
	movl	$0, -4(%rbp)	#, i
# problem31.c:26:     for (int i = 0; i < a_count; i++) {
	jmp	.L11	#
.L14:
# problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp97
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
# problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	movl	-4(%rbp), %eax	# i, tmp98
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-40(%rbp), %rax	# b, tmp99
	addq	%rdx, %rax	# _6, _7
	movss	(%rax), %xmm1	# *_7, _8
# problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	subss	%xmm1, %xmm0	# _8, _9
# problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	movss	.LC1(%rip), %xmm1	#, tmp100
	andps	%xmm1, %xmm0	# tmp100, _10
	cvtss2sd	%xmm0, %xmm0	# _10, _11
# problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	comisd	.LC2(%rip), %xmm0	#, _11
	jbe	.L16	#,
# problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	movl	$0, %eax	#, _13
	jmp	.L10	#
.L16:
# problem31.c:26:     for (int i = 0; i < a_count; i++) {
	addl	$1, -4(%rbp)	#, i
.L11:
# problem31.c:26:     for (int i = 0; i < a_count; i++) {
	movl	-4(%rbp), %eax	# i, tmp101
	cmpl	-28(%rbp), %eax	# a_count, tmp101
	jl	.L14	#,
# problem31.c:29:     return 1;
	movl	$1, %eax	#, _13
.L10:
# problem31.c:30: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC8:
	.string	"problem31.c"
	.align 8
.LC9:
	.string	"issame(result, count, (float[]){4, 5, 6}, 3)"
	.align 8
.LC17:
	.string	"issame(result, count, (float[]){5, 3, 2, 3, 3, 9, 123, 1}, 8)"
	.align 8
.LC18:
	.string	"issame(result, count, (float[]){}, 0)"
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
	subq	$160, %rsp	#,
# problem31.c:32: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp158
	movq	%rax, -8(%rbp)	# tmp158, D.4006
	xorl	%eax, %eax	# tmp158
# problem31.c:36:     result = func0((float[]){-1, -2, 4, 5, 6}, 5, &count);
	movss	.LC3(%rip), %xmm0	#, tmp92
	movss	%xmm0, -128(%rbp)	# tmp92, D.3963[0]
	movss	.LC4(%rip), %xmm0	#, tmp93
	movss	%xmm0, -124(%rbp)	# tmp93, D.3963[1]
	movss	.LC5(%rip), %xmm0	#, tmp94
	movss	%xmm0, -120(%rbp)	# tmp94, D.3963[2]
	movss	.LC6(%rip), %xmm0	#, tmp95
	movss	%xmm0, -116(%rbp)	# tmp95, D.3963[3]
	movss	.LC7(%rip), %xmm0	#, tmp96
	movss	%xmm0, -112(%rbp)	# tmp96, D.3963[4]
# problem31.c:36:     result = func0((float[]){-1, -2, 4, 5, 6}, 5, &count);
	leaq	-148(%rbp), %rdx	#, tmp97
	leaq	-128(%rbp), %rax	#, tmp98
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	func0	#
	movq	%rax, -144(%rbp)	# tmp99, result
# problem31.c:37:     assert(issame(result, count, (float[]){4, 5, 6}, 3));
	movss	.LC5(%rip), %xmm0	#, tmp100
	movss	%xmm0, -64(%rbp)	# tmp100, MEM[(float[3] *)_77][0]
	movss	.LC6(%rip), %xmm0	#, tmp101
	movss	%xmm0, -60(%rbp)	# tmp101, MEM[(float[3] *)_77][1]
	movss	.LC7(%rip), %xmm0	#, tmp102
	movss	%xmm0, -56(%rbp)	# tmp102, MEM[(float[3] *)_77][2]
	movl	-148(%rbp), %esi	# count, count.0_1
	leaq	-64(%rbp), %rdx	#, tmp103
	movq	-144(%rbp), %rax	# result, tmp104
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp104,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L18	#,
# problem31.c:37:     assert(issame(result, count, (float[]){4, 5, 6}, 3));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$37, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC9(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L18:
# problem31.c:38:     free(result);
	movq	-144(%rbp), %rax	# result, tmp108
	movq	%rax, %rdi	# tmp108,
	call	free@PLT	#
# problem31.c:40:     result = func0((float[]){5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10}, 11, &count);
	movss	.LC6(%rip), %xmm0	#, tmp109
	movss	%xmm0, -64(%rbp)	# tmp109, MEM[(float[11] *)_77][0]
	movss	.LC10(%rip), %xmm0	#, tmp110
	movss	%xmm0, -60(%rbp)	# tmp110, MEM[(float[11] *)_77][1]
	movss	.LC11(%rip), %xmm0	#, tmp111
	movss	%xmm0, -56(%rbp)	# tmp111, MEM[(float[11] *)_77][2]
	movss	.LC12(%rip), %xmm0	#, tmp112
	movss	%xmm0, -52(%rbp)	# tmp112, MEM[(float[11] *)_77][3]
	movss	.LC10(%rip), %xmm0	#, tmp113
	movss	%xmm0, -48(%rbp)	# tmp113, MEM[(float[11] *)_77][4]
	movss	.LC10(%rip), %xmm0	#, tmp114
	movss	%xmm0, -44(%rbp)	# tmp114, MEM[(float[11] *)_77][5]
	movss	.LC13(%rip), %xmm0	#, tmp115
	movss	%xmm0, -40(%rbp)	# tmp115, MEM[(float[11] *)_77][6]
	pxor	%xmm0, %xmm0	# tmp116
	movss	%xmm0, -36(%rbp)	# tmp116, MEM[(float[11] *)_77][7]
	movss	.LC14(%rip), %xmm0	#, tmp117
	movss	%xmm0, -32(%rbp)	# tmp117, MEM[(float[11] *)_77][8]
	movss	.LC15(%rip), %xmm0	#, tmp118
	movss	%xmm0, -28(%rbp)	# tmp118, MEM[(float[11] *)_77][9]
	movss	.LC16(%rip), %xmm0	#, tmp119
	movss	%xmm0, -24(%rbp)	# tmp119, MEM[(float[11] *)_77][10]
# problem31.c:40:     result = func0((float[]){5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10}, 11, &count);
	leaq	-148(%rbp), %rdx	#, tmp120
	leaq	-64(%rbp), %rax	#, tmp121
	movl	$11, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	func0	#
	movq	%rax, -144(%rbp)	# tmp122, result
# problem31.c:41:     assert(issame(result, count, (float[]){5, 3, 2, 3, 3, 9, 123, 1}, 8));
	movss	.LC6(%rip), %xmm0	#, tmp123
	movss	%xmm0, -96(%rbp)	# tmp123, MEM[(float[8] *)_78][0]
	movss	.LC10(%rip), %xmm0	#, tmp124
	movss	%xmm0, -92(%rbp)	# tmp124, MEM[(float[8] *)_78][1]
	movss	.LC12(%rip), %xmm0	#, tmp125
	movss	%xmm0, -88(%rbp)	# tmp125, MEM[(float[8] *)_78][2]
	movss	.LC10(%rip), %xmm0	#, tmp126
	movss	%xmm0, -84(%rbp)	# tmp126, MEM[(float[8] *)_78][3]
	movss	.LC10(%rip), %xmm0	#, tmp127
	movss	%xmm0, -80(%rbp)	# tmp127, MEM[(float[8] *)_78][4]
	movss	.LC13(%rip), %xmm0	#, tmp128
	movss	%xmm0, -76(%rbp)	# tmp128, MEM[(float[8] *)_78][5]
	movss	.LC14(%rip), %xmm0	#, tmp129
	movss	%xmm0, -72(%rbp)	# tmp129, MEM[(float[8] *)_78][6]
	movss	.LC15(%rip), %xmm0	#, tmp130
	movss	%xmm0, -68(%rbp)	# tmp130, MEM[(float[8] *)_78][7]
	movl	-148(%rbp), %esi	# count, count.1_3
	leaq	-96(%rbp), %rdx	#, tmp131
	movq	-144(%rbp), %rax	# result, tmp132
	movl	$8, %ecx	#,
	movq	%rax, %rdi	# tmp132,
	call	issame	#
	testl	%eax, %eax	# _4
	jne	.L19	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp133
	movq	%rax, %rcx	# tmp133,
	movl	$41, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp134
	movq	%rax, %rsi	# tmp134,
	leaq	.LC17(%rip), %rax	#, tmp135
	movq	%rax, %rdi	# tmp135,
	call	__assert_fail@PLT	#
.L19:
# problem31.c:42:     free(result);
	movq	-144(%rbp), %rax	# result, tmp136
	movq	%rax, %rdi	# tmp136,
	call	free@PLT	#
# problem31.c:44:     result = func0((float[]){-1, -2}, 2, &count);
	movss	.LC3(%rip), %xmm0	#, tmp137
	movss	%xmm0, -96(%rbp)	# tmp137, MEM[(float[2] *)_78][0]
	movss	.LC4(%rip), %xmm0	#, tmp138
	movss	%xmm0, -92(%rbp)	# tmp138, MEM[(float[2] *)_78][1]
# problem31.c:44:     result = func0((float[]){-1, -2}, 2, &count);
	leaq	-148(%rbp), %rdx	#, tmp139
	leaq	-96(%rbp), %rax	#, tmp140
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp140,
	call	func0	#
	movq	%rax, -144(%rbp)	# tmp141, result
# problem31.c:45:     assert(issame(result, count, (float[]){}, 0));
	movl	-148(%rbp), %esi	# count, count.2_5
	leaq	-132(%rbp), %rdx	#, tmp142
	movq	-144(%rbp), %rax	# result, tmp143
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp143,
	call	issame	#
	testl	%eax, %eax	# _6
	jne	.L20	#,
# problem31.c:45:     assert(issame(result, count, (float[]){}, 0));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp144
	movq	%rax, %rcx	# tmp144,
	movl	$45, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp145
	movq	%rax, %rsi	# tmp145,
	leaq	.LC18(%rip), %rax	#, tmp146
	movq	%rax, %rdi	# tmp146,
	call	__assert_fail@PLT	#
.L20:
# problem31.c:46:     free(result);
	movq	-144(%rbp), %rax	# result, tmp147
	movq	%rax, %rdi	# tmp147,
	call	free@PLT	#
# problem31.c:48:     result = func0((float[]){}, 0, &count);
	leaq	-148(%rbp), %rdx	#, tmp148
	leaq	-136(%rbp), %rax	#, tmp149
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp149,
	call	func0	#
	movq	%rax, -144(%rbp)	# tmp150, result
# problem31.c:49:     assert(issame(result, count, (float[]){}, 0));
	movl	-148(%rbp), %esi	# count, count.3_7
	leaq	-132(%rbp), %rdx	#, tmp151
	movq	-144(%rbp), %rax	# result, tmp152
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp152,
	call	issame	#
	testl	%eax, %eax	# _8
	jne	.L21	#,
# problem31.c:49:     assert(issame(result, count, (float[]){}, 0));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp153
	movq	%rax, %rcx	# tmp153,
	movl	$49, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp154
	movq	%rax, %rsi	# tmp154,
	leaq	.LC18(%rip), %rax	#, tmp155
	movq	%rax, %rdi	# tmp155,
	call	__assert_fail@PLT	#
.L21:
# problem31.c:50:     free(result);
	movq	-144(%rbp), %rax	# result, tmp156
	movq	%rax, %rdi	# tmp156,
	call	free@PLT	#
# problem31.c:52:     return 0;
	movl	$0, %eax	#, _66
# problem31.c:53: }
	movq	-8(%rbp), %rdx	# D.4006, tmp159
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp159
	je	.L23	#,
# problem31.c:53: }
	call	__stack_chk_fail@PLT	#
.L23:
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
	.align 16
.LC1:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC2:
	.long	-350469331
	.long	1058682594
	.align 4
.LC3:
	.long	-1082130432
	.align 4
.LC4:
	.long	-1073741824
	.align 4
.LC5:
	.long	1082130432
	.align 4
.LC6:
	.long	1084227584
	.align 4
.LC7:
	.long	1086324736
	.align 4
.LC10:
	.long	1077936128
	.align 4
.LC11:
	.long	-1063256064
	.align 4
.LC12:
	.long	1073741824
	.align 4
.LC13:
	.long	1091567616
	.align 4
.LC14:
	.long	1123418112
	.align 4
.LC15:
	.long	1065353216
	.align 4
.LC16:
	.long	-1054867456
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
