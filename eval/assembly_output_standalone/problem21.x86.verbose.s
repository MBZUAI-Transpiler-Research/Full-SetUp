	.file	"code.c"
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
	movq	%rdi, -40(%rbp)	# numbers, numbers
	movl	%esi, -44(%rbp)	# size, size
	movq	%rdx, -56(%rbp)	# out, out
# eval/problem21//code.c:6:     float min_diff = FLT_MAX;
	movss	.LC0(%rip), %xmm0	#, tmp108
	movss	%xmm0, -20(%rbp)	# tmp108, min_diff
# eval/problem21//code.c:9:     out[0] = numbers[0];
	movq	-40(%rbp), %rax	# numbers, tmp109
	movss	(%rax), %xmm0	# *numbers_38(D), _1
# eval/problem21//code.c:9:     out[0] = numbers[0];
	movq	-56(%rbp), %rax	# out, tmp110
	movss	%xmm0, (%rax)	# _1, *out_39(D)
# eval/problem21//code.c:10:     out[1] = numbers[1];
	movq	-56(%rbp), %rax	# out, tmp111
	leaq	4(%rax), %rdx	#, _2
# eval/problem21//code.c:10:     out[1] = numbers[1];
	movq	-40(%rbp), %rax	# numbers, tmp112
	movss	4(%rax), %xmm0	# MEM[(float *)numbers_38(D) + 4B], _3
	movss	%xmm0, (%rdx)	# _3, *_2
# eval/problem21//code.c:12:     for (i = 0; i < size; i++) {
	movl	$0, -16(%rbp)	#, i
# eval/problem21//code.c:12:     for (i = 0; i < size; i++) {
	jmp	.L2	#
.L7:
# eval/problem21//code.c:13:         for (j = i + 1; j < size; j++) {
	movl	-16(%rbp), %eax	# i, tmp116
	addl	$1, %eax	#, tmp115
	movl	%eax, -12(%rbp)	# tmp115, j
# eval/problem21//code.c:13:         for (j = i + 1; j < size; j++) {
	jmp	.L3	#
.L6:
# eval/problem21//code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	movl	-16(%rbp), %eax	# i, tmp117
	cltq
	leaq	0(,%rax,4), %rdx	#, _5
	movq	-40(%rbp), %rax	# numbers, tmp118
	addq	%rdx, %rax	# _5, _6
	movss	(%rax), %xmm0	# *_6, _7
# eval/problem21//code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	movl	-12(%rbp), %eax	# j, tmp119
	cltq
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-40(%rbp), %rax	# numbers, tmp120
	addq	%rdx, %rax	# _9, _10
	movss	(%rax), %xmm1	# *_10, _11
# eval/problem21//code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	subss	%xmm1, %xmm0	# _11, _12
# eval/problem21//code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	movss	.LC1(%rip), %xmm1	#, tmp122
	andps	%xmm1, %xmm0	# tmp122, tmp121
	movss	%xmm0, -4(%rbp)	# tmp121, diff
# eval/problem21//code.c:15:             if (diff < min_diff) {
	movss	-20(%rbp), %xmm0	# min_diff, tmp123
	comiss	-4(%rbp), %xmm0	# diff, tmp123
	jbe	.L4	#,
# eval/problem21//code.c:16:                 min_diff = diff;
	movss	-4(%rbp), %xmm0	# diff, tmp124
	movss	%xmm0, -20(%rbp)	# tmp124, min_diff
# eval/problem21//code.c:17:                 out[0] = numbers[i];
	movl	-16(%rbp), %eax	# i, tmp125
	cltq
	leaq	0(,%rax,4), %rdx	#, _14
	movq	-40(%rbp), %rax	# numbers, tmp126
	addq	%rdx, %rax	# _14, _15
	movss	(%rax), %xmm0	# *_15, _16
# eval/problem21//code.c:17:                 out[0] = numbers[i];
	movq	-56(%rbp), %rax	# out, tmp127
	movss	%xmm0, (%rax)	# _16, *out_39(D)
# eval/problem21//code.c:18:                 out[1] = numbers[j];
	movl	-12(%rbp), %eax	# j, tmp128
	cltq
	leaq	0(,%rax,4), %rdx	#, _18
	movq	-40(%rbp), %rax	# numbers, tmp129
	addq	%rax, %rdx	# tmp129, _19
# eval/problem21//code.c:18:                 out[1] = numbers[j];
	movq	-56(%rbp), %rax	# out, tmp130
	addq	$4, %rax	#, _20
# eval/problem21//code.c:18:                 out[1] = numbers[j];
	movss	(%rdx), %xmm0	# *_19, _21
# eval/problem21//code.c:18:                 out[1] = numbers[j];
	movss	%xmm0, (%rax)	# _21, *_20
.L4:
# eval/problem21//code.c:13:         for (j = i + 1; j < size; j++) {
	addl	$1, -12(%rbp)	#, j
.L3:
# eval/problem21//code.c:13:         for (j = i + 1; j < size; j++) {
	movl	-12(%rbp), %eax	# j, tmp131
	cmpl	-44(%rbp), %eax	# size, tmp131
	jl	.L6	#,
# eval/problem21//code.c:12:     for (i = 0; i < size; i++) {
	addl	$1, -16(%rbp)	#, i
.L2:
# eval/problem21//code.c:12:     for (i = 0; i < size; i++) {
	movl	-16(%rbp), %eax	# i, tmp132
	cmpl	-44(%rbp), %eax	# size, tmp132
	jl	.L7	#,
# eval/problem21//code.c:23:     if (out[0] > out[1]) {
	movq	-56(%rbp), %rax	# out, tmp133
	movss	(%rax), %xmm0	# *out_39(D), _22
# eval/problem21//code.c:23:     if (out[0] > out[1]) {
	movq	-56(%rbp), %rax	# out, tmp134
	addq	$4, %rax	#, _23
	movss	(%rax), %xmm1	# *_23, _24
# eval/problem21//code.c:23:     if (out[0] > out[1]) {
	comiss	%xmm1, %xmm0	# _24, _22
	ja	.L11	#,
# eval/problem21//code.c:28: }
	jmp	.L12	#
.L11:
# eval/problem21//code.c:24:         float temp = out[0];
	movq	-56(%rbp), %rax	# out, tmp135
	movss	(%rax), %xmm0	# *out_39(D), tmp136
	movss	%xmm0, -8(%rbp)	# tmp136, temp
# eval/problem21//code.c:25:         out[0] = out[1];
	movq	-56(%rbp), %rax	# out, tmp137
	movss	4(%rax), %xmm0	# MEM[(float *)out_39(D) + 4B], _25
	movq	-56(%rbp), %rax	# out, tmp138
	movss	%xmm0, (%rax)	# _25, *out_39(D)
# eval/problem21//code.c:26:         out[1] = temp;
	movq	-56(%rbp), %rax	# out, tmp139
	addq	$4, %rax	#, _26
# eval/problem21//code.c:26:         out[1] = temp;
	movss	-8(%rbp), %xmm0	# temp, tmp140
	movss	%xmm0, (%rax)	# tmp140, *_26
.L12:
# eval/problem21//code.c:28: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align 4
.LC0:
	.long	2139095039
	.align 16
.LC1:
	.long	2147483647
	.long	0
	.long	0
	.long	0
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
