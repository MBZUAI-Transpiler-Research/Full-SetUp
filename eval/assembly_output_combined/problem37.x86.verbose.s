	.file	"problem37.c"
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
	movl	%edi, -20(%rbp)	# n, n
# problem37.c:4:     int count = 0;
	movl	$0, -12(%rbp)	#, count
# problem37.c:5:     for (int i = 0; i < n; i++)
	movl	$0, -8(%rbp)	#, i
# problem37.c:5:     for (int i = 0; i < n; i++)
	jmp	.L2	#
.L8:
# problem37.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	movl	-8(%rbp), %ecx	# i, tmp87
	movslq	%ecx, %rax	# tmp87, tmp88
	imulq	$780903145, %rax, %rax	#, tmp88, tmp89
	shrq	$32, %rax	#, tmp90
	movl	%eax, %edx	# tmp90, tmp91
	sarl	%edx	# tmp91
	movl	%ecx, %eax	# tmp87, tmp92
	sarl	$31, %eax	#, tmp92
	subl	%eax, %edx	# tmp92, _1
	movl	%edx, %eax	# _1, tmp93
	sall	$2, %eax	#, tmp93
	addl	%edx, %eax	# _1, tmp93
	addl	%eax, %eax	# tmp93
	addl	%edx, %eax	# _1, tmp93
	subl	%eax, %ecx	# tmp93, tmp87
	movl	%ecx, %edx	# tmp87, _1
# problem37.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	testl	%edx, %edx	# _1
	je	.L3	#,
# problem37.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	movl	-8(%rbp), %ecx	# i, tmp94
	movslq	%ecx, %rax	# tmp94, tmp95
	imulq	$1321528399, %rax, %rax	#, tmp95, tmp96
	shrq	$32, %rax	#, tmp97
	movl	%eax, %edx	# tmp97, tmp98
	sarl	$2, %edx	#, tmp98
	movl	%ecx, %eax	# tmp94, tmp99
	sarl	$31, %eax	#, tmp99
	subl	%eax, %edx	# tmp99, _2
	movl	%edx, %eax	# _2, tmp100
	addl	%eax, %eax	# tmp100
	addl	%edx, %eax	# _2, tmp100
	sall	$2, %eax	#, tmp100
	addl	%edx, %eax	# _2, tmp100
	subl	%eax, %ecx	# tmp100, tmp94
	movl	%ecx, %edx	# tmp94, _2
# problem37.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	testl	%edx, %edx	# _2
	jne	.L4	#,
.L3:
# problem37.c:7:             int q = i;
	movl	-8(%rbp), %eax	# i, tmp101
	movl	%eax, -4(%rbp)	# tmp101, q
# problem37.c:8:             while (q > 0) {
	jmp	.L5	#
.L7:
# problem37.c:9:                 if (q % 10 == 7) count += 1;
	movl	-4(%rbp), %ecx	# q, tmp102
	movslq	%ecx, %rax	# tmp102, tmp103
	imulq	$1717986919, %rax, %rax	#, tmp103, tmp104
	shrq	$32, %rax	#, tmp105
	movl	%eax, %edx	# tmp105, tmp106
	sarl	$2, %edx	#, tmp106
	movl	%ecx, %eax	# tmp102, tmp107
	sarl	$31, %eax	#, tmp107
	subl	%eax, %edx	# tmp107, _3
	movl	%edx, %eax	# _3, tmp108
	sall	$2, %eax	#, tmp108
	addl	%edx, %eax	# _3, tmp108
	addl	%eax, %eax	# tmp109
	subl	%eax, %ecx	# tmp108, tmp102
	movl	%ecx, %edx	# tmp102, _3
# problem37.c:9:                 if (q % 10 == 7) count += 1;
	cmpl	$7, %edx	#, _3
	jne	.L6	#,
# problem37.c:9:                 if (q % 10 == 7) count += 1;
	addl	$1, -12(%rbp)	#, count
.L6:
# problem37.c:10:                 q = q / 10;
	movl	-4(%rbp), %eax	# q, tmp111
	movslq	%eax, %rdx	# tmp111, tmp112
	imulq	$1717986919, %rdx, %rdx	#, tmp112, tmp113
	shrq	$32, %rdx	#, tmp114
	movl	%edx, %ecx	# tmp114, tmp115
	sarl	$2, %ecx	#, tmp115
	cltd
	movl	%ecx, %eax	# tmp115, tmp115
	subl	%edx, %eax	# tmp116, tmp115
	movl	%eax, -4(%rbp)	# tmp110, q
.L5:
# problem37.c:8:             while (q > 0) {
	cmpl	$0, -4(%rbp)	#, q
	jg	.L7	#,
.L4:
# problem37.c:5:     for (int i = 0; i < n; i++)
	addl	$1, -8(%rbp)	#, i
.L2:
# problem37.c:5:     for (int i = 0; i < n; i++)
	movl	-8(%rbp), %eax	# i, tmp117
	cmpl	-20(%rbp), %eax	# n, tmp117
	jl	.L8	#,
# problem37.c:13:     return count;
	movl	-12(%rbp), %eax	# count, _13
# problem37.c:14: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem37.c"
.LC1:
	.string	"func0(50) == 0"
.LC2:
	.string	"func0(78) == 2"
.LC3:
	.string	"func0(79) == 3"
.LC4:
	.string	"func0(100) == 3"
.LC5:
	.string	"func0(200) == 6"
.LC6:
	.string	"func0(4000) == 192"
.LC7:
	.string	"func0(10000) == 639"
.LC8:
	.string	"func0(100000) == 8026"
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
# problem37.c:22:     assert(func0(50) == 0);
	movl	$50, %edi	#,
	call	func0	#
# problem37.c:22:     assert(func0(50) == 0);
	testl	%eax, %eax	# _1
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC1(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L11:
# problem37.c:23:     assert(func0(78) == 2);
	movl	$78, %edi	#,
	call	func0	#
# problem37.c:23:     assert(func0(78) == 2);
	cmpl	$2, %eax	#, _2
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$23, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC2(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L12:
# problem37.c:24:     assert(func0(79) == 3);
	movl	$79, %edi	#,
	call	func0	#
# problem37.c:24:     assert(func0(79) == 3);
	cmpl	$3, %eax	#, _3
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$24, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC3(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L13:
# problem37.c:25:     assert(func0(100) == 3);
	movl	$100, %edi	#,
	call	func0	#
# problem37.c:25:     assert(func0(100) == 3);
	cmpl	$3, %eax	#, _4
	je	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$25, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC4(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L14:
# problem37.c:26:     assert(func0(200) == 6);
	movl	$200, %edi	#,
	call	func0	#
# problem37.c:26:     assert(func0(200) == 6);
	cmpl	$6, %eax	#, _5
	je	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$26, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC5(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L15:
# problem37.c:27:     assert(func0(4000) == 192);
	movl	$4000, %edi	#,
	call	func0	#
# problem37.c:27:     assert(func0(4000) == 192);
	cmpl	$192, %eax	#, _6
	je	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$27, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC6(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L16:
# problem37.c:28:     assert(func0(10000) == 639);
	movl	$10000, %edi	#,
	call	func0	#
# problem37.c:28:     assert(func0(10000) == 639);
	cmpl	$639, %eax	#, _7
	je	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp110
	movq	%rax, %rcx	# tmp110,
	movl	$28, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	leaq	.LC7(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	__assert_fail@PLT	#
.L17:
# problem37.c:29:     assert(func0(100000) == 8026);
	movl	$100000, %edi	#,
	call	func0	#
# problem37.c:29:     assert(func0(100000) == 8026);
	cmpl	$8026, %eax	#, _8
	je	.L18	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$29, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC8(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L18:
	movl	$0, %eax	#, _26
# problem37.c:30: }
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
