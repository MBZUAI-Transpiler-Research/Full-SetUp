	.file	"problem136.c"
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
	movq	%rdi, -24(%rbp)	# arr, arr
	movl	%esi, -28(%rbp)	# size, size
# problem136.c:4:     int max = -1;
	movl	$-1, -8(%rbp)	#, max
# problem136.c:5:     for (int i = 1; i < size; ++i) {
	movl	$1, -4(%rbp)	#, i
# problem136.c:5:     for (int i = 1; i < size; ++i) {
	jmp	.L2	#
.L4:
# problem136.c:6:         if (arr[i] < arr[i - 1]) max = i;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# arr, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem136.c:6:         if (arr[i] < arr[i - 1]) max = i;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	salq	$2, %rax	#, _6
	leaq	-4(%rax), %rcx	#, _7
	movq	-24(%rbp), %rax	# arr, tmp96
	addq	%rcx, %rax	# _7, _8
	movl	(%rax), %eax	# *_8, _9
# problem136.c:6:         if (arr[i] < arr[i - 1]) max = i;
	cmpl	%eax, %edx	# _9, _4
	jge	.L3	#,
# problem136.c:6:         if (arr[i] < arr[i - 1]) max = i;
	movl	-4(%rbp), %eax	# i, tmp97
	movl	%eax, -8(%rbp)	# tmp97, max
.L3:
# problem136.c:5:     for (int i = 1; i < size; ++i) {
	addl	$1, -4(%rbp)	#, i
.L2:
# problem136.c:5:     for (int i = 1; i < size; ++i) {
	movl	-4(%rbp), %eax	# i, tmp98
	cmpl	-28(%rbp), %eax	# size, tmp98
	jl	.L4	#,
# problem136.c:8:     return max;
	movl	-8(%rbp), %eax	# max, _16
# problem136.c:9: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem136.c"
.LC1:
	.string	"func0(arr1, 5) == 3"
.LC2:
	.string	"func0(arr2, 4) == -1"
.LC3:
	.string	"func0(arr3, 9) == 2"
.LC4:
	.string	"func0(arr4, 5) == 4"
.LC5:
	.string	"func0(NULL, 0) == -1"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
# problem136.c:17: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	movq	%rax, -8(%rbp)	# tmp109, D.3241
	xorl	%eax, %eax	# tmp109
# problem136.c:18:     int arr1[] = {1, 2, 4, 3, 5};
	movl	$1, -112(%rbp)	#, arr1[0]
	movl	$2, -108(%rbp)	#, arr1[1]
	movl	$4, -104(%rbp)	#, arr1[2]
	movl	$3, -100(%rbp)	#, arr1[3]
	movl	$5, -96(%rbp)	#, arr1[4]
# problem136.c:19:     assert(func0(arr1, 5) == 3);
	leaq	-112(%rbp), %rax	#, tmp89
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	func0	#
# problem136.c:19:     assert(func0(arr1, 5) == 3);
	cmpl	$3, %eax	#, _1
	je	.L7	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp90
	movq	%rax, %rcx	# tmp90,
	movl	$19, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp91
	movq	%rax, %rsi	# tmp91,
	leaq	.LC1(%rip), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	__assert_fail@PLT	#
.L7:
# problem136.c:21:     int arr2[] = {1, 2, 4, 5};
	movl	$1, -128(%rbp)	#, arr2[0]
	movl	$2, -124(%rbp)	#, arr2[1]
	movl	$4, -120(%rbp)	#, arr2[2]
	movl	$5, -116(%rbp)	#, arr2[3]
# problem136.c:22:     assert(func0(arr2, 4) == -1);
	leaq	-128(%rbp), %rax	#, tmp93
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	func0	#
# problem136.c:22:     assert(func0(arr2, 4) == -1);
	cmpl	$-1, %eax	#, _2
	je	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp94
	movq	%rax, %rcx	# tmp94,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC2(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__assert_fail@PLT	#
.L8:
# problem136.c:24:     int arr3[] = {1, 4, 2, 5, 6, 7, 8, 9, 10};
	movl	$1, -48(%rbp)	#, arr3[0]
	movl	$4, -44(%rbp)	#, arr3[1]
	movl	$2, -40(%rbp)	#, arr3[2]
	movl	$5, -36(%rbp)	#, arr3[3]
	movl	$6, -32(%rbp)	#, arr3[4]
	movl	$7, -28(%rbp)	#, arr3[5]
	movl	$8, -24(%rbp)	#, arr3[6]
	movl	$9, -20(%rbp)	#, arr3[7]
	movl	$10, -16(%rbp)	#, arr3[8]
# problem136.c:25:     assert(func0(arr3, 9) == 2);
	leaq	-48(%rbp), %rax	#, tmp97
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	func0	#
# problem136.c:25:     assert(func0(arr3, 9) == 2);
	cmpl	$2, %eax	#, _3
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$25, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC3(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L9:
# problem136.c:27:     int arr4[] = {4, 8, 5, 7, 3};
	movl	$4, -80(%rbp)	#, arr4[0]
	movl	$8, -76(%rbp)	#, arr4[1]
	movl	$5, -72(%rbp)	#, arr4[2]
	movl	$7, -68(%rbp)	#, arr4[3]
	movl	$3, -64(%rbp)	#, arr4[4]
# problem136.c:28:     assert(func0(arr4, 5) == 4);
	leaq	-80(%rbp), %rax	#, tmp101
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	func0	#
# problem136.c:28:     assert(func0(arr4, 5) == 4);
	cmpl	$4, %eax	#, _4
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$28, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC4(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	__assert_fail@PLT	#
.L10:
# problem136.c:30:     assert(func0(NULL, 0) == -1);
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	func0	#
# problem136.c:30:     assert(func0(NULL, 0) == -1);
	cmpl	$-1, %eax	#, _5
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$30, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC5(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L11:
# problem136.c:32:     return 0;
	movl	$0, %eax	#, _40
# problem136.c:33: }
	movq	-8(%rbp), %rdx	# D.3241, tmp110
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp110
	je	.L13	#,
	call	__stack_chk_fail@PLT	#
.L13:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
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
