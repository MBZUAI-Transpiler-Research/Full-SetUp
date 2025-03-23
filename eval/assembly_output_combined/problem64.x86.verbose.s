	.file	"problem64.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	subq	$448, %rsp	#,
	movl	%edi, -436(%rbp)	# n, n
# problem64.c:3: int func0(int n) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp107
	movq	%rax, -8(%rbp)	# tmp107, D.2402
	xorl	%eax, %eax	# tmp107
# problem64.c:4:     int ff[100] = {0};
	leaq	-416(%rbp), %rdx	#, tmp92
	movl	$0, %eax	#, tmp93
	movl	$50, %ecx	#, tmp94
	movq	%rdx, %rdi	# tmp92, tmp92
	rep stosq
# problem64.c:5:     ff[1] = 0;
	movl	$0, -412(%rbp)	#, ff[1]
# problem64.c:6:     ff[2] = 1;
	movl	$1, -408(%rbp)	#, ff[2]
# problem64.c:7:     for (int i = 3; i <= n; ++i) {
	movl	$3, -420(%rbp)	#, i
# problem64.c:7:     for (int i = 3; i <= n; ++i) {
	jmp	.L2	#
.L3:
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	movl	-420(%rbp), %eax	# i, tmp95
	subl	$1, %eax	#, _1
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	cltq
	movl	-416(%rbp,%rax,4), %edx	# ff[_1], _2
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	movl	-420(%rbp), %eax	# i, tmp97
	subl	$2, %eax	#, _3
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	cltq
	movl	-416(%rbp,%rax,4), %eax	# ff[_3], _4
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	addl	%eax, %edx	# _4, _5
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	movl	-420(%rbp), %eax	# i, tmp99
	subl	$3, %eax	#, _6
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	cltq
	movl	-416(%rbp,%rax,4), %eax	# ff[_6], _7
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	addl	%eax, %edx	# _7, _8
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	movl	-420(%rbp), %eax	# i, tmp102
	cltq
	movl	%edx, -416(%rbp,%rax,4)	# _8, ff[i_9]
# problem64.c:7:     for (int i = 3; i <= n; ++i) {
	addl	$1, -420(%rbp)	#, i
.L2:
# problem64.c:7:     for (int i = 3; i <= n; ++i) {
	movl	-420(%rbp), %eax	# i, tmp103
	cmpl	-436(%rbp), %eax	# n, tmp103
	jle	.L3	#,
# problem64.c:10:     return ff[n];
	movl	-436(%rbp), %eax	# n, tmp105
	cltq
	movl	-416(%rbp,%rax,4), %eax	# ff[n_16(D)], _17
# problem64.c:11: }
	movq	-8(%rbp), %rdx	# D.2402, tmp108
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp108
	je	.L5	#,
	call	__stack_chk_fail@PLT	#
.L5:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem64.c"
.LC1:
	.string	"func0(2) == 1"
.LC2:
	.string	"func0(1) == 0"
.LC3:
	.string	"func0(5) == 4"
.LC4:
	.string	"func0(8) == 24"
.LC5:
	.string	"func0(10) == 81"
.LC6:
	.string	"func0(12) == 274"
.LC7:
	.string	"func0(14) == 927"
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
# problem64.c:18:     assert(func0(2) == 1);
	movl	$2, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _1
	je	.L7	#,
# problem64.c:18:     assert(func0(2) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp91
	movq	%rax, %rcx	# tmp91,
	movl	$18, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	.LC1(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	__assert_fail@PLT	#
.L7:
# problem64.c:19:     assert(func0(1) == 0);
	movl	$1, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _2
	je	.L8	#,
# problem64.c:19:     assert(func0(1) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp94
	movq	%rax, %rcx	# tmp94,
	movl	$19, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC2(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__assert_fail@PLT	#
.L8:
# problem64.c:20:     assert(func0(5) == 4);
	movl	$5, %edi	#,
	call	func0	#
	cmpl	$4, %eax	#, _3
	je	.L9	#,
# problem64.c:20:     assert(func0(5) == 4);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC3(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L9:
# problem64.c:21:     assert(func0(8) == 24);
	movl	$8, %edi	#,
	call	func0	#
	cmpl	$24, %eax	#, _4
	je	.L10	#,
# problem64.c:21:     assert(func0(8) == 24);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$21, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC4(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L10:
# problem64.c:22:     assert(func0(10) == 81);
	movl	$10, %edi	#,
	call	func0	#
	cmpl	$81, %eax	#, _5
	je	.L11	#,
# problem64.c:22:     assert(func0(10) == 81);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC5(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L11:
# problem64.c:23:     assert(func0(12) == 274);
	movl	$12, %edi	#,
	call	func0	#
	cmpl	$274, %eax	#, _6
	je	.L12	#,
# problem64.c:23:     assert(func0(12) == 274);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$23, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC6(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L12:
# problem64.c:24:     assert(func0(14) == 927);
	movl	$14, %edi	#,
	call	func0	#
	cmpl	$927, %eax	#, _7
	je	.L13	#,
# problem64.c:24:     assert(func0(14) == 927);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$24, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC7(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L13:
# problem64.c:26:     return 0;
	movl	$0, %eax	#, _23
# problem64.c:27: }
	popq	%rbp	#
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
