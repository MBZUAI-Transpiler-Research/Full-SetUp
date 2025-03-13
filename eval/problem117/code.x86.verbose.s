	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	movq	%rdi, -40(%rbp)	# arr, arr
	movl	%esi, -44(%rbp)	# size, size
# code.c:6:     for (int i = 0; i < size; i++) {
	movl	$0, -12(%rbp)	#, i
# code.c:6:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L11:
# code.c:7:         for (int j = i + 1; j < size; j++) {
	movl	-12(%rbp), %eax	# i, tmp114
	addl	$1, %eax	#, tmp113
	movl	%eax, -8(%rbp)	# tmp113, j
# code.c:7:         for (int j = i + 1; j < size; j++) {
	jmp	.L3	#
.L10:
# code.c:8:             count_ones = 0;
	movl	$0, -24(%rbp)	#, count_ones
# code.c:9:             x = arr[i];
	movl	-12(%rbp), %eax	# i, tmp115
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-40(%rbp), %rax	# arr, tmp116
	addq	%rdx, %rax	# _2, _3
# code.c:9:             x = arr[i];
	movl	(%rax), %eax	# *_3, tmp117
	movl	%eax, -20(%rbp)	# tmp117, x
# code.c:10:             y = arr[j];
	movl	-8(%rbp), %eax	# j, tmp118
	cltq
	leaq	0(,%rax,4), %rdx	#, _5
	movq	-40(%rbp), %rax	# arr, tmp119
	addq	%rdx, %rax	# _5, _6
# code.c:10:             y = arr[j];
	movl	(%rax), %eax	# *_6, tmp120
	movl	%eax, -16(%rbp)	# tmp120, y
# code.c:11:             while (x > 0) {
	jmp	.L4	#
.L5:
# code.c:12:                 count_ones += x & 1;
	movl	-20(%rbp), %eax	# x, tmp121
	andl	$1, %eax	#, _7
# code.c:12:                 count_ones += x & 1;
	addl	%eax, -24(%rbp)	# _7, count_ones
# code.c:13:                 x >>= 1;
	sarl	-20(%rbp)	# x
.L4:
# code.c:11:             while (x > 0) {
	cmpl	$0, -20(%rbp)	#, x
	jg	.L5	#,
# code.c:15:             x = count_ones;
	movl	-24(%rbp), %eax	# count_ones, tmp122
	movl	%eax, -20(%rbp)	# tmp122, x
# code.c:16:             count_ones = 0;
	movl	$0, -24(%rbp)	#, count_ones
# code.c:17:             while (y > 0) {
	jmp	.L6	#
.L7:
# code.c:18:                 count_ones += y & 1;
	movl	-16(%rbp), %eax	# y, tmp123
	andl	$1, %eax	#, _8
# code.c:18:                 count_ones += y & 1;
	addl	%eax, -24(%rbp)	# _8, count_ones
# code.c:19:                 y >>= 1;
	sarl	-16(%rbp)	# y
.L6:
# code.c:17:             while (y > 0) {
	cmpl	$0, -16(%rbp)	#, y
	jg	.L7	#,
# code.c:21:             y = count_ones;
	movl	-24(%rbp), %eax	# count_ones, tmp124
	movl	%eax, -16(%rbp)	# tmp124, y
# code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	movl	-16(%rbp), %eax	# y, tmp125
	cmpl	-20(%rbp), %eax	# x, tmp125
	jl	.L8	#,
# code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	movl	-16(%rbp), %eax	# y, tmp126
	cmpl	-20(%rbp), %eax	# x, tmp126
	jne	.L9	#,
# code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	movl	-8(%rbp), %eax	# j, tmp127
	cltq
	leaq	0(,%rax,4), %rdx	#, _10
	movq	-40(%rbp), %rax	# arr, tmp128
	addq	%rdx, %rax	# _10, _11
	movl	(%rax), %edx	# *_11, _12
# code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	movl	-12(%rbp), %eax	# i, tmp129
	cltq
	leaq	0(,%rax,4), %rcx	#, _14
	movq	-40(%rbp), %rax	# arr, tmp130
	addq	%rcx, %rax	# _14, _15
	movl	(%rax), %eax	# *_15, _16
# code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	cmpl	%eax, %edx	# _16, _12
	jge	.L9	#,
.L8:
# code.c:23:                 temp = arr[i];
	movl	-12(%rbp), %eax	# i, tmp131
	cltq
	leaq	0(,%rax,4), %rdx	#, _18
	movq	-40(%rbp), %rax	# arr, tmp132
	addq	%rdx, %rax	# _18, _19
# code.c:23:                 temp = arr[i];
	movl	(%rax), %eax	# *_19, tmp133
	movl	%eax, -4(%rbp)	# tmp133, temp
# code.c:24:                 arr[i] = arr[j];
	movl	-8(%rbp), %eax	# j, tmp134
	cltq
	leaq	0(,%rax,4), %rdx	#, _21
	movq	-40(%rbp), %rax	# arr, tmp135
	addq	%rdx, %rax	# _21, _22
# code.c:24:                 arr[i] = arr[j];
	movl	-12(%rbp), %edx	# i, tmp136
	movslq	%edx, %rdx	# tmp136, _23
	leaq	0(,%rdx,4), %rcx	#, _24
	movq	-40(%rbp), %rdx	# arr, tmp137
	addq	%rcx, %rdx	# _24, _25
# code.c:24:                 arr[i] = arr[j];
	movl	(%rax), %eax	# *_22, _26
# code.c:24:                 arr[i] = arr[j];
	movl	%eax, (%rdx)	# _26, *_25
# code.c:25:                 arr[j] = temp;
	movl	-8(%rbp), %eax	# j, tmp138
	cltq
	leaq	0(,%rax,4), %rdx	#, _28
	movq	-40(%rbp), %rax	# arr, tmp139
	addq	%rax, %rdx	# tmp139, _29
# code.c:25:                 arr[j] = temp;
	movl	-4(%rbp), %eax	# temp, tmp140
	movl	%eax, (%rdx)	# tmp140, *_29
.L9:
# code.c:7:         for (int j = i + 1; j < size; j++) {
	addl	$1, -8(%rbp)	#, j
.L3:
# code.c:7:         for (int j = i + 1; j < size; j++) {
	movl	-8(%rbp), %eax	# j, tmp141
	cmpl	-44(%rbp), %eax	# size, tmp141
	jl	.L10	#,
# code.c:6:     for (int i = 0; i < size; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# code.c:6:     for (int i = 0; i < size; i++) {
	movl	-12(%rbp), %eax	# i, tmp142
	cmpl	-44(%rbp), %eax	# size, tmp142
	jl	.L11	#,
# code.c:29: }
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
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
