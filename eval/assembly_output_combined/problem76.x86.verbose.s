	.file	"problem76.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	movl	%edi, -20(%rbp)	# a, a
# problem76.c:5:     if (a < 2) return 0;
	cmpl	$1, -20(%rbp)	#, a
	jg	.L2	#,
# problem76.c:5:     if (a < 2) return 0;
	movl	$0, %eax	#, _10
	jmp	.L3	#
.L2:
# problem76.c:6:     int num = 0;
	movl	$0, -8(%rbp)	#, num
# problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	movl	$2, -4(%rbp)	#, i
# problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	jmp	.L4	#
.L6:
# problem76.c:9:             a = a / i;
	movl	-20(%rbp), %eax	# a, tmp90
	cltd
	idivl	-4(%rbp)	# i
	movl	%eax, -20(%rbp)	# tmp88, a
# problem76.c:10:             num++;
	addl	$1, -8(%rbp)	#, num
.L5:
# problem76.c:8:         while (a % i == 0) {
	movl	-20(%rbp), %eax	# a, tmp91
	cltd
	idivl	-4(%rbp)	# i
	movl	%edx, %eax	# tmp92, _1
# problem76.c:8:         while (a % i == 0) {
	testl	%eax, %eax	# _1
	je	.L6	#,
# problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	addl	$1, -4(%rbp)	#, i
.L4:
# problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	movl	-4(%rbp), %eax	# i, tmp94
	imull	%eax, %eax	# tmp94, _2
# problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	cmpl	%eax, -20(%rbp)	# _2, a
	jge	.L5	#,
# problem76.c:13:     if (a > 1) num++;
	cmpl	$1, -20(%rbp)	#, a
	jle	.L8	#,
# problem76.c:13:     if (a > 1) num++;
	addl	$1, -8(%rbp)	#, num
.L8:
# problem76.c:14:     return num == 3;
	cmpl	$3, -8(%rbp)	#, num
	sete	%al	#, _3
	movzbl	%al, %eax	# _3, _10
.L3:
# problem76.c:15: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem76.c"
.LC1:
	.string	"func0(5) == 0"
.LC2:
	.string	"func0(30) == 1"
.LC3:
	.string	"func0(8) == 1"
.LC4:
	.string	"func0(10) == 0"
.LC5:
	.string	"func0(125) == 1"
.LC6:
	.string	"func0(3 * 5 * 7) == 1"
.LC7:
	.string	"func0(3 * 6 * 7) == 0"
.LC8:
	.string	"func0(9 * 9 * 9) == 0"
.LC9:
	.string	"func0(11 * 9 * 9) == 0"
.LC10:
	.string	"func0(11 * 13 * 7) == 1"
.LC11:
	.string	"All tests passed!"
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
# problem76.c:23:     assert(func0(5) == 0);
	movl	$5, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _1
	je	.L10	#,
# problem76.c:23:     assert(func0(5) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp94
	movq	%rax, %rcx	# tmp94,
	movl	$23, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC1(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__assert_fail@PLT	#
.L10:
# problem76.c:24:     assert(func0(30) == 1);
	movl	$30, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _2
	je	.L11	#,
# problem76.c:24:     assert(func0(30) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$24, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC2(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L11:
# problem76.c:25:     assert(func0(8) == 1); // 8 = 2 * 2 * 2
	movl	$8, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _3
	je	.L12	#,
# problem76.c:25:     assert(func0(8) == 1); // 8 = 2 * 2 * 2
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$25, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC3(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L12:
# problem76.c:26:     assert(func0(10) == 0);
	movl	$10, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _4
	je	.L13	#,
# problem76.c:26:     assert(func0(10) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$26, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC4(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L13:
# problem76.c:27:     assert(func0(125) == 1); // 125 = 5 * 5 * 5 (three times the same prime)
	movl	$125, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _5
	je	.L14	#,
# problem76.c:27:     assert(func0(125) == 1); // 125 = 5 * 5 * 5 (three times the same prime)
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$27, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC5(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L14:
# problem76.c:28:     assert(func0(3 * 5 * 7) == 1);
	movl	$105, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _6
	je	.L15	#,
# problem76.c:28:     assert(func0(3 * 5 * 7) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$28, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC6(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L15:
# problem76.c:29:     assert(func0(3 * 6 * 7) == 0);
	movl	$126, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _7
	je	.L16	#,
# problem76.c:29:     assert(func0(3 * 6 * 7) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$29, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC7(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L16:
# problem76.c:30:     assert(func0(9 * 9 * 9) == 0);
	movl	$729, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _8
	je	.L17	#,
# problem76.c:30:     assert(func0(9 * 9 * 9) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp115
	movq	%rax, %rcx	# tmp115,
	movl	$30, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	leaq	.LC8(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	__assert_fail@PLT	#
.L17:
# problem76.c:31:     assert(func0(11 * 9 * 9) == 0);
	movl	$891, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _9
	je	.L18	#,
# problem76.c:31:     assert(func0(11 * 9 * 9) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp118
	movq	%rax, %rcx	# tmp118,
	movl	$31, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp119
	movq	%rax, %rsi	# tmp119,
	leaq	.LC9(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	__assert_fail@PLT	#
.L18:
# problem76.c:32:     assert(func0(11 * 13 * 7) == 1);
	movl	$1001, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _10
	je	.L19	#,
# problem76.c:32:     assert(func0(11 * 13 * 7) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$32, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC10(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	__assert_fail@PLT	#
.L19:
# problem76.c:34:     printf("All tests passed!\n");
	leaq	.LC11(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	puts@PLT	#
# problem76.c:36:     return 0;
	movl	$0, %eax	#, _33
# problem76.c:37: }
	popq	%rbp	#
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
