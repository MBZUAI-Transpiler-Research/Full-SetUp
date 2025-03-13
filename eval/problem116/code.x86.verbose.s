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
	movq	%rdi, -24(%rbp)	# grid, grid
	movl	%esi, -28(%rbp)	# rows, rows
	movl	%edx, -32(%rbp)	# cols, cols
	movl	%ecx, -36(%rbp)	# capacity, capacity
# code.c:3:     int out = 0;
	movl	$0, -16(%rbp)	#, out
# code.c:4:     for (int i = 0; i < rows; i++) {
	movl	$0, -12(%rbp)	#, i
# code.c:4:     for (int i = 0; i < rows; i++) {
	jmp	.L2	#
.L6:
# code.c:5:         int sum = 0;
	movl	$0, -8(%rbp)	#, sum
# code.c:6:         for (int j = 0; j < cols; j++)
	movl	$0, -4(%rbp)	#, j
# code.c:6:         for (int j = 0; j < cols; j++)
	jmp	.L3	#
.L4:
# code.c:7:             sum += grid[i][j];
	movl	-12(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-24(%rbp), %rax	# grid, tmp96
	addq	%rdx, %rax	# _2, _3
	movq	(%rax), %rax	# *_3, _4
# code.c:7:             sum += grid[i][j];
	movl	-4(%rbp), %edx	# j, tmp97
	movslq	%edx, %rdx	# tmp97, _5
	salq	$2, %rdx	#, _6
	addq	%rdx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# code.c:7:             sum += grid[i][j];
	addl	%eax, -8(%rbp)	# _8, sum
# code.c:6:         for (int j = 0; j < cols; j++)
	addl	$1, -4(%rbp)	#, j
.L3:
# code.c:6:         for (int j = 0; j < cols; j++)
	movl	-4(%rbp), %eax	# j, tmp98
	cmpl	-32(%rbp), %eax	# cols, tmp98
	jl	.L4	#,
# code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	cmpl	$0, -8(%rbp)	#, sum
	jle	.L5	#,
# code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	movl	-8(%rbp), %edx	# sum, tmp99
	movl	-36(%rbp), %eax	# capacity, tmp100
	addl	%edx, %eax	# tmp99, _9
# code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	subl	$1, %eax	#, _10
# code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	cltd
	idivl	-36(%rbp)	# capacity
# code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	addl	%eax, -16(%rbp)	# _11, out
.L5:
# code.c:4:     for (int i = 0; i < rows; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# code.c:4:     for (int i = 0; i < rows; i++) {
	movl	-12(%rbp), %eax	# i, tmp103
	cmpl	-28(%rbp), %eax	# rows, tmp103
	jl	.L6	#,
# code.c:10:     return out;
	movl	-16(%rbp), %eax	# out, _20
# code.c:11: }
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
