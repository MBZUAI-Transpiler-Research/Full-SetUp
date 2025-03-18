	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	movq	%rdi, -24(%rbp)	# arr, arr
	movl	%esi, -28(%rbp)	# arr_size, arr_size
	movl	%edx, -32(%rbp)	# k, k
	movq	%rcx, -40(%rbp)	# out, out
# eval/problem121//code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	movl	$0, -16(%rbp)	#, i
# eval/problem121//code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	jmp	.L2	#
.L6:
# eval/problem121//code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	movl	$0, -12(%rbp)	#, j
# eval/problem121//code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	jmp	.L3	#
.L5:
# eval/problem121//code.c:7:             if (arr[j] > arr[j + 1]) {
	movl	-12(%rbp), %eax	# j, tmp118
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# arr, tmp119
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# eval/problem121//code.c:7:             if (arr[j] > arr[j + 1]) {
	movl	-12(%rbp), %eax	# j, tmp120
	cltq
	addq	$1, %rax	#, _6
	leaq	0(,%rax,4), %rcx	#, _7
	movq	-24(%rbp), %rax	# arr, tmp121
	addq	%rcx, %rax	# _7, _8
	movl	(%rax), %eax	# *_8, _9
# eval/problem121//code.c:7:             if (arr[j] > arr[j + 1]) {
	cmpl	%eax, %edx	# _9, _4
	jle	.L4	#,
# eval/problem121//code.c:8:                 int temp = arr[j];
	movl	-12(%rbp), %eax	# j, tmp122
	cltq
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-24(%rbp), %rax	# arr, tmp123
	addq	%rdx, %rax	# _11, _12
# eval/problem121//code.c:8:                 int temp = arr[j];
	movl	(%rax), %eax	# *_12, tmp124
	movl	%eax, -4(%rbp)	# tmp124, temp
# eval/problem121//code.c:9:                 arr[j] = arr[j + 1];
	movl	-12(%rbp), %eax	# j, tmp125
	cltq
	addq	$1, %rax	#, _14
	leaq	0(,%rax,4), %rdx	#, _15
	movq	-24(%rbp), %rax	# arr, tmp126
	addq	%rdx, %rax	# _15, _16
# eval/problem121//code.c:9:                 arr[j] = arr[j + 1];
	movl	-12(%rbp), %edx	# j, tmp127
	movslq	%edx, %rdx	# tmp127, _17
	leaq	0(,%rdx,4), %rcx	#, _18
	movq	-24(%rbp), %rdx	# arr, tmp128
	addq	%rcx, %rdx	# _18, _19
# eval/problem121//code.c:9:                 arr[j] = arr[j + 1];
	movl	(%rax), %eax	# *_16, _20
# eval/problem121//code.c:9:                 arr[j] = arr[j + 1];
	movl	%eax, (%rdx)	# _20, *_19
# eval/problem121//code.c:10:                 arr[j + 1] = temp;
	movl	-12(%rbp), %eax	# j, tmp129
	cltq
	addq	$1, %rax	#, _22
	leaq	0(,%rax,4), %rdx	#, _23
	movq	-24(%rbp), %rax	# arr, tmp130
	addq	%rax, %rdx	# tmp130, _24
# eval/problem121//code.c:10:                 arr[j + 1] = temp;
	movl	-4(%rbp), %eax	# temp, tmp131
	movl	%eax, (%rdx)	# tmp131, *_24
.L4:
# eval/problem121//code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	addl	$1, -12(%rbp)	#, j
.L3:
# eval/problem121//code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	movl	-28(%rbp), %eax	# arr_size, tmp132
	subl	-16(%rbp), %eax	# i, _25
# eval/problem121//code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	subl	$1, %eax	#, _26
# eval/problem121//code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	cmpl	%eax, -12(%rbp)	# _26, j
	jl	.L5	#,
# eval/problem121//code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	addl	$1, -16(%rbp)	#, i
.L2:
# eval/problem121//code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	movl	-28(%rbp), %eax	# arr_size, tmp133
	subl	$1, %eax	#, _27
# eval/problem121//code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	cmpl	%eax, -16(%rbp)	# _27, i
	jl	.L6	#,
# eval/problem121//code.c:15:     for (int i = 0; i < k; i++) {
	movl	$0, -8(%rbp)	#, i
# eval/problem121//code.c:15:     for (int i = 0; i < k; i++) {
	jmp	.L7	#
.L8:
# eval/problem121//code.c:16:         out[i] = arr[arr_size - k + i];
	movl	-28(%rbp), %eax	# arr_size, tmp134
	subl	-32(%rbp), %eax	# k, tmp134
	movl	%eax, %edx	# tmp134, _28
# eval/problem121//code.c:16:         out[i] = arr[arr_size - k + i];
	movl	-8(%rbp), %eax	# i, tmp135
	addl	%edx, %eax	# _28, _29
	cltq
# eval/problem121//code.c:16:         out[i] = arr[arr_size - k + i];
	leaq	0(,%rax,4), %rdx	#, _31
	movq	-24(%rbp), %rax	# arr, tmp136
	addq	%rdx, %rax	# _31, _32
# eval/problem121//code.c:16:         out[i] = arr[arr_size - k + i];
	movl	-8(%rbp), %edx	# i, tmp137
	movslq	%edx, %rdx	# tmp137, _33
	leaq	0(,%rdx,4), %rcx	#, _34
	movq	-40(%rbp), %rdx	# out, tmp138
	addq	%rcx, %rdx	# _34, _35
# eval/problem121//code.c:16:         out[i] = arr[arr_size - k + i];
	movl	(%rax), %eax	# *_32, _36
# eval/problem121//code.c:16:         out[i] = arr[arr_size - k + i];
	movl	%eax, (%rdx)	# _36, *_35
# eval/problem121//code.c:15:     for (int i = 0; i < k; i++) {
	addl	$1, -8(%rbp)	#, i
.L7:
# eval/problem121//code.c:15:     for (int i = 0; i < k; i++) {
	movl	-8(%rbp), %eax	# i, tmp139
	cmpl	-32(%rbp), %eax	# k, tmp139
	jl	.L8	#,
# eval/problem121//code.c:18: }
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
