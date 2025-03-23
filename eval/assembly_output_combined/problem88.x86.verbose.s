	.file	"problem88.c"
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
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# lst, lst
	movl	%esi, -60(%rbp)	# lst_size, lst_size
	movq	%rdx, -72(%rbp)	# row_sizes, row_sizes
	movl	%ecx, -64(%rbp)	# x, x
	movq	%r8, -80(%rbp)	# return_size, return_size
# problem88.c:5:     int **out = (int **)malloc(100 * sizeof(int *));
	movl	$800, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -24(%rbp)	# tmp109, out
# problem88.c:6:     int count = 0;
	movl	$0, -36(%rbp)	#, count
# problem88.c:7:     for (int i = 0; i < lst_size; i++) {
	movl	$0, -32(%rbp)	#, i
# problem88.c:7:     for (int i = 0; i < lst_size; i++) {
	jmp	.L2	#
.L6:
# problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	movl	-32(%rbp), %eax	# i, tmp110
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-72(%rbp), %rax	# row_sizes, tmp111
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	subl	$1, %eax	#, tmp112
	movl	%eax, -28(%rbp)	# tmp112, j
# problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	jmp	.L3	#
.L5:
# problem88.c:9:             if (lst[i][j] == x) {
	movl	-32(%rbp), %eax	# i, tmp113
	cltq
	leaq	0(,%rax,8), %rdx	#, _6
	movq	-56(%rbp), %rax	# lst, tmp114
	addq	%rdx, %rax	# _6, _7
	movq	(%rax), %rdx	# *_7, _8
# problem88.c:9:             if (lst[i][j] == x) {
	movl	-28(%rbp), %eax	# j, tmp115
	cltq
	salq	$2, %rax	#, _10
	addq	%rdx, %rax	# _8, _11
	movl	(%rax), %eax	# *_11, _12
# problem88.c:9:             if (lst[i][j] == x) {
	cmpl	%eax, -64(%rbp)	# _12, x
	jne	.L4	#,
# problem88.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	movl	-36(%rbp), %eax	# count, tmp116
	cltq
	leaq	0(,%rax,8), %rdx	#, _14
	movq	-24(%rbp), %rax	# out, tmp117
	leaq	(%rdx,%rax), %rbx	#, _15
# problem88.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	movl	$8, %edi	#,
	call	malloc@PLT	#
# problem88.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	movq	%rax, (%rbx)	# _16, *_15
# problem88.c:11:                 out[count][0] = i;
	movl	-36(%rbp), %eax	# count, tmp119
	cltq
	leaq	0(,%rax,8), %rdx	#, _18
	movq	-24(%rbp), %rax	# out, tmp120
	addq	%rdx, %rax	# _18, _19
	movq	(%rax), %rax	# *_19, _20
# problem88.c:11:                 out[count][0] = i;
	movl	-32(%rbp), %edx	# i, tmp121
	movl	%edx, (%rax)	# tmp121, *_20
# problem88.c:12:                 out[count][1] = j;
	movl	-36(%rbp), %eax	# count, tmp122
	cltq
	leaq	0(,%rax,8), %rdx	#, _22
	movq	-24(%rbp), %rax	# out, tmp123
	addq	%rdx, %rax	# _22, _23
	movq	(%rax), %rax	# *_23, _24
# problem88.c:12:                 out[count][1] = j;
	leaq	4(%rax), %rdx	#, _25
# problem88.c:12:                 out[count][1] = j;
	movl	-28(%rbp), %eax	# j, tmp124
	movl	%eax, (%rdx)	# tmp124, *_25
# problem88.c:13:                 count++;
	addl	$1, -36(%rbp)	#, count
.L4:
# problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	subl	$1, -28(%rbp)	#, j
.L3:
# problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	cmpl	$0, -28(%rbp)	#, j
	jns	.L5	#,
# problem88.c:7:     for (int i = 0; i < lst_size; i++) {
	addl	$1, -32(%rbp)	#, i
.L2:
# problem88.c:7:     for (int i = 0; i < lst_size; i++) {
	movl	-32(%rbp), %eax	# i, tmp125
	cmpl	-60(%rbp), %eax	# lst_size, tmp125
	jl	.L6	#,
# problem88.c:17:     *return_size = count;
	movq	-80(%rbp), %rax	# return_size, tmp126
	movl	-36(%rbp), %edx	# count, tmp127
	movl	%edx, (%rax)	# tmp127, *return_size_40(D)
# problem88.c:18:     return out;
	movq	-24(%rbp), %rax	# out, _42
# problem88.c:19: }
	movq	-8(%rbp), %rbx	#,
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
	movl	%esi, -28(%rbp)	# aSize, aSize
	movq	%rdx, -40(%rbp)	# b, b
	movl	%ecx, -32(%rbp)	# bSize, bSize
# problem88.c:28:     if (aSize != bSize) return 0;
	movl	-28(%rbp), %eax	# aSize, tmp106
	cmpl	-32(%rbp), %eax	# bSize, tmp106
	je	.L9	#,
# problem88.c:28:     if (aSize != bSize) return 0;
	movl	$0, %eax	#, _24
	jmp	.L10	#
.L9:
# problem88.c:30:     for (int i = 0; i < aSize; i++) {
	movl	$0, -4(%rbp)	#, i
# problem88.c:30:     for (int i = 0; i < aSize; i++) {
	jmp	.L11	#
.L14:
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	movl	-4(%rbp), %eax	# i, tmp107
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp108
	addq	%rdx, %rax	# _2, _3
	movq	(%rax), %rax	# *_3, _4
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	movl	(%rax), %edx	# *_4, _5
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	movl	-4(%rbp), %eax	# i, tmp109
	cltq
	leaq	0(,%rax,8), %rcx	#, _7
	movq	-40(%rbp), %rax	# b, tmp110
	addq	%rcx, %rax	# _7, _8
	movq	(%rax), %rax	# *_8, _9
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	movl	(%rax), %eax	# *_9, _10
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	cmpl	%eax, %edx	# _10, _5
	jne	.L12	#,
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	movl	-4(%rbp), %eax	# i, tmp111
	cltq
	leaq	0(,%rax,8), %rdx	#, _12
	movq	-24(%rbp), %rax	# a, tmp112
	addq	%rdx, %rax	# _12, _13
	movq	(%rax), %rax	# *_13, _14
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	addq	$4, %rax	#, _15
	movl	(%rax), %edx	# *_15, _16
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	movl	-4(%rbp), %eax	# i, tmp113
	cltq
	leaq	0(,%rax,8), %rcx	#, _18
	movq	-40(%rbp), %rax	# b, tmp114
	addq	%rcx, %rax	# _18, _19
	movq	(%rax), %rax	# *_19, _20
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	addq	$4, %rax	#, _21
	movl	(%rax), %eax	# *_21, _22
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	cmpl	%eax, %edx	# _22, _16
	je	.L13	#,
.L12:
# problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	movl	$0, %eax	#, _24
	jmp	.L10	#
.L13:
# problem88.c:30:     for (int i = 0; i < aSize; i++) {
	addl	$1, -4(%rbp)	#, i
.L11:
# problem88.c:30:     for (int i = 0; i < aSize; i++) {
	movl	-4(%rbp), %eax	# i, tmp115
	cmpl	-28(%rbp), %eax	# aSize, tmp115
	jl	.L14	#,
# problem88.c:33:     return 1;
	movl	$1, %eax	#, _24
.L10:
# problem88.c:34: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.globl	free_result
	.type	free_result, @function
free_result:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# result, result
	movl	%esi, -28(%rbp)	# size, size
# problem88.c:37:     for (int i = 0; i < size; ++i) {
	movl	$0, -4(%rbp)	#, i
# problem88.c:37:     for (int i = 0; i < size; ++i) {
	jmp	.L16	#
.L17:
# problem88.c:38:         free(result[i]);
	movl	-4(%rbp), %eax	# i, tmp86
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-24(%rbp), %rax	# result, tmp87
	addq	%rdx, %rax	# _2, _3
# problem88.c:38:         free(result[i]);
	movq	(%rax), %rax	# *_3, _4
	movq	%rax, %rdi	# _4,
	call	free@PLT	#
# problem88.c:37:     for (int i = 0; i < size; ++i) {
	addl	$1, -4(%rbp)	#, i
.L16:
# problem88.c:37:     for (int i = 0; i < size; ++i) {
	movl	-4(%rbp), %eax	# i, tmp88
	cmpl	-28(%rbp), %eax	# size, tmp88
	jl	.L17	#,
# problem88.c:40:     free(result);
	movq	-24(%rbp), %rax	# result, tmp89
	movq	%rax, %rdi	# tmp89,
	call	free@PLT	#
# problem88.c:41: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	free_result, .-free_result
	.section	.rodata
.LC0:
	.string	"problem88.c"
	.align 8
.LC1:
	.string	"issame(result, returnSize, expected1, 5)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$256, %rsp	#,
# problem88.c:43: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp107
	movq	%rax, -8(%rbp)	# tmp107, D.2966
	xorl	%eax, %eax	# tmp107
# problem88.c:48:     rows = 3;
	movl	$3, -244(%rbp)	#, rows
# problem88.c:49:     int cols1[] = {6, 6, 6};
	movl	$6, -188(%rbp)	#, cols1[0]
	movl	$6, -184(%rbp)	#, cols1[1]
	movl	$6, -180(%rbp)	#, cols1[2]
# problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	movl	$1, -144(%rbp)	#, D.2934[0]
	movl	$2, -140(%rbp)	#, D.2934[1]
	movl	$3, -136(%rbp)	#, D.2934[2]
	movl	$4, -132(%rbp)	#, D.2934[3]
	movl	$5, -128(%rbp)	#, D.2934[4]
	movl	$6, -124(%rbp)	#, D.2934[5]
# problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	leaq	-144(%rbp), %rax	#, tmp87
	movq	%rax, -176(%rbp)	# tmp87, lst1[0]
# problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	movl	$1, -112(%rbp)	#, D.2935[0]
	movl	$2, -108(%rbp)	#, D.2935[1]
	movl	$3, -104(%rbp)	#, D.2935[2]
	movl	$4, -100(%rbp)	#, D.2935[3]
	movl	$1, -96(%rbp)	#, D.2935[4]
	movl	$6, -92(%rbp)	#, D.2935[5]
# problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	leaq	-112(%rbp), %rax	#, tmp88
	movq	%rax, -168(%rbp)	# tmp88, lst1[1]
# problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	movl	$1, -80(%rbp)	#, D.2936[0]
	movl	$2, -76(%rbp)	#, D.2936[1]
	movl	$3, -72(%rbp)	#, D.2936[2]
	movl	$4, -68(%rbp)	#, D.2936[3]
	movl	$5, -64(%rbp)	#, D.2936[4]
	movl	$1, -60(%rbp)	#, D.2936[5]
# problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	leaq	-80(%rbp), %rax	#, tmp89
	movq	%rax, -160(%rbp)	# tmp89, lst1[2]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	movl	$0, -228(%rbp)	#, D.2938[0]
	movl	$0, -224(%rbp)	#, D.2938[1]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	leaq	-228(%rbp), %rax	#, tmp90
	movq	%rax, -48(%rbp)	# tmp90, expected1[0]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	movl	$1, -220(%rbp)	#, D.2939[0]
	movl	$4, -216(%rbp)	#, D.2939[1]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	leaq	-220(%rbp), %rax	#, tmp91
	movq	%rax, -40(%rbp)	# tmp91, expected1[1]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	movl	$1, -212(%rbp)	#, D.2940[0]
	movl	$0, -208(%rbp)	#, D.2940[1]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	leaq	-212(%rbp), %rax	#, tmp92
	movq	%rax, -32(%rbp)	# tmp92, expected1[2]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	movl	$2, -204(%rbp)	#, D.2941[0]
	movl	$5, -200(%rbp)	#, D.2941[1]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	leaq	-204(%rbp), %rax	#, tmp93
	movq	%rax, -24(%rbp)	# tmp93, expected1[3]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	movl	$2, -196(%rbp)	#, D.2942[0]
	movl	$0, -192(%rbp)	#, D.2942[1]
# problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	leaq	-196(%rbp), %rax	#, tmp94
	movq	%rax, -16(%rbp)	# tmp94, expected1[4]
# problem88.c:52:     result = func0(lst1, rows, cols1, 1, &returnSize);
	leaq	-248(%rbp), %rcx	#, tmp95
	leaq	-188(%rbp), %rdx	#, tmp96
	movl	-244(%rbp), %esi	# rows, tmp97
	leaq	-176(%rbp), %rax	#, tmp98
	movq	%rcx, %r8	# tmp95,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp98,
	call	func0	#
	movq	%rax, -240(%rbp)	# tmp99, result
# problem88.c:53:     assert(issame(result, returnSize, expected1, 5));
	movl	-248(%rbp), %esi	# returnSize, returnSize.0_1
	leaq	-48(%rbp), %rdx	#, tmp100
	movq	-240(%rbp), %rax	# result, tmp101
	movl	$5, %ecx	#,
	movq	%rax, %rdi	# tmp101,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L19	#,
# problem88.c:53:     assert(issame(result, returnSize, expected1, 5));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$53, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC1(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	__assert_fail@PLT	#
.L19:
# problem88.c:54:     free_result(result, returnSize);
	movl	-248(%rbp), %edx	# returnSize, returnSize.1_3
	movq	-240(%rbp), %rax	# result, tmp105
	movl	%edx, %esi	# returnSize.1_3,
	movq	%rax, %rdi	# tmp105,
	call	free_result	#
# problem88.c:56:     return 0;
	movl	$0, %eax	#, _50
# problem88.c:57: }
	movq	-8(%rbp), %rdx	# D.2966, tmp108
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp108
	je	.L21	#,
	call	__stack_chk_fail@PLT	#
.L21:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
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
