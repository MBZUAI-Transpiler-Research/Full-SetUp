	.file	"problem151.c"
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
	movl	%edi, -20(%rbp)	# n, n
	movl	%esi, -24(%rbp)	# x, x
	movl	%edx, -28(%rbp)	# y, y
# problem151.c:4:     int isp = 1;
	movl	$1, -8(%rbp)	#, isp
# problem151.c:5:     if (n < 2) isp = 0;
	cmpl	$1, -20(%rbp)	#, n
	jg	.L2	#,
# problem151.c:5:     if (n < 2) isp = 0;
	movl	$0, -8(%rbp)	#, isp
.L2:
# problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	movl	$2, -4(%rbp)	#, i
# problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	jmp	.L3	#
.L5:
# problem151.c:7:         if (n % i == 0) isp = 0;
	movl	-20(%rbp), %eax	# n, tmp86
	cltd
	idivl	-4(%rbp)	# i
	movl	%edx, %eax	# tmp87, _1
# problem151.c:7:         if (n % i == 0) isp = 0;
	testl	%eax, %eax	# _1
	jne	.L4	#,
# problem151.c:7:         if (n % i == 0) isp = 0;
	movl	$0, -8(%rbp)	#, isp
.L4:
# problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	addl	$1, -4(%rbp)	#, i
.L3:
# problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	movl	-4(%rbp), %eax	# i, tmp89
	imull	%eax, %eax	# tmp89, _2
# problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	cmpl	%eax, -20(%rbp)	# _2, n
	jge	.L5	#,
# problem151.c:9:     if (isp) return x;
	cmpl	$0, -8(%rbp)	#, isp
	je	.L6	#,
# problem151.c:9:     if (isp) return x;
	movl	-24(%rbp), %eax	# x, _7
	jmp	.L7	#
.L6:
# problem151.c:10:     return y;
	movl	-28(%rbp), %eax	# y, _7
.L7:
# problem151.c:11: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem151.c"
.LC1:
	.string	"func0(7, 34, 12) == 34"
.LC2:
	.string	"func0(15, 8, 5) == 5"
.LC3:
	.string	"func0(3, 33, 5212) == 33"
.LC4:
	.string	"func0(1259, 3, 52) == 3"
.LC5:
	.string	"func0(7919, -1, 12) == -1"
.LC6:
	.string	"func0(3609, 1245, 583) == 583"
.LC7:
	.string	"func0(91, 56, 129) == 129"
.LC8:
	.string	"func0(6, 34, 1234) == 1234"
.LC9:
	.string	"func0(1, 2, 0) == 0"
.LC10:
	.string	"func0(2, 2, 0) == 2"
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
# problem151.c:18:     assert(func0(7, 34, 12) == 34);
	movl	$12, %edx	#,
	movl	$34, %esi	#,
	movl	$7, %edi	#,
	call	func0	#
	cmpl	$34, %eax	#, _1
	je	.L9	#,
# problem151.c:18:     assert(func0(7, 34, 12) == 34);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp94
	movq	%rax, %rcx	# tmp94,
	movl	$18, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC1(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__assert_fail@PLT	#
.L9:
# problem151.c:19:     assert(func0(15, 8, 5) == 5);
	movl	$5, %edx	#,
	movl	$8, %esi	#,
	movl	$15, %edi	#,
	call	func0	#
	cmpl	$5, %eax	#, _2
	je	.L10	#,
# problem151.c:19:     assert(func0(15, 8, 5) == 5);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$19, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC2(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L10:
# problem151.c:20:     assert(func0(3, 33, 5212) == 33);
	movl	$5212, %edx	#,
	movl	$33, %esi	#,
	movl	$3, %edi	#,
	call	func0	#
	cmpl	$33, %eax	#, _3
	je	.L11	#,
# problem151.c:20:     assert(func0(3, 33, 5212) == 33);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC3(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L11:
# problem151.c:21:     assert(func0(1259, 3, 52) == 3);
	movl	$52, %edx	#,
	movl	$3, %esi	#,
	movl	$1259, %edi	#,
	call	func0	#
	cmpl	$3, %eax	#, _4
	je	.L12	#,
# problem151.c:21:     assert(func0(1259, 3, 52) == 3);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$21, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC4(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L12:
# problem151.c:22:     assert(func0(7919, -1, 12) == -1);
	movl	$12, %edx	#,
	movl	$-1, %esi	#,
	movl	$7919, %edi	#,
	call	func0	#
	cmpl	$-1, %eax	#, _5
	je	.L13	#,
# problem151.c:22:     assert(func0(7919, -1, 12) == -1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC5(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L13:
# problem151.c:23:     assert(func0(3609, 1245, 583) == 583);
	movl	$583, %edx	#,
	movl	$1245, %esi	#,
	movl	$3609, %edi	#,
	call	func0	#
	cmpl	$583, %eax	#, _6
	je	.L14	#,
# problem151.c:23:     assert(func0(3609, 1245, 583) == 583);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$23, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC6(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L14:
# problem151.c:24:     assert(func0(91, 56, 129) == 129);
	movl	$129, %edx	#,
	movl	$56, %esi	#,
	movl	$91, %edi	#,
	call	func0	#
	cmpl	$129, %eax	#, _7
	je	.L15	#,
# problem151.c:24:     assert(func0(91, 56, 129) == 129);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$24, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC7(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L15:
# problem151.c:25:     assert(func0(6, 34, 1234) == 1234);
	movl	$1234, %edx	#,
	movl	$34, %esi	#,
	movl	$6, %edi	#,
	call	func0	#
	cmpl	$1234, %eax	#, _8
	je	.L16	#,
# problem151.c:25:     assert(func0(6, 34, 1234) == 1234);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp115
	movq	%rax, %rcx	# tmp115,
	movl	$25, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	leaq	.LC8(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	__assert_fail@PLT	#
.L16:
# problem151.c:26:     assert(func0(1, 2, 0) == 0);
	movl	$0, %edx	#,
	movl	$2, %esi	#,
	movl	$1, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _9
	je	.L17	#,
# problem151.c:26:     assert(func0(1, 2, 0) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp118
	movq	%rax, %rcx	# tmp118,
	movl	$26, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp119
	movq	%rax, %rsi	# tmp119,
	leaq	.LC9(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	__assert_fail@PLT	#
.L17:
# problem151.c:27:     assert(func0(2, 2, 0) == 2);
	movl	$0, %edx	#,
	movl	$2, %esi	#,
	movl	$2, %edi	#,
	call	func0	#
	cmpl	$2, %eax	#, _10
	je	.L18	#,
# problem151.c:27:     assert(func0(2, 2, 0) == 2);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$27, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC10(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	__assert_fail@PLT	#
.L18:
# problem151.c:29:     return 0;
	movl	$0, %eax	#, _32
# problem151.c:30: }
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
