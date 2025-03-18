	.file	"problem10.c"
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
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# numbers, numbers
	movl	%esi, -28(%rbp)	# size, size
# problem10.c:5:     if (size <= 0) {
	cmpl	$0, -28(%rbp)	#, size
	jg	.L2	#,
# problem10.c:6:         return NULL;
	movl	$0, %eax	#, _16
	jmp	.L3	#
.L2:
# problem10.c:9:     int *out = malloc(size * sizeof(int));
	movl	-28(%rbp), %eax	# size, tmp96
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp97, out
# problem10.c:10:     if (!out) {
	cmpq	$0, -8(%rbp)	#, out
	jne	.L4	#,
# problem10.c:11:         return NULL;
	movl	$0, %eax	#, _16
	jmp	.L3	#
.L4:
# problem10.c:14:     int max = numbers[0];
	movq	-24(%rbp), %rax	# numbers, tmp98
	movl	(%rax), %eax	# *numbers_23(D), tmp99
	movl	%eax, -16(%rbp)	# tmp99, max
# problem10.c:15:     for (int i = 0; i < size; i++) {
	movl	$0, -12(%rbp)	#, i
# problem10.c:15:     for (int i = 0; i < size; i++) {
	jmp	.L5	#
.L7:
# problem10.c:16:         if (numbers[i] > max) max = numbers[i];
	movl	-12(%rbp), %eax	# i, tmp100
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-24(%rbp), %rax	# numbers, tmp101
	addq	%rdx, %rax	# _4, _5
	movl	(%rax), %eax	# *_5, _6
# problem10.c:16:         if (numbers[i] > max) max = numbers[i];
	cmpl	%eax, -16(%rbp)	# _6, max
	jge	.L6	#,
# problem10.c:16:         if (numbers[i] > max) max = numbers[i];
	movl	-12(%rbp), %eax	# i, tmp102
	cltq
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-24(%rbp), %rax	# numbers, tmp103
	addq	%rdx, %rax	# _8, _9
# problem10.c:16:         if (numbers[i] > max) max = numbers[i];
	movl	(%rax), %eax	# *_9, tmp104
	movl	%eax, -16(%rbp)	# tmp104, max
.L6:
# problem10.c:17:         out[i] = max;
	movl	-12(%rbp), %eax	# i, tmp105
	cltq
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-8(%rbp), %rax	# out, tmp106
	addq	%rax, %rdx	# tmp106, _12
# problem10.c:17:         out[i] = max;
	movl	-16(%rbp), %eax	# max, tmp107
	movl	%eax, (%rdx)	# tmp107, *_12
# problem10.c:15:     for (int i = 0; i < size; i++) {
	addl	$1, -12(%rbp)	#, i
.L5:
# problem10.c:15:     for (int i = 0; i < size; i++) {
	movl	-12(%rbp), %eax	# i, tmp108
	cmpl	-28(%rbp), %eax	# size, tmp108
	jl	.L7	#,
# problem10.c:19:     return out;
	movq	-8(%rbp), %rax	# out, _16
.L3:
# problem10.c:20: }
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
# problem10.c:29:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem10.c:29:     for (int i = 0; i < size; i++) {
	jmp	.L9	#
.L12:
# problem10.c:30:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp93
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem10.c:30:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-32(%rbp), %rax	# b, tmp95
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem10.c:30:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L10	#,
# problem10.c:30:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
# problem10.c:30:         if (a[i] != b[i]) return 0;
	jmp	.L11	#
.L10:
# problem10.c:29:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L9:
# problem10.c:29:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp96
	cmpl	-36(%rbp), %eax	# size, tmp96
	jl	.L12	#,
# problem10.c:32:     return 1;
	movl	$1, %eax	#, _10
.L11:
# problem10.c:33: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem10.c"
.LC1:
	.string	"result == NULL"
	.align 8
.LC2:
	.string	"issame(result, (int[]){1, 2, 3, 4}, 4)"
	.align 8
.LC3:
	.string	"issame(result, (int[]){4, 4, 4, 4}, 4)"
	.align 8
.LC4:
	.string	"issame(result, (int[]){3, 3, 3, 100, 100}, 5)"
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
	subq	$112, %rsp	#,
# problem10.c:35: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp118
	movq	%rax, -8(%rbp)	# tmp118, D.3786
	xorl	%eax, %eax	# tmp118
# problem10.c:39:     result = func0((int[]){}, 0);
	leaq	-100(%rbp), %rax	#, tmp87
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	func0	#
	movq	%rax, -112(%rbp)	# tmp88, result
# problem10.c:40:     assert(result == NULL);
	cmpq	$0, -112(%rbp)	#, result
	je	.L14	#,
# problem10.c:40:     assert(result == NULL);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp89
	movq	%rax, %rcx	# tmp89,
	movl	$40, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp90
	movq	%rax, %rsi	# tmp90,
	leaq	.LC1(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	__assert_fail@PLT	#
.L14:
# problem10.c:41:     free(result);
	movq	-112(%rbp), %rax	# result, tmp92
	movq	%rax, %rdi	# tmp92,
	call	free@PLT	#
# problem10.c:44:     int test1[] = {1, 2, 3, 4};
	movl	$1, -96(%rbp)	#, test1[0]
	movl	$2, -92(%rbp)	#, test1[1]
	movl	$3, -88(%rbp)	#, test1[2]
	movl	$4, -84(%rbp)	#, test1[3]
# problem10.c:45:     result = func0(test1, 4);
	leaq	-96(%rbp), %rax	#, tmp93
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	func0	#
	movq	%rax, -112(%rbp)	# tmp94, result
# problem10.c:46:     assert(issame(result, (int[]){1, 2, 3, 4}, 4));
	movl	$1, -32(%rbp)	#, MEM[(int[4] *)_62][0]
	movl	$2, -28(%rbp)	#, MEM[(int[4] *)_62][1]
	movl	$3, -24(%rbp)	#, MEM[(int[4] *)_62][2]
	movl	$4, -20(%rbp)	#, MEM[(int[4] *)_62][3]
	leaq	-32(%rbp), %rcx	#, tmp95
	movq	-112(%rbp), %rax	# result, tmp96
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	issame	#
# problem10.c:46:     assert(issame(result, (int[]){1, 2, 3, 4}, 4));
	testl	%eax, %eax	# _1
	jne	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$46, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC2(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L15:
# problem10.c:47:     free(result);
	movq	-112(%rbp), %rax	# result, tmp100
	movq	%rax, %rdi	# tmp100,
	call	free@PLT	#
# problem10.c:50:     int test2[] = {4, 3, 2, 1};
	movl	$4, -80(%rbp)	#, test2[0]
	movl	$3, -76(%rbp)	#, test2[1]
	movl	$2, -72(%rbp)	#, test2[2]
	movl	$1, -68(%rbp)	#, test2[3]
# problem10.c:51:     result = func0(test2, 4);
	leaq	-80(%rbp), %rax	#, tmp101
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	func0	#
	movq	%rax, -112(%rbp)	# tmp102, result
# problem10.c:52:     assert(issame(result, (int[]){4, 4, 4, 4}, 4));
	movl	$4, -32(%rbp)	#, MEM[(int[4] *)_62][0]
	movl	$4, -28(%rbp)	#, MEM[(int[4] *)_62][1]
	movl	$4, -24(%rbp)	#, MEM[(int[4] *)_62][2]
	movl	$4, -20(%rbp)	#, MEM[(int[4] *)_62][3]
	leaq	-32(%rbp), %rcx	#, tmp103
	movq	-112(%rbp), %rax	# result, tmp104
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	issame	#
# problem10.c:52:     assert(issame(result, (int[]){4, 4, 4, 4}, 4));
	testl	%eax, %eax	# _2
	jne	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$52, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC3(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L16:
# problem10.c:53:     free(result);
	movq	-112(%rbp), %rax	# result, tmp108
	movq	%rax, %rdi	# tmp108,
	call	free@PLT	#
# problem10.c:56:     int test3[] = {3, 2, 3, 100, 3};
	movl	$3, -64(%rbp)	#, test3[0]
	movl	$2, -60(%rbp)	#, test3[1]
	movl	$3, -56(%rbp)	#, test3[2]
	movl	$100, -52(%rbp)	#, test3[3]
	movl	$3, -48(%rbp)	#, test3[4]
# problem10.c:57:     result = func0(test3, 5);
	leaq	-64(%rbp), %rax	#, tmp109
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	func0	#
	movq	%rax, -112(%rbp)	# tmp110, result
# problem10.c:58:     assert(issame(result, (int[]){3, 3, 3, 100, 100}, 5));
	movl	$3, -32(%rbp)	#, MEM[(int[5] *)_62][0]
	movl	$3, -28(%rbp)	#, MEM[(int[5] *)_62][1]
	movl	$3, -24(%rbp)	#, MEM[(int[5] *)_62][2]
	movl	$100, -20(%rbp)	#, MEM[(int[5] *)_62][3]
	movl	$100, -16(%rbp)	#, MEM[(int[5] *)_62][4]
	leaq	-32(%rbp), %rcx	#, tmp111
	movq	-112(%rbp), %rax	# result, tmp112
	movl	$5, %edx	#,
	movq	%rcx, %rsi	# tmp111,
	movq	%rax, %rdi	# tmp112,
	call	issame	#
# problem10.c:58:     assert(issame(result, (int[]){3, 3, 3, 100, 100}, 5));
	testl	%eax, %eax	# _3
	jne	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$58, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC4(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L17:
# problem10.c:59:     free(result);
	movq	-112(%rbp), %rax	# result, tmp116
	movq	%rax, %rdi	# tmp116,
	call	free@PLT	#
# problem10.c:61:     return 0;
	movl	$0, %eax	#, _53
# problem10.c:62: }
	movq	-8(%rbp), %rdx	# D.3786, tmp119
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
