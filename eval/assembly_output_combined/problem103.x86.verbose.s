	.file	"problem103.c"
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
# problem103.c:4:     if (y < x) return -1;
	movl	-8(%rbp), %eax	# y, tmp86
	cmpl	-4(%rbp), %eax	# x, tmp86
	jge	.L2	#,
# problem103.c:4:     if (y < x) return -1;
	movl	$-1, %eax	#, _3
# problem103.c:4:     if (y < x) return -1;
	jmp	.L3	#
.L2:
# problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	movl	-8(%rbp), %eax	# y, tmp87
	cmpl	-4(%rbp), %eax	# x, tmp87
	jne	.L4	#,
# problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	movl	-8(%rbp), %edx	# y, tmp88
	movl	%edx, %eax	# tmp88, tmp89
	sarl	$31, %eax	#, tmp89
	shrl	$31, %eax	#, tmp90
	addl	%eax, %edx	# tmp90, tmp91
	andl	$1, %edx	#, tmp92
	subl	%eax, %edx	# tmp90, tmp93
	movl	%edx, %eax	# tmp93, _1
# problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	cmpl	$1, %eax	#, _1
	jne	.L4	#,
# problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	movl	$-1, %eax	#, _3
# problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	jmp	.L3	#
.L4:
# problem103.c:6:     if (y % 2 == 1) return y - 1;
	movl	-8(%rbp), %edx	# y, tmp94
	movl	%edx, %eax	# tmp94, tmp95
	sarl	$31, %eax	#, tmp95
	shrl	$31, %eax	#, tmp96
	addl	%eax, %edx	# tmp96, tmp97
	andl	$1, %edx	#, tmp98
	subl	%eax, %edx	# tmp96, tmp99
	movl	%edx, %eax	# tmp99, _2
# problem103.c:6:     if (y % 2 == 1) return y - 1;
	cmpl	$1, %eax	#, _2
	jne	.L5	#,
# problem103.c:6:     if (y % 2 == 1) return y - 1;
	movl	-8(%rbp), %eax	# y, tmp100
	subl	$1, %eax	#, _3
# problem103.c:6:     if (y % 2 == 1) return y - 1;
	jmp	.L3	#
.L5:
# problem103.c:7:     return y;
	movl	-8(%rbp), %eax	# y, _3
.L3:
# problem103.c:8: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem103.c"
.LC1:
	.string	"func0(12, 15) == 14"
.LC2:
	.string	"func0(13, 12) == -1"
.LC3:
	.string	"func0(33, 12354) == 12354"
.LC4:
	.string	"func0(5234, 5233) == -1"
.LC5:
	.string	"func0(6, 29) == 28"
.LC6:
	.string	"func0(27, 10) == -1"
.LC7:
	.string	"func0(7, 7) == -1"
.LC8:
	.string	"func0(546, 546) == 546"
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
# problem103.c:15:     assert(func0(12, 15) == 14);
	movl	$15, %esi	#,
	movl	$12, %edi	#,
	call	func0	#
# problem103.c:15:     assert(func0(12, 15) == 14);
	cmpl	$14, %eax	#, _1
	je	.L7	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$15, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC1(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L7:
# problem103.c:16:     assert(func0(13, 12) == -1);
	movl	$12, %esi	#,
	movl	$13, %edi	#,
	call	func0	#
# problem103.c:16:     assert(func0(13, 12) == -1);
	cmpl	$-1, %eax	#, _2
	je	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$16, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC2(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L8:
# problem103.c:17:     assert(func0(33, 12354) == 12354);
	movl	$12354, %esi	#,
	movl	$33, %edi	#,
	call	func0	#
# problem103.c:17:     assert(func0(33, 12354) == 12354);
	cmpl	$12354, %eax	#, _3
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$17, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC3(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L9:
# problem103.c:18:     assert(func0(5234, 5233) == -1);
	movl	$5233, %esi	#,
	movl	$5234, %edi	#,
	call	func0	#
# problem103.c:18:     assert(func0(5234, 5233) == -1);
	cmpl	$-1, %eax	#, _4
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$18, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC4(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L10:
# problem103.c:19:     assert(func0(6, 29) == 28);
	movl	$29, %esi	#,
	movl	$6, %edi	#,
	call	func0	#
# problem103.c:19:     assert(func0(6, 29) == 28);
	cmpl	$28, %eax	#, _5
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$19, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC5(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L11:
# problem103.c:20:     assert(func0(27, 10) == -1);
	movl	$10, %esi	#,
	movl	$27, %edi	#,
	call	func0	#
# problem103.c:20:     assert(func0(27, 10) == -1);
	cmpl	$-1, %eax	#, _6
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC6(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L12:
# problem103.c:21:     assert(func0(7, 7) == -1);
	movl	$7, %esi	#,
	movl	$7, %edi	#,
	call	func0	#
# problem103.c:21:     assert(func0(7, 7) == -1);
	cmpl	$-1, %eax	#, _7
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp110
	movq	%rax, %rcx	# tmp110,
	movl	$21, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	leaq	.LC7(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	__assert_fail@PLT	#
.L13:
# problem103.c:22:     assert(func0(546, 546) == 546);
	movl	$546, %esi	#,
	movl	$546, %edi	#,
	call	func0	#
# problem103.c:22:     assert(func0(546, 546) == 546);
	cmpl	$546, %eax	#, _8
	je	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC8(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L14:
# problem103.c:24:     return 0;
	movl	$0, %eax	#, _26
# problem103.c:25: }
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
