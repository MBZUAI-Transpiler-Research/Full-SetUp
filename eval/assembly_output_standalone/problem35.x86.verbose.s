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
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# l, l
	movl	%esi, -44(%rbp)	# size, size
	movq	%rdx, -56(%rbp)	# out_size, out_size
# eval/problem35//code.c:5:     int *out = malloc(size * sizeof(int));
	movl	-44(%rbp), %eax	# size, tmp124
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp125, out
# eval/problem35//code.c:6:     int found, out_count = 0, i, j;
	movl	$0, -24(%rbp)	#, out_count
# eval/problem35//code.c:7:     for (i = 0; i < size; i++) {
	movl	$0, -20(%rbp)	#, i
# eval/problem35//code.c:7:     for (i = 0; i < size; i++) {
	jmp	.L2	#
.L8:
# eval/problem35//code.c:8:         found = 0;
	movl	$0, -28(%rbp)	#, found
# eval/problem35//code.c:9:         for (j = 0; j < out_count; j++) {
	movl	$0, -16(%rbp)	#, j
# eval/problem35//code.c:9:         for (j = 0; j < out_count; j++) {
	jmp	.L3	#
.L6:
# eval/problem35//code.c:10:             if (l[i] == out[j]) {
	movl	-20(%rbp), %eax	# i, tmp126
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-40(%rbp), %rax	# l, tmp127
	addq	%rdx, %rax	# _4, _5
	movl	(%rax), %edx	# *_5, _6
# eval/problem35//code.c:10:             if (l[i] == out[j]) {
	movl	-16(%rbp), %eax	# j, tmp128
	cltq
	leaq	0(,%rax,4), %rcx	#, _8
	movq	-8(%rbp), %rax	# out, tmp129
	addq	%rcx, %rax	# _8, _9
	movl	(%rax), %eax	# *_9, _10
# eval/problem35//code.c:10:             if (l[i] == out[j]) {
	cmpl	%eax, %edx	# _10, _6
	jne	.L4	#,
# eval/problem35//code.c:11:                 found = 1;
	movl	$1, -28(%rbp)	#, found
# eval/problem35//code.c:12:                 break;
	jmp	.L5	#
.L4:
# eval/problem35//code.c:9:         for (j = 0; j < out_count; j++) {
	addl	$1, -16(%rbp)	#, j
.L3:
# eval/problem35//code.c:9:         for (j = 0; j < out_count; j++) {
	movl	-16(%rbp), %eax	# j, tmp130
	cmpl	-24(%rbp), %eax	# out_count, tmp130
	jl	.L6	#,
.L5:
# eval/problem35//code.c:15:         if (!found) {
	cmpl	$0, -28(%rbp)	#, found
	jne	.L7	#,
# eval/problem35//code.c:16:             out[out_count++] = l[i];
	movl	-20(%rbp), %eax	# i, tmp131
	cltq
	leaq	0(,%rax,4), %rdx	#, _12
	movq	-40(%rbp), %rax	# l, tmp132
	leaq	(%rdx,%rax), %rcx	#, _13
# eval/problem35//code.c:16:             out[out_count++] = l[i];
	movl	-24(%rbp), %eax	# out_count, out_count.0_14
	leal	1(%rax), %edx	#, tmp133
	movl	%edx, -24(%rbp)	# tmp133, out_count
	cltq
# eval/problem35//code.c:16:             out[out_count++] = l[i];
	leaq	0(,%rax,4), %rdx	#, _16
	movq	-8(%rbp), %rax	# out, tmp134
	addq	%rax, %rdx	# tmp134, _17
# eval/problem35//code.c:16:             out[out_count++] = l[i];
	movl	(%rcx), %eax	# *_13, _18
# eval/problem35//code.c:16:             out[out_count++] = l[i];
	movl	%eax, (%rdx)	# _18, *_17
.L7:
# eval/problem35//code.c:7:     for (i = 0; i < size; i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# eval/problem35//code.c:7:     for (i = 0; i < size; i++) {
	movl	-20(%rbp), %eax	# i, tmp135
	cmpl	-44(%rbp), %eax	# size, tmp135
	jl	.L8	#,
# eval/problem35//code.c:20:     for (i = 0; i < out_count - 1; i++) {
	movl	$0, -20(%rbp)	#, i
# eval/problem35//code.c:20:     for (i = 0; i < out_count - 1; i++) {
	jmp	.L9	#
.L13:
# eval/problem35//code.c:21:         for (j = i + 1; j < out_count; j++) {
	movl	-20(%rbp), %eax	# i, tmp139
	addl	$1, %eax	#, tmp138
	movl	%eax, -16(%rbp)	# tmp138, j
# eval/problem35//code.c:21:         for (j = i + 1; j < out_count; j++) {
	jmp	.L10	#
.L12:
# eval/problem35//code.c:22:             if (out[i] > out[j]) {
	movl	-20(%rbp), %eax	# i, tmp140
	cltq
	leaq	0(,%rax,4), %rdx	#, _20
	movq	-8(%rbp), %rax	# out, tmp141
	addq	%rdx, %rax	# _20, _21
	movl	(%rax), %edx	# *_21, _22
# eval/problem35//code.c:22:             if (out[i] > out[j]) {
	movl	-16(%rbp), %eax	# j, tmp142
	cltq
	leaq	0(,%rax,4), %rcx	#, _24
	movq	-8(%rbp), %rax	# out, tmp143
	addq	%rcx, %rax	# _24, _25
	movl	(%rax), %eax	# *_25, _26
# eval/problem35//code.c:22:             if (out[i] > out[j]) {
	cmpl	%eax, %edx	# _26, _22
	jle	.L11	#,
# eval/problem35//code.c:23:                 int temp = out[i];
	movl	-20(%rbp), %eax	# i, tmp144
	cltq
	leaq	0(,%rax,4), %rdx	#, _28
	movq	-8(%rbp), %rax	# out, tmp145
	addq	%rdx, %rax	# _28, _29
# eval/problem35//code.c:23:                 int temp = out[i];
	movl	(%rax), %eax	# *_29, tmp146
	movl	%eax, -12(%rbp)	# tmp146, temp
# eval/problem35//code.c:24:                 out[i] = out[j];
	movl	-16(%rbp), %eax	# j, tmp147
	cltq
	leaq	0(,%rax,4), %rdx	#, _31
	movq	-8(%rbp), %rax	# out, tmp148
	addq	%rdx, %rax	# _31, _32
# eval/problem35//code.c:24:                 out[i] = out[j];
	movl	-20(%rbp), %edx	# i, tmp149
	movslq	%edx, %rdx	# tmp149, _33
	leaq	0(,%rdx,4), %rcx	#, _34
	movq	-8(%rbp), %rdx	# out, tmp150
	addq	%rcx, %rdx	# _34, _35
# eval/problem35//code.c:24:                 out[i] = out[j];
	movl	(%rax), %eax	# *_32, _36
# eval/problem35//code.c:24:                 out[i] = out[j];
	movl	%eax, (%rdx)	# _36, *_35
# eval/problem35//code.c:25:                 out[j] = temp;
	movl	-16(%rbp), %eax	# j, tmp151
	cltq
	leaq	0(,%rax,4), %rdx	#, _38
	movq	-8(%rbp), %rax	# out, tmp152
	addq	%rax, %rdx	# tmp152, _39
# eval/problem35//code.c:25:                 out[j] = temp;
	movl	-12(%rbp), %eax	# temp, tmp153
	movl	%eax, (%rdx)	# tmp153, *_39
.L11:
# eval/problem35//code.c:21:         for (j = i + 1; j < out_count; j++) {
	addl	$1, -16(%rbp)	#, j
.L10:
# eval/problem35//code.c:21:         for (j = i + 1; j < out_count; j++) {
	movl	-16(%rbp), %eax	# j, tmp154
	cmpl	-24(%rbp), %eax	# out_count, tmp154
	jl	.L12	#,
# eval/problem35//code.c:20:     for (i = 0; i < out_count - 1; i++) {
	addl	$1, -20(%rbp)	#, i
.L9:
# eval/problem35//code.c:20:     for (i = 0; i < out_count - 1; i++) {
	movl	-24(%rbp), %eax	# out_count, tmp155
	subl	$1, %eax	#, _40
# eval/problem35//code.c:20:     for (i = 0; i < out_count - 1; i++) {
	cmpl	%eax, -20(%rbp)	# _40, i
	jl	.L13	#,
# eval/problem35//code.c:30:     *out_size = out_count;
	movq	-56(%rbp), %rax	# out_size, tmp156
	movl	-24(%rbp), %edx	# out_count, tmp157
	movl	%edx, (%rax)	# tmp157, *out_size_60(D)
# eval/problem35//code.c:31:     return out;
	movq	-8(%rbp), %rax	# out, _62
# eval/problem35//code.c:32: }
	leave	
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
