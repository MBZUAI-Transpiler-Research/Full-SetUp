	.file	"problem47.c"
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
# problem47.c:3: int func0(int n) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	movq	%rax, -8(%rbp)	# tmp109, D.2393
	xorl	%eax, %eax	# tmp109
# problem47.c:5:     f[0] = 0;
	movl	$0, -416(%rbp)	#, f[0]
# problem47.c:6:     f[1] = 0;
	movl	$0, -412(%rbp)	#, f[1]
# problem47.c:7:     f[2] = 2;
	movl	$2, -408(%rbp)	#, f[2]
# problem47.c:8:     f[3] = 0;
	movl	$0, -404(%rbp)	#, f[3]
# problem47.c:9:     for (int i = 4; i <= n; i++) {
	movl	$4, -420(%rbp)	#, i
# problem47.c:9:     for (int i = 4; i <= n; i++) {
	jmp	.L2	#
.L3:
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	movl	-420(%rbp), %eax	# i, tmp95
	subl	$1, %eax	#, _1
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	cltq
	movl	-416(%rbp,%rax,4), %edx	# f[_1], _2
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	movl	-420(%rbp), %eax	# i, tmp97
	subl	$2, %eax	#, _3
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	cltq
	movl	-416(%rbp,%rax,4), %eax	# f[_3], _4
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	addl	%eax, %edx	# _4, _5
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	movl	-420(%rbp), %eax	# i, tmp99
	subl	$3, %eax	#, _6
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	cltq
	movl	-416(%rbp,%rax,4), %eax	# f[_6], _7
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	addl	%eax, %edx	# _7, _8
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	movl	-420(%rbp), %eax	# i, tmp101
	subl	$4, %eax	#, _9
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	cltq
	movl	-416(%rbp,%rax,4), %eax	# f[_9], _10
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	addl	%eax, %edx	# _10, _11
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	movl	-420(%rbp), %eax	# i, tmp104
	cltq
	movl	%edx, -416(%rbp,%rax,4)	# _11, f[i_12]
# problem47.c:9:     for (int i = 4; i <= n; i++) {
	addl	$1, -420(%rbp)	#, i
.L2:
# problem47.c:9:     for (int i = 4; i <= n; i++) {
	movl	-420(%rbp), %eax	# i, tmp105
	cmpl	-436(%rbp), %eax	# n, tmp105
	jle	.L3	#,
# problem47.c:12:     return f[n];
	movl	-436(%rbp), %eax	# n, tmp107
	cltq
	movl	-416(%rbp,%rax,4), %eax	# f[n_20(D)], _21
# problem47.c:13: }
	movq	-8(%rbp), %rdx	# D.2393, tmp110
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp110
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
	.string	"problem47.c"
.LC1:
	.string	"func0(5) == 4"
.LC2:
	.string	"func0(8) == 28"
.LC3:
	.string	"func0(10) == 104"
.LC4:
	.string	"func0(12) == 386"
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
# problem47.c:21:     assert(func0(5) == 4);
	movl	$5, %edi	#,
	call	func0	#
	cmpl	$4, %eax	#, _1
	je	.L7	#,
# problem47.c:21:     assert(func0(5) == 4);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp88
	movq	%rax, %rcx	# tmp88,
	movl	$21, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp89
	movq	%rax, %rsi	# tmp89,
	leaq	.LC1(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	__assert_fail@PLT	#
.L7:
# problem47.c:22:     assert(func0(8) == 28);
	movl	$8, %edi	#,
	call	func0	#
	cmpl	$28, %eax	#, _2
	je	.L8	#,
# problem47.c:22:     assert(func0(8) == 28);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp91
	movq	%rax, %rcx	# tmp91,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	.LC2(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	__assert_fail@PLT	#
.L8:
# problem47.c:23:     assert(func0(10) == 104);
	movl	$10, %edi	#,
	call	func0	#
	cmpl	$104, %eax	#, _3
	je	.L9	#,
# problem47.c:23:     assert(func0(10) == 104);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp94
	movq	%rax, %rcx	# tmp94,
	movl	$23, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC3(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__assert_fail@PLT	#
.L9:
# problem47.c:24:     assert(func0(12) == 386);
	movl	$12, %edi	#,
	call	func0	#
	cmpl	$386, %eax	#, _4
	je	.L10	#,
# problem47.c:24:     assert(func0(12) == 386);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$24, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC4(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L10:
# problem47.c:26:     return 0;
	movl	$0, %eax	#, _14
# problem47.c:27: }
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
