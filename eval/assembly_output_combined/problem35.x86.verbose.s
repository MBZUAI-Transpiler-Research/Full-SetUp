	.file	"problem35.c"
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
# problem35.c:5:     int *out = malloc(size * sizeof(int));
	movl	-44(%rbp), %eax	# size, tmp124
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp125, out
# problem35.c:6:     int found, out_count = 0, i, j;
	movl	$0, -24(%rbp)	#, out_count
# problem35.c:7:     for (i = 0; i < size; i++) {
	movl	$0, -20(%rbp)	#, i
# problem35.c:7:     for (i = 0; i < size; i++) {
	jmp	.L2	#
.L8:
# problem35.c:8:         found = 0;
	movl	$0, -28(%rbp)	#, found
# problem35.c:9:         for (j = 0; j < out_count; j++) {
	movl	$0, -16(%rbp)	#, j
# problem35.c:9:         for (j = 0; j < out_count; j++) {
	jmp	.L3	#
.L6:
# problem35.c:10:             if (l[i] == out[j]) {
	movl	-20(%rbp), %eax	# i, tmp126
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-40(%rbp), %rax	# l, tmp127
	addq	%rdx, %rax	# _4, _5
	movl	(%rax), %edx	# *_5, _6
# problem35.c:10:             if (l[i] == out[j]) {
	movl	-16(%rbp), %eax	# j, tmp128
	cltq
	leaq	0(,%rax,4), %rcx	#, _8
	movq	-8(%rbp), %rax	# out, tmp129
	addq	%rcx, %rax	# _8, _9
	movl	(%rax), %eax	# *_9, _10
# problem35.c:10:             if (l[i] == out[j]) {
	cmpl	%eax, %edx	# _10, _6
	jne	.L4	#,
# problem35.c:11:                 found = 1;
	movl	$1, -28(%rbp)	#, found
# problem35.c:12:                 break;
	jmp	.L5	#
.L4:
# problem35.c:9:         for (j = 0; j < out_count; j++) {
	addl	$1, -16(%rbp)	#, j
.L3:
# problem35.c:9:         for (j = 0; j < out_count; j++) {
	movl	-16(%rbp), %eax	# j, tmp130
	cmpl	-24(%rbp), %eax	# out_count, tmp130
	jl	.L6	#,
.L5:
# problem35.c:15:         if (!found) {
	cmpl	$0, -28(%rbp)	#, found
	jne	.L7	#,
# problem35.c:16:             out[out_count++] = l[i];
	movl	-20(%rbp), %eax	# i, tmp131
	cltq
	leaq	0(,%rax,4), %rdx	#, _12
	movq	-40(%rbp), %rax	# l, tmp132
	leaq	(%rdx,%rax), %rcx	#, _13
# problem35.c:16:             out[out_count++] = l[i];
	movl	-24(%rbp), %eax	# out_count, out_count.0_14
	leal	1(%rax), %edx	#, tmp133
	movl	%edx, -24(%rbp)	# tmp133, out_count
	cltq
# problem35.c:16:             out[out_count++] = l[i];
	leaq	0(,%rax,4), %rdx	#, _16
	movq	-8(%rbp), %rax	# out, tmp134
	addq	%rax, %rdx	# tmp134, _17
# problem35.c:16:             out[out_count++] = l[i];
	movl	(%rcx), %eax	# *_13, _18
# problem35.c:16:             out[out_count++] = l[i];
	movl	%eax, (%rdx)	# _18, *_17
.L7:
# problem35.c:7:     for (i = 0; i < size; i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# problem35.c:7:     for (i = 0; i < size; i++) {
	movl	-20(%rbp), %eax	# i, tmp135
	cmpl	-44(%rbp), %eax	# size, tmp135
	jl	.L8	#,
# problem35.c:20:     for (i = 0; i < out_count - 1; i++) {
	movl	$0, -20(%rbp)	#, i
# problem35.c:20:     for (i = 0; i < out_count - 1; i++) {
	jmp	.L9	#
.L13:
# problem35.c:21:         for (j = i + 1; j < out_count; j++) {
	movl	-20(%rbp), %eax	# i, tmp139
	addl	$1, %eax	#, tmp138
	movl	%eax, -16(%rbp)	# tmp138, j
# problem35.c:21:         for (j = i + 1; j < out_count; j++) {
	jmp	.L10	#
.L12:
# problem35.c:22:             if (out[i] > out[j]) {
	movl	-20(%rbp), %eax	# i, tmp140
	cltq
	leaq	0(,%rax,4), %rdx	#, _20
	movq	-8(%rbp), %rax	# out, tmp141
	addq	%rdx, %rax	# _20, _21
	movl	(%rax), %edx	# *_21, _22
# problem35.c:22:             if (out[i] > out[j]) {
	movl	-16(%rbp), %eax	# j, tmp142
	cltq
	leaq	0(,%rax,4), %rcx	#, _24
	movq	-8(%rbp), %rax	# out, tmp143
	addq	%rcx, %rax	# _24, _25
	movl	(%rax), %eax	# *_25, _26
# problem35.c:22:             if (out[i] > out[j]) {
	cmpl	%eax, %edx	# _26, _22
	jle	.L11	#,
# problem35.c:23:                 int temp = out[i];
	movl	-20(%rbp), %eax	# i, tmp144
	cltq
	leaq	0(,%rax,4), %rdx	#, _28
	movq	-8(%rbp), %rax	# out, tmp145
	addq	%rdx, %rax	# _28, _29
# problem35.c:23:                 int temp = out[i];
	movl	(%rax), %eax	# *_29, tmp146
	movl	%eax, -12(%rbp)	# tmp146, temp
# problem35.c:24:                 out[i] = out[j];
	movl	-16(%rbp), %eax	# j, tmp147
	cltq
	leaq	0(,%rax,4), %rdx	#, _31
	movq	-8(%rbp), %rax	# out, tmp148
	addq	%rdx, %rax	# _31, _32
# problem35.c:24:                 out[i] = out[j];
	movl	-20(%rbp), %edx	# i, tmp149
	movslq	%edx, %rdx	# tmp149, _33
	leaq	0(,%rdx,4), %rcx	#, _34
	movq	-8(%rbp), %rdx	# out, tmp150
	addq	%rcx, %rdx	# _34, _35
# problem35.c:24:                 out[i] = out[j];
	movl	(%rax), %eax	# *_32, _36
# problem35.c:24:                 out[i] = out[j];
	movl	%eax, (%rdx)	# _36, *_35
# problem35.c:25:                 out[j] = temp;
	movl	-16(%rbp), %eax	# j, tmp151
	cltq
	leaq	0(,%rax,4), %rdx	#, _38
	movq	-8(%rbp), %rax	# out, tmp152
	addq	%rax, %rdx	# tmp152, _39
# problem35.c:25:                 out[j] = temp;
	movl	-12(%rbp), %eax	# temp, tmp153
	movl	%eax, (%rdx)	# tmp153, *_39
.L11:
# problem35.c:21:         for (j = i + 1; j < out_count; j++) {
	addl	$1, -16(%rbp)	#, j
.L10:
# problem35.c:21:         for (j = i + 1; j < out_count; j++) {
	movl	-16(%rbp), %eax	# j, tmp154
	cmpl	-24(%rbp), %eax	# out_count, tmp154
	jl	.L12	#,
# problem35.c:20:     for (i = 0; i < out_count - 1; i++) {
	addl	$1, -20(%rbp)	#, i
.L9:
# problem35.c:20:     for (i = 0; i < out_count - 1; i++) {
	movl	-24(%rbp), %eax	# out_count, tmp155
	subl	$1, %eax	#, _40
# problem35.c:20:     for (i = 0; i < out_count - 1; i++) {
	cmpl	%eax, -20(%rbp)	# _40, i
	jl	.L13	#,
# problem35.c:30:     *out_size = out_count;
	movq	-56(%rbp), %rax	# out_size, tmp156
	movl	-24(%rbp), %edx	# out_count, tmp157
	movl	%edx, (%rax)	# tmp157, *out_size_60(D)
# problem35.c:31:     return out;
	movq	-8(%rbp), %rax	# out, _62
# problem35.c:32: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem35.c"
	.align 8
.LC1:
	.string	"unique_size == sizeof(expected_array) / sizeof(expected_array[0])"
	.align 8
.LC2:
	.string	"unique_array[i] == expected_array[i]"
.LC3:
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
	subq	$96, %rsp	#,
# problem35.c:40: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp107
	movq	%rax, -8(%rbp)	# tmp107, D.3780
	xorl	%eax, %eax	# tmp107
# problem35.c:41:     int test_array[] = {5, 3, 5, 2, 3, 3, 9, 0, 123};
	movl	$5, -48(%rbp)	#, test_array[0]
	movl	$3, -44(%rbp)	#, test_array[1]
	movl	$5, -40(%rbp)	#, test_array[2]
	movl	$2, -36(%rbp)	#, test_array[3]
	movl	$3, -32(%rbp)	#, test_array[4]
	movl	$3, -28(%rbp)	#, test_array[5]
	movl	$9, -24(%rbp)	#, test_array[6]
	movl	$0, -20(%rbp)	#, test_array[7]
	movl	$123, -16(%rbp)	#, test_array[8]
# problem35.c:42:     int expected_array[] = {0, 2, 3, 5, 9, 123};
	movl	$0, -80(%rbp)	#, expected_array[0]
	movl	$2, -76(%rbp)	#, expected_array[1]
	movl	$3, -72(%rbp)	#, expected_array[2]
	movl	$5, -68(%rbp)	#, expected_array[3]
	movl	$9, -64(%rbp)	#, expected_array[4]
	movl	$123, -60(%rbp)	#, expected_array[5]
# problem35.c:44:     int *unique_array = func0(test_array, sizeof(test_array) / sizeof(test_array[0]), &unique_size);
	leaq	-96(%rbp), %rdx	#, tmp91
	leaq	-48(%rbp), %rax	#, tmp92
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	func0	#
	movq	%rax, -88(%rbp)	# tmp93, unique_array
# problem35.c:46:     assert(unique_size == sizeof(expected_array) / sizeof(expected_array[0]));
	movl	-96(%rbp), %eax	# unique_size, unique_size.1_1
	cmpl	$6, %eax	#, unique_size.1_1
	je	.L16	#,
# problem35.c:46:     assert(unique_size == sizeof(expected_array) / sizeof(expected_array[0]));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp94
	movq	%rax, %rcx	# tmp94,
	movl	$46, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC1(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__assert_fail@PLT	#
.L16:
# problem35.c:47:     for (int i = 0; i < unique_size; i++) {
	movl	$0, -92(%rbp)	#, i
# problem35.c:47:     for (int i = 0; i < unique_size; i++) {
	jmp	.L17	#
.L19:
# problem35.c:48:         assert(unique_array[i] == expected_array[i]);
	movl	-92(%rbp), %eax	# i, tmp97
	cltq
	leaq	0(,%rax,4), %rdx	#, _3
	movq	-88(%rbp), %rax	# unique_array, tmp98
	addq	%rdx, %rax	# _3, _4
	movl	(%rax), %edx	# *_4, _5
	movl	-92(%rbp), %eax	# i, tmp100
	cltq
	movl	-80(%rbp,%rax,4), %eax	# expected_array[i_8], _6
	cmpl	%eax, %edx	# _6, _5
	je	.L18	#,
# problem35.c:48:         assert(unique_array[i] == expected_array[i]);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$48, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC2(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L18:
# problem35.c:47:     for (int i = 0; i < unique_size; i++) {
	addl	$1, -92(%rbp)	#, i
.L17:
# problem35.c:47:     for (int i = 0; i < unique_size; i++) {
	movl	-96(%rbp), %eax	# unique_size, unique_size.2_7
	cmpl	%eax, -92(%rbp)	# unique_size.2_7, i
	jl	.L19	#,
# problem35.c:51:     free(unique_array);
	movq	-88(%rbp), %rax	# unique_array, tmp104
	movq	%rax, %rdi	# tmp104,
	call	free@PLT	#
# problem35.c:52:     printf("All tests passed!\n");
	leaq	.LC3(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	puts@PLT	#
# problem35.c:54:     return 0;
	movl	$0, %eax	#, _31
# problem35.c:55: }
	movq	-8(%rbp), %rdx	# D.3780, tmp108
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp108
	je	.L21	#,
	call	__stack_chk_fail@PLT	#
.L21:
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
