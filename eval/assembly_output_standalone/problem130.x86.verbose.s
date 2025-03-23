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
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# grid, grid
	movl	%esi, -44(%rbp)	# N, N
	movl	%edx, -48(%rbp)	# k, k
	movq	%rcx, -56(%rbp)	# returnSize, returnSize
# eval/problem130//code.c:6:     for (i = 0; i < N; i++)
	movl	$0, -28(%rbp)	#, i
# eval/problem130//code.c:6:     for (i = 0; i < N; i++)
	jmp	.L2	#
.L6:
# eval/problem130//code.c:7:         for (j = 0; j < N; j++)
	movl	$0, -24(%rbp)	#, j
# eval/problem130//code.c:7:         for (j = 0; j < N; j++)
	jmp	.L3	#
.L5:
# eval/problem130//code.c:8:             if (grid[i][j] == 1) {
	movl	-28(%rbp), %eax	# i, tmp172
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-40(%rbp), %rax	# grid, tmp173
	addq	%rdx, %rax	# _2, _3
	movq	(%rax), %rdx	# *_3, _4
# eval/problem130//code.c:8:             if (grid[i][j] == 1) {
	movl	-24(%rbp), %eax	# j, tmp174
	cltq
	salq	$2, %rax	#, _6
	addq	%rdx, %rax	# _4, _7
	movl	(%rax), %eax	# *_7, _8
# eval/problem130//code.c:8:             if (grid[i][j] == 1) {
	cmpl	$1, %eax	#, _8
	jne	.L4	#,
# eval/problem130//code.c:9:                 x = i;
	movl	-28(%rbp), %eax	# i, tmp175
	movl	%eax, -20(%rbp)	# tmp175, x
# eval/problem130//code.c:10:                 y = j;
	movl	-24(%rbp), %eax	# j, tmp176
	movl	%eax, -16(%rbp)	# tmp176, y
.L4:
# eval/problem130//code.c:7:         for (j = 0; j < N; j++)
	addl	$1, -24(%rbp)	#, j
.L3:
# eval/problem130//code.c:7:         for (j = 0; j < N; j++)
	movl	-24(%rbp), %eax	# j, tmp177
	cmpl	-44(%rbp), %eax	# N, tmp177
	jl	.L5	#,
# eval/problem130//code.c:6:     for (i = 0; i < N; i++)
	addl	$1, -28(%rbp)	#, i
.L2:
# eval/problem130//code.c:6:     for (i = 0; i < N; i++)
	movl	-28(%rbp), %eax	# i, tmp178
	cmpl	-44(%rbp), %eax	# N, tmp178
	jl	.L6	#,
# eval/problem130//code.c:12:     min = N * N;
	movl	-44(%rbp), %eax	# N, tmp180
	imull	%eax, %eax	# tmp180, tmp179
	movl	%eax, -12(%rbp)	# tmp179, min
# eval/problem130//code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	cmpl	$0, -20(%rbp)	#, x
	jle	.L7	#,
# eval/problem130//code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	movl	-20(%rbp), %eax	# x, tmp181
	cltq
	salq	$3, %rax	#, _10
	leaq	-8(%rax), %rdx	#, _11
	movq	-40(%rbp), %rax	# grid, tmp182
	addq	%rdx, %rax	# _11, _12
	movq	(%rax), %rdx	# *_12, _13
# eval/problem130//code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	movl	-16(%rbp), %eax	# y, tmp183
	cltq
	salq	$2, %rax	#, _15
	addq	%rdx, %rax	# _13, _16
	movl	(%rax), %eax	# *_16, _17
# eval/problem130//code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	cmpl	%eax, -12(%rbp)	# _17, min
	jle	.L7	#,
# eval/problem130//code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	movl	-20(%rbp), %eax	# x, tmp184
	cltq
	salq	$3, %rax	#, _19
	leaq	-8(%rax), %rdx	#, _20
	movq	-40(%rbp), %rax	# grid, tmp185
	addq	%rdx, %rax	# _20, _21
	movq	(%rax), %rdx	# *_21, _22
# eval/problem130//code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	movl	-16(%rbp), %eax	# y, tmp186
	cltq
	salq	$2, %rax	#, _24
	addq	%rdx, %rax	# _22, _25
# eval/problem130//code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	movl	(%rax), %eax	# *_25, tmp187
	movl	%eax, -12(%rbp)	# tmp187, min
.L7:
# eval/problem130//code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movl	-44(%rbp), %eax	# N, tmp188
	subl	$1, %eax	#, _26
# eval/problem130//code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	cmpl	%eax, -20(%rbp)	# _26, x
	jge	.L8	#,
# eval/problem130//code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movl	-20(%rbp), %eax	# x, tmp189
	cltq
	addq	$1, %rax	#, _28
	leaq	0(,%rax,8), %rdx	#, _29
	movq	-40(%rbp), %rax	# grid, tmp190
	addq	%rdx, %rax	# _29, _30
	movq	(%rax), %rdx	# *_30, _31
# eval/problem130//code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movl	-16(%rbp), %eax	# y, tmp191
	cltq
	salq	$2, %rax	#, _33
	addq	%rdx, %rax	# _31, _34
	movl	(%rax), %eax	# *_34, _35
# eval/problem130//code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	cmpl	%eax, -12(%rbp)	# _35, min
	jle	.L8	#,
# eval/problem130//code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movl	-20(%rbp), %eax	# x, tmp192
	cltq
	addq	$1, %rax	#, _37
	leaq	0(,%rax,8), %rdx	#, _38
	movq	-40(%rbp), %rax	# grid, tmp193
	addq	%rdx, %rax	# _38, _39
	movq	(%rax), %rdx	# *_39, _40
# eval/problem130//code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movl	-16(%rbp), %eax	# y, tmp194
	cltq
	salq	$2, %rax	#, _42
	addq	%rdx, %rax	# _40, _43
# eval/problem130//code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movl	(%rax), %eax	# *_43, tmp195
	movl	%eax, -12(%rbp)	# tmp195, min
.L8:
# eval/problem130//code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	cmpl	$0, -16(%rbp)	#, y
	jle	.L9	#,
# eval/problem130//code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	movl	-20(%rbp), %eax	# x, tmp196
	cltq
	leaq	0(,%rax,8), %rdx	#, _45
	movq	-40(%rbp), %rax	# grid, tmp197
	addq	%rdx, %rax	# _45, _46
	movq	(%rax), %rdx	# *_46, _47
# eval/problem130//code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	movl	-16(%rbp), %eax	# y, tmp198
	cltq
	salq	$2, %rax	#, _49
	subq	$4, %rax	#, _50
	addq	%rdx, %rax	# _47, _51
	movl	(%rax), %eax	# *_51, _52
# eval/problem130//code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	cmpl	%eax, -12(%rbp)	# _52, min
	jle	.L9	#,
# eval/problem130//code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	movl	-20(%rbp), %eax	# x, tmp199
	cltq
	leaq	0(,%rax,8), %rdx	#, _54
	movq	-40(%rbp), %rax	# grid, tmp200
	addq	%rdx, %rax	# _54, _55
	movq	(%rax), %rdx	# *_55, _56
# eval/problem130//code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	movl	-16(%rbp), %eax	# y, tmp201
	cltq
	salq	$2, %rax	#, _58
	subq	$4, %rax	#, _59
	addq	%rdx, %rax	# _56, _60
# eval/problem130//code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	movl	(%rax), %eax	# *_60, tmp202
	movl	%eax, -12(%rbp)	# tmp202, min
.L9:
# eval/problem130//code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movl	-44(%rbp), %eax	# N, tmp203
	subl	$1, %eax	#, _61
# eval/problem130//code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	cmpl	%eax, -16(%rbp)	# _61, y
	jge	.L10	#,
# eval/problem130//code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movl	-20(%rbp), %eax	# x, tmp204
	cltq
	leaq	0(,%rax,8), %rdx	#, _63
	movq	-40(%rbp), %rax	# grid, tmp205
	addq	%rdx, %rax	# _63, _64
	movq	(%rax), %rdx	# *_64, _65
# eval/problem130//code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movl	-16(%rbp), %eax	# y, tmp206
	cltq
	addq	$1, %rax	#, _67
	salq	$2, %rax	#, _68
	addq	%rdx, %rax	# _65, _69
	movl	(%rax), %eax	# *_69, _70
# eval/problem130//code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	cmpl	%eax, -12(%rbp)	# _70, min
	jle	.L10	#,
# eval/problem130//code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movl	-20(%rbp), %eax	# x, tmp207
	cltq
	leaq	0(,%rax,8), %rdx	#, _72
	movq	-40(%rbp), %rax	# grid, tmp208
	addq	%rdx, %rax	# _72, _73
	movq	(%rax), %rdx	# *_73, _74
# eval/problem130//code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movl	-16(%rbp), %eax	# y, tmp209
	cltq
	addq	$1, %rax	#, _76
	salq	$2, %rax	#, _77
	addq	%rdx, %rax	# _74, _78
# eval/problem130//code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movl	(%rax), %eax	# *_78, tmp210
	movl	%eax, -12(%rbp)	# tmp210, min
.L10:
# eval/problem130//code.c:18:     *returnSize = k;
	movq	-56(%rbp), %rax	# returnSize, tmp211
	movl	-48(%rbp), %edx	# k, tmp212
	movl	%edx, (%rax)	# tmp212, *returnSize_115(D)
# eval/problem130//code.c:19:     int *out = (int *)malloc(k * sizeof(int));
	movl	-48(%rbp), %eax	# k, tmp213
	cltq
	salq	$2, %rax	#, _80
	movq	%rax, %rdi	# _80,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp214, out
# eval/problem130//code.c:20:     for (i = 0; i < k; i++)
	movl	$0, -28(%rbp)	#, i
# eval/problem130//code.c:20:     for (i = 0; i < k; i++)
	jmp	.L11	#
.L14:
# eval/problem130//code.c:21:         if (i % 2 == 0) out[i] = 1;
	movl	-28(%rbp), %eax	# i, i.0_81
	andl	$1, %eax	#, _82
# eval/problem130//code.c:21:         if (i % 2 == 0) out[i] = 1;
	testl	%eax, %eax	# _82
	jne	.L12	#,
# eval/problem130//code.c:21:         if (i % 2 == 0) out[i] = 1;
	movl	-28(%rbp), %eax	# i, tmp215
	cltq
	leaq	0(,%rax,4), %rdx	#, _84
	movq	-8(%rbp), %rax	# out, tmp216
	addq	%rdx, %rax	# _84, _85
# eval/problem130//code.c:21:         if (i % 2 == 0) out[i] = 1;
	movl	$1, (%rax)	#, *_85
	jmp	.L13	#
.L12:
# eval/problem130//code.c:22:         else out[i] = min;
	movl	-28(%rbp), %eax	# i, tmp217
	cltq
	leaq	0(,%rax,4), %rdx	#, _87
	movq	-8(%rbp), %rax	# out, tmp218
	addq	%rax, %rdx	# tmp218, _88
# eval/problem130//code.c:22:         else out[i] = min;
	movl	-12(%rbp), %eax	# min, tmp219
	movl	%eax, (%rdx)	# tmp219, *_88
.L13:
# eval/problem130//code.c:20:     for (i = 0; i < k; i++)
	addl	$1, -28(%rbp)	#, i
.L11:
# eval/problem130//code.c:20:     for (i = 0; i < k; i++)
	movl	-28(%rbp), %eax	# i, tmp220
	cmpl	-48(%rbp), %eax	# k, tmp220
	jl	.L14	#,
# eval/problem130//code.c:23:     return out;
	movq	-8(%rbp), %rax	# out, _121
# eval/problem130//code.c:24: }
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
