	.file	"problem116.c"
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
	movq	%rdi, -24(%rbp)	# grid, grid
	movl	%esi, -28(%rbp)	# rows, rows
	movl	%edx, -32(%rbp)	# cols, cols
	movl	%ecx, -36(%rbp)	# capacity, capacity
# problem116.c:3:     int out = 0;
	movl	$0, -16(%rbp)	#, out
# problem116.c:4:     for (int i = 0; i < rows; i++) {
	movl	$0, -12(%rbp)	#, i
# problem116.c:4:     for (int i = 0; i < rows; i++) {
	jmp	.L2	#
.L6:
# problem116.c:5:         int sum = 0;
	movl	$0, -8(%rbp)	#, sum
# problem116.c:6:         for (int j = 0; j < cols; j++)
	movl	$0, -4(%rbp)	#, j
# problem116.c:6:         for (int j = 0; j < cols; j++)
	jmp	.L3	#
.L4:
# problem116.c:7:             sum += grid[i][j];
	movl	-12(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-24(%rbp), %rax	# grid, tmp96
	addq	%rdx, %rax	# _2, _3
	movq	(%rax), %rax	# *_3, _4
# problem116.c:7:             sum += grid[i][j];
	movl	-4(%rbp), %edx	# j, tmp97
	movslq	%edx, %rdx	# tmp97, _5
	salq	$2, %rdx	#, _6
	addq	%rdx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem116.c:7:             sum += grid[i][j];
	addl	%eax, -8(%rbp)	# _8, sum
# problem116.c:6:         for (int j = 0; j < cols; j++)
	addl	$1, -4(%rbp)	#, j
.L3:
# problem116.c:6:         for (int j = 0; j < cols; j++)
	movl	-4(%rbp), %eax	# j, tmp98
	cmpl	-32(%rbp), %eax	# cols, tmp98
	jl	.L4	#,
# problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	cmpl	$0, -8(%rbp)	#, sum
	jle	.L5	#,
# problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	movl	-8(%rbp), %edx	# sum, tmp99
	movl	-36(%rbp), %eax	# capacity, tmp100
	addl	%edx, %eax	# tmp99, _9
# problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	subl	$1, %eax	#, _10
# problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	cltd
	idivl	-36(%rbp)	# capacity
# problem116.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	addl	%eax, -16(%rbp)	# _11, out
.L5:
# problem116.c:4:     for (int i = 0; i < rows; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# problem116.c:4:     for (int i = 0; i < rows; i++) {
	movl	-12(%rbp), %eax	# i, tmp103
	cmpl	-28(%rbp), %eax	# rows, tmp103
	jl	.L6	#,
# problem116.c:10:     return out;
	movl	-16(%rbp), %eax	# out, _20
# problem116.c:11: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem116.c"
	.align 8
.LC1:
	.string	"func0(grid, rows, cols, capacity) == 6"
	.align 8
.LC2:
	.string	"func0(grid, rows, cols, capacity) == 5"
	.align 8
.LC3:
	.string	"func0(grid, rows, cols, capacity) == 0"
	.align 8
.LC4:
	.string	"func0(grid, rows, cols, capacity) == 4"
	.align 8
.LC5:
	.string	"func0(grid, rows, cols, capacity) == 2"
.LC6:
	.string	"All tests passed!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$312, %rsp	#,
	.cfi_offset 3, -24
# problem116.c:19: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp331
	movq	%rax, -24(%rbp)	# tmp331, D.3853
	xorl	%eax, %eax	# tmp331
# problem116.c:24:     rows = 3; cols = 4; capacity = 1;
	movl	$3, -260(%rbp)	#, rows
# problem116.c:24:     rows = 3; cols = 4; capacity = 1;
	movl	$4, -256(%rbp)	#, cols
# problem116.c:24:     rows = 3; cols = 4; capacity = 1;
	movl	$1, -252(%rbp)	#, capacity
# problem116.c:25:     grid = (int **)malloc(rows * sizeof(int *));
	movl	-260(%rbp), %eax	# rows, tmp189
	cltq
	salq	$3, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -248(%rbp)	# tmp190, grid
# problem116.c:26:     int grid1_data[3][4] = {{0,0,1,0}, {0,1,0,0}, {1,1,1,1}};
	movl	$0, -144(%rbp)	#, grid1_data[0][0]
	movl	$0, -140(%rbp)	#, grid1_data[0][1]
	movl	$1, -136(%rbp)	#, grid1_data[0][2]
	movl	$0, -132(%rbp)	#, grid1_data[0][3]
	movl	$0, -128(%rbp)	#, grid1_data[1][0]
	movl	$1, -124(%rbp)	#, grid1_data[1][1]
	movl	$0, -120(%rbp)	#, grid1_data[1][2]
	movl	$0, -116(%rbp)	#, grid1_data[1][3]
	movl	$1, -112(%rbp)	#, grid1_data[2][0]
	movl	$1, -108(%rbp)	#, grid1_data[2][1]
	movl	$1, -104(%rbp)	#, grid1_data[2][2]
	movl	$1, -100(%rbp)	#, grid1_data[2][3]
# problem116.c:27:     for (int i = 0; i < rows; i++) {
	movl	$0, -320(%rbp)	#, i
# problem116.c:27:     for (int i = 0; i < rows; i++) {
	jmp	.L9	#
.L12:
# problem116.c:28:         grid[i] = (int *)malloc(cols * sizeof(int));
	movl	-256(%rbp), %eax	# cols, tmp191
	cltq
	salq	$2, %rax	#, _4
# problem116.c:28:         grid[i] = (int *)malloc(cols * sizeof(int));
	movl	-320(%rbp), %edx	# i, tmp192
	movslq	%edx, %rdx	# tmp192, _5
	leaq	0(,%rdx,8), %rcx	#, _6
	movq	-248(%rbp), %rdx	# grid, tmp193
	leaq	(%rcx,%rdx), %rbx	#, _7
# problem116.c:28:         grid[i] = (int *)malloc(cols * sizeof(int));
	movq	%rax, %rdi	# _4,
	call	malloc@PLT	#
# problem116.c:28:         grid[i] = (int *)malloc(cols * sizeof(int));
	movq	%rax, (%rbx)	# _8, *_7
# problem116.c:29:         for (int j = 0; j < cols; j++) {
	movl	$0, -316(%rbp)	#, j
# problem116.c:29:         for (int j = 0; j < cols; j++) {
	jmp	.L10	#
.L11:
# problem116.c:30:             grid[i][j] = grid1_data[i][j];
	movl	-320(%rbp), %eax	# i, tmp195
	cltq
	leaq	0(,%rax,8), %rdx	#, _10
	movq	-248(%rbp), %rax	# grid, tmp196
	addq	%rdx, %rax	# _10, _11
	movq	(%rax), %rax	# *_11, _12
# problem116.c:30:             grid[i][j] = grid1_data[i][j];
	movl	-316(%rbp), %edx	# j, tmp197
	movslq	%edx, %rdx	# tmp197, _13
	salq	$2, %rdx	#, _14
	addq	%rax, %rdx	# _12, _15
# problem116.c:30:             grid[i][j] = grid1_data[i][j];
	movl	-316(%rbp), %eax	# j, tmp199
	cltq
	movl	-320(%rbp), %ecx	# i, tmp201
	movslq	%ecx, %rcx	# tmp201, tmp200
	salq	$2, %rcx	#, tmp202
	addq	%rcx, %rax	# tmp202, tmp203
	movl	-144(%rbp,%rax,4), %eax	# grid1_data[i_106][j_107], _16
# problem116.c:30:             grid[i][j] = grid1_data[i][j];
	movl	%eax, (%rdx)	# _16, *_15
# problem116.c:29:         for (int j = 0; j < cols; j++) {
	addl	$1, -316(%rbp)	#, j
.L10:
# problem116.c:29:         for (int j = 0; j < cols; j++) {
	movl	-316(%rbp), %eax	# j, tmp204
	cmpl	-256(%rbp), %eax	# cols, tmp204
	jl	.L11	#,
# problem116.c:27:     for (int i = 0; i < rows; i++) {
	addl	$1, -320(%rbp)	#, i
.L9:
# problem116.c:27:     for (int i = 0; i < rows; i++) {
	movl	-320(%rbp), %eax	# i, tmp205
	cmpl	-260(%rbp), %eax	# rows, tmp205
	jl	.L12	#,
# problem116.c:33:     assert(func0(grid, rows, cols, capacity) == 6);
	movl	-252(%rbp), %ecx	# capacity, tmp206
	movl	-256(%rbp), %edx	# cols, tmp207
	movl	-260(%rbp), %esi	# rows, tmp208
	movq	-248(%rbp), %rax	# grid, tmp209
	movq	%rax, %rdi	# tmp209,
	call	func0	#
# problem116.c:33:     assert(func0(grid, rows, cols, capacity) == 6);
	cmpl	$6, %eax	#, _17
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp210
	movq	%rax, %rcx	# tmp210,
	movl	$33, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp211
	movq	%rax, %rsi	# tmp211,
	leaq	.LC1(%rip), %rax	#, tmp212
	movq	%rax, %rdi	# tmp212,
	call	__assert_fail@PLT	#
.L13:
# problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	movl	$0, -312(%rbp)	#, i
# problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	jmp	.L14	#
.L15:
# problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	movl	-312(%rbp), %eax	# i, tmp213
	cltq
	leaq	0(,%rax,8), %rdx	#, _19
	movq	-248(%rbp), %rax	# grid, tmp214
	addq	%rdx, %rax	# _19, _20
# problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	movq	(%rax), %rax	# *_20, _21
	movq	%rax, %rdi	# _21,
	call	free@PLT	#
# problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	addl	$1, -312(%rbp)	#, i
.L14:
# problem116.c:34:     for (int i = 0; i < rows; i++) free(grid[i]);
	movl	-312(%rbp), %eax	# i, tmp215
	cmpl	-260(%rbp), %eax	# rows, tmp215
	jl	.L15	#,
# problem116.c:35:     free(grid);
	movq	-248(%rbp), %rax	# grid, tmp216
	movq	%rax, %rdi	# tmp216,
	call	free@PLT	#
# problem116.c:38:     rows = 4; cols = 4; capacity = 2;
	movl	$4, -260(%rbp)	#, rows
# problem116.c:38:     rows = 4; cols = 4; capacity = 2;
	movl	$4, -256(%rbp)	#, cols
# problem116.c:38:     rows = 4; cols = 4; capacity = 2;
	movl	$2, -252(%rbp)	#, capacity
# problem116.c:39:     grid = (int **)malloc(rows * sizeof(int *));
	movl	-260(%rbp), %eax	# rows, tmp217
	cltq
	salq	$3, %rax	#, _23
	movq	%rax, %rdi	# _23,
	call	malloc@PLT	#
	movq	%rax, -248(%rbp)	# tmp218, grid
# problem116.c:40:     int grid2_data[4][4] = {{0,0,1,1}, {0,0,0,0}, {1,1,1,1}, {0,1,1,1}};
	movl	$0, -96(%rbp)	#, grid2_data[0][0]
	movl	$0, -92(%rbp)	#, grid2_data[0][1]
	movl	$1, -88(%rbp)	#, grid2_data[0][2]
	movl	$1, -84(%rbp)	#, grid2_data[0][3]
	movl	$0, -80(%rbp)	#, grid2_data[1][0]
	movl	$0, -76(%rbp)	#, grid2_data[1][1]
	movl	$0, -72(%rbp)	#, grid2_data[1][2]
	movl	$0, -68(%rbp)	#, grid2_data[1][3]
	movl	$1, -64(%rbp)	#, grid2_data[2][0]
	movl	$1, -60(%rbp)	#, grid2_data[2][1]
	movl	$1, -56(%rbp)	#, grid2_data[2][2]
	movl	$1, -52(%rbp)	#, grid2_data[2][3]
	movl	$0, -48(%rbp)	#, grid2_data[3][0]
	movl	$1, -44(%rbp)	#, grid2_data[3][1]
	movl	$1, -40(%rbp)	#, grid2_data[3][2]
	movl	$1, -36(%rbp)	#, grid2_data[3][3]
# problem116.c:41:     for (int i = 0; i < rows; i++) {
	movl	$0, -308(%rbp)	#, i
# problem116.c:41:     for (int i = 0; i < rows; i++) {
	jmp	.L16	#
.L19:
# problem116.c:42:         grid[i] = (int *)malloc(cols * sizeof(int));
	movl	-256(%rbp), %eax	# cols, tmp219
	cltq
	salq	$2, %rax	#, _25
# problem116.c:42:         grid[i] = (int *)malloc(cols * sizeof(int));
	movl	-308(%rbp), %edx	# i, tmp220
	movslq	%edx, %rdx	# tmp220, _26
	leaq	0(,%rdx,8), %rcx	#, _27
	movq	-248(%rbp), %rdx	# grid, tmp221
	leaq	(%rcx,%rdx), %rbx	#, _28
# problem116.c:42:         grid[i] = (int *)malloc(cols * sizeof(int));
	movq	%rax, %rdi	# _25,
	call	malloc@PLT	#
# problem116.c:42:         grid[i] = (int *)malloc(cols * sizeof(int));
	movq	%rax, (%rbx)	# _29, *_28
# problem116.c:43:         for (int j = 0; j < cols; j++) {
	movl	$0, -304(%rbp)	#, j
# problem116.c:43:         for (int j = 0; j < cols; j++) {
	jmp	.L17	#
.L18:
# problem116.c:44:             grid[i][j] = grid2_data[i][j];
	movl	-308(%rbp), %eax	# i, tmp223
	cltq
	leaq	0(,%rax,8), %rdx	#, _31
	movq	-248(%rbp), %rax	# grid, tmp224
	addq	%rdx, %rax	# _31, _32
	movq	(%rax), %rax	# *_32, _33
# problem116.c:44:             grid[i][j] = grid2_data[i][j];
	movl	-304(%rbp), %edx	# j, tmp225
	movslq	%edx, %rdx	# tmp225, _34
	salq	$2, %rdx	#, _35
	addq	%rax, %rdx	# _33, _36
# problem116.c:44:             grid[i][j] = grid2_data[i][j];
	movl	-304(%rbp), %eax	# j, tmp227
	cltq
	movl	-308(%rbp), %ecx	# i, tmp229
	movslq	%ecx, %rcx	# tmp229, tmp228
	salq	$2, %rcx	#, tmp230
	addq	%rcx, %rax	# tmp230, tmp231
	movl	-96(%rbp,%rax,4), %eax	# grid2_data[i_109][j_110], _37
# problem116.c:44:             grid[i][j] = grid2_data[i][j];
	movl	%eax, (%rdx)	# _37, *_36
# problem116.c:43:         for (int j = 0; j < cols; j++) {
	addl	$1, -304(%rbp)	#, j
.L17:
# problem116.c:43:         for (int j = 0; j < cols; j++) {
	movl	-304(%rbp), %eax	# j, tmp232
	cmpl	-256(%rbp), %eax	# cols, tmp232
	jl	.L18	#,
# problem116.c:41:     for (int i = 0; i < rows; i++) {
	addl	$1, -308(%rbp)	#, i
.L16:
# problem116.c:41:     for (int i = 0; i < rows; i++) {
	movl	-308(%rbp), %eax	# i, tmp233
	cmpl	-260(%rbp), %eax	# rows, tmp233
	jl	.L19	#,
# problem116.c:47:     assert(func0(grid, rows, cols, capacity) == 5);
	movl	-252(%rbp), %ecx	# capacity, tmp234
	movl	-256(%rbp), %edx	# cols, tmp235
	movl	-260(%rbp), %esi	# rows, tmp236
	movq	-248(%rbp), %rax	# grid, tmp237
	movq	%rax, %rdi	# tmp237,
	call	func0	#
# problem116.c:47:     assert(func0(grid, rows, cols, capacity) == 5);
	cmpl	$5, %eax	#, _38
	je	.L20	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp238
	movq	%rax, %rcx	# tmp238,
	movl	$47, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp239
	movq	%rax, %rsi	# tmp239,
	leaq	.LC2(%rip), %rax	#, tmp240
	movq	%rax, %rdi	# tmp240,
	call	__assert_fail@PLT	#
.L20:
# problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	movl	$0, -300(%rbp)	#, i
# problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	jmp	.L21	#
.L22:
# problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	movl	-300(%rbp), %eax	# i, tmp241
	cltq
	leaq	0(,%rax,8), %rdx	#, _40
	movq	-248(%rbp), %rax	# grid, tmp242
	addq	%rdx, %rax	# _40, _41
# problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	movq	(%rax), %rax	# *_41, _42
	movq	%rax, %rdi	# _42,
	call	free@PLT	#
# problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	addl	$1, -300(%rbp)	#, i
.L21:
# problem116.c:48:     for (int i = 0; i < rows; i++) free(grid[i]);
	movl	-300(%rbp), %eax	# i, tmp243
	cmpl	-260(%rbp), %eax	# rows, tmp243
	jl	.L22	#,
# problem116.c:49:     free(grid);
	movq	-248(%rbp), %rax	# grid, tmp244
	movq	%rax, %rdi	# tmp244,
	call	free@PLT	#
# problem116.c:52:     rows = 2; cols = 3; capacity = 5;
	movl	$2, -260(%rbp)	#, rows
# problem116.c:52:     rows = 2; cols = 3; capacity = 5;
	movl	$3, -256(%rbp)	#, cols
# problem116.c:52:     rows = 2; cols = 3; capacity = 5;
	movl	$5, -252(%rbp)	#, capacity
# problem116.c:53:     grid = (int **)malloc(rows * sizeof(int *));
	movl	-260(%rbp), %eax	# rows, tmp245
	cltq
	salq	$3, %rax	#, _44
	movq	%rax, %rdi	# _44,
	call	malloc@PLT	#
	movq	%rax, -248(%rbp)	# tmp246, grid
# problem116.c:54:     int grid3_data[2][3] = {{0,0,0}, {0,0,0}};
	movl	$0, -240(%rbp)	#, grid3_data[0][0]
	movl	$0, -236(%rbp)	#, grid3_data[0][1]
	movl	$0, -232(%rbp)	#, grid3_data[0][2]
	movl	$0, -228(%rbp)	#, grid3_data[1][0]
	movl	$0, -224(%rbp)	#, grid3_data[1][1]
	movl	$0, -220(%rbp)	#, grid3_data[1][2]
# problem116.c:55:     for (int i = 0; i < rows; i++) {
	movl	$0, -296(%rbp)	#, i
# problem116.c:55:     for (int i = 0; i < rows; i++) {
	jmp	.L23	#
.L26:
# problem116.c:56:         grid[i] = (int *)malloc(cols * sizeof(int));
	movl	-256(%rbp), %eax	# cols, tmp247
	cltq
	salq	$2, %rax	#, _46
# problem116.c:56:         grid[i] = (int *)malloc(cols * sizeof(int));
	movl	-296(%rbp), %edx	# i, tmp248
	movslq	%edx, %rdx	# tmp248, _47
	leaq	0(,%rdx,8), %rcx	#, _48
	movq	-248(%rbp), %rdx	# grid, tmp249
	leaq	(%rcx,%rdx), %rbx	#, _49
# problem116.c:56:         grid[i] = (int *)malloc(cols * sizeof(int));
	movq	%rax, %rdi	# _46,
	call	malloc@PLT	#
# problem116.c:56:         grid[i] = (int *)malloc(cols * sizeof(int));
	movq	%rax, (%rbx)	# _50, *_49
# problem116.c:57:         for (int j = 0; j < cols; j++) {
	movl	$0, -292(%rbp)	#, j
# problem116.c:57:         for (int j = 0; j < cols; j++) {
	jmp	.L24	#
.L25:
# problem116.c:58:             grid[i][j] = grid3_data[i][j];
	movl	-296(%rbp), %eax	# i, tmp251
	cltq
	leaq	0(,%rax,8), %rdx	#, _52
	movq	-248(%rbp), %rax	# grid, tmp252
	addq	%rdx, %rax	# _52, _53
	movq	(%rax), %rax	# *_53, _54
# problem116.c:58:             grid[i][j] = grid3_data[i][j];
	movl	-292(%rbp), %edx	# j, tmp253
	movslq	%edx, %rdx	# tmp253, _55
	salq	$2, %rdx	#, _56
	leaq	(%rax,%rdx), %rcx	#, _57
# problem116.c:58:             grid[i][j] = grid3_data[i][j];
	movl	-292(%rbp), %eax	# j, tmp255
	movslq	%eax, %rsi	# tmp255, tmp254
	movl	-296(%rbp), %eax	# i, tmp257
	movslq	%eax, %rdx	# tmp257, tmp256
	movq	%rdx, %rax	# tmp256, tmp258
	addq	%rax, %rax	# tmp258
	addq	%rdx, %rax	# tmp256, tmp258
	addq	%rsi, %rax	# tmp254, tmp259
	movl	-240(%rbp,%rax,4), %eax	# grid3_data[i_112][j_113], _58
# problem116.c:58:             grid[i][j] = grid3_data[i][j];
	movl	%eax, (%rcx)	# _58, *_57
# problem116.c:57:         for (int j = 0; j < cols; j++) {
	addl	$1, -292(%rbp)	#, j
.L24:
# problem116.c:57:         for (int j = 0; j < cols; j++) {
	movl	-292(%rbp), %eax	# j, tmp260
	cmpl	-256(%rbp), %eax	# cols, tmp260
	jl	.L25	#,
# problem116.c:55:     for (int i = 0; i < rows; i++) {
	addl	$1, -296(%rbp)	#, i
.L23:
# problem116.c:55:     for (int i = 0; i < rows; i++) {
	movl	-296(%rbp), %eax	# i, tmp261
	cmpl	-260(%rbp), %eax	# rows, tmp261
	jl	.L26	#,
# problem116.c:61:     assert(func0(grid, rows, cols, capacity) == 0);
	movl	-252(%rbp), %ecx	# capacity, tmp262
	movl	-256(%rbp), %edx	# cols, tmp263
	movl	-260(%rbp), %esi	# rows, tmp264
	movq	-248(%rbp), %rax	# grid, tmp265
	movq	%rax, %rdi	# tmp265,
	call	func0	#
# problem116.c:61:     assert(func0(grid, rows, cols, capacity) == 0);
	testl	%eax, %eax	# _59
	je	.L27	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp266
	movq	%rax, %rcx	# tmp266,
	movl	$61, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp267
	movq	%rax, %rsi	# tmp267,
	leaq	.LC3(%rip), %rax	#, tmp268
	movq	%rax, %rdi	# tmp268,
	call	__assert_fail@PLT	#
.L27:
# problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	movl	$0, -288(%rbp)	#, i
# problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	jmp	.L28	#
.L29:
# problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	movl	-288(%rbp), %eax	# i, tmp269
	cltq
	leaq	0(,%rax,8), %rdx	#, _61
	movq	-248(%rbp), %rax	# grid, tmp270
	addq	%rdx, %rax	# _61, _62
# problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	movq	(%rax), %rax	# *_62, _63
	movq	%rax, %rdi	# _63,
	call	free@PLT	#
# problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	addl	$1, -288(%rbp)	#, i
.L28:
# problem116.c:62:     for (int i = 0; i < rows; i++) free(grid[i]);
	movl	-288(%rbp), %eax	# i, tmp271
	cmpl	-260(%rbp), %eax	# rows, tmp271
	jl	.L29	#,
# problem116.c:63:     free(grid);
	movq	-248(%rbp), %rax	# grid, tmp272
	movq	%rax, %rdi	# tmp272,
	call	free@PLT	#
# problem116.c:66:     rows = 2; cols = 4; capacity = 2;
	movl	$2, -260(%rbp)	#, rows
# problem116.c:66:     rows = 2; cols = 4; capacity = 2;
	movl	$4, -256(%rbp)	#, cols
# problem116.c:66:     rows = 2; cols = 4; capacity = 2;
	movl	$2, -252(%rbp)	#, capacity
# problem116.c:67:     grid = (int **)malloc(rows * sizeof(int *));
	movl	-260(%rbp), %eax	# rows, tmp273
	cltq
	salq	$3, %rax	#, _65
	movq	%rax, %rdi	# _65,
	call	malloc@PLT	#
	movq	%rax, -248(%rbp)	# tmp274, grid
# problem116.c:68:     int grid4_data[2][4] = {{1,1,1,1}, {1,1,1,1}};
	movl	$1, -208(%rbp)	#, grid4_data[0][0]
	movl	$1, -204(%rbp)	#, grid4_data[0][1]
	movl	$1, -200(%rbp)	#, grid4_data[0][2]
	movl	$1, -196(%rbp)	#, grid4_data[0][3]
	movl	$1, -192(%rbp)	#, grid4_data[1][0]
	movl	$1, -188(%rbp)	#, grid4_data[1][1]
	movl	$1, -184(%rbp)	#, grid4_data[1][2]
	movl	$1, -180(%rbp)	#, grid4_data[1][3]
# problem116.c:69:     for (int i = 0; i < rows; i++) {
	movl	$0, -284(%rbp)	#, i
# problem116.c:69:     for (int i = 0; i < rows; i++) {
	jmp	.L30	#
.L33:
# problem116.c:70:         grid[i] = (int *)malloc(cols * sizeof(int));
	movl	-256(%rbp), %eax	# cols, tmp275
	cltq
	salq	$2, %rax	#, _67
# problem116.c:70:         grid[i] = (int *)malloc(cols * sizeof(int));
	movl	-284(%rbp), %edx	# i, tmp276
	movslq	%edx, %rdx	# tmp276, _68
	leaq	0(,%rdx,8), %rcx	#, _69
	movq	-248(%rbp), %rdx	# grid, tmp277
	leaq	(%rcx,%rdx), %rbx	#, _70
# problem116.c:70:         grid[i] = (int *)malloc(cols * sizeof(int));
	movq	%rax, %rdi	# _67,
	call	malloc@PLT	#
# problem116.c:70:         grid[i] = (int *)malloc(cols * sizeof(int));
	movq	%rax, (%rbx)	# _71, *_70
# problem116.c:71:         for (int j = 0; j < cols; j++) {
	movl	$0, -280(%rbp)	#, j
# problem116.c:71:         for (int j = 0; j < cols; j++) {
	jmp	.L31	#
.L32:
# problem116.c:72:             grid[i][j] = grid4_data[i][j];
	movl	-284(%rbp), %eax	# i, tmp279
	cltq
	leaq	0(,%rax,8), %rdx	#, _73
	movq	-248(%rbp), %rax	# grid, tmp280
	addq	%rdx, %rax	# _73, _74
	movq	(%rax), %rax	# *_74, _75
# problem116.c:72:             grid[i][j] = grid4_data[i][j];
	movl	-280(%rbp), %edx	# j, tmp281
	movslq	%edx, %rdx	# tmp281, _76
	salq	$2, %rdx	#, _77
	addq	%rax, %rdx	# _75, _78
# problem116.c:72:             grid[i][j] = grid4_data[i][j];
	movl	-280(%rbp), %eax	# j, tmp283
	cltq
	movl	-284(%rbp), %ecx	# i, tmp285
	movslq	%ecx, %rcx	# tmp285, tmp284
	salq	$2, %rcx	#, tmp286
	addq	%rcx, %rax	# tmp286, tmp287
	movl	-208(%rbp,%rax,4), %eax	# grid4_data[i_115][j_116], _79
# problem116.c:72:             grid[i][j] = grid4_data[i][j];
	movl	%eax, (%rdx)	# _79, *_78
# problem116.c:71:         for (int j = 0; j < cols; j++) {
	addl	$1, -280(%rbp)	#, j
.L31:
# problem116.c:71:         for (int j = 0; j < cols; j++) {
	movl	-280(%rbp), %eax	# j, tmp288
	cmpl	-256(%rbp), %eax	# cols, tmp288
	jl	.L32	#,
# problem116.c:69:     for (int i = 0; i < rows; i++) {
	addl	$1, -284(%rbp)	#, i
.L30:
# problem116.c:69:     for (int i = 0; i < rows; i++) {
	movl	-284(%rbp), %eax	# i, tmp289
	cmpl	-260(%rbp), %eax	# rows, tmp289
	jl	.L33	#,
# problem116.c:75:     assert(func0(grid, rows, cols, capacity) == 4);
	movl	-252(%rbp), %ecx	# capacity, tmp290
	movl	-256(%rbp), %edx	# cols, tmp291
	movl	-260(%rbp), %esi	# rows, tmp292
	movq	-248(%rbp), %rax	# grid, tmp293
	movq	%rax, %rdi	# tmp293,
	call	func0	#
# problem116.c:75:     assert(func0(grid, rows, cols, capacity) == 4);
	cmpl	$4, %eax	#, _80
	je	.L34	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp294
	movq	%rax, %rcx	# tmp294,
	movl	$75, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp295
	movq	%rax, %rsi	# tmp295,
	leaq	.LC4(%rip), %rax	#, tmp296
	movq	%rax, %rdi	# tmp296,
	call	__assert_fail@PLT	#
.L34:
# problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	movl	$0, -276(%rbp)	#, i
# problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	jmp	.L35	#
.L36:
# problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	movl	-276(%rbp), %eax	# i, tmp297
	cltq
	leaq	0(,%rax,8), %rdx	#, _82
	movq	-248(%rbp), %rax	# grid, tmp298
	addq	%rdx, %rax	# _82, _83
# problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	movq	(%rax), %rax	# *_83, _84
	movq	%rax, %rdi	# _84,
	call	free@PLT	#
# problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	addl	$1, -276(%rbp)	#, i
.L35:
# problem116.c:76:     for (int i = 0; i < rows; i++) free(grid[i]);
	movl	-276(%rbp), %eax	# i, tmp299
	cmpl	-260(%rbp), %eax	# rows, tmp299
	jl	.L36	#,
# problem116.c:77:     free(grid);
	movq	-248(%rbp), %rax	# grid, tmp300
	movq	%rax, %rdi	# tmp300,
	call	free@PLT	#
# problem116.c:80:     rows = 2; cols = 4; capacity = 9;
	movl	$2, -260(%rbp)	#, rows
# problem116.c:80:     rows = 2; cols = 4; capacity = 9;
	movl	$4, -256(%rbp)	#, cols
# problem116.c:80:     rows = 2; cols = 4; capacity = 9;
	movl	$9, -252(%rbp)	#, capacity
# problem116.c:81:     grid = (int **)malloc(rows * sizeof(int *));
	movl	-260(%rbp), %eax	# rows, tmp301
	cltq
	salq	$3, %rax	#, _86
	movq	%rax, %rdi	# _86,
	call	malloc@PLT	#
	movq	%rax, -248(%rbp)	# tmp302, grid
# problem116.c:82:     int grid5_data[2][4] = {{1,1,1,1}, {1,1,1,1}};
	movl	$1, -176(%rbp)	#, grid5_data[0][0]
	movl	$1, -172(%rbp)	#, grid5_data[0][1]
	movl	$1, -168(%rbp)	#, grid5_data[0][2]
	movl	$1, -164(%rbp)	#, grid5_data[0][3]
	movl	$1, -160(%rbp)	#, grid5_data[1][0]
	movl	$1, -156(%rbp)	#, grid5_data[1][1]
	movl	$1, -152(%rbp)	#, grid5_data[1][2]
	movl	$1, -148(%rbp)	#, grid5_data[1][3]
# problem116.c:83:     for (int i = 0; i < rows; i++) {
	movl	$0, -272(%rbp)	#, i
# problem116.c:83:     for (int i = 0; i < rows; i++) {
	jmp	.L37	#
.L40:
# problem116.c:84:         grid[i] = (int *)malloc(cols * sizeof(int));
	movl	-256(%rbp), %eax	# cols, tmp303
	cltq
	salq	$2, %rax	#, _88
# problem116.c:84:         grid[i] = (int *)malloc(cols * sizeof(int));
	movl	-272(%rbp), %edx	# i, tmp304
	movslq	%edx, %rdx	# tmp304, _89
	leaq	0(,%rdx,8), %rcx	#, _90
	movq	-248(%rbp), %rdx	# grid, tmp305
	leaq	(%rcx,%rdx), %rbx	#, _91
# problem116.c:84:         grid[i] = (int *)malloc(cols * sizeof(int));
	movq	%rax, %rdi	# _88,
	call	malloc@PLT	#
# problem116.c:84:         grid[i] = (int *)malloc(cols * sizeof(int));
	movq	%rax, (%rbx)	# _92, *_91
# problem116.c:85:         for (int j = 0; j < cols; j++) {
	movl	$0, -268(%rbp)	#, j
# problem116.c:85:         for (int j = 0; j < cols; j++) {
	jmp	.L38	#
.L39:
# problem116.c:86:             grid[i][j] = grid5_data[i][j];
	movl	-272(%rbp), %eax	# i, tmp307
	cltq
	leaq	0(,%rax,8), %rdx	#, _94
	movq	-248(%rbp), %rax	# grid, tmp308
	addq	%rdx, %rax	# _94, _95
	movq	(%rax), %rax	# *_95, _96
# problem116.c:86:             grid[i][j] = grid5_data[i][j];
	movl	-268(%rbp), %edx	# j, tmp309
	movslq	%edx, %rdx	# tmp309, _97
	salq	$2, %rdx	#, _98
	addq	%rax, %rdx	# _96, _99
# problem116.c:86:             grid[i][j] = grid5_data[i][j];
	movl	-268(%rbp), %eax	# j, tmp311
	cltq
	movl	-272(%rbp), %ecx	# i, tmp313
	movslq	%ecx, %rcx	# tmp313, tmp312
	salq	$2, %rcx	#, tmp314
	addq	%rcx, %rax	# tmp314, tmp315
	movl	-176(%rbp,%rax,4), %eax	# grid5_data[i_118][j_119], _100
# problem116.c:86:             grid[i][j] = grid5_data[i][j];
	movl	%eax, (%rdx)	# _100, *_99
# problem116.c:85:         for (int j = 0; j < cols; j++) {
	addl	$1, -268(%rbp)	#, j
.L38:
# problem116.c:85:         for (int j = 0; j < cols; j++) {
	movl	-268(%rbp), %eax	# j, tmp316
	cmpl	-256(%rbp), %eax	# cols, tmp316
	jl	.L39	#,
# problem116.c:83:     for (int i = 0; i < rows; i++) {
	addl	$1, -272(%rbp)	#, i
.L37:
# problem116.c:83:     for (int i = 0; i < rows; i++) {
	movl	-272(%rbp), %eax	# i, tmp317
	cmpl	-260(%rbp), %eax	# rows, tmp317
	jl	.L40	#,
# problem116.c:89:     assert(func0(grid, rows, cols, capacity) == 2);
	movl	-252(%rbp), %ecx	# capacity, tmp318
	movl	-256(%rbp), %edx	# cols, tmp319
	movl	-260(%rbp), %esi	# rows, tmp320
	movq	-248(%rbp), %rax	# grid, tmp321
	movq	%rax, %rdi	# tmp321,
	call	func0	#
# problem116.c:89:     assert(func0(grid, rows, cols, capacity) == 2);
	cmpl	$2, %eax	#, _101
	je	.L41	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp322
	movq	%rax, %rcx	# tmp322,
	movl	$89, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp323
	movq	%rax, %rsi	# tmp323,
	leaq	.LC5(%rip), %rax	#, tmp324
	movq	%rax, %rdi	# tmp324,
	call	__assert_fail@PLT	#
.L41:
# problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	movl	$0, -264(%rbp)	#, i
# problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	jmp	.L42	#
.L43:
# problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	movl	-264(%rbp), %eax	# i, tmp325
	cltq
	leaq	0(,%rax,8), %rdx	#, _103
	movq	-248(%rbp), %rax	# grid, tmp326
	addq	%rdx, %rax	# _103, _104
# problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	movq	(%rax), %rax	# *_104, _105
	movq	%rax, %rdi	# _105,
	call	free@PLT	#
# problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	addl	$1, -264(%rbp)	#, i
.L42:
# problem116.c:90: for (int i = 0; i < rows; i++) free(grid[i]);
	movl	-264(%rbp), %eax	# i, tmp327
	cmpl	-260(%rbp), %eax	# rows, tmp327
	jl	.L43	#,
# problem116.c:91:     free(grid);
	movq	-248(%rbp), %rax	# grid, tmp328
	movq	%rax, %rdi	# tmp328,
	call	free@PLT	#
# problem116.c:93:     printf("All tests passed!\n");
	leaq	.LC6(%rip), %rax	#, tmp329
	movq	%rax, %rdi	# tmp329,
	call	puts@PLT	#
# problem116.c:94:     return 0;
	movl	$0, %eax	#, _238
# problem116.c:95: }
	movq	-24(%rbp), %rdx	# D.3853, tmp332
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp332
	je	.L45	#,
	call	__stack_chk_fail@PLT	#
.L45:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
