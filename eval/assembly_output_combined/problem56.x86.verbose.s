	.file	"problem56.c"
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
	subq	$4048, %rsp	#,
	movl	%edi, -4036(%rbp)	# n, n
# problem56.c:3: int func0(int n) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp102
	movq	%rax, -8(%rbp)	# tmp102, D.2396
	xorl	%eax, %eax	# tmp102
# problem56.c:4:     int f[1000] = {0};
	leaq	-4016(%rbp), %rdx	#, tmp89
	movl	$0, %eax	#, tmp90
	movl	$500, %ecx	#, tmp91
	movq	%rdx, %rdi	# tmp89, tmp89
	rep stosq
# problem56.c:5:     f[0] = 0;
	movl	$0, -4016(%rbp)	#, f[0]
# problem56.c:6:     f[1] = 1;
	movl	$1, -4012(%rbp)	#, f[1]
# problem56.c:7:     for (int i = 2; i <= n; i++)
	movl	$2, -4020(%rbp)	#, i
# problem56.c:7:     for (int i = 2; i <= n; i++)
	jmp	.L2	#
.L3:
# problem56.c:8:         f[i] = f[i - 1] + f[i - 2];
	movl	-4020(%rbp), %eax	# i, tmp92
	subl	$1, %eax	#, _1
# problem56.c:8:         f[i] = f[i - 1] + f[i - 2];
	cltq
	movl	-4016(%rbp,%rax,4), %edx	# f[_1], _2
# problem56.c:8:         f[i] = f[i - 1] + f[i - 2];
	movl	-4020(%rbp), %eax	# i, tmp94
	subl	$2, %eax	#, _3
# problem56.c:8:         f[i] = f[i - 1] + f[i - 2];
	cltq
	movl	-4016(%rbp,%rax,4), %eax	# f[_3], _4
# problem56.c:8:         f[i] = f[i - 1] + f[i - 2];
	addl	%eax, %edx	# _4, _5
# problem56.c:8:         f[i] = f[i - 1] + f[i - 2];
	movl	-4020(%rbp), %eax	# i, tmp97
	cltq
	movl	%edx, -4016(%rbp,%rax,4)	# _5, f[i_6]
# problem56.c:7:     for (int i = 2; i <= n; i++)
	addl	$1, -4020(%rbp)	#, i
.L2:
# problem56.c:7:     for (int i = 2; i <= n; i++)
	movl	-4020(%rbp), %eax	# i, tmp98
	cmpl	-4036(%rbp), %eax	# n, tmp98
	jle	.L3	#,
# problem56.c:9:     return f[n];
	movl	-4036(%rbp), %eax	# n, tmp100
	cltq
	movl	-4016(%rbp,%rax,4), %eax	# f[n_13(D)], _14
# problem56.c:10: }
	movq	-8(%rbp), %rdx	# D.2396, tmp103
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp103
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
	.string	"problem56.c"
.LC1:
	.string	"func0(10) == 55"
.LC2:
	.string	"func0(1) == 1"
.LC3:
	.string	"func0(8) == 21"
.LC4:
	.string	"func0(11) == 89"
.LC5:
	.string	"func0(12) == 144"
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
# problem56.c:17:     assert(func0(10) == 55);
	movl	$10, %edi	#,
	call	func0	#
	cmpl	$55, %eax	#, _1
	je	.L7	#,
# problem56.c:17:     assert(func0(10) == 55);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp89
	movq	%rax, %rcx	# tmp89,
	movl	$17, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp90
	movq	%rax, %rsi	# tmp90,
	leaq	.LC1(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	__assert_fail@PLT	#
.L7:
# problem56.c:18:     assert(func0(1) == 1);
	movl	$1, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _2
	je	.L8	#,
# problem56.c:18:     assert(func0(1) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$18, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC2(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L8:
# problem56.c:19:     assert(func0(8) == 21);
	movl	$8, %edi	#,
	call	func0	#
	cmpl	$21, %eax	#, _3
	je	.L9	#,
# problem56.c:19:     assert(func0(8) == 21);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$19, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC3(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L9:
# problem56.c:20:     assert(func0(11) == 89);
	movl	$11, %edi	#,
	call	func0	#
	cmpl	$89, %eax	#, _4
	je	.L10	#,
# problem56.c:20:     assert(func0(11) == 89);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC4(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L10:
# problem56.c:21:     assert(func0(12) == 144);
	movl	$12, %edi	#,
	call	func0	#
	cmpl	$144, %eax	#, _5
	je	.L11	#,
# problem56.c:21:     assert(func0(12) == 144);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$21, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC5(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L11:
# problem56.c:23:     return 0;
	movl	$0, %eax	#, _17
# problem56.c:24: }
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
