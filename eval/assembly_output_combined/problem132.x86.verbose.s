	.file	"problem132.c"
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
# problem132.c:4:     int prod = 1, has_odd = 0, digit;
	movl	$1, -12(%rbp)	#, prod
# problem132.c:4:     int prod = 1, has_odd = 0, digit;
	movl	$0, -8(%rbp)	#, has_odd
# problem132.c:5:     while (n > 0) {
	jmp	.L2	#
.L4:
# problem132.c:6:         digit = n % 10;
	movl	-20(%rbp), %edx	# n, tmp86
	movslq	%edx, %rax	# tmp86, tmp87
	imulq	$1717986919, %rax, %rax	#, tmp87, tmp88
	shrq	$32, %rax	#, tmp89
	sarl	$2, %eax	#, tmp90
	movl	%edx, %esi	# tmp86, tmp91
	sarl	$31, %esi	#, tmp91
	subl	%esi, %eax	# tmp91, tmp90
	movl	%eax, %ecx	# tmp90, tmp85
	movl	%ecx, %eax	# tmp85, tmp92
	sall	$2, %eax	#, tmp92
	addl	%ecx, %eax	# tmp85, tmp92
	addl	%eax, %eax	# tmp93
	subl	%eax, %edx	# tmp92, tmp94
	movl	%edx, -4(%rbp)	# tmp94, digit
# problem132.c:7:         if (digit % 2 == 1) {
	movl	-4(%rbp), %eax	# digit, tmp95
	cltd
	shrl	$31, %edx	#, tmp97
	addl	%edx, %eax	# tmp97, tmp98
	andl	$1, %eax	#, tmp99
	subl	%edx, %eax	# tmp97, tmp100
# problem132.c:7:         if (digit % 2 == 1) {
	cmpl	$1, %eax	#, _1
	jne	.L3	#,
# problem132.c:8:             has_odd = 1;
	movl	$1, -8(%rbp)	#, has_odd
# problem132.c:9:             prod *= digit;
	movl	-12(%rbp), %eax	# prod, tmp102
	imull	-4(%rbp), %eax	# digit, tmp101
	movl	%eax, -12(%rbp)	# tmp101, prod
.L3:
# problem132.c:11:         n /= 10;
	movl	-20(%rbp), %eax	# n, tmp104
	movslq	%eax, %rdx	# tmp104, tmp105
	imulq	$1717986919, %rdx, %rdx	#, tmp105, tmp106
	shrq	$32, %rdx	#, tmp107
	sarl	$2, %edx	#, tmp108
	sarl	$31, %eax	#, tmp104
	movl	%eax, %ecx	# tmp104, tmp109
	movl	%edx, %eax	# tmp108, tmp108
	subl	%ecx, %eax	# tmp109, tmp108
	movl	%eax, -20(%rbp)	# tmp103, n
.L2:
# problem132.c:5:     while (n > 0) {
	cmpl	$0, -20(%rbp)	#, n
	jg	.L4	#,
# problem132.c:13:     return has_odd ? prod : 0;
	cmpl	$0, -8(%rbp)	#, has_odd
	je	.L5	#,
# problem132.c:13:     return has_odd ? prod : 0;
	movl	-12(%rbp), %eax	# prod, iftmp.0_7
	jmp	.L7	#
.L5:
# problem132.c:13:     return has_odd ? prod : 0;
	movl	$0, %eax	#, iftmp.0_7
.L7:
# problem132.c:14: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem132.c"
.LC1:
	.string	"func0(5) == 5"
.LC2:
	.string	"func0(54) == 5"
.LC3:
	.string	"func0(120) == 1"
.LC4:
	.string	"func0(5014) == 5"
.LC5:
	.string	"func0(98765) == 315"
.LC6:
	.string	"func0(5576543) == 2625"
.LC7:
	.string	"func0(2468) == 0"
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
# problem132.c:21:     assert(func0(5) == 5);
	movl	$5, %edi	#,
	call	func0	#
	cmpl	$5, %eax	#, _1
	je	.L9	#,
# problem132.c:21:     assert(func0(5) == 5);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp91
	movq	%rax, %rcx	# tmp91,
	movl	$21, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	.LC1(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	__assert_fail@PLT	#
.L9:
# problem132.c:22:     assert(func0(54) == 5);
	movl	$54, %edi	#,
	call	func0	#
	cmpl	$5, %eax	#, _2
	je	.L10	#,
# problem132.c:22:     assert(func0(54) == 5);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp94
	movq	%rax, %rcx	# tmp94,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC2(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__assert_fail@PLT	#
.L10:
# problem132.c:23:     assert(func0(120) == 1);
	movl	$120, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _3
	je	.L11	#,
# problem132.c:23:     assert(func0(120) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$23, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC3(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L11:
# problem132.c:24:     assert(func0(5014) == 5);
	movl	$5014, %edi	#,
	call	func0	#
	cmpl	$5, %eax	#, _4
	je	.L12	#,
# problem132.c:24:     assert(func0(5014) == 5);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$24, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC4(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L12:
# problem132.c:25:     assert(func0(98765) == 315);
	movl	$98765, %edi	#,
	call	func0	#
	cmpl	$315, %eax	#, _5
	je	.L13	#,
# problem132.c:25:     assert(func0(98765) == 315);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$25, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC5(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L13:
# problem132.c:26:     assert(func0(5576543) == 2625);
	movl	$5576543, %edi	#,
	call	func0	#
	cmpl	$2625, %eax	#, _6
	je	.L14	#,
# problem132.c:26:     assert(func0(5576543) == 2625);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$26, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC6(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L14:
# problem132.c:27:     assert(func0(2468) == 0);
	movl	$2468, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _7
	je	.L15	#,
# problem132.c:27:     assert(func0(2468) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$27, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC7(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L15:
# problem132.c:29:     return 0;
	movl	$0, %eax	#, _23
# problem132.c:30: }
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
