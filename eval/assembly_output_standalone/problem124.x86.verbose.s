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
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# n, n
	movq	%rsi, -32(%rbp)	# out, out
	movq	%rdx, -40(%rbp)	# size, size
# eval/problem124//code.c:5:     int capacity = 10;
	movl	$10, -16(%rbp)	#, capacity
# eval/problem124//code.c:6:     *size = 1;
	movq	-40(%rbp), %rax	# size, tmp112
	movl	$1, (%rax)	#, *size_45(D)
# eval/problem124//code.c:7:     out[0] = 1;
	movq	-32(%rbp), %rax	# out, tmp113
	movl	$1, (%rax)	#, *out_47(D)
# eval/problem124//code.c:9:     while (n != 1) {
	jmp	.L2	#
.L5:
# eval/problem124//code.c:10:         if (n % 2 == 1) {
	movl	-20(%rbp), %eax	# n, tmp114
	cltd
	shrl	$31, %edx	#, tmp116
	addl	%edx, %eax	# tmp116, tmp117
	andl	$1, %eax	#, tmp118
	subl	%edx, %eax	# tmp116, tmp119
# eval/problem124//code.c:10:         if (n % 2 == 1) {
	cmpl	$1, %eax	#, _1
	jne	.L3	#,
# eval/problem124//code.c:11:             if (*size >= capacity) {
	movq	-40(%rbp), %rax	# size, tmp120
	movl	(%rax), %eax	# *size_45(D), _2
# eval/problem124//code.c:11:             if (*size >= capacity) {
	cmpl	%eax, -16(%rbp)	# _2, capacity
	jg	.L4	#,
# eval/problem124//code.c:12:                 capacity *= 2;
	sall	-16(%rbp)	# capacity
# eval/problem124//code.c:13:                 out = (int*)realloc(out, capacity * sizeof(int));
	movl	-16(%rbp), %eax	# capacity, tmp121
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-32(%rbp), %rax	# out, tmp122
	movq	%rdx, %rsi	# _4,
	movq	%rax, %rdi	# tmp122,
	call	realloc@PLT	#
	movq	%rax, -32(%rbp)	# tmp123, out
.L4:
# eval/problem124//code.c:15:             out[(*size)++] = n;
	movq	-40(%rbp), %rax	# size, tmp124
	movl	(%rax), %eax	# *size_45(D), _5
# eval/problem124//code.c:15:             out[(*size)++] = n;
	leal	1(%rax), %ecx	#, _7
	movq	-40(%rbp), %rdx	# size, tmp125
	movl	%ecx, (%rdx)	# _7, *size_45(D)
	cltq
# eval/problem124//code.c:15:             out[(*size)++] = n;
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-32(%rbp), %rax	# out, tmp126
	addq	%rax, %rdx	# tmp126, _10
# eval/problem124//code.c:15:             out[(*size)++] = n;
	movl	-20(%rbp), %eax	# n, tmp127
	movl	%eax, (%rdx)	# tmp127, *_10
# eval/problem124//code.c:16:             n = n * 3 + 1;
	movl	-20(%rbp), %edx	# n, tmp128
	movl	%edx, %eax	# tmp128, tmp129
	addl	%eax, %eax	# tmp129
	addl	%edx, %eax	# tmp128, _11
# eval/problem124//code.c:16:             n = n * 3 + 1;
	addl	$1, %eax	#, tmp130
	movl	%eax, -20(%rbp)	# tmp130, n
	jmp	.L2	#
.L3:
# eval/problem124//code.c:18:             n = n / 2;
	movl	-20(%rbp), %eax	# n, tmp132
	movl	%eax, %edx	# tmp132, tmp133
	shrl	$31, %edx	#, tmp133
	addl	%edx, %eax	# tmp133, tmp134
	sarl	%eax	# tmp135
	movl	%eax, -20(%rbp)	# tmp135, n
.L2:
# eval/problem124//code.c:9:     while (n != 1) {
	cmpl	$1, -20(%rbp)	#, n
	jne	.L5	#,
# eval/problem124//code.c:22:     for (int i = 1; i < *size; i++) {
	movl	$1, -12(%rbp)	#, i
# eval/problem124//code.c:22:     for (int i = 1; i < *size; i++) {
	jmp	.L6	#
.L10:
# eval/problem124//code.c:23:         int key = out[i];
	movl	-12(%rbp), %eax	# i, tmp136
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-32(%rbp), %rax	# out, tmp137
	addq	%rdx, %rax	# _13, _14
# eval/problem124//code.c:23:         int key = out[i];
	movl	(%rax), %eax	# *_14, tmp138
	movl	%eax, -4(%rbp)	# tmp138, key
# eval/problem124//code.c:24:         int j = i - 1;
	movl	-12(%rbp), %eax	# i, tmp142
	subl	$1, %eax	#, tmp141
	movl	%eax, -8(%rbp)	# tmp141, j
# eval/problem124//code.c:26:         while (j >= 0 && out[j] > key) {
	jmp	.L7	#
.L9:
# eval/problem124//code.c:27:             out[j + 1] = out[j];
	movl	-8(%rbp), %eax	# j, tmp143
	cltq
	leaq	0(,%rax,4), %rdx	#, _16
	movq	-32(%rbp), %rax	# out, tmp144
	addq	%rdx, %rax	# _16, _17
# eval/problem124//code.c:27:             out[j + 1] = out[j];
	movl	-8(%rbp), %edx	# j, tmp145
	movslq	%edx, %rdx	# tmp145, _18
	addq	$1, %rdx	#, _19
	leaq	0(,%rdx,4), %rcx	#, _20
	movq	-32(%rbp), %rdx	# out, tmp146
	addq	%rcx, %rdx	# _20, _21
# eval/problem124//code.c:27:             out[j + 1] = out[j];
	movl	(%rax), %eax	# *_17, _22
# eval/problem124//code.c:27:             out[j + 1] = out[j];
	movl	%eax, (%rdx)	# _22, *_21
# eval/problem124//code.c:28:             j = j - 1;
	subl	$1, -8(%rbp)	#, j
.L7:
# eval/problem124//code.c:26:         while (j >= 0 && out[j] > key) {
	cmpl	$0, -8(%rbp)	#, j
	js	.L8	#,
# eval/problem124//code.c:26:         while (j >= 0 && out[j] > key) {
	movl	-8(%rbp), %eax	# j, tmp147
	cltq
	leaq	0(,%rax,4), %rdx	#, _24
	movq	-32(%rbp), %rax	# out, tmp148
	addq	%rdx, %rax	# _24, _25
	movl	(%rax), %eax	# *_25, _26
# eval/problem124//code.c:26:         while (j >= 0 && out[j] > key) {
	cmpl	%eax, -4(%rbp)	# _26, key
	jl	.L9	#,
.L8:
# eval/problem124//code.c:30:         out[j + 1] = key;
	movl	-8(%rbp), %eax	# j, tmp149
	cltq
	addq	$1, %rax	#, _28
	leaq	0(,%rax,4), %rdx	#, _29
	movq	-32(%rbp), %rax	# out, tmp150
	addq	%rax, %rdx	# tmp150, _30
# eval/problem124//code.c:30:         out[j + 1] = key;
	movl	-4(%rbp), %eax	# key, tmp151
	movl	%eax, (%rdx)	# tmp151, *_30
# eval/problem124//code.c:22:     for (int i = 1; i < *size; i++) {
	addl	$1, -12(%rbp)	#, i
.L6:
# eval/problem124//code.c:22:     for (int i = 1; i < *size; i++) {
	movq	-40(%rbp), %rax	# size, tmp152
	movl	(%rax), %eax	# *size_45(D), _31
# eval/problem124//code.c:22:     for (int i = 1; i < *size; i++) {
	cmpl	%eax, -12(%rbp)	# _31, i
	jl	.L10	#,
# eval/problem124//code.c:32: }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
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
