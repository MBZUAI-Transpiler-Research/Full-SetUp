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
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# l1, l1
	movl	%esi, -44(%rbp)	# size1, size1
	movq	%rdx, -56(%rbp)	# l2, l2
	movl	%ecx, -48(%rbp)	# size2, size2
	movq	%r8, -64(%rbp)	# out_size, out_size
# code.c:5:     int *out = malloc(size1 * sizeof(int));
	movl	-44(%rbp), %eax	# size1, tmp137
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp138, out
# code.c:6:     int k = 0, i, j, m;
	movl	$0, -32(%rbp)	#, k
# code.c:8:     for (i = 0; i < size1; i++) {
	movl	$0, -28(%rbp)	#, i
# code.c:8:     for (i = 0; i < size1; i++) {
	jmp	.L2	#
.L11:
# code.c:9:         int exists_in_out = 0;
	movl	$0, -16(%rbp)	#, exists_in_out
# code.c:10:         for (m = 0; m < k; m++) {
	movl	$0, -20(%rbp)	#, m
# code.c:10:         for (m = 0; m < k; m++) {
	jmp	.L3	#
.L6:
# code.c:11:             if (out[m] == l1[i]) {
	movl	-20(%rbp), %eax	# m, tmp139
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-8(%rbp), %rax	# out, tmp140
	addq	%rdx, %rax	# _4, _5
	movl	(%rax), %edx	# *_5, _6
# code.c:11:             if (out[m] == l1[i]) {
	movl	-28(%rbp), %eax	# i, tmp141
	cltq
	leaq	0(,%rax,4), %rcx	#, _8
	movq	-40(%rbp), %rax	# l1, tmp142
	addq	%rcx, %rax	# _8, _9
	movl	(%rax), %eax	# *_9, _10
# code.c:11:             if (out[m] == l1[i]) {
	cmpl	%eax, %edx	# _10, _6
	jne	.L4	#,
# code.c:12:                 exists_in_out = 1;
	movl	$1, -16(%rbp)	#, exists_in_out
# code.c:13:                 break;
	jmp	.L5	#
.L4:
# code.c:10:         for (m = 0; m < k; m++) {
	addl	$1, -20(%rbp)	#, m
.L3:
# code.c:10:         for (m = 0; m < k; m++) {
	movl	-20(%rbp), %eax	# m, tmp143
	cmpl	-32(%rbp), %eax	# k, tmp143
	jl	.L6	#,
.L5:
# code.c:16:         if (!exists_in_out) {
	cmpl	$0, -16(%rbp)	#, exists_in_out
	jne	.L7	#,
# code.c:17:             for (j = 0; j < size2; j++) {
	movl	$0, -24(%rbp)	#, j
# code.c:17:             for (j = 0; j < size2; j++) {
	jmp	.L8	#
.L10:
# code.c:18:                 if (l1[i] == l2[j]) {
	movl	-28(%rbp), %eax	# i, tmp144
	cltq
	leaq	0(,%rax,4), %rdx	#, _12
	movq	-40(%rbp), %rax	# l1, tmp145
	addq	%rdx, %rax	# _12, _13
	movl	(%rax), %edx	# *_13, _14
# code.c:18:                 if (l1[i] == l2[j]) {
	movl	-24(%rbp), %eax	# j, tmp146
	cltq
	leaq	0(,%rax,4), %rcx	#, _16
	movq	-56(%rbp), %rax	# l2, tmp147
	addq	%rcx, %rax	# _16, _17
	movl	(%rax), %eax	# *_17, _18
# code.c:18:                 if (l1[i] == l2[j]) {
	cmpl	%eax, %edx	# _18, _14
	jne	.L9	#,
# code.c:19:                     out[k++] = l1[i];
	movl	-28(%rbp), %eax	# i, tmp148
	cltq
	leaq	0(,%rax,4), %rdx	#, _20
	movq	-40(%rbp), %rax	# l1, tmp149
	leaq	(%rdx,%rax), %rcx	#, _21
# code.c:19:                     out[k++] = l1[i];
	movl	-32(%rbp), %eax	# k, k.0_22
	leal	1(%rax), %edx	#, tmp150
	movl	%edx, -32(%rbp)	# tmp150, k
	cltq
# code.c:19:                     out[k++] = l1[i];
	leaq	0(,%rax,4), %rdx	#, _24
	movq	-8(%rbp), %rax	# out, tmp151
	addq	%rax, %rdx	# tmp151, _25
# code.c:19:                     out[k++] = l1[i];
	movl	(%rcx), %eax	# *_21, _26
# code.c:19:                     out[k++] = l1[i];
	movl	%eax, (%rdx)	# _26, *_25
# code.c:20:                     break;
	jmp	.L7	#
.L9:
# code.c:17:             for (j = 0; j < size2; j++) {
	addl	$1, -24(%rbp)	#, j
.L8:
# code.c:17:             for (j = 0; j < size2; j++) {
	movl	-24(%rbp), %eax	# j, tmp152
	cmpl	-48(%rbp), %eax	# size2, tmp152
	jl	.L10	#,
.L7:
# code.c:8:     for (i = 0; i < size1; i++) {
	addl	$1, -28(%rbp)	#, i
.L2:
# code.c:8:     for (i = 0; i < size1; i++) {
	movl	-28(%rbp), %eax	# i, tmp153
	cmpl	-44(%rbp), %eax	# size1, tmp153
	jl	.L11	#,
# code.c:26:     for (i = 0; i < k - 1; i++) {
	movl	$0, -28(%rbp)	#, i
# code.c:26:     for (i = 0; i < k - 1; i++) {
	jmp	.L12	#
.L16:
# code.c:27:         for (j = 0; j < k - i - 1; j++) {
	movl	$0, -24(%rbp)	#, j
# code.c:27:         for (j = 0; j < k - i - 1; j++) {
	jmp	.L13	#
.L15:
# code.c:28:             if (out[j] > out[j + 1]) {
	movl	-24(%rbp), %eax	# j, tmp154
	cltq
	leaq	0(,%rax,4), %rdx	#, _28
	movq	-8(%rbp), %rax	# out, tmp155
	addq	%rdx, %rax	# _28, _29
	movl	(%rax), %edx	# *_29, _30
# code.c:28:             if (out[j] > out[j + 1]) {
	movl	-24(%rbp), %eax	# j, tmp156
	cltq
	addq	$1, %rax	#, _32
	leaq	0(,%rax,4), %rcx	#, _33
	movq	-8(%rbp), %rax	# out, tmp157
	addq	%rcx, %rax	# _33, _34
	movl	(%rax), %eax	# *_34, _35
# code.c:28:             if (out[j] > out[j + 1]) {
	cmpl	%eax, %edx	# _35, _30
	jle	.L14	#,
# code.c:29:                 int temp = out[j];
	movl	-24(%rbp), %eax	# j, tmp158
	cltq
	leaq	0(,%rax,4), %rdx	#, _37
	movq	-8(%rbp), %rax	# out, tmp159
	addq	%rdx, %rax	# _37, _38
# code.c:29:                 int temp = out[j];
	movl	(%rax), %eax	# *_38, tmp160
	movl	%eax, -12(%rbp)	# tmp160, temp
# code.c:30:                 out[j] = out[j + 1];
	movl	-24(%rbp), %eax	# j, tmp161
	cltq
	addq	$1, %rax	#, _40
	leaq	0(,%rax,4), %rdx	#, _41
	movq	-8(%rbp), %rax	# out, tmp162
	addq	%rdx, %rax	# _41, _42
# code.c:30:                 out[j] = out[j + 1];
	movl	-24(%rbp), %edx	# j, tmp163
	movslq	%edx, %rdx	# tmp163, _43
	leaq	0(,%rdx,4), %rcx	#, _44
	movq	-8(%rbp), %rdx	# out, tmp164
	addq	%rcx, %rdx	# _44, _45
# code.c:30:                 out[j] = out[j + 1];
	movl	(%rax), %eax	# *_42, _46
# code.c:30:                 out[j] = out[j + 1];
	movl	%eax, (%rdx)	# _46, *_45
# code.c:31:                 out[j + 1] = temp;
	movl	-24(%rbp), %eax	# j, tmp165
	cltq
	addq	$1, %rax	#, _48
	leaq	0(,%rax,4), %rdx	#, _49
	movq	-8(%rbp), %rax	# out, tmp166
	addq	%rax, %rdx	# tmp166, _50
# code.c:31:                 out[j + 1] = temp;
	movl	-12(%rbp), %eax	# temp, tmp167
	movl	%eax, (%rdx)	# tmp167, *_50
.L14:
# code.c:27:         for (j = 0; j < k - i - 1; j++) {
	addl	$1, -24(%rbp)	#, j
.L13:
# code.c:27:         for (j = 0; j < k - i - 1; j++) {
	movl	-32(%rbp), %eax	# k, tmp168
	subl	-28(%rbp), %eax	# i, _51
# code.c:27:         for (j = 0; j < k - i - 1; j++) {
	subl	$1, %eax	#, _52
# code.c:27:         for (j = 0; j < k - i - 1; j++) {
	cmpl	%eax, -24(%rbp)	# _52, j
	jl	.L15	#,
# code.c:26:     for (i = 0; i < k - 1; i++) {
	addl	$1, -28(%rbp)	#, i
.L12:
# code.c:26:     for (i = 0; i < k - 1; i++) {
	movl	-32(%rbp), %eax	# k, tmp169
	subl	$1, %eax	#, _53
# code.c:26:     for (i = 0; i < k - 1; i++) {
	cmpl	%eax, -28(%rbp)	# _53, i
	jl	.L16	#,
# code.c:36:     *out_size = k;
	movq	-64(%rbp), %rax	# out_size, tmp170
	movl	-32(%rbp), %edx	# k, tmp171
	movl	%edx, (%rax)	# tmp171, *out_size_74(D)
# code.c:37:     return out;
	movq	-8(%rbp), %rax	# out, _76
# code.c:38: }
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
