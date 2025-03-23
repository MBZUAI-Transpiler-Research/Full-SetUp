	.file	"problem9.c"
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
	movq	%rdi, -24(%rbp)	# numbers, numbers
	movl	%esi, -28(%rbp)	# size, size
	movq	%rdx, -40(%rbp)	# result, result
# problem9.c:4:     int sum = 0, product = 1;
	movl	$0, -12(%rbp)	#, sum
# problem9.c:4:     int sum = 0, product = 1;
	movl	$1, -8(%rbp)	#, product
# problem9.c:5:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem9.c:5:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L3:
# problem9.c:6:         sum += numbers[i];
	movl	-4(%rbp), %eax	# i, tmp91
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# numbers, tmp92
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# problem9.c:6:         sum += numbers[i];
	addl	%eax, -12(%rbp)	# _4, sum
# problem9.c:7:         product *= numbers[i];
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-24(%rbp), %rax	# numbers, tmp94
	addq	%rdx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem9.c:7:         product *= numbers[i];
	movl	-8(%rbp), %edx	# product, tmp96
	imull	%edx, %eax	# tmp96, tmp95
	movl	%eax, -8(%rbp)	# tmp95, product
# problem9.c:5:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# problem9.c:5:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-28(%rbp), %eax	# size, tmp97
	jl	.L3	#,
# problem9.c:9:     result[0] = sum;
	movq	-40(%rbp), %rax	# result, tmp98
	movl	-12(%rbp), %edx	# sum, tmp99
	movl	%edx, (%rax)	# tmp99, *result_18(D)
# problem9.c:10:     result[1] = product;
	movq	-40(%rbp), %rax	# result, tmp100
	leaq	4(%rax), %rdx	#, _9
# problem9.c:10:     result[1] = product;
	movl	-8(%rbp), %eax	# product, tmp101
	movl	%eax, (%rdx)	# tmp101, *_9
# problem9.c:11: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
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
# problem9.c:18:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem9.c:18:     for (int i = 0; i < size; i++) {
	jmp	.L5	#
.L8:
# problem9.c:19:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp93
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem9.c:19:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-32(%rbp), %rax	# b, tmp95
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem9.c:19:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L6	#,
# problem9.c:19:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
# problem9.c:19:         if (a[i] != b[i]) return 0;
	jmp	.L7	#
.L6:
# problem9.c:18:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L5:
# problem9.c:18:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp96
	cmpl	-36(%rbp), %eax	# size, tmp96
	jl	.L8	#,
# problem9.c:21:     return 1;
	movl	$1, %eax	#, _10
.L7:
# problem9.c:22: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem9.c"
	.align 8
.LC1:
	.string	"issame(result, (const int[]){0, 1}, 2)"
	.align 8
.LC2:
	.string	"issame(result, (const int[]){3, 1}, 2)"
	.align 8
.LC3:
	.string	"issame(result, (const int[]){100, 0}, 2)"
	.align 8
.LC4:
	.string	"issame(result, (const int[]){3 + 5 + 7, 3 * 5 * 7}, 2)"
	.align 8
.LC5:
	.string	"issame(result, (const int[]){10, 10}, 2)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
# problem9.c:24: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	movq	%rax, -8(%rbp)	# tmp125, D.3263
	xorl	%eax, %eax	# tmp125
# problem9.c:28:     func0((int[]){}, 0, result);
	leaq	-56(%rbp), %rdx	#, tmp89
	leaq	-64(%rbp), %rax	#, tmp90
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	func0	#
# problem9.c:29:     assert(issame(result, (const int[]){0, 1}, 2));
	movl	$0, -20(%rbp)	#, MEM[(int[2] *)_59][0]
	movl	$1, -16(%rbp)	#, MEM[(int[2] *)_59][1]
	leaq	-20(%rbp), %rcx	#, tmp91
	leaq	-56(%rbp), %rax	#, tmp92
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	issame	#
# problem9.c:29:     assert(issame(result, (const int[]){0, 1}, 2));
	testl	%eax, %eax	# _1
	jne	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp93
	movq	%rax, %rcx	# tmp93,
	movl	$29, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	leaq	.LC1(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	__assert_fail@PLT	#
.L10:
# problem9.c:32:     func0((int[]){1, 1, 1}, 3, result);
	movl	$1, -32(%rbp)	#, D.3224[0]
	movl	$1, -28(%rbp)	#, D.3224[1]
	movl	$1, -24(%rbp)	#, D.3224[2]
# problem9.c:32:     func0((int[]){1, 1, 1}, 3, result);
	leaq	-56(%rbp), %rdx	#, tmp96
	leaq	-32(%rbp), %rax	#, tmp97
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	func0	#
# problem9.c:33:     assert(issame(result, (const int[]){3, 1}, 2));
	movl	$3, -20(%rbp)	#, MEM[(int[2] *)_59][0]
	movl	$1, -16(%rbp)	#, MEM[(int[2] *)_59][1]
	leaq	-20(%rbp), %rcx	#, tmp98
	leaq	-56(%rbp), %rax	#, tmp99
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	issame	#
# problem9.c:33:     assert(issame(result, (const int[]){3, 1}, 2));
	testl	%eax, %eax	# _2
	jne	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$33, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC2(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L11:
# problem9.c:36:     func0((int[]){100, 0}, 2, result);
	movl	$100, -48(%rbp)	#, D.3227[0]
	movl	$0, -44(%rbp)	#, D.3227[1]
# problem9.c:36:     func0((int[]){100, 0}, 2, result);
	leaq	-56(%rbp), %rdx	#, tmp103
	leaq	-48(%rbp), %rax	#, tmp104
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	func0	#
# problem9.c:37:     assert(issame(result, (const int[]){100, 0}, 2));
	movl	$100, -20(%rbp)	#, MEM[(int[2] *)_59][0]
	movl	$0, -16(%rbp)	#, MEM[(int[2] *)_59][1]
	leaq	-20(%rbp), %rcx	#, tmp105
	leaq	-56(%rbp), %rax	#, tmp106
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	issame	#
# problem9.c:37:     assert(issame(result, (const int[]){100, 0}, 2));
	testl	%eax, %eax	# _3
	jne	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$37, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC3(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L12:
# problem9.c:40:     func0((int[]){3, 5, 7}, 3, result);
	movl	$3, -20(%rbp)	#, MEM[(int[3] *)_59][0]
	movl	$5, -16(%rbp)	#, MEM[(int[3] *)_59][1]
	movl	$7, -12(%rbp)	#, MEM[(int[3] *)_59][2]
# problem9.c:40:     func0((int[]){3, 5, 7}, 3, result);
	leaq	-56(%rbp), %rdx	#, tmp110
	leaq	-20(%rbp), %rax	#, tmp111
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	func0	#
# problem9.c:41:     assert(issame(result, (const int[]){3 + 5 + 7, 3 * 5 * 7}, 2));
	movl	$15, -40(%rbp)	#, MEM[(int[2] *)_60][0]
	movl	$105, -36(%rbp)	#, MEM[(int[2] *)_60][1]
	leaq	-40(%rbp), %rcx	#, tmp112
	leaq	-56(%rbp), %rax	#, tmp113
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp113,
	call	issame	#
# problem9.c:41:     assert(issame(result, (const int[]){3 + 5 + 7, 3 * 5 * 7}, 2));
	testl	%eax, %eax	# _4
	jne	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$41, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC4(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	__assert_fail@PLT	#
.L13:
# problem9.c:44:     func0((int[]){10}, 1, result);
	movl	$10, -60(%rbp)	#, D.3233[0]
# problem9.c:44:     func0((int[]){10}, 1, result);
	leaq	-56(%rbp), %rdx	#, tmp117
	leaq	-60(%rbp), %rax	#, tmp118
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp118,
	call	func0	#
# problem9.c:45:     assert(issame(result, (const int[]){10, 10}, 2));
	movl	$10, -40(%rbp)	#, MEM[(int[2] *)_60][0]
	movl	$10, -36(%rbp)	#, MEM[(int[2] *)_60][1]
	leaq	-40(%rbp), %rcx	#, tmp119
	leaq	-56(%rbp), %rax	#, tmp120
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp119,
	movq	%rax, %rdi	# tmp120,
	call	issame	#
# problem9.c:45:     assert(issame(result, (const int[]){10, 10}, 2));
	testl	%eax, %eax	# _5
	jne	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$45, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC5(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	__assert_fail@PLT	#
.L14:
# problem9.c:47:     return 0;
	movl	$0, %eax	#, _46
# problem9.c:48: }
	movq	-8(%rbp), %rdx	# D.3263, tmp126
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L16	#,
	call	__stack_chk_fail@PLT	#
.L16:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
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
