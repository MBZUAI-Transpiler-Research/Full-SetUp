	.file	"problem6.c"
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
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# numbers, numbers
	movl	%esi, -28(%rbp)	# size, size
	movl	%edx, -32(%rbp)	# delimiter, delimiter
	movq	%rcx, -40(%rbp)	# out_size, out_size
# problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	cmpl	$0, -28(%rbp)	#, size
	jle	.L2	#,
# problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	movl	-28(%rbp), %eax	# size, tmp102
	addl	%eax, %eax	# _1
# problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	leal	-1(%rax), %edx	#, iftmp.0_20
	jmp	.L3	#
.L2:
# problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	movl	$0, %edx	#, iftmp.0_20
.L3:
# problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	movq	-40(%rbp), %rax	# out_size, tmp103
	movl	%edx, (%rax)	# iftmp.0_20, *out_size_27(D)
# problem6.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	movq	-40(%rbp), %rax	# out_size, tmp104
	movl	(%rax), %eax	# *out_size_27(D), _2
	cltq
# problem6.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	salq	$2, %rax	#, _4
	movq	%rax, %rdi	# _4,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp105, out
# problem6.c:7:     if (size > 0) out[0] = numbers[0];
	cmpl	$0, -28(%rbp)	#, size
	jle	.L4	#,
# problem6.c:7:     if (size > 0) out[0] = numbers[0];
	movq	-24(%rbp), %rax	# numbers, tmp106
	movl	(%rax), %edx	# *numbers_31(D), _5
# problem6.c:7:     if (size > 0) out[0] = numbers[0];
	movq	-8(%rbp), %rax	# out, tmp107
	movl	%edx, (%rax)	# _5, *out_30
.L4:
# problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	movl	$1, -16(%rbp)	#, i
# problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	movl	$1, -12(%rbp)	#, j
# problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	jmp	.L5	#
.L6:
# problem6.c:9:         out[j++] = delimiter;
	movl	-12(%rbp), %eax	# j, j.1_6
	leal	1(%rax), %edx	#, tmp108
	movl	%edx, -12(%rbp)	# tmp108, j
	cltq
# problem6.c:9:         out[j++] = delimiter;
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-8(%rbp), %rax	# out, tmp109
	addq	%rax, %rdx	# tmp109, _9
# problem6.c:9:         out[j++] = delimiter;
	movl	-32(%rbp), %eax	# delimiter, tmp110
	movl	%eax, (%rdx)	# tmp110, *_9
# problem6.c:10:         out[j++] = numbers[i];
	movl	-16(%rbp), %eax	# i, tmp111
	cltq
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-24(%rbp), %rax	# numbers, tmp112
	leaq	(%rdx,%rax), %rcx	#, _12
# problem6.c:10:         out[j++] = numbers[i];
	movl	-12(%rbp), %eax	# j, j.2_13
	leal	1(%rax), %edx	#, tmp113
	movl	%edx, -12(%rbp)	# tmp113, j
	cltq
# problem6.c:10:         out[j++] = numbers[i];
	leaq	0(,%rax,4), %rdx	#, _15
	movq	-8(%rbp), %rax	# out, tmp114
	addq	%rax, %rdx	# tmp114, _16
# problem6.c:10:         out[j++] = numbers[i];
	movl	(%rcx), %eax	# *_12, _17
# problem6.c:10:         out[j++] = numbers[i];
	movl	%eax, (%rdx)	# _17, *_16
# problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	addl	$1, -16(%rbp)	#, i
.L5:
# problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	movl	-16(%rbp), %eax	# i, tmp115
	cmpl	-28(%rbp), %eax	# size, tmp115
	jl	.L6	#,
# problem6.c:12:     return out;
	movq	-8(%rbp), %rax	# out, _35
# problem6.c:13: }
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
	movl	%edx, -36(%rbp)	# size_a, size_a
	movl	%ecx, -40(%rbp)	# size_b, size_b
# problem6.c:22:     if (size_a != size_b) return 0;
	movl	-36(%rbp), %eax	# size_a, tmp92
	cmpl	-40(%rbp), %eax	# size_b, tmp92
	je	.L9	#,
# problem6.c:22:     if (size_a != size_b) return 0;
	movl	$0, %eax	#, _10
# problem6.c:22:     if (size_a != size_b) return 0;
	jmp	.L10	#
.L9:
# problem6.c:23:     for (int i = 0; i < size_a; i++) {
	movl	$0, -4(%rbp)	#, i
# problem6.c:23:     for (int i = 0; i < size_a; i++) {
	jmp	.L11	#
.L13:
# problem6.c:24:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem6.c:24:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-32(%rbp), %rax	# b, tmp96
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem6.c:24:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L12	#,
# problem6.c:24:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
# problem6.c:24:         if (a[i] != b[i]) return 0;
	jmp	.L10	#
.L12:
# problem6.c:23:     for (int i = 0; i < size_a; i++) {
	addl	$1, -4(%rbp)	#, i
.L11:
# problem6.c:23:     for (int i = 0; i < size_a; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-36(%rbp), %eax	# size_a, tmp97
	jl	.L13	#,
# problem6.c:26:     return 1;
	movl	$1, %eax	#, _10
.L10:
# problem6.c:27: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem6.c"
	.align 8
.LC1:
	.string	"issame(result_empty, (const int[]){}, out_size, 0)"
	.align 8
.LC2:
	.string	"issame(result1, result_expected1, out_size, 7)"
	.align 8
.LC3:
	.string	"issame(result2, result_expected2, out_size, 5)"
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
	subq	$144, %rsp	#,
# problem6.c:29: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp118
	movq	%rax, -8(%rbp)	# tmp118, D.4003
	xorl	%eax, %eax	# tmp118
# problem6.c:33:     int *result_empty = func0((const int[]){}, 0, 7, &out_size);
	leaq	-140(%rbp), %rdx	#, tmp90
	leaq	-112(%rbp), %rax	#, tmp91
	movq	%rdx, %rcx	# tmp90,
	movl	$7, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	func0	#
	movq	%rax, -136(%rbp)	# tmp92, result_empty
# problem6.c:34:     assert(issame(result_empty, (const int[]){}, out_size, 0));
	movl	-140(%rbp), %edx	# out_size, out_size.3_1
	leaq	-48(%rbp), %rsi	#, tmp93
	movq	-136(%rbp), %rax	# result_empty, tmp94
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp94,
	call	issame	#
# problem6.c:34:     assert(issame(result_empty, (const int[]){}, out_size, 0));
	testl	%eax, %eax	# _2
	jne	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$34, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC1(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L15:
# problem6.c:35:     free(result_empty);
	movq	-136(%rbp), %rax	# result_empty, tmp98
	movq	%rax, %rdi	# tmp98,
	call	free@PLT	#
# problem6.c:38:     int result_expected1[] = {5, 8, 6, 8, 3, 8, 2};
	movl	$5, -48(%rbp)	#, MEM[(int[7] *)_52][0]
	movl	$8, -44(%rbp)	#, MEM[(int[7] *)_52][1]
	movl	$6, -40(%rbp)	#, MEM[(int[7] *)_52][2]
	movl	$8, -36(%rbp)	#, MEM[(int[7] *)_52][3]
	movl	$3, -32(%rbp)	#, MEM[(int[7] *)_52][4]
	movl	$8, -28(%rbp)	#, MEM[(int[7] *)_52][5]
	movl	$2, -24(%rbp)	#, MEM[(int[7] *)_52][6]
# problem6.c:39:     int *result1 = func0((const int[]){5, 6, 3, 2}, 4, 8, &out_size);
	movl	$5, -96(%rbp)	#, D.3968[0]
	movl	$6, -92(%rbp)	#, D.3968[1]
	movl	$3, -88(%rbp)	#, D.3968[2]
	movl	$2, -84(%rbp)	#, D.3968[3]
# problem6.c:39:     int *result1 = func0((const int[]){5, 6, 3, 2}, 4, 8, &out_size);
	leaq	-140(%rbp), %rdx	#, tmp99
	leaq	-96(%rbp), %rax	#, tmp100
	movq	%rdx, %rcx	# tmp99,
	movl	$8, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	func0	#
	movq	%rax, -128(%rbp)	# tmp101, result1
# problem6.c:40:     assert(issame(result1, result_expected1, out_size, 7));
	movl	-140(%rbp), %edx	# out_size, out_size.4_3
	leaq	-48(%rbp), %rsi	#, tmp102
	movq	-128(%rbp), %rax	# result1, tmp103
	movl	$7, %ecx	#,
	movq	%rax, %rdi	# tmp103,
	call	issame	#
# problem6.c:40:     assert(issame(result1, result_expected1, out_size, 7));
	testl	%eax, %eax	# _4
	jne	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$40, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC2(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L16:
# problem6.c:41:     free(result1);
	movq	-128(%rbp), %rax	# result1, tmp107
	movq	%rax, %rdi	# tmp107,
	call	free@PLT	#
# problem6.c:44:     int result_expected2[] = {2, 2, 2, 2, 2};
	movl	$2, -80(%rbp)	#, result_expected2[0]
	movl	$2, -76(%rbp)	#, result_expected2[1]
	movl	$2, -72(%rbp)	#, result_expected2[2]
	movl	$2, -68(%rbp)	#, result_expected2[3]
	movl	$2, -64(%rbp)	#, result_expected2[4]
# problem6.c:45:     int *result2 = func0((const int[]){2, 2, 2}, 3, 2, &out_size);
	movl	$2, -108(%rbp)	#, D.3971[0]
	movl	$2, -104(%rbp)	#, D.3971[1]
	movl	$2, -100(%rbp)	#, D.3971[2]
# problem6.c:45:     int *result2 = func0((const int[]){2, 2, 2}, 3, 2, &out_size);
	leaq	-140(%rbp), %rdx	#, tmp108
	leaq	-108(%rbp), %rax	#, tmp109
	movq	%rdx, %rcx	# tmp108,
	movl	$2, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	func0	#
	movq	%rax, -120(%rbp)	# tmp110, result2
# problem6.c:46:     assert(issame(result2, result_expected2, out_size, 5));
	movl	-140(%rbp), %edx	# out_size, out_size.5_5
	leaq	-80(%rbp), %rsi	#, tmp111
	movq	-120(%rbp), %rax	# result2, tmp112
	movl	$5, %ecx	#,
	movq	%rax, %rdi	# tmp112,
	call	issame	#
# problem6.c:46:     assert(issame(result2, result_expected2, out_size, 5));
	testl	%eax, %eax	# _6
	jne	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$46, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC3(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L17:
# problem6.c:47:     free(result2);
	movq	-120(%rbp), %rax	# result2, tmp116
	movq	%rax, %rdi	# tmp116,
	call	free@PLT	#
# problem6.c:49:     return 0;
	movl	$0, %eax	#, _43
# problem6.c:50: }
	movq	-8(%rbp), %rdx	# D.4003, tmp119
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp119
	je	.L19	#,
	call	__stack_chk_fail@PLT	#
.L19:
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
