	.file	"problem4.c"
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
	movq	%rdi, -24(%rbp)	# operations, operations
	movl	%esi, -28(%rbp)	# size, size
# problem4.c:4:     int num = 0;
	movl	$0, -8(%rbp)	#, num
# problem4.c:5:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem4.c:5:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L5:
# problem4.c:6:         num += operations[i];
	movl	-4(%rbp), %eax	# i, tmp88
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# operations, tmp89
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# problem4.c:6:         num += operations[i];
	addl	%eax, -8(%rbp)	# _4, num
# problem4.c:7:         if (num < 0) return 1;
	cmpl	$0, -8(%rbp)	#, num
	jns	.L3	#,
# problem4.c:7:         if (num < 0) return 1;
	movl	$1, %eax	#, _7
# problem4.c:7:         if (num < 0) return 1;
	jmp	.L4	#
.L3:
# problem4.c:5:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# problem4.c:5:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp90
	cmpl	-28(%rbp), %eax	# size, tmp90
	jl	.L5	#,
# problem4.c:9:     return 0;
	movl	$0, %eax	#, _7
.L4:
# problem4.c:10: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem4.c"
.LC1:
	.string	"func0(case1, 0) == 0"
.LC2:
	.string	"func0(case2, 6) == 0"
.LC3:
	.string	"func0(case3, 5) == 1"
.LC4:
	.string	"func0(case4, 8) == 0"
.LC5:
	.string	"func0(case5, 8) == 1"
.LC6:
	.string	"func0(case6, 8) == 1"
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
	subq	$192, %rsp	#,
# problem4.c:16: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp115
	movq	%rax, -8(%rbp)	# tmp115, D.3240
	xorl	%eax, %eax	# tmp115
# problem4.c:18:     assert(func0(case1, 0) == 0);
	leaq	-180(%rbp), %rax	#, tmp90
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	func0	#
# problem4.c:18:     assert(func0(case1, 0) == 0);
	testl	%eax, %eax	# _1
	je	.L7	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp91
	movq	%rax, %rcx	# tmp91,
	movl	$18, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	.LC1(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	__assert_fail@PLT	#
.L7:
# problem4.c:20:     int case2[] = {1, 2, -3, 1, 2, -3};
	movl	$1, -144(%rbp)	#, case2[0]
	movl	$2, -140(%rbp)	#, case2[1]
	movl	$-3, -136(%rbp)	#, case2[2]
	movl	$1, -132(%rbp)	#, case2[3]
	movl	$2, -128(%rbp)	#, case2[4]
	movl	$-3, -124(%rbp)	#, case2[5]
# problem4.c:21:     assert(func0(case2, 6) == 0);
	leaq	-144(%rbp), %rax	#, tmp94
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	func0	#
# problem4.c:21:     assert(func0(case2, 6) == 0);
	testl	%eax, %eax	# _2
	je	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$21, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC2(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L8:
# problem4.c:23:     int case3[] = {1, 2, -4, 5, 6};
	movl	$1, -176(%rbp)	#, case3[0]
	movl	$2, -172(%rbp)	#, case3[1]
	movl	$-4, -168(%rbp)	#, case3[2]
	movl	$5, -164(%rbp)	#, case3[3]
	movl	$6, -160(%rbp)	#, case3[4]
# problem4.c:24:     assert(func0(case3, 5) == 1);
	leaq	-176(%rbp), %rax	#, tmp98
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	func0	#
# problem4.c:24:     assert(func0(case3, 5) == 1);
	cmpl	$1, %eax	#, _3
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp99
	movq	%rax, %rcx	# tmp99,
	movl	$24, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC3(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	__assert_fail@PLT	#
.L9:
# problem4.c:26:     int case4[] = {1, -1, 2, -2, 5, -5, 4, -4};
	movl	$1, -112(%rbp)	#, case4[0]
	movl	$-1, -108(%rbp)	#, case4[1]
	movl	$2, -104(%rbp)	#, case4[2]
	movl	$-2, -100(%rbp)	#, case4[3]
	movl	$5, -96(%rbp)	#, case4[4]
	movl	$-5, -92(%rbp)	#, case4[5]
	movl	$4, -88(%rbp)	#, case4[6]
	movl	$-4, -84(%rbp)	#, case4[7]
# problem4.c:27:     assert(func0(case4, 8) == 0);
	leaq	-112(%rbp), %rax	#, tmp102
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	func0	#
# problem4.c:27:     assert(func0(case4, 8) == 0);
	testl	%eax, %eax	# _4
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$27, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC4(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L10:
# problem4.c:29:     int case5[] = {1, -1, 2, -2, 5, -5, 4, -5};
	movl	$1, -80(%rbp)	#, case5[0]
	movl	$-1, -76(%rbp)	#, case5[1]
	movl	$2, -72(%rbp)	#, case5[2]
	movl	$-2, -68(%rbp)	#, case5[3]
	movl	$5, -64(%rbp)	#, case5[4]
	movl	$-5, -60(%rbp)	#, case5[5]
	movl	$4, -56(%rbp)	#, case5[6]
	movl	$-5, -52(%rbp)	#, case5[7]
# problem4.c:30:     assert(func0(case5, 8) == 1);
	leaq	-80(%rbp), %rax	#, tmp106
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp106,
	call	func0	#
# problem4.c:30:     assert(func0(case5, 8) == 1);
	cmpl	$1, %eax	#, _5
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$30, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC5(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L11:
# problem4.c:32:     int case6[] = {1, -2, 2, -2, 5, -5, 4, -4};
	movl	$1, -48(%rbp)	#, case6[0]
	movl	$-2, -44(%rbp)	#, case6[1]
	movl	$2, -40(%rbp)	#, case6[2]
	movl	$-2, -36(%rbp)	#, case6[3]
	movl	$5, -32(%rbp)	#, case6[4]
	movl	$-5, -28(%rbp)	#, case6[5]
	movl	$4, -24(%rbp)	#, case6[6]
	movl	$-4, -20(%rbp)	#, case6[7]
# problem4.c:33:     assert(func0(case6, 8) == 1);
	leaq	-48(%rbp), %rax	#, tmp110
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	func0	#
# problem4.c:33:     assert(func0(case6, 8) == 1);
	cmpl	$1, %eax	#, _6
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$33, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC6(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L12:
# problem4.c:35:     return 0;
	movl	$0, %eax	#, _55
# problem4.c:36: }
	movq	-8(%rbp), %rdx	# D.3240, tmp116
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp116
	je	.L14	#,
	call	__stack_chk_fail@PLT	#
.L14:
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
