	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	movq	%rdi, -24(%rbp)	# numbers, numbers
	movl	%esi, -28(%rbp)	# size, size
# code.c:5:     float min = numbers[0], max = numbers[0];
	movq	-24(%rbp), %rax	# numbers, tmp106
	movss	(%rax), %xmm0	# *numbers_33(D), tmp107
	movss	%xmm0, -16(%rbp)	# tmp107, min
# code.c:5:     float min = numbers[0], max = numbers[0];
	movq	-24(%rbp), %rax	# numbers, tmp108
	movss	(%rax), %xmm0	# *numbers_33(D), tmp109
	movss	%xmm0, -12(%rbp)	# tmp109, max
# code.c:6:     for (int i = 1; i < size; i++) {
	movl	$1, -8(%rbp)	#, i
# code.c:6:     for (int i = 1; i < size; i++) {
	jmp	.L2	#
.L7:
# code.c:7:         if (numbers[i] < min) min = numbers[i];
	movl	-8(%rbp), %eax	# i, tmp110
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# numbers, tmp111
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm1	# *_3, _4
# code.c:7:         if (numbers[i] < min) min = numbers[i];
	movss	-16(%rbp), %xmm0	# min, tmp112
	comiss	%xmm1, %xmm0	# _4, tmp112
	jbe	.L3	#,
# code.c:7:         if (numbers[i] < min) min = numbers[i];
	movl	-8(%rbp), %eax	# i, tmp113
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-24(%rbp), %rax	# numbers, tmp114
	addq	%rdx, %rax	# _6, _7
# code.c:7:         if (numbers[i] < min) min = numbers[i];
	movss	(%rax), %xmm0	# *_7, tmp115
	movss	%xmm0, -16(%rbp)	# tmp115, min
.L3:
# code.c:8:         if (numbers[i] > max) max = numbers[i];
	movl	-8(%rbp), %eax	# i, tmp116
	cltq
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-24(%rbp), %rax	# numbers, tmp117
	addq	%rdx, %rax	# _9, _10
	movss	(%rax), %xmm0	# *_10, _11
# code.c:8:         if (numbers[i] > max) max = numbers[i];
	comiss	-12(%rbp), %xmm0	# max, _11
	jbe	.L5	#,
# code.c:8:         if (numbers[i] > max) max = numbers[i];
	movl	-8(%rbp), %eax	# i, tmp118
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-24(%rbp), %rax	# numbers, tmp119
	addq	%rdx, %rax	# _13, _14
# code.c:8:         if (numbers[i] > max) max = numbers[i];
	movss	(%rax), %xmm0	# *_14, tmp120
	movss	%xmm0, -12(%rbp)	# tmp120, max
.L5:
# code.c:6:     for (int i = 1; i < size; i++) {
	addl	$1, -8(%rbp)	#, i
.L2:
# code.c:6:     for (int i = 1; i < size; i++) {
	movl	-8(%rbp), %eax	# i, tmp121
	cmpl	-28(%rbp), %eax	# size, tmp121
	jl	.L7	#,
# code.c:10:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# code.c:10:     for (int i = 0; i < size; i++) {
	jmp	.L8	#
.L9:
# code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	movl	-4(%rbp), %eax	# i, tmp122
	cltq
	leaq	0(,%rax,4), %rdx	#, _16
	movq	-24(%rbp), %rax	# numbers, tmp123
	addq	%rdx, %rax	# _16, _17
	movss	(%rax), %xmm0	# *_17, _18
# code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	subss	-16(%rbp), %xmm0	# min, _19
# code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	movss	-12(%rbp), %xmm1	# max, tmp124
	subss	-16(%rbp), %xmm1	# min, _20
# code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	movl	-4(%rbp), %eax	# i, tmp125
	cltq
	leaq	0(,%rax,4), %rdx	#, _22
	movq	-24(%rbp), %rax	# numbers, tmp126
	addq	%rdx, %rax	# _22, _23
# code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	divss	%xmm1, %xmm0	# _20, _24
# code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	movss	%xmm0, (%rax)	# _24, *_23
# code.c:10:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L8:
# code.c:10:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp127
	cmpl	-28(%rbp), %eax	# size, tmp127
	jl	.L9	#,
# code.c:13: }
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
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
