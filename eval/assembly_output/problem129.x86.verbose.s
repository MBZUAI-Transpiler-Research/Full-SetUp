	.file	"problem129.c"
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
	movq	%rdi, -24(%rbp)	# arr, arr
	movl	%esi, -28(%rbp)	# arr_size, arr_size
# problem129.c:5:     if (arr_size == 0) return -32768;
	cmpl	$0, -28(%rbp)	#, arr_size
	jne	.L2	#,
# problem129.c:5:     if (arr_size == 0) return -32768;
	movl	$-32768, %eax	#, _19
# problem129.c:5:     if (arr_size == 0) return -32768;
	jmp	.L3	#
.L2:
# problem129.c:6:     int sum = 0, prods = 1, i;
	movl	$0, -12(%rbp)	#, sum
# problem129.c:6:     int sum = 0, prods = 1, i;
	movl	$1, -8(%rbp)	#, prods
# problem129.c:7:     for (i = 0; i < arr_size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem129.c:7:     for (i = 0; i < arr_size; i++) {
	jmp	.L4	#
.L7:
# problem129.c:8:         sum += abs(arr[i]);
	movl	-4(%rbp), %eax	# i, tmp97
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# arr, tmp98
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# problem129.c:8:         sum += abs(arr[i]);
	movl	%eax, %edx	# _4, tmp106
	negl	%edx	# tmp106
	cmovns	%edx, %eax	# tmp106,, _5
# problem129.c:8:         sum += abs(arr[i]);
	addl	%eax, -12(%rbp)	# _5, sum
# problem129.c:9:         if (arr[i] == 0) prods = 0;
	movl	-4(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,4), %rdx	#, _7
	movq	-24(%rbp), %rax	# arr, tmp100
	addq	%rdx, %rax	# _7, _8
	movl	(%rax), %eax	# *_8, _9
# problem129.c:9:         if (arr[i] == 0) prods = 0;
	testl	%eax, %eax	# _9
	jne	.L5	#,
# problem129.c:9:         if (arr[i] == 0) prods = 0;
	movl	$0, -8(%rbp)	#, prods
.L5:
# problem129.c:10:         if (arr[i] < 0) prods = -prods;
	movl	-4(%rbp), %eax	# i, tmp101
	cltq
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-24(%rbp), %rax	# arr, tmp102
	addq	%rdx, %rax	# _11, _12
	movl	(%rax), %eax	# *_12, _13
# problem129.c:10:         if (arr[i] < 0) prods = -prods;
	testl	%eax, %eax	# _13
	jns	.L6	#,
# problem129.c:10:         if (arr[i] < 0) prods = -prods;
	negl	-8(%rbp)	# prods
.L6:
# problem129.c:7:     for (i = 0; i < arr_size; i++) {
	addl	$1, -4(%rbp)	#, i
.L4:
# problem129.c:7:     for (i = 0; i < arr_size; i++) {
	movl	-4(%rbp), %eax	# i, tmp103
	cmpl	-28(%rbp), %eax	# arr_size, tmp103
	jl	.L7	#,
# problem129.c:12:     return sum * prods;
	movl	-12(%rbp), %eax	# sum, tmp104
	imull	-8(%rbp), %eax	# prods, _19
.L3:
# problem129.c:13: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem129.c"
.LC1:
	.string	"func0(arr1, 4) == -9"
.LC2:
	.string	"func0(arr2, 2) == 0"
.LC3:
	.string	"func0(arr3, 7) == -10"
.LC4:
	.string	"func0(NULL, 0) == -32768"
.LC5:
	.string	"func0(arr5, 7) == 20"
.LC6:
	.string	"func0(arr6, 4) == 4"
.LC7:
	.string	"func0(arr7, 4) == -4"
.LC8:
	.string	"func0(arr8, 4) == 0"
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
	subq	$160, %rsp	#,
# problem129.c:20: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp124
	movq	%rax, -8(%rbp)	# tmp124, D.3778
	xorl	%eax, %eax	# tmp124
# problem129.c:21:     int arr1[] = {1, 2, 2, -4};
	movl	$1, -144(%rbp)	#, arr1[0]
	movl	$2, -140(%rbp)	#, arr1[1]
	movl	$2, -136(%rbp)	#, arr1[2]
	movl	$-4, -132(%rbp)	#, arr1[3]
# problem129.c:22:     assert(func0(arr1, 4) == -9);
	leaq	-144(%rbp), %rax	#, tmp92
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	func0	#
# problem129.c:22:     assert(func0(arr1, 4) == -9);
	cmpl	$-9, %eax	#, _1
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp93
	movq	%rax, %rcx	# tmp93,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	leaq	.LC1(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	__assert_fail@PLT	#
.L9:
# problem129.c:24:     int arr2[] = {0, 1};
	movl	$0, -152(%rbp)	#, arr2[0]
	movl	$1, -148(%rbp)	#, arr2[1]
# problem129.c:25:     assert(func0(arr2, 2) == 0);
	leaq	-152(%rbp), %rax	#, tmp96
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	func0	#
# problem129.c:25:     assert(func0(arr2, 2) == 0);
	testl	%eax, %eax	# _2
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$25, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC2(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L10:
# problem129.c:27:     int arr3[] = {1, 1, 1, 2, 3, -1, 1};
	movl	$1, -80(%rbp)	#, arr3[0]
	movl	$1, -76(%rbp)	#, arr3[1]
	movl	$1, -72(%rbp)	#, arr3[2]
	movl	$2, -68(%rbp)	#, arr3[3]
	movl	$3, -64(%rbp)	#, arr3[4]
	movl	$-1, -60(%rbp)	#, arr3[5]
	movl	$1, -56(%rbp)	#, arr3[6]
# problem129.c:28:     assert(func0(arr3, 7) == -10);
	leaq	-80(%rbp), %rax	#, tmp100
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	func0	#
# problem129.c:28:     assert(func0(arr3, 7) == -10);
	cmpl	$-10, %eax	#, _3
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$28, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC3(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L11:
# problem129.c:30:     assert(func0(NULL, 0) == -32768);
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	func0	#
# problem129.c:30:     assert(func0(NULL, 0) == -32768);
	cmpl	$-32768, %eax	#, _4
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$30, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC4(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L12:
# problem129.c:32:     int arr5[] = {2, 4, 1, 2, -1, -1, 9};
	movl	$2, -48(%rbp)	#, arr5[0]
	movl	$4, -44(%rbp)	#, arr5[1]
	movl	$1, -40(%rbp)	#, arr5[2]
	movl	$2, -36(%rbp)	#, arr5[3]
	movl	$-1, -32(%rbp)	#, arr5[4]
	movl	$-1, -28(%rbp)	#, arr5[5]
	movl	$9, -24(%rbp)	#, arr5[6]
# problem129.c:33:     assert(func0(arr5, 7) == 20);
	leaq	-48(%rbp), %rax	#, tmp107
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	func0	#
# problem129.c:33:     assert(func0(arr5, 7) == 20);
	cmpl	$20, %eax	#, _5
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp108
	movq	%rax, %rcx	# tmp108,
	movl	$33, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp109
	movq	%rax, %rsi	# tmp109,
	leaq	.LC5(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	__assert_fail@PLT	#
.L13:
# problem129.c:35:     int arr6[] = {-1, 1, -1, 1};
	movl	$-1, -128(%rbp)	#, arr6[0]
	movl	$1, -124(%rbp)	#, arr6[1]
	movl	$-1, -120(%rbp)	#, arr6[2]
	movl	$1, -116(%rbp)	#, arr6[3]
# problem129.c:36:     assert(func0(arr6, 4) == 4);
	leaq	-128(%rbp), %rax	#, tmp111
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	func0	#
# problem129.c:36:     assert(func0(arr6, 4) == 4);
	cmpl	$4, %eax	#, _6
	je	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$36, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC6(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L14:
# problem129.c:38:     int arr7[] = {-1, 1, 1, 1};
	movl	$-1, -112(%rbp)	#, arr7[0]
	movl	$1, -108(%rbp)	#, arr7[1]
	movl	$1, -104(%rbp)	#, arr7[2]
	movl	$1, -100(%rbp)	#, arr7[3]
# problem129.c:39:     assert(func0(arr7, 4) == -4);
	leaq	-112(%rbp), %rax	#, tmp115
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp115,
	call	func0	#
# problem129.c:39:     assert(func0(arr7, 4) == -4);
	cmpl	$-4, %eax	#, _7
	je	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$39, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC7(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L15:
# problem129.c:41:     int arr8[] = {-1, 1, 1, 0};
	movl	$-1, -96(%rbp)	#, arr8[0]
	movl	$1, -92(%rbp)	#, arr8[1]
	movl	$1, -88(%rbp)	#, arr8[2]
	movl	$0, -84(%rbp)	#, arr8[3]
# problem129.c:42:     assert(func0(arr8, 4) == 0);
	leaq	-96(%rbp), %rax	#, tmp119
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp119,
	call	func0	#
# problem129.c:42:     assert(func0(arr8, 4) == 0);
	testl	%eax, %eax	# _8
	je	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp120
	movq	%rax, %rcx	# tmp120,
	movl	$42, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp121
	movq	%rax, %rsi	# tmp121,
	leaq	.LC8(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	__assert_fail@PLT	#
.L16:
# problem129.c:44:     return 0;
	movl	$0, %eax	#, _58
# problem129.c:45: }
	movq	-8(%rbp), %rdx	# D.3778, tmp125
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	je	.L18	#,
	call	__stack_chk_fail@PLT	#
.L18:
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
