	.file	"problem40.c"
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
	movl	%edi, -36(%rbp)	# n, n
# problem40.c:4:     int f1 = 1, f2 = 2, m;
	movl	$1, -24(%rbp)	#, f1
# problem40.c:4:     int f1 = 1, f2 = 2, m;
	movl	$2, -20(%rbp)	#, f2
# problem40.c:5:     int count = 0;
	movl	$0, -16(%rbp)	#, count
# problem40.c:6:     while (count < n) {
	jmp	.L2	#
.L9:
# problem40.c:7:         f1 = f1 + f2;
	movl	-20(%rbp), %eax	# f2, tmp86
	addl	%eax, -24(%rbp)	# tmp86, f1
# problem40.c:8:         m = f1; f1 = f2; f2 = m;
	movl	-24(%rbp), %eax	# f1, tmp87
	movl	%eax, -4(%rbp)	# tmp87, m
# problem40.c:8:         m = f1; f1 = f2; f2 = m;
	movl	-20(%rbp), %eax	# f2, tmp88
	movl	%eax, -24(%rbp)	# tmp88, f1
# problem40.c:8:         m = f1; f1 = f2; f2 = m;
	movl	-4(%rbp), %eax	# m, tmp89
	movl	%eax, -20(%rbp)	# tmp89, f2
# problem40.c:9:         int isprime = 1;
	movl	$1, -12(%rbp)	#, isprime
# problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	movl	$2, -8(%rbp)	#, w
# problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	jmp	.L3	#
.L6:
# problem40.c:11:             if (f1 % w == 0) {
	movl	-24(%rbp), %eax	# f1, tmp90
	cltd
	idivl	-8(%rbp)	# w
	movl	%edx, %eax	# tmp91, _1
# problem40.c:11:             if (f1 % w == 0) {
	testl	%eax, %eax	# _1
	jne	.L4	#,
# problem40.c:12:                 isprime = 0; break;
	movl	$0, -12(%rbp)	#, isprime
# problem40.c:12:                 isprime = 0; break;
	jmp	.L5	#
.L4:
# problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	addl	$1, -8(%rbp)	#, w
.L3:
# problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	movl	-8(%rbp), %eax	# w, tmp93
	imull	%eax, %eax	# tmp93, _2
# problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	cmpl	%eax, -24(%rbp)	# _2, f1
	jge	.L6	#,
.L5:
# problem40.c:15:         if (isprime) count += 1;
	cmpl	$0, -12(%rbp)	#, isprime
	je	.L7	#,
# problem40.c:15:         if (isprime) count += 1;
	addl	$1, -16(%rbp)	#, count
.L7:
# problem40.c:16:         if (count == n) return f1;
	movl	-16(%rbp), %eax	# count, tmp94
	cmpl	-36(%rbp), %eax	# n, tmp94
	jne	.L2	#,
# problem40.c:16:         if (count == n) return f1;
	movl	-24(%rbp), %eax	# f1, _9
# problem40.c:16:         if (count == n) return f1;
	jmp	.L8	#
.L2:
# problem40.c:6:     while (count < n) {
	movl	-16(%rbp), %eax	# count, tmp95
	cmpl	-36(%rbp), %eax	# n, tmp95
	jl	.L9	#,
# problem40.c:18:     return 0;
	movl	$0, %eax	#, _9
.L8:
# problem40.c:19: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem40.c"
.LC1:
	.string	"func0(1) == 2"
.LC2:
	.string	"func0(2) == 3"
.LC3:
	.string	"func0(3) == 5"
.LC4:
	.string	"func0(4) == 13"
.LC5:
	.string	"func0(5) == 89"
.LC6:
	.string	"func0(6) == 233"
.LC7:
	.string	"func0(7) == 1597"
.LC8:
	.string	"func0(8) == 28657"
.LC9:
	.string	"func0(9) == 514229"
.LC10:
	.string	"func0(10) == 433494437"
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
# problem40.c:27:     assert(func0(1) == 2);
	movl	$1, %edi	#,
	call	func0	#
# problem40.c:27:     assert(func0(1) == 2);
	cmpl	$2, %eax	#, _1
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp94
	movq	%rax, %rcx	# tmp94,
	movl	$27, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC1(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__assert_fail@PLT	#
.L11:
# problem40.c:28:     assert(func0(2) == 3);
	movl	$2, %edi	#,
	call	func0	#
# problem40.c:28:     assert(func0(2) == 3);
	cmpl	$3, %eax	#, _2
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$28, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC2(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L12:
# problem40.c:29:     assert(func0(3) == 5);
	movl	$3, %edi	#,
	call	func0	#
# problem40.c:29:     assert(func0(3) == 5);
	cmpl	$5, %eax	#, _3
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$29, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC3(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L13:
# problem40.c:30:     assert(func0(4) == 13);
	movl	$4, %edi	#,
	call	func0	#
# problem40.c:30:     assert(func0(4) == 13);
	cmpl	$13, %eax	#, _4
	je	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$30, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC4(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L14:
# problem40.c:31:     assert(func0(5) == 89);
	movl	$5, %edi	#,
	call	func0	#
# problem40.c:31:     assert(func0(5) == 89);
	cmpl	$89, %eax	#, _5
	je	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$31, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC5(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L15:
# problem40.c:32:     assert(func0(6) == 233);
	movl	$6, %edi	#,
	call	func0	#
# problem40.c:32:     assert(func0(6) == 233);
	cmpl	$233, %eax	#, _6
	je	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$32, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC6(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L16:
# problem40.c:33:     assert(func0(7) == 1597);
	movl	$7, %edi	#,
	call	func0	#
# problem40.c:33:     assert(func0(7) == 1597);
	cmpl	$1597, %eax	#, _7
	je	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$33, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC7(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L17:
# problem40.c:34:     assert(func0(8) == 28657);
	movl	$8, %edi	#,
	call	func0	#
# problem40.c:34:     assert(func0(8) == 28657);
	cmpl	$28657, %eax	#, _8
	je	.L18	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp115
	movq	%rax, %rcx	# tmp115,
	movl	$34, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	leaq	.LC8(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	__assert_fail@PLT	#
.L18:
# problem40.c:35:     assert(func0(9) == 514229);
	movl	$9, %edi	#,
	call	func0	#
# problem40.c:35:     assert(func0(9) == 514229);
	cmpl	$514229, %eax	#, _9
	je	.L19	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp118
	movq	%rax, %rcx	# tmp118,
	movl	$35, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp119
	movq	%rax, %rsi	# tmp119,
	leaq	.LC9(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	__assert_fail@PLT	#
.L19:
# problem40.c:36:     assert(func0(10) == 433494437);
	movl	$10, %edi	#,
	call	func0	#
# problem40.c:36:     assert(func0(10) == 433494437);
	cmpl	$433494437, %eax	#, _10
	je	.L20	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$36, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC10(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	__assert_fail@PLT	#
.L20:
# problem40.c:38:     return 0;
	movl	$0, %eax	#, _32
# problem40.c:39: }
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
