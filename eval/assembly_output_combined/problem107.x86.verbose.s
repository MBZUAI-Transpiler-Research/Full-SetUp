	.file	"problem107.c"
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
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# n, n
# problem107.c:5:     int* out = (int*)malloc(n * sizeof(int));
	movl	-36(%rbp), %eax	# n, tmp96
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp97, out
# problem107.c:6:     int sum = 0, prod = 1;
	movl	$0, -20(%rbp)	#, sum
# problem107.c:6:     int sum = 0, prod = 1;
	movl	$1, -16(%rbp)	#, prod
# problem107.c:7:     for (int i = 1; i <= n; i++) {
	movl	$1, -12(%rbp)	#, i
# problem107.c:7:     for (int i = 1; i <= n; i++) {
	jmp	.L2	#
.L5:
# problem107.c:8:         sum += i;
	movl	-12(%rbp), %eax	# i, tmp98
	addl	%eax, -20(%rbp)	# tmp98, sum
# problem107.c:9:         prod *= i;
	movl	-16(%rbp), %eax	# prod, tmp100
	imull	-12(%rbp), %eax	# i, tmp99
	movl	%eax, -16(%rbp)	# tmp99, prod
# problem107.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	movl	-12(%rbp), %eax	# i, i.0_3
	andl	$1, %eax	#, _4
# problem107.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	testl	%eax, %eax	# _4
	jne	.L3	#,
# problem107.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	movl	-12(%rbp), %eax	# i, tmp101
	cltq
	salq	$2, %rax	#, _6
	leaq	-4(%rax), %rdx	#, _7
	movq	-8(%rbp), %rax	# out, tmp102
	addq	%rax, %rdx	# tmp102, _8
# problem107.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	movl	-16(%rbp), %eax	# prod, tmp103
	movl	%eax, (%rdx)	# tmp103, *_8
	jmp	.L4	#
.L3:
# problem107.c:11:         else out[i - 1] = sum;
	movl	-12(%rbp), %eax	# i, tmp104
	cltq
	salq	$2, %rax	#, _10
	leaq	-4(%rax), %rdx	#, _11
	movq	-8(%rbp), %rax	# out, tmp105
	addq	%rax, %rdx	# tmp105, _12
# problem107.c:11:         else out[i - 1] = sum;
	movl	-20(%rbp), %eax	# sum, tmp106
	movl	%eax, (%rdx)	# tmp106, *_12
.L4:
# problem107.c:7:     for (int i = 1; i <= n; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# problem107.c:7:     for (int i = 1; i <= n; i++) {
	movl	-12(%rbp), %eax	# i, tmp107
	cmpl	-36(%rbp), %eax	# n, tmp107
	jle	.L5	#,
# problem107.c:13:     return out;
	movq	-8(%rbp), %rax	# out, _25
# problem107.c:14: }
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
	movl	%esi, -28(%rbp)	# a_size, a_size
	movq	%rdx, -40(%rbp)	# b, b
	movl	%ecx, -32(%rbp)	# b_size, b_size
# problem107.c:23:     if (a_size != b_size) return 0;
	movl	-28(%rbp), %eax	# a_size, tmp92
	cmpl	-32(%rbp), %eax	# b_size, tmp92
	je	.L8	#,
# problem107.c:23:     if (a_size != b_size) return 0;
	movl	$0, %eax	#, _10
	jmp	.L9	#
.L8:
# problem107.c:24:     for (int i = 0; i < a_size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem107.c:24:     for (int i = 0; i < a_size; i++) {
	jmp	.L10	#
.L12:
# problem107.c:25:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem107.c:25:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-40(%rbp), %rax	# b, tmp96
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem107.c:25:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L11	#,
# problem107.c:25:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
	jmp	.L9	#
.L11:
# problem107.c:24:     for (int i = 0; i < a_size; i++) {
	addl	$1, -4(%rbp)	#, i
.L10:
# problem107.c:24:     for (int i = 0; i < a_size; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-28(%rbp), %eax	# a_size, tmp97
	jl	.L12	#,
# problem107.c:27:     return 1;
	movl	$1, %eax	#, _10
.L9:
# problem107.c:28: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem107.c"
	.align 8
.LC1:
	.string	"issame(result, 5, expected1, 5)"
	.align 8
.LC2:
	.string	"issame(result, 7, expected2, 7)"
	.align 8
.LC3:
	.string	"issame(result, 1, expected3, 1)"
	.align 8
.LC4:
	.string	"issame(result, 3, expected4, 3)"
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
# problem107.c:30: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp117
	movq	%rax, -8(%rbp)	# tmp117, D.2940
	xorl	%eax, %eax	# tmp117
# problem107.c:32:     int expected1[] = {1, 2, 6, 24, 15};
	movl	$1, -80(%rbp)	#, expected1[0]
	movl	$2, -76(%rbp)	#, expected1[1]
	movl	$6, -72(%rbp)	#, expected1[2]
	movl	$24, -68(%rbp)	#, expected1[3]
	movl	$15, -64(%rbp)	#, expected1[4]
# problem107.c:33:     result = func0(5);
	movl	$5, %edi	#,
	call	func0	#
	movq	%rax, -104(%rbp)	# tmp88, result
# problem107.c:34:     assert(issame(result, 5, expected1, 5));
	leaq	-80(%rbp), %rdx	#, tmp89
	movq	-104(%rbp), %rax	# result, tmp90
	movl	$5, %ecx	#,
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	issame	#
	testl	%eax, %eax	# _1
	jne	.L14	#,
# problem107.c:34:     assert(issame(result, 5, expected1, 5));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp91
	movq	%rax, %rcx	# tmp91,
	movl	$34, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	.LC1(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	__assert_fail@PLT	#
.L14:
# problem107.c:35:     free(result);
	movq	-104(%rbp), %rax	# result, tmp94
	movq	%rax, %rdi	# tmp94,
	call	free@PLT	#
# problem107.c:37:     int expected2[] = {1, 2, 6, 24, 15, 720, 28};
	movl	$1, -48(%rbp)	#, expected2[0]
	movl	$2, -44(%rbp)	#, expected2[1]
	movl	$6, -40(%rbp)	#, expected2[2]
	movl	$24, -36(%rbp)	#, expected2[3]
	movl	$15, -32(%rbp)	#, expected2[4]
	movl	$720, -28(%rbp)	#, expected2[5]
	movl	$28, -24(%rbp)	#, expected2[6]
# problem107.c:38:     result = func0(7);
	movl	$7, %edi	#,
	call	func0	#
	movq	%rax, -104(%rbp)	# tmp95, result
# problem107.c:39:     assert(issame(result, 7, expected2, 7));
	leaq	-48(%rbp), %rdx	#, tmp96
	movq	-104(%rbp), %rax	# result, tmp97
	movl	$7, %ecx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L15	#,
# problem107.c:39:     assert(issame(result, 7, expected2, 7));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$39, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC2(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L15:
# problem107.c:40:     free(result);
	movq	-104(%rbp), %rax	# result, tmp101
	movq	%rax, %rdi	# tmp101,
	call	free@PLT	#
# problem107.c:42:     int expected3[] = {1};
	movl	$1, -96(%rbp)	#, expected3[0]
# problem107.c:43:     result = func0(1);
	movl	$1, %edi	#,
	call	func0	#
	movq	%rax, -104(%rbp)	# tmp102, result
# problem107.c:44:     assert(issame(result, 1, expected3, 1));
	leaq	-96(%rbp), %rdx	#, tmp103
	movq	-104(%rbp), %rax	# result, tmp104
	movl	$1, %ecx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	issame	#
	testl	%eax, %eax	# _3
	jne	.L16	#,
# problem107.c:44:     assert(issame(result, 1, expected3, 1));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$44, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC3(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L16:
# problem107.c:45:     free(result);
	movq	-104(%rbp), %rax	# result, tmp108
	movq	%rax, %rdi	# tmp108,
	call	free@PLT	#
# problem107.c:47:     int expected4[] = {1, 2, 6};
	movl	$1, -92(%rbp)	#, expected4[0]
	movl	$2, -88(%rbp)	#, expected4[1]
	movl	$6, -84(%rbp)	#, expected4[2]
# problem107.c:48:     result = func0(3);
	movl	$3, %edi	#,
	call	func0	#
	movq	%rax, -104(%rbp)	# tmp109, result
# problem107.c:49:     assert(issame(result, 3, expected4, 3));
	leaq	-92(%rbp), %rdx	#, tmp110
	movq	-104(%rbp), %rax	# result, tmp111
	movl	$3, %ecx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	issame	#
	testl	%eax, %eax	# _4
	jne	.L17	#,
# problem107.c:49:     assert(issame(result, 3, expected4, 3));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$49, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC4(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L17:
# problem107.c:50:     free(result);
	movq	-104(%rbp), %rax	# result, tmp115
	movq	%rax, %rdi	# tmp115,
	call	free@PLT	#
# problem107.c:52:     return 0;
	movl	$0, %eax	#, _42
# problem107.c:53: }
	movq	-8(%rbp), %rdx	# D.2940, tmp118
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp118
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
