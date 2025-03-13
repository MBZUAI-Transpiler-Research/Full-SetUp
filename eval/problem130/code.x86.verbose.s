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
	movq	%rdi, -40(%rbp)	# grid, grid
	movl	%esi, -44(%rbp)	# N, N
	movl	%edx, -48(%rbp)	# k, k
	movq	%rcx, -56(%rbp)	# returnSize, returnSize
# code.c:6:     for (i = 0; i < N; i++)
	movl	$0, -28(%rbp)	#, i
# code.c:6:     for (i = 0; i < N; i++)
	jmp	.L2	#
.L6:
# code.c:7:         for (j = 0; j < N; j++)
	movl	$0, -24(%rbp)	#, j
# code.c:7:         for (j = 0; j < N; j++)
	jmp	.L3	#
.L5:
# code.c:8:             if (grid[i][j] == 1) {
	movl	-28(%rbp), %eax	# i, tmp172
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-40(%rbp), %rax	# grid, tmp173
	addq	%rdx, %rax	# _2, _3
	movq	(%rax), %rax	# *_3, _4
# code.c:8:             if (grid[i][j] == 1) {
	movl	-24(%rbp), %edx	# j, tmp174
	movslq	%edx, %rdx	# tmp174, _5
	salq	$2, %rdx	#, _6
	addq	%rdx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# code.c:8:             if (grid[i][j] == 1) {
	cmpl	$1, %eax	#, _8
	jne	.L4	#,
# code.c:9:                 x = i;
	movl	-28(%rbp), %eax	# i, tmp175
	movl	%eax, -20(%rbp)	# tmp175, x
# code.c:10:                 y = j;
	movl	-24(%rbp), %eax	# j, tmp176
	movl	%eax, -16(%rbp)	# tmp176, y
.L4:
# code.c:7:         for (j = 0; j < N; j++)
	addl	$1, -24(%rbp)	#, j
.L3:
# code.c:7:         for (j = 0; j < N; j++)
	movl	-24(%rbp), %eax	# j, tmp177
	cmpl	-44(%rbp), %eax	# N, tmp177
	jl	.L5	#,
# code.c:6:     for (i = 0; i < N; i++)
	addl	$1, -28(%rbp)	#, i
.L2:
# code.c:6:     for (i = 0; i < N; i++)
	movl	-28(%rbp), %eax	# i, tmp178
	cmpl	-44(%rbp), %eax	# N, tmp178
	jl	.L6	#,
# code.c:12:     min = N * N;
	movl	-44(%rbp), %eax	# N, tmp180
	imull	%eax, %eax	# tmp180, tmp179
	movl	%eax, -12(%rbp)	# tmp179, min
# code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	cmpl	$0, -20(%rbp)	#, x
	jle	.L7	#,
# code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	movl	-20(%rbp), %eax	# x, tmp181
	cltq
	salq	$3, %rax	#, _10
	leaq	-8(%rax), %rdx	#, _11
	movq	-40(%rbp), %rax	# grid, tmp182
	addq	%rdx, %rax	# _11, _12
	movq	(%rax), %rax	# *_12, _13
# code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	movl	-16(%rbp), %edx	# y, tmp183
	movslq	%edx, %rdx	# tmp183, _14
	salq	$2, %rdx	#, _15
	addq	%rdx, %rax	# _15, _16
	movl	(%rax), %eax	# *_16, _17
# code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	cmpl	%eax, -12(%rbp)	# _17, min
	jle	.L7	#,
# code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	movl	-20(%rbp), %eax	# x, tmp184
	cltq
	salq	$3, %rax	#, _19
	leaq	-8(%rax), %rdx	#, _20
	movq	-40(%rbp), %rax	# grid, tmp185
	addq	%rdx, %rax	# _20, _21
	movq	(%rax), %rax	# *_21, _22
# code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	movl	-16(%rbp), %edx	# y, tmp186
	movslq	%edx, %rdx	# tmp186, _23
	salq	$2, %rdx	#, _24
	addq	%rdx, %rax	# _24, _25
# code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	movl	(%rax), %eax	# *_25, tmp187
	movl	%eax, -12(%rbp)	# tmp187, min
.L7:
# code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movl	-44(%rbp), %eax	# N, tmp188
	subl	$1, %eax	#, _26
# code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	cmpl	%eax, -20(%rbp)	# _26, x
	jge	.L8	#,
# code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movl	-20(%rbp), %eax	# x, tmp189
	cltq
	addq	$1, %rax	#, _28
	leaq	0(,%rax,8), %rdx	#, _29
	movq	-40(%rbp), %rax	# grid, tmp190
	addq	%rdx, %rax	# _29, _30
	movq	(%rax), %rax	# *_30, _31
# code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movl	-16(%rbp), %edx	# y, tmp191
	movslq	%edx, %rdx	# tmp191, _32
	salq	$2, %rdx	#, _33
	addq	%rdx, %rax	# _33, _34
	movl	(%rax), %eax	# *_34, _35
# code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	cmpl	%eax, -12(%rbp)	# _35, min
	jle	.L8	#,
# code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movl	-20(%rbp), %eax	# x, tmp192
	cltq
	addq	$1, %rax	#, _37
	leaq	0(,%rax,8), %rdx	#, _38
	movq	-40(%rbp), %rax	# grid, tmp193
	addq	%rdx, %rax	# _38, _39
	movq	(%rax), %rax	# *_39, _40
# code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movl	-16(%rbp), %edx	# y, tmp194
	movslq	%edx, %rdx	# tmp194, _41
	salq	$2, %rdx	#, _42
	addq	%rdx, %rax	# _42, _43
# code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movl	(%rax), %eax	# *_43, tmp195
	movl	%eax, -12(%rbp)	# tmp195, min
.L8:
# code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	cmpl	$0, -16(%rbp)	#, y
	jle	.L9	#,
# code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	movl	-20(%rbp), %eax	# x, tmp196
	cltq
	leaq	0(,%rax,8), %rdx	#, _45
	movq	-40(%rbp), %rax	# grid, tmp197
	addq	%rdx, %rax	# _45, _46
	movq	(%rax), %rax	# *_46, _47
# code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	movl	-16(%rbp), %edx	# y, tmp198
	movslq	%edx, %rdx	# tmp198, _48
	salq	$2, %rdx	#, _49
	subq	$4, %rdx	#, _50
	addq	%rdx, %rax	# _50, _51
	movl	(%rax), %eax	# *_51, _52
# code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	cmpl	%eax, -12(%rbp)	# _52, min
	jle	.L9	#,
# code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	movl	-20(%rbp), %eax	# x, tmp199
	cltq
	leaq	0(,%rax,8), %rdx	#, _54
	movq	-40(%rbp), %rax	# grid, tmp200
	addq	%rdx, %rax	# _54, _55
	movq	(%rax), %rax	# *_55, _56
# code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	movl	-16(%rbp), %edx	# y, tmp201
	movslq	%edx, %rdx	# tmp201, _57
	salq	$2, %rdx	#, _58
	subq	$4, %rdx	#, _59
	addq	%rdx, %rax	# _59, _60
# code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	movl	(%rax), %eax	# *_60, tmp202
	movl	%eax, -12(%rbp)	# tmp202, min
.L9:
# code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movl	-44(%rbp), %eax	# N, tmp203
	subl	$1, %eax	#, _61
# code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	cmpl	%eax, -16(%rbp)	# _61, y
	jge	.L10	#,
# code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movl	-20(%rbp), %eax	# x, tmp204
	cltq
	leaq	0(,%rax,8), %rdx	#, _63
	movq	-40(%rbp), %rax	# grid, tmp205
	addq	%rdx, %rax	# _63, _64
	movq	(%rax), %rax	# *_64, _65
# code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movl	-16(%rbp), %edx	# y, tmp206
	movslq	%edx, %rdx	# tmp206, _66
	addq	$1, %rdx	#, _67
	salq	$2, %rdx	#, _68
	addq	%rdx, %rax	# _68, _69
	movl	(%rax), %eax	# *_69, _70
# code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	cmpl	%eax, -12(%rbp)	# _70, min
	jle	.L10	#,
# code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movl	-20(%rbp), %eax	# x, tmp207
	cltq
	leaq	0(,%rax,8), %rdx	#, _72
	movq	-40(%rbp), %rax	# grid, tmp208
	addq	%rdx, %rax	# _72, _73
	movq	(%rax), %rax	# *_73, _74
# code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movl	-16(%rbp), %edx	# y, tmp209
	movslq	%edx, %rdx	# tmp209, _75
	addq	$1, %rdx	#, _76
	salq	$2, %rdx	#, _77
	addq	%rdx, %rax	# _77, _78
# code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movl	(%rax), %eax	# *_78, tmp210
	movl	%eax, -12(%rbp)	# tmp210, min
.L10:
# code.c:18:     *returnSize = k;
	movq	-56(%rbp), %rax	# returnSize, tmp211
	movl	-48(%rbp), %edx	# k, tmp212
	movl	%edx, (%rax)	# tmp212, *returnSize_115(D)
# code.c:19:     int *out = (int *)malloc(k * sizeof(int));
	movl	-48(%rbp), %eax	# k, tmp213
	cltq
	salq	$2, %rax	#, _80
	movq	%rax, %rdi	# _80,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp214, out
# code.c:20:     for (i = 0; i < k; i++)
	movl	$0, -28(%rbp)	#, i
# code.c:20:     for (i = 0; i < k; i++)
	jmp	.L11	#
.L14:
# code.c:21:         if (i % 2 == 0) out[i] = 1;
	movl	-28(%rbp), %eax	# i, i.0_81
	andl	$1, %eax	#, _82
# code.c:21:         if (i % 2 == 0) out[i] = 1;
	testl	%eax, %eax	# _82
	jne	.L12	#,
# code.c:21:         if (i % 2 == 0) out[i] = 1;
	movl	-28(%rbp), %eax	# i, tmp215
	cltq
	leaq	0(,%rax,4), %rdx	#, _84
	movq	-8(%rbp), %rax	# out, tmp216
	addq	%rdx, %rax	# _84, _85
# code.c:21:         if (i % 2 == 0) out[i] = 1;
	movl	$1, (%rax)	#, *_85
	jmp	.L13	#
.L12:
# code.c:22:         else out[i] = min;
	movl	-28(%rbp), %eax	# i, tmp217
	cltq
	leaq	0(,%rax,4), %rdx	#, _87
	movq	-8(%rbp), %rax	# out, tmp218
	addq	%rax, %rdx	# tmp218, _88
# code.c:22:         else out[i] = min;
	movl	-12(%rbp), %eax	# min, tmp219
	movl	%eax, (%rdx)	# tmp219, *_88
.L13:
# code.c:20:     for (i = 0; i < k; i++)
	addl	$1, -28(%rbp)	#, i
.L11:
# code.c:20:     for (i = 0; i < k; i++)
	movl	-28(%rbp), %eax	# i, tmp220
	cmpl	-48(%rbp), %eax	# k, tmp220
	jl	.L14	#,
# code.c:23:     return out;
	movq	-8(%rbp), %rax	# out, _121
# code.c:24: }
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
