	.file	"problem54.c"
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
	movl	%edi, -4(%rbp)	# x, x
	movl	%esi, -8(%rbp)	# y, y
# problem54.c:4:     return x + y;
	movl	-4(%rbp), %edx	# x, tmp84
	movl	-8(%rbp), %eax	# y, tmp85
	addl	%edx, %eax	# tmp84, _3
# problem54.c:5: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem54.c"
.LC1:
	.string	"func0(0, 1) == 1"
.LC2:
	.string	"func0(1, 0) == 1"
.LC3:
	.string	"func0(2, 3) == 5"
.LC4:
	.string	"func0(5, 7) == 12"
.LC5:
	.string	"func0(7, 5) == 12"
.LC6:
	.string	"func0(x, y) == x + y"
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
	subq	$16, %rsp	#,
# problem54.c:13:     assert(func0(0, 1) == 1);
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	func0	#
# problem54.c:13:     assert(func0(0, 1) == 1);
	cmpl	$1, %eax	#, _1
	je	.L4	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp93
	movq	%rax, %rcx	# tmp93,
	movl	$13, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	leaq	.LC1(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	__assert_fail@PLT	#
.L4:
# problem54.c:14:     assert(func0(1, 0) == 1);
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	func0	#
# problem54.c:14:     assert(func0(1, 0) == 1);
	cmpl	$1, %eax	#, _2
	je	.L5	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$14, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC2(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L5:
# problem54.c:15:     assert(func0(2, 3) == 5);
	movl	$3, %esi	#,
	movl	$2, %edi	#,
	call	func0	#
# problem54.c:15:     assert(func0(2, 3) == 5);
	cmpl	$5, %eax	#, _3
	je	.L6	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp99
	movq	%rax, %rcx	# tmp99,
	movl	$15, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC3(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	__assert_fail@PLT	#
.L6:
# problem54.c:16:     assert(func0(5, 7) == 12);
	movl	$7, %esi	#,
	movl	$5, %edi	#,
	call	func0	#
# problem54.c:16:     assert(func0(5, 7) == 12);
	cmpl	$12, %eax	#, _4
	je	.L7	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$16, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC4(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	__assert_fail@PLT	#
.L7:
# problem54.c:17:     assert(func0(7, 5) == 12);
	movl	$5, %esi	#,
	movl	$7, %edi	#,
	call	func0	#
# problem54.c:17:     assert(func0(7, 5) == 12);
	cmpl	$12, %eax	#, _5
	je	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$17, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC5(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L8:
# problem54.c:18:     for (int i = 0; i < 100; i += 1) {
	movl	$0, -12(%rbp)	#, i
# problem54.c:18:     for (int i = 0; i < 100; i += 1) {
	jmp	.L9	#
.L11:
# problem54.c:19:         int x = rand() % 1000;
	call	rand@PLT	#
# problem54.c:19:         int x = rand() % 1000;
	movslq	%eax, %rdx	# _6, tmp108
	imulq	$274877907, %rdx, %rdx	#, tmp108, tmp109
	shrq	$32, %rdx	#, tmp110
	sarl	$6, %edx	#, tmp111
	movl	%eax, %ecx	# _6, tmp112
	sarl	$31, %ecx	#, tmp112
	subl	%ecx, %edx	# tmp112, tmp113
	movl	%edx, -8(%rbp)	# tmp113, x
	movl	-8(%rbp), %edx	# x, tmp115
	imull	$1000, %edx, %edx	#, tmp115, tmp114
	subl	%edx, %eax	# tmp114, tmp116
	movl	%eax, -8(%rbp)	# tmp116, x
# problem54.c:20:         int y = rand() % 1000;
	call	rand@PLT	#
# problem54.c:20:         int y = rand() % 1000;
	movslq	%eax, %rdx	# _7, tmp117
	imulq	$274877907, %rdx, %rdx	#, tmp117, tmp118
	shrq	$32, %rdx	#, tmp119
	sarl	$6, %edx	#, tmp120
	movl	%eax, %ecx	# _7, tmp121
	sarl	$31, %ecx	#, tmp121
	subl	%ecx, %edx	# tmp121, tmp122
	movl	%edx, -4(%rbp)	# tmp122, y
	movl	-4(%rbp), %edx	# y, tmp124
	imull	$1000, %edx, %edx	#, tmp124, tmp123
	subl	%edx, %eax	# tmp123, tmp125
	movl	%eax, -4(%rbp)	# tmp125, y
# problem54.c:21:         assert(func0(x, y) == x + y);
	movl	-4(%rbp), %edx	# y, tmp126
	movl	-8(%rbp), %eax	# x, tmp127
	movl	%edx, %esi	# tmp126,
	movl	%eax, %edi	# tmp127,
	call	func0	#
# problem54.c:21:         assert(func0(x, y) == x + y);
	movl	-8(%rbp), %ecx	# x, tmp128
	movl	-4(%rbp), %edx	# y, tmp129
	addl	%ecx, %edx	# tmp128, _9
	cmpl	%edx, %eax	# _9, _8
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp130
	movq	%rax, %rcx	# tmp130,
	movl	$21, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp131
	movq	%rax, %rsi	# tmp131,
	leaq	.LC6(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	__assert_fail@PLT	#
.L10:
# problem54.c:18:     for (int i = 0; i < 100; i += 1) {
	addl	$1, -12(%rbp)	#, i
.L9:
# problem54.c:18:     for (int i = 0; i < 100; i += 1) {
	cmpl	$99, -12(%rbp)	#, i
	jle	.L11	#,
# problem54.c:23:     return 0;
	movl	$0, %eax	#, _24
# problem54.c:24: }
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
