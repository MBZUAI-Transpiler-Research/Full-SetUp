	.file	"problem77.c"
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
	movl	%edi, -20(%rbp)	# x, x
	movl	%esi, -24(%rbp)	# n, n
# problem77.c:4:     int p = 1, count = 0;
	movl	$1, -8(%rbp)	#, p
# problem77.c:4:     int p = 1, count = 0;
	movl	$0, -4(%rbp)	#, count
# problem77.c:5:     while (p <= x && count < 100) {
	jmp	.L2	#
.L6:
# problem77.c:6:         if (p == x) return 1;
	movl	-8(%rbp), %eax	# p, tmp84
	cmpl	-20(%rbp), %eax	# x, tmp84
	jne	.L3	#,
# problem77.c:6:         if (p == x) return 1;
	movl	$1, %eax	#, _3
	jmp	.L4	#
.L3:
# problem77.c:7:         p = p * n; count += 1;
	movl	-8(%rbp), %eax	# p, tmp86
	imull	-24(%rbp), %eax	# n, tmp85
	movl	%eax, -8(%rbp)	# tmp85, p
# problem77.c:7:         p = p * n; count += 1;
	addl	$1, -4(%rbp)	#, count
.L2:
# problem77.c:5:     while (p <= x && count < 100) {
	movl	-8(%rbp), %eax	# p, tmp87
	cmpl	-20(%rbp), %eax	# x, tmp87
	jg	.L5	#,
# problem77.c:5:     while (p <= x && count < 100) {
	cmpl	$99, -4(%rbp)	#, count
	jle	.L6	#,
.L5:
# problem77.c:9:     return 0;
	movl	$0, %eax	#, _3
.L4:
# problem77.c:10: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem77.c"
.LC1:
	.string	"func0(1, 4) == 1"
.LC2:
	.string	"func0(2, 2) == 1"
.LC3:
	.string	"func0(8, 2) == 1"
.LC4:
	.string	"func0(3, 2) == 0"
.LC5:
	.string	"func0(3, 1) == 0"
.LC6:
	.string	"func0(5, 3) == 0"
.LC7:
	.string	"func0(16, 2) == 1"
.LC8:
	.string	"func0(143214, 16) == 0"
.LC9:
	.string	"func0(4, 2) == 1"
.LC10:
	.string	"func0(9, 3) == 1"
.LC11:
	.string	"func0(16, 4) == 1"
.LC12:
	.string	"func0(24, 2) == 0"
.LC13:
	.string	"func0(128, 4) == 0"
.LC14:
	.string	"func0(12, 6) == 0"
.LC15:
	.string	"func0(1, 1) == 1"
.LC16:
	.string	"func0(1, 12) == 1"
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
# problem77.c:17:     assert(func0(1, 4) == 1);
	movl	$4, %esi	#,
	movl	$1, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _1
	je	.L8	#,
# problem77.c:17:     assert(func0(1, 4) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$17, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC1(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L8:
# problem77.c:18:     assert(func0(2, 2) == 1);
	movl	$2, %esi	#,
	movl	$2, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _2
	je	.L9	#,
# problem77.c:18:     assert(func0(2, 2) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$18, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC2(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L9:
# problem77.c:19:     assert(func0(8, 2) == 1);
	movl	$2, %esi	#,
	movl	$8, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _3
	je	.L10	#,
# problem77.c:19:     assert(func0(8, 2) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$19, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC3(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L10:
# problem77.c:20:     assert(func0(3, 2) == 0);
	movl	$2, %esi	#,
	movl	$3, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _4
	je	.L11	#,
# problem77.c:20:     assert(func0(3, 2) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC4(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L11:
# problem77.c:21:     assert(func0(3, 1) == 0);
	movl	$1, %esi	#,
	movl	$3, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _5
	je	.L12	#,
# problem77.c:21:     assert(func0(3, 1) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$21, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC5(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L12:
# problem77.c:22:     assert(func0(5, 3) == 0);
	movl	$3, %esi	#,
	movl	$5, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _6
	je	.L13	#,
# problem77.c:22:     assert(func0(5, 3) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp115
	movq	%rax, %rcx	# tmp115,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	leaq	.LC6(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	__assert_fail@PLT	#
.L13:
# problem77.c:23:     assert(func0(16, 2) == 1);
	movl	$2, %esi	#,
	movl	$16, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _7
	je	.L14	#,
# problem77.c:23:     assert(func0(16, 2) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp118
	movq	%rax, %rcx	# tmp118,
	movl	$23, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp119
	movq	%rax, %rsi	# tmp119,
	leaq	.LC7(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	__assert_fail@PLT	#
.L14:
# problem77.c:24:     assert(func0(143214, 16) == 0);
	movl	$16, %esi	#,
	movl	$143214, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _8
	je	.L15	#,
# problem77.c:24:     assert(func0(143214, 16) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$24, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC8(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	__assert_fail@PLT	#
.L15:
# problem77.c:25:     assert(func0(4, 2) == 1);
	movl	$2, %esi	#,
	movl	$4, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _9
	je	.L16	#,
# problem77.c:25:     assert(func0(4, 2) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp124
	movq	%rax, %rcx	# tmp124,
	movl	$25, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp125
	movq	%rax, %rsi	# tmp125,
	leaq	.LC9(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	__assert_fail@PLT	#
.L16:
# problem77.c:26:     assert(func0(9, 3) == 1);
	movl	$3, %esi	#,
	movl	$9, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _10
	je	.L17	#,
# problem77.c:26:     assert(func0(9, 3) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp127
	movq	%rax, %rcx	# tmp127,
	movl	$26, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	leaq	.LC10(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	__assert_fail@PLT	#
.L17:
# problem77.c:27:     assert(func0(16, 4) == 1);
	movl	$4, %esi	#,
	movl	$16, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _11
	je	.L18	#,
# problem77.c:27:     assert(func0(16, 4) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp130
	movq	%rax, %rcx	# tmp130,
	movl	$27, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp131
	movq	%rax, %rsi	# tmp131,
	leaq	.LC11(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	__assert_fail@PLT	#
.L18:
# problem77.c:28:     assert(func0(24, 2) == 0);
	movl	$2, %esi	#,
	movl	$24, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _12
	je	.L19	#,
# problem77.c:28:     assert(func0(24, 2) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp133
	movq	%rax, %rcx	# tmp133,
	movl	$28, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp134
	movq	%rax, %rsi	# tmp134,
	leaq	.LC12(%rip), %rax	#, tmp135
	movq	%rax, %rdi	# tmp135,
	call	__assert_fail@PLT	#
.L19:
# problem77.c:29:     assert(func0(128, 4) == 0);
	movl	$4, %esi	#,
	movl	$128, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _13
	je	.L20	#,
# problem77.c:29:     assert(func0(128, 4) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp136
	movq	%rax, %rcx	# tmp136,
	movl	$29, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp137
	movq	%rax, %rsi	# tmp137,
	leaq	.LC13(%rip), %rax	#, tmp138
	movq	%rax, %rdi	# tmp138,
	call	__assert_fail@PLT	#
.L20:
# problem77.c:30:     assert(func0(12, 6) == 0);
	movl	$6, %esi	#,
	movl	$12, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _14
	je	.L21	#,
# problem77.c:30:     assert(func0(12, 6) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp139
	movq	%rax, %rcx	# tmp139,
	movl	$30, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp140
	movq	%rax, %rsi	# tmp140,
	leaq	.LC14(%rip), %rax	#, tmp141
	movq	%rax, %rdi	# tmp141,
	call	__assert_fail@PLT	#
.L21:
# problem77.c:31:     assert(func0(1, 1) == 1);
	movl	$1, %esi	#,
	movl	$1, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _15
	je	.L22	#,
# problem77.c:31:     assert(func0(1, 1) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp142
	movq	%rax, %rcx	# tmp142,
	movl	$31, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp143
	movq	%rax, %rsi	# tmp143,
	leaq	.LC15(%rip), %rax	#, tmp144
	movq	%rax, %rdi	# tmp144,
	call	__assert_fail@PLT	#
.L22:
# problem77.c:32:     assert(func0(1, 12) == 1);
	movl	$12, %esi	#,
	movl	$1, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _16
	je	.L23	#,
# problem77.c:32:     assert(func0(1, 12) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp145
	movq	%rax, %rcx	# tmp145,
	movl	$32, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp146
	movq	%rax, %rsi	# tmp146,
	leaq	.LC16(%rip), %rax	#, tmp147
	movq	%rax, %rdi	# tmp147,
	call	__assert_fail@PLT	#
.L23:
# problem77.c:34:     return 0;
	movl	$0, %eax	#, _50
# problem77.c:35: }
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
