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
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# lst, lst
	movl	%esi, -60(%rbp)	# lst_size, lst_size
	movq	%rdx, -72(%rbp)	# row_sizes, row_sizes
	movl	%ecx, -64(%rbp)	# x, x
	movq	%r8, -80(%rbp)	# return_size, return_size
# eval/problem88//code.c:5:     int **out = (int **)malloc(100 * sizeof(int *));
	movl	$800, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -24(%rbp)	# tmp109, out
# eval/problem88//code.c:6:     int count = 0;
	movl	$0, -36(%rbp)	#, count
# eval/problem88//code.c:7:     for (int i = 0; i < lst_size; i++) {
	movl	$0, -32(%rbp)	#, i
# eval/problem88//code.c:7:     for (int i = 0; i < lst_size; i++) {
	jmp	.L2	#
.L6:
# eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	movl	-32(%rbp), %eax	# i, tmp110
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-72(%rbp), %rax	# row_sizes, tmp111
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	subl	$1, %eax	#, tmp112
	movl	%eax, -28(%rbp)	# tmp112, j
# eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	jmp	.L3	#
.L5:
# eval/problem88//code.c:9:             if (lst[i][j] == x) {
	movl	-32(%rbp), %eax	# i, tmp113
	cltq
	leaq	0(,%rax,8), %rdx	#, _6
	movq	-56(%rbp), %rax	# lst, tmp114
	addq	%rdx, %rax	# _6, _7
	movq	(%rax), %rax	# *_7, _8
# eval/problem88//code.c:9:             if (lst[i][j] == x) {
	movl	-28(%rbp), %edx	# j, tmp115
	movslq	%edx, %rdx	# tmp115, _9
	salq	$2, %rdx	#, _10
	addq	%rdx, %rax	# _10, _11
	movl	(%rax), %eax	# *_11, _12
# eval/problem88//code.c:9:             if (lst[i][j] == x) {
	cmpl	%eax, -64(%rbp)	# _12, x
	jne	.L4	#,
# eval/problem88//code.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	movl	-36(%rbp), %eax	# count, tmp116
	cltq
	leaq	0(,%rax,8), %rdx	#, _14
	movq	-24(%rbp), %rax	# out, tmp117
	leaq	(%rdx,%rax), %rbx	#, _15
# eval/problem88//code.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	movl	$8, %edi	#,
	call	malloc@PLT	#
# eval/problem88//code.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	movq	%rax, (%rbx)	# _16, *_15
# eval/problem88//code.c:11:                 out[count][0] = i;
	movl	-36(%rbp), %eax	# count, tmp119
	cltq
	leaq	0(,%rax,8), %rdx	#, _18
	movq	-24(%rbp), %rax	# out, tmp120
	addq	%rdx, %rax	# _18, _19
	movq	(%rax), %rax	# *_19, _20
# eval/problem88//code.c:11:                 out[count][0] = i;
	movl	-32(%rbp), %edx	# i, tmp121
	movl	%edx, (%rax)	# tmp121, *_20
# eval/problem88//code.c:12:                 out[count][1] = j;
	movl	-36(%rbp), %eax	# count, tmp122
	cltq
	leaq	0(,%rax,8), %rdx	#, _22
	movq	-24(%rbp), %rax	# out, tmp123
	addq	%rdx, %rax	# _22, _23
	movq	(%rax), %rax	# *_23, _24
# eval/problem88//code.c:12:                 out[count][1] = j;
	leaq	4(%rax), %rdx	#, _25
# eval/problem88//code.c:12:                 out[count][1] = j;
	movl	-28(%rbp), %eax	# j, tmp124
	movl	%eax, (%rdx)	# tmp124, *_25
# eval/problem88//code.c:13:                 count++;
	addl	$1, -36(%rbp)	#, count
.L4:
# eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	subl	$1, -28(%rbp)	#, j
.L3:
# eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	cmpl	$0, -28(%rbp)	#, j
	jns	.L5	#,
# eval/problem88//code.c:7:     for (int i = 0; i < lst_size; i++) {
	addl	$1, -32(%rbp)	#, i
.L2:
# eval/problem88//code.c:7:     for (int i = 0; i < lst_size; i++) {
	movl	-32(%rbp), %eax	# i, tmp125
	cmpl	-60(%rbp), %eax	# lst_size, tmp125
	jl	.L6	#,
# eval/problem88//code.c:17:     *return_size = count;
	movq	-80(%rbp), %rax	# return_size, tmp126
	movl	-36(%rbp), %edx	# count, tmp127
	movl	%edx, (%rax)	# tmp127, *return_size_40(D)
# eval/problem88//code.c:18:     return out;
	movq	-24(%rbp), %rax	# out, _42
# eval/problem88//code.c:19: }
	movq	-8(%rbp), %rbx	#,
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
