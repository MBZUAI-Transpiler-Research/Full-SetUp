	.file	"code.c"
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
# eval/problem48//code.c:6:     for (int i = 0; i < size; i++) {
	movl	$0, -12(%rbp)	#, i
# eval/problem48//code.c:6:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L7:
# eval/problem48//code.c:7:         for (int j = i + 1; j < size; j++) {
	movl	-12(%rbp), %eax	# i, tmp125
	addl	$1, %eax	#, tmp124
	movl	%eax, -8(%rbp)	# tmp124, j
# eval/problem48//code.c:7:         for (int j = i + 1; j < size; j++) {
	jmp	.L3	#
.L6:
# eval/problem48//code.c:8:             if (l[i] > l[j]) {
	movl	-12(%rbp), %eax	# i, tmp126
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# l, tmp127
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
# eval/problem48//code.c:8:             if (l[i] > l[j]) {
	movl	-8(%rbp), %eax	# j, tmp128
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-24(%rbp), %rax	# l, tmp129
	addq	%rdx, %rax	# _6, _7
	movss	(%rax), %xmm1	# *_7, _8
# eval/problem48//code.c:8:             if (l[i] > l[j]) {
	comiss	%xmm1, %xmm0	# _8, _4
	jbe	.L4	#,
# eval/problem48//code.c:9:                 float temp = l[i];
	movl	-12(%rbp), %eax	# i, tmp130
	cltq
	leaq	0(,%rax,4), %rdx	#, _10
	movq	-24(%rbp), %rax	# l, tmp131
	addq	%rdx, %rax	# _10, _11
# eval/problem48//code.c:9:                 float temp = l[i];
	movss	(%rax), %xmm0	# *_11, tmp132
	movss	%xmm0, -4(%rbp)	# tmp132, temp
# eval/problem48//code.c:10:                 l[i] = l[j];
	movl	-8(%rbp), %eax	# j, tmp133
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-24(%rbp), %rax	# l, tmp134
	addq	%rax, %rdx	# tmp134, _14
# eval/problem48//code.c:10:                 l[i] = l[j];
	movl	-12(%rbp), %eax	# i, tmp135
	cltq
	leaq	0(,%rax,4), %rcx	#, _16
	movq	-24(%rbp), %rax	# l, tmp136
	addq	%rcx, %rax	# _16, _17
# eval/problem48//code.c:10:                 l[i] = l[j];
	movss	(%rdx), %xmm0	# *_14, _18
# eval/problem48//code.c:10:                 l[i] = l[j];
	movss	%xmm0, (%rax)	# _18, *_17
# eval/problem48//code.c:11:                 l[j] = temp;
	movl	-8(%rbp), %eax	# j, tmp137
	cltq
	leaq	0(,%rax,4), %rdx	#, _20
	movq	-24(%rbp), %rax	# l, tmp138
	addq	%rdx, %rax	# _20, _21
# eval/problem48//code.c:11:                 l[j] = temp;
	movss	-4(%rbp), %xmm0	# temp, tmp139
	movss	%xmm0, (%rax)	# tmp139, *_21
.L4:
# eval/problem48//code.c:7:         for (int j = i + 1; j < size; j++) {
	addl	$1, -8(%rbp)	#, j
.L3:
# eval/problem48//code.c:7:         for (int j = i + 1; j < size; j++) {
	movl	-8(%rbp), %eax	# j, tmp140
	cmpl	-28(%rbp), %eax	# size, tmp140
	jl	.L6	#,
# eval/problem48//code.c:6:     for (int i = 0; i < size; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# eval/problem48//code.c:6:     for (int i = 0; i < size; i++) {
	movl	-12(%rbp), %eax	# i, tmp141
	cmpl	-28(%rbp), %eax	# size, tmp141
	jl	.L7	#,
# eval/problem48//code.c:15:     if (size % 2 == 1) return l[size / 2];
	movl	-28(%rbp), %eax	# size, tmp142
	cltd
	shrl	$31, %edx	#, tmp144
	addl	%edx, %eax	# tmp144, tmp145
	andl	$1, %eax	#, tmp146
	subl	%edx, %eax	# tmp144, tmp147
# eval/problem48//code.c:15:     if (size % 2 == 1) return l[size / 2];
	cmpl	$1, %eax	#, _22
	jne	.L8	#,
# eval/problem48//code.c:15:     if (size % 2 == 1) return l[size / 2];
	movl	-28(%rbp), %eax	# size, tmp148
	movl	%eax, %edx	# tmp148, tmp149
	shrl	$31, %edx	#, tmp149
	addl	%edx, %eax	# tmp149, tmp150
	sarl	%eax	# tmp151
	cltq
# eval/problem48//code.c:15:     if (size % 2 == 1) return l[size / 2];
	leaq	0(,%rax,4), %rdx	#, _25
	movq	-24(%rbp), %rax	# l, tmp152
	addq	%rdx, %rax	# _25, _26
	movss	(%rax), %xmm0	# *_26, _41
	jmp	.L9	#
.L8:
# eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	movl	-28(%rbp), %eax	# size, tmp153
	movl	%eax, %edx	# tmp153, tmp154
	shrl	$31, %edx	#, tmp154
	addl	%edx, %eax	# tmp154, tmp155
	sarl	%eax	# tmp156
	cltq
# eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	leaq	0(,%rax,4), %rdx	#, _29
	movq	-24(%rbp), %rax	# l, tmp157
	addq	%rdx, %rax	# _29, _30
	movss	(%rax), %xmm1	# *_30, _31
# eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	movl	-28(%rbp), %eax	# size, tmp158
	movl	%eax, %edx	# tmp158, tmp159
	shrl	$31, %edx	#, tmp159
	addl	%edx, %eax	# tmp159, tmp160
	sarl	%eax	# tmp161
	cltq
# eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	salq	$2, %rax	#, _34
	leaq	-4(%rax), %rdx	#, _35
	movq	-24(%rbp), %rax	# l, tmp162
	addq	%rdx, %rax	# _35, _36
	movss	(%rax), %xmm0	# *_36, _37
# eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	addss	%xmm0, %xmm1	# _37, _38
# eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	movss	.LC0(%rip), %xmm0	#, tmp163
	mulss	%xmm1, %xmm0	# _38, _41
.L9:
# eval/problem48//code.c:17: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align 4
.LC0:
	.long	1056964608
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
