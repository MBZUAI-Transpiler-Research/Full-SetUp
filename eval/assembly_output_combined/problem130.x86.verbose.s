	.file	"problem130.c"
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
# problem130.c:6:     for (i = 0; i < N; i++)
	movl	$0, -28(%rbp)	#, i
# problem130.c:6:     for (i = 0; i < N; i++)
	jmp	.L2	#
.L6:
# problem130.c:7:         for (j = 0; j < N; j++)
	movl	$0, -24(%rbp)	#, j
# problem130.c:7:         for (j = 0; j < N; j++)
	jmp	.L3	#
.L5:
# problem130.c:8:             if (grid[i][j] == 1) {
	movl	-28(%rbp), %eax	# i, tmp172
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-40(%rbp), %rax	# grid, tmp173
	addq	%rdx, %rax	# _2, _3
	movq	(%rax), %rdx	# *_3, _4
# problem130.c:8:             if (grid[i][j] == 1) {
	movl	-24(%rbp), %eax	# j, tmp174
	cltq
	salq	$2, %rax	#, _6
	addq	%rdx, %rax	# _4, _7
	movl	(%rax), %eax	# *_7, _8
# problem130.c:8:             if (grid[i][j] == 1) {
	cmpl	$1, %eax	#, _8
	jne	.L4	#,
# problem130.c:9:                 x = i;
	movl	-28(%rbp), %eax	# i, tmp175
	movl	%eax, -20(%rbp)	# tmp175, x
# problem130.c:10:                 y = j;
	movl	-24(%rbp), %eax	# j, tmp176
	movl	%eax, -16(%rbp)	# tmp176, y
.L4:
# problem130.c:7:         for (j = 0; j < N; j++)
	addl	$1, -24(%rbp)	#, j
.L3:
# problem130.c:7:         for (j = 0; j < N; j++)
	movl	-24(%rbp), %eax	# j, tmp177
	cmpl	-44(%rbp), %eax	# N, tmp177
	jl	.L5	#,
# problem130.c:6:     for (i = 0; i < N; i++)
	addl	$1, -28(%rbp)	#, i
.L2:
# problem130.c:6:     for (i = 0; i < N; i++)
	movl	-28(%rbp), %eax	# i, tmp178
	cmpl	-44(%rbp), %eax	# N, tmp178
	jl	.L6	#,
# problem130.c:12:     min = N * N;
	movl	-44(%rbp), %eax	# N, tmp180
	imull	%eax, %eax	# tmp180, tmp179
	movl	%eax, -12(%rbp)	# tmp179, min
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	cmpl	$0, -20(%rbp)	#, x
	jle	.L7	#,
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	movl	-20(%rbp), %eax	# x, tmp181
	cltq
	salq	$3, %rax	#, _10
	leaq	-8(%rax), %rdx	#, _11
	movq	-40(%rbp), %rax	# grid, tmp182
	addq	%rdx, %rax	# _11, _12
	movq	(%rax), %rdx	# *_12, _13
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	movl	-16(%rbp), %eax	# y, tmp183
	cltq
	salq	$2, %rax	#, _15
	addq	%rdx, %rax	# _13, _16
	movl	(%rax), %eax	# *_16, _17
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	cmpl	%eax, -12(%rbp)	# _17, min
	jle	.L7	#,
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	movl	-20(%rbp), %eax	# x, tmp184
	cltq
	salq	$3, %rax	#, _19
	leaq	-8(%rax), %rdx	#, _20
	movq	-40(%rbp), %rax	# grid, tmp185
	addq	%rdx, %rax	# _20, _21
	movq	(%rax), %rdx	# *_21, _22
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	movl	-16(%rbp), %eax	# y, tmp186
	cltq
	salq	$2, %rax	#, _24
	addq	%rdx, %rax	# _22, _25
# problem130.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	movl	(%rax), %eax	# *_25, tmp187
	movl	%eax, -12(%rbp)	# tmp187, min
.L7:
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movl	-44(%rbp), %eax	# N, tmp188
	subl	$1, %eax	#, _26
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	cmpl	%eax, -20(%rbp)	# _26, x
	jge	.L8	#,
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movl	-20(%rbp), %eax	# x, tmp189
	cltq
	addq	$1, %rax	#, _28
	leaq	0(,%rax,8), %rdx	#, _29
	movq	-40(%rbp), %rax	# grid, tmp190
	addq	%rdx, %rax	# _29, _30
	movq	(%rax), %rdx	# *_30, _31
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movl	-16(%rbp), %eax	# y, tmp191
	cltq
	salq	$2, %rax	#, _33
	addq	%rdx, %rax	# _31, _34
	movl	(%rax), %eax	# *_34, _35
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	cmpl	%eax, -12(%rbp)	# _35, min
	jle	.L8	#,
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movl	-20(%rbp), %eax	# x, tmp192
	cltq
	addq	$1, %rax	#, _37
	leaq	0(,%rax,8), %rdx	#, _38
	movq	-40(%rbp), %rax	# grid, tmp193
	addq	%rdx, %rax	# _38, _39
	movq	(%rax), %rdx	# *_39, _40
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movl	-16(%rbp), %eax	# y, tmp194
	cltq
	salq	$2, %rax	#, _42
	addq	%rdx, %rax	# _40, _43
# problem130.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movl	(%rax), %eax	# *_43, tmp195
	movl	%eax, -12(%rbp)	# tmp195, min
.L8:
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	cmpl	$0, -16(%rbp)	#, y
	jle	.L9	#,
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	movl	-20(%rbp), %eax	# x, tmp196
	cltq
	leaq	0(,%rax,8), %rdx	#, _45
	movq	-40(%rbp), %rax	# grid, tmp197
	addq	%rdx, %rax	# _45, _46
	movq	(%rax), %rdx	# *_46, _47
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	movl	-16(%rbp), %eax	# y, tmp198
	cltq
	salq	$2, %rax	#, _49
	subq	$4, %rax	#, _50
	addq	%rdx, %rax	# _47, _51
	movl	(%rax), %eax	# *_51, _52
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	cmpl	%eax, -12(%rbp)	# _52, min
	jle	.L9	#,
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	movl	-20(%rbp), %eax	# x, tmp199
	cltq
	leaq	0(,%rax,8), %rdx	#, _54
	movq	-40(%rbp), %rax	# grid, tmp200
	addq	%rdx, %rax	# _54, _55
	movq	(%rax), %rdx	# *_55, _56
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	movl	-16(%rbp), %eax	# y, tmp201
	cltq
	salq	$2, %rax	#, _58
	subq	$4, %rax	#, _59
	addq	%rdx, %rax	# _56, _60
# problem130.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	movl	(%rax), %eax	# *_60, tmp202
	movl	%eax, -12(%rbp)	# tmp202, min
.L9:
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movl	-44(%rbp), %eax	# N, tmp203
	subl	$1, %eax	#, _61
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	cmpl	%eax, -16(%rbp)	# _61, y
	jge	.L10	#,
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movl	-20(%rbp), %eax	# x, tmp204
	cltq
	leaq	0(,%rax,8), %rdx	#, _63
	movq	-40(%rbp), %rax	# grid, tmp205
	addq	%rdx, %rax	# _63, _64
	movq	(%rax), %rdx	# *_64, _65
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movl	-16(%rbp), %eax	# y, tmp206
	cltq
	addq	$1, %rax	#, _67
	salq	$2, %rax	#, _68
	addq	%rdx, %rax	# _65, _69
	movl	(%rax), %eax	# *_69, _70
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	cmpl	%eax, -12(%rbp)	# _70, min
	jle	.L10	#,
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movl	-20(%rbp), %eax	# x, tmp207
	cltq
	leaq	0(,%rax,8), %rdx	#, _72
	movq	-40(%rbp), %rax	# grid, tmp208
	addq	%rdx, %rax	# _72, _73
	movq	(%rax), %rdx	# *_73, _74
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movl	-16(%rbp), %eax	# y, tmp209
	cltq
	addq	$1, %rax	#, _76
	salq	$2, %rax	#, _77
	addq	%rdx, %rax	# _74, _78
# problem130.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movl	(%rax), %eax	# *_78, tmp210
	movl	%eax, -12(%rbp)	# tmp210, min
.L10:
# problem130.c:18:     *returnSize = k;
	movq	-56(%rbp), %rax	# returnSize, tmp211
	movl	-48(%rbp), %edx	# k, tmp212
	movl	%edx, (%rax)	# tmp212, *returnSize_115(D)
# problem130.c:19:     int *out = (int *)malloc(k * sizeof(int));
	movl	-48(%rbp), %eax	# k, tmp213
	cltq
	salq	$2, %rax	#, _80
	movq	%rax, %rdi	# _80,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp214, out
# problem130.c:20:     for (i = 0; i < k; i++)
	movl	$0, -28(%rbp)	#, i
# problem130.c:20:     for (i = 0; i < k; i++)
	jmp	.L11	#
.L14:
# problem130.c:21:         if (i % 2 == 0) out[i] = 1;
	movl	-28(%rbp), %eax	# i, i.0_81
	andl	$1, %eax	#, _82
# problem130.c:21:         if (i % 2 == 0) out[i] = 1;
	testl	%eax, %eax	# _82
	jne	.L12	#,
# problem130.c:21:         if (i % 2 == 0) out[i] = 1;
	movl	-28(%rbp), %eax	# i, tmp215
	cltq
	leaq	0(,%rax,4), %rdx	#, _84
	movq	-8(%rbp), %rax	# out, tmp216
	addq	%rdx, %rax	# _84, _85
# problem130.c:21:         if (i % 2 == 0) out[i] = 1;
	movl	$1, (%rax)	#, *_85
	jmp	.L13	#
.L12:
# problem130.c:22:         else out[i] = min;
	movl	-28(%rbp), %eax	# i, tmp217
	cltq
	leaq	0(,%rax,4), %rdx	#, _87
	movq	-8(%rbp), %rax	# out, tmp218
	addq	%rax, %rdx	# tmp218, _88
# problem130.c:22:         else out[i] = min;
	movl	-12(%rbp), %eax	# min, tmp219
	movl	%eax, (%rdx)	# tmp219, *_88
.L13:
# problem130.c:20:     for (i = 0; i < k; i++)
	addl	$1, -28(%rbp)	#, i
.L11:
# problem130.c:20:     for (i = 0; i < k; i++)
	movl	-28(%rbp), %eax	# i, tmp220
	cmpl	-48(%rbp), %eax	# k, tmp220
	jl	.L14	#,
# problem130.c:23:     return out;
	movq	-8(%rbp), %rax	# out, _121
# problem130.c:24: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movl	%edx, -36(%rbp)	# size, size
# problem130.c:33:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem130.c:33:     for (int i = 0; i < size; i++) {
	jmp	.L17	#
.L20:
# problem130.c:34:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp93
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem130.c:34:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-32(%rbp), %rax	# b, tmp95
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem130.c:34:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L18	#,
# problem130.c:34:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
	jmp	.L19	#
.L18:
# problem130.c:33:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L17:
# problem130.c:33:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp96
	cmpl	-36(%rbp), %eax	# size, tmp96
	jl	.L20	#,
# problem130.c:36:     return 1;
	movl	$1, %eax	#, _10
.L19:
# problem130.c:37: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem130.c"
.LC1:
	.string	"issame(out1, result1, size)"
.LC2:
	.string	"issame(out2, result2, size)"
.LC3:
	.string	"issame(out3, result3, size)"
.LC4:
	.string	"issame(out4, result4, size)"
.LC5:
	.string	"issame(out5, result5, size)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$608, %rsp	#,
# problem130.c:39: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp171
	movq	%rax, -8(%rbp)	# tmp171, D.2993
	xorl	%eax, %eax	# tmp171
# problem130.c:43:     int grid1[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
	movl	$1, -304(%rbp)	#, grid1[0][0]
	movl	$2, -300(%rbp)	#, grid1[0][1]
	movl	$3, -296(%rbp)	#, grid1[0][2]
	movl	$4, -292(%rbp)	#, grid1[1][0]
	movl	$5, -288(%rbp)	#, grid1[1][1]
	movl	$6, -284(%rbp)	#, grid1[1][2]
	movl	$7, -280(%rbp)	#, grid1[2][0]
	movl	$8, -276(%rbp)	#, grid1[2][1]
	movl	$9, -272(%rbp)	#, grid1[2][2]
# problem130.c:44:     int *grid1_ptrs[] = {grid1[0], grid1[1], grid1[2]};
	leaq	-304(%rbp), %rax	#, tmp94
	movq	%rax, -496(%rbp)	# tmp94, grid1_ptrs[0]
	leaq	-304(%rbp), %rax	#, tmp95
	addq	$12, %rax	#, tmp96
	movq	%rax, -488(%rbp)	# tmp96, grid1_ptrs[1]
	leaq	-304(%rbp), %rax	#, tmp97
	addq	$24, %rax	#, tmp98
	movq	%rax, -480(%rbp)	# tmp98, grid1_ptrs[2]
# problem130.c:45:     int result1[] = {1, 2, 1};
	movl	$1, -556(%rbp)	#, result1[0]
	movl	$2, -552(%rbp)	#, result1[1]
	movl	$1, -548(%rbp)	#, result1[2]
# problem130.c:46:     int *out1 = func0(grid1_ptrs, 3, 3, &size);
	leaq	-604(%rbp), %rdx	#, tmp99
	leaq	-496(%rbp), %rax	#, tmp100
	movq	%rdx, %rcx	# tmp99,
	movl	$3, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	func0	#
	movq	%rax, -600(%rbp)	# tmp101, out1
# problem130.c:47:     assert(issame(out1, result1, size));
	movl	-604(%rbp), %edx	# size, size.1_1
	leaq	-556(%rbp), %rcx	#, tmp102
	movq	-600(%rbp), %rax	# out1, tmp103
	movq	%rcx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L22	#,
# problem130.c:47:     assert(issame(out1, result1, size));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$47, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC1(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L22:
# problem130.c:48:     free(out1);
	movq	-600(%rbp), %rax	# out1, tmp107
	movq	%rax, %rdi	# tmp107,
	call	free@PLT	#
# problem130.c:51:     int grid2[3][3] = {{5, 9, 3}, {4, 1, 6}, {7, 8, 2}};
	movl	$5, -256(%rbp)	#, grid2[0][0]
	movl	$9, -252(%rbp)	#, grid2[0][1]
	movl	$3, -248(%rbp)	#, grid2[0][2]
	movl	$4, -244(%rbp)	#, grid2[1][0]
	movl	$1, -240(%rbp)	#, grid2[1][1]
	movl	$6, -236(%rbp)	#, grid2[1][2]
	movl	$7, -232(%rbp)	#, grid2[2][0]
	movl	$8, -228(%rbp)	#, grid2[2][1]
	movl	$2, -224(%rbp)	#, grid2[2][2]
# problem130.c:52:     int *grid2_ptrs[] = {grid2[0], grid2[1], grid2[2]};
	leaq	-256(%rbp), %rax	#, tmp108
	movq	%rax, -464(%rbp)	# tmp108, grid2_ptrs[0]
	leaq	-256(%rbp), %rax	#, tmp109
	addq	$12, %rax	#, tmp110
	movq	%rax, -456(%rbp)	# tmp110, grid2_ptrs[1]
	leaq	-256(%rbp), %rax	#, tmp111
	addq	$24, %rax	#, tmp112
	movq	%rax, -448(%rbp)	# tmp112, grid2_ptrs[2]
# problem130.c:53:     int result2[] = {1};
	movl	$1, -560(%rbp)	#, result2[0]
# problem130.c:54:     int *out2 = func0(grid2_ptrs, 3, 1, &size);
	leaq	-604(%rbp), %rdx	#, tmp113
	leaq	-464(%rbp), %rax	#, tmp114
	movq	%rdx, %rcx	# tmp113,
	movl	$1, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	func0	#
	movq	%rax, -592(%rbp)	# tmp115, out2
# problem130.c:55:     assert(issame(out2, result2, size));
	movl	-604(%rbp), %edx	# size, size.2_3
	leaq	-560(%rbp), %rcx	#, tmp116
	movq	-592(%rbp), %rax	# out2, tmp117
	movq	%rcx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	issame	#
	testl	%eax, %eax	# _4
	jne	.L23	#,
# problem130.c:55:     assert(issame(out2, result2, size));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp118
	movq	%rax, %rcx	# tmp118,
	movl	$55, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp119
	movq	%rax, %rsi	# tmp119,
	leaq	.LC2(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	__assert_fail@PLT	#
.L23:
# problem130.c:56:     free(out2);
	movq	-592(%rbp), %rax	# out2, tmp121
	movq	%rax, %rdi	# tmp121,
	call	free@PLT	#
# problem130.c:59:     int grid3[4][4] = {{1, 2, 3, 4}, {5, 6, 7, 8}, {9, 10, 11, 12}, {13, 14, 15, 16}};
	movl	$1, -208(%rbp)	#, grid3[0][0]
	movl	$2, -204(%rbp)	#, grid3[0][1]
	movl	$3, -200(%rbp)	#, grid3[0][2]
	movl	$4, -196(%rbp)	#, grid3[0][3]
	movl	$5, -192(%rbp)	#, grid3[1][0]
	movl	$6, -188(%rbp)	#, grid3[1][1]
	movl	$7, -184(%rbp)	#, grid3[1][2]
	movl	$8, -180(%rbp)	#, grid3[1][3]
	movl	$9, -176(%rbp)	#, grid3[2][0]
	movl	$10, -172(%rbp)	#, grid3[2][1]
	movl	$11, -168(%rbp)	#, grid3[2][2]
	movl	$12, -164(%rbp)	#, grid3[2][3]
	movl	$13, -160(%rbp)	#, grid3[3][0]
	movl	$14, -156(%rbp)	#, grid3[3][1]
	movl	$15, -152(%rbp)	#, grid3[3][2]
	movl	$16, -148(%rbp)	#, grid3[3][3]
# problem130.c:60:     int *grid3_ptrs[] = {grid3[0], grid3[1], grid3[2], grid3[3]};
	leaq	-208(%rbp), %rax	#, tmp122
	movq	%rax, -400(%rbp)	# tmp122, grid3_ptrs[0]
	leaq	-208(%rbp), %rax	#, tmp123
	addq	$16, %rax	#, tmp124
	movq	%rax, -392(%rbp)	# tmp124, grid3_ptrs[1]
	leaq	-208(%rbp), %rax	#, tmp125
	addq	$32, %rax	#, tmp126
	movq	%rax, -384(%rbp)	# tmp126, grid3_ptrs[2]
	leaq	-208(%rbp), %rax	#, tmp127
	addq	$48, %rax	#, tmp128
	movq	%rax, -376(%rbp)	# tmp128, grid3_ptrs[3]
# problem130.c:61:     int result3[] = {1, 2, 1, 2};
	movl	$1, -544(%rbp)	#, result3[0]
	movl	$2, -540(%rbp)	#, result3[1]
	movl	$1, -536(%rbp)	#, result3[2]
	movl	$2, -532(%rbp)	#, result3[3]
# problem130.c:62:     int *out3 = func0(grid3_ptrs, 4, 4, &size);
	leaq	-604(%rbp), %rdx	#, tmp129
	leaq	-400(%rbp), %rax	#, tmp130
	movq	%rdx, %rcx	# tmp129,
	movl	$4, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	func0	#
	movq	%rax, -584(%rbp)	# tmp131, out3
# problem130.c:63:     assert(issame(out3, result3, size));
	movl	-604(%rbp), %edx	# size, size.3_5
	leaq	-544(%rbp), %rcx	#, tmp132
	movq	-584(%rbp), %rax	# out3, tmp133
	movq	%rcx, %rsi	# tmp132,
	movq	%rax, %rdi	# tmp133,
	call	issame	#
	testl	%eax, %eax	# _6
	jne	.L24	#,
# problem130.c:63:     assert(issame(out3, result3, size));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp134
	movq	%rax, %rcx	# tmp134,
	movl	$63, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp135
	movq	%rax, %rsi	# tmp135,
	leaq	.LC3(%rip), %rax	#, tmp136
	movq	%rax, %rdi	# tmp136,
	call	__assert_fail@PLT	#
.L24:
# problem130.c:64:     free(out3);
	movq	-584(%rbp), %rax	# out3, tmp137
	movq	%rax, %rdi	# tmp137,
	call	free@PLT	#
# problem130.c:67:     int grid4[4][4] = {{6, 4, 13, 10}, {5, 7, 12, 1}, {3, 16, 11, 15}, {8, 14, 9, 2}};
	movl	$6, -144(%rbp)	#, grid4[0][0]
	movl	$4, -140(%rbp)	#, grid4[0][1]
	movl	$13, -136(%rbp)	#, grid4[0][2]
	movl	$10, -132(%rbp)	#, grid4[0][3]
	movl	$5, -128(%rbp)	#, grid4[1][0]
	movl	$7, -124(%rbp)	#, grid4[1][1]
	movl	$12, -120(%rbp)	#, grid4[1][2]
	movl	$1, -116(%rbp)	#, grid4[1][3]
	movl	$3, -112(%rbp)	#, grid4[2][0]
	movl	$16, -108(%rbp)	#, grid4[2][1]
	movl	$11, -104(%rbp)	#, grid4[2][2]
	movl	$15, -100(%rbp)	#, grid4[2][3]
	movl	$8, -96(%rbp)	#, grid4[3][0]
	movl	$14, -92(%rbp)	#, grid4[3][1]
	movl	$9, -88(%rbp)	#, grid4[3][2]
	movl	$2, -84(%rbp)	#, grid4[3][3]
# problem130.c:68:     int *grid4_ptrs[] = {grid4[0], grid4[1], grid4[2], grid4[3]};
	leaq	-144(%rbp), %rax	#, tmp138
	movq	%rax, -368(%rbp)	# tmp138, grid4_ptrs[0]
	leaq	-144(%rbp), %rax	#, tmp139
	addq	$16, %rax	#, tmp140
	movq	%rax, -360(%rbp)	# tmp140, grid4_ptrs[1]
	leaq	-144(%rbp), %rax	#, tmp141
	addq	$32, %rax	#, tmp142
	movq	%rax, -352(%rbp)	# tmp142, grid4_ptrs[2]
	leaq	-144(%rbp), %rax	#, tmp143
	addq	$48, %rax	#, tmp144
	movq	%rax, -344(%rbp)	# tmp144, grid4_ptrs[3]
# problem130.c:69:     int result4[] = {1, 10, 1, 10, 1, 10, 1};
	movl	$1, -432(%rbp)	#, result4[0]
	movl	$10, -428(%rbp)	#, result4[1]
	movl	$1, -424(%rbp)	#, result4[2]
	movl	$10, -420(%rbp)	#, result4[3]
	movl	$1, -416(%rbp)	#, result4[4]
	movl	$10, -412(%rbp)	#, result4[5]
	movl	$1, -408(%rbp)	#, result4[6]
# problem130.c:70:     int *out4 = func0(grid4_ptrs, 4, 7, &size);
	leaq	-604(%rbp), %rdx	#, tmp145
	leaq	-368(%rbp), %rax	#, tmp146
	movq	%rdx, %rcx	# tmp145,
	movl	$7, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp146,
	call	func0	#
	movq	%rax, -576(%rbp)	# tmp147, out4
# problem130.c:71:     assert(issame(out4, result4, size));
	movl	-604(%rbp), %edx	# size, size.4_7
	leaq	-432(%rbp), %rcx	#, tmp148
	movq	-576(%rbp), %rax	# out4, tmp149
	movq	%rcx, %rsi	# tmp148,
	movq	%rax, %rdi	# tmp149,
	call	issame	#
	testl	%eax, %eax	# _8
	jne	.L25	#,
# problem130.c:71:     assert(issame(out4, result4, size));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp150
	movq	%rax, %rcx	# tmp150,
	movl	$71, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp151
	movq	%rax, %rsi	# tmp151,
	leaq	.LC4(%rip), %rax	#, tmp152
	movq	%rax, %rdi	# tmp152,
	call	__assert_fail@PLT	#
.L25:
# problem130.c:72:     free(out4);
	movq	-576(%rbp), %rax	# out4, tmp153
	movq	%rax, %rdi	# tmp153,
	call	free@PLT	#
# problem130.c:75:     int grid5[4][4] = {{8, 14, 9, 2}, {6, 4, 13, 15}, {5, 7, 1, 12}, {3, 10, 11, 16}};
	movl	$8, -80(%rbp)	#, grid5[0][0]
	movl	$14, -76(%rbp)	#, grid5[0][1]
	movl	$9, -72(%rbp)	#, grid5[0][2]
	movl	$2, -68(%rbp)	#, grid5[0][3]
	movl	$6, -64(%rbp)	#, grid5[1][0]
	movl	$4, -60(%rbp)	#, grid5[1][1]
	movl	$13, -56(%rbp)	#, grid5[1][2]
	movl	$15, -52(%rbp)	#, grid5[1][3]
	movl	$5, -48(%rbp)	#, grid5[2][0]
	movl	$7, -44(%rbp)	#, grid5[2][1]
	movl	$1, -40(%rbp)	#, grid5[2][2]
	movl	$12, -36(%rbp)	#, grid5[2][3]
	movl	$3, -32(%rbp)	#, grid5[3][0]
	movl	$10, -28(%rbp)	#, grid5[3][1]
	movl	$11, -24(%rbp)	#, grid5[3][2]
	movl	$16, -20(%rbp)	#, grid5[3][3]
# problem130.c:76:     int *grid5_ptrs[] = {grid5[0], grid5[1], grid5[2], grid5[3]};
	leaq	-80(%rbp), %rax	#, tmp154
	movq	%rax, -336(%rbp)	# tmp154, grid5_ptrs[0]
	leaq	-80(%rbp), %rax	#, tmp155
	addq	$16, %rax	#, tmp156
	movq	%rax, -328(%rbp)	# tmp156, grid5_ptrs[1]
	leaq	-80(%rbp), %rax	#, tmp157
	addq	$32, %rax	#, tmp158
	movq	%rax, -320(%rbp)	# tmp158, grid5_ptrs[2]
	leaq	-80(%rbp), %rax	#, tmp159
	addq	$48, %rax	#, tmp160
	movq	%rax, -312(%rbp)	# tmp160, grid5_ptrs[3]
# problem130.c:77:     int result5[] = {1, 7, 1, 7, 1};
	movl	$1, -528(%rbp)	#, result5[0]
	movl	$7, -524(%rbp)	#, result5[1]
	movl	$1, -520(%rbp)	#, result5[2]
	movl	$7, -516(%rbp)	#, result5[3]
	movl	$1, -512(%rbp)	#, result5[4]
# problem130.c:78:     int *out5 = func0(grid5_ptrs, 4, 5, &size);
	leaq	-604(%rbp), %rdx	#, tmp161
	leaq	-336(%rbp), %rax	#, tmp162
	movq	%rdx, %rcx	# tmp161,
	movl	$5, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp162,
	call	func0	#
	movq	%rax, -568(%rbp)	# tmp163, out5
# problem130.c:79:     assert(issame(out5, result5, size));
	movl	-604(%rbp), %edx	# size, size.5_9
	leaq	-528(%rbp), %rcx	#, tmp164
	movq	-568(%rbp), %rax	# out5, tmp165
	movq	%rcx, %rsi	# tmp164,
	movq	%rax, %rdi	# tmp165,
	call	issame	#
	testl	%eax, %eax	# _10
	jne	.L26	#,
# problem130.c:79:     assert(issame(out5, result5, size));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp166
	movq	%rax, %rcx	# tmp166,
	movl	$79, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp167
	movq	%rax, %rsi	# tmp167,
	leaq	.LC5(%rip), %rax	#, tmp168
	movq	%rax, %rdi	# tmp168,
	call	__assert_fail@PLT	#
.L26:
# problem130.c:80:     free(out5);
	movq	-568(%rbp), %rax	# out5, tmp169
	movq	%rax, %rdi	# tmp169,
	call	free@PLT	#
# problem130.c:82:     return 0;
	movl	$0, %eax	#, _141
# problem130.c:83: }
	movq	-8(%rbp), %rdx	# D.2993, tmp172
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp172
	je	.L28	#,
	call	__stack_chk_fail@PLT	#
.L28:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
