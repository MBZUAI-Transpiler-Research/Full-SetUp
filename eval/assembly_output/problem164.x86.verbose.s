	.file	"problem164.c"
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
	movl	%edi, -20(%rbp)	# a, a
	movl	%esi, -24(%rbp)	# b, b
	movq	%rdx, -32(%rbp)	# out, out
	movq	%rcx, -40(%rbp)	# size, size
# problem164.c:5:     *size = 0;
	movq	-40(%rbp), %rax	# size, tmp89
	movl	$0, (%rax)	#, *size_15(D)
# problem164.c:7:     if (b < a) {
	movl	-24(%rbp), %eax	# b, tmp90
	cmpl	-20(%rbp), %eax	# a, tmp90
	jge	.L2	#,
# problem164.c:8:         m = a;
	movl	-20(%rbp), %eax	# a, tmp91
	movl	%eax, -4(%rbp)	# tmp91, m
# problem164.c:9:         a = b;
	movl	-24(%rbp), %eax	# b, tmp92
	movl	%eax, -20(%rbp)	# tmp92, a
# problem164.c:10:         b = m;
	movl	-4(%rbp), %eax	# m, tmp93
	movl	%eax, -24(%rbp)	# tmp93, b
.L2:
# problem164.c:13:     for (int i = a; i <= b; i++) {
	movl	-20(%rbp), %eax	# a, tmp94
	movl	%eax, -8(%rbp)	# tmp94, i
# problem164.c:13:     for (int i = a; i <= b; i++) {
	jmp	.L3	#
.L5:
# problem164.c:14:         if (i < 10 && i % 2 == 0) {
	cmpl	$9, -8(%rbp)	#, i
	jg	.L4	#,
# problem164.c:14:         if (i < 10 && i % 2 == 0) {
	movl	-8(%rbp), %eax	# i, i.0_1
	andl	$1, %eax	#, _2
# problem164.c:14:         if (i < 10 && i % 2 == 0) {
	testl	%eax, %eax	# _2
	jne	.L4	#,
# problem164.c:15:             out[(*size)++] = i;
	movq	-40(%rbp), %rax	# size, tmp95
	movl	(%rax), %eax	# *size_15(D), _3
# problem164.c:15:             out[(*size)++] = i;
	leal	1(%rax), %ecx	#, _5
	movq	-40(%rbp), %rdx	# size, tmp96
	movl	%ecx, (%rdx)	# _5, *size_15(D)
	cltq
# problem164.c:15:             out[(*size)++] = i;
	leaq	0(,%rax,4), %rdx	#, _7
	movq	-32(%rbp), %rax	# out, tmp97
	addq	%rax, %rdx	# tmp97, _8
# problem164.c:15:             out[(*size)++] = i;
	movl	-8(%rbp), %eax	# i, tmp98
	movl	%eax, (%rdx)	# tmp98, *_8
.L4:
# problem164.c:13:     for (int i = a; i <= b; i++) {
	addl	$1, -8(%rbp)	#, i
.L3:
# problem164.c:13:     for (int i = a; i <= b; i++) {
	movl	-8(%rbp), %eax	# i, tmp99
	cmpl	-24(%rbp), %eax	# b, tmp99
	jle	.L5	#,
# problem164.c:18: }
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movl	%esi, -28(%rbp)	# a_size, a_size
	movq	%rdx, -40(%rbp)	# b, b
	movl	%ecx, -32(%rbp)	# b_size, b_size
# problem164.c:25:     if (a_size != b_size) return 0;
	movl	-28(%rbp), %eax	# a_size, tmp92
	cmpl	-32(%rbp), %eax	# b_size, tmp92
	je	.L7	#,
# problem164.c:25:     if (a_size != b_size) return 0;
	movl	$0, %eax	#, _10
# problem164.c:25:     if (a_size != b_size) return 0;
	jmp	.L8	#
.L7:
# problem164.c:26:     for (int i = 0; i < a_size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem164.c:26:     for (int i = 0; i < a_size; i++) {
	jmp	.L9	#
.L11:
# problem164.c:27:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem164.c:27:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-40(%rbp), %rax	# b, tmp96
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem164.c:27:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L10	#,
# problem164.c:27:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
# problem164.c:27:         if (a[i] != b[i]) return 0;
	jmp	.L8	#
.L10:
# problem164.c:26:     for (int i = 0; i < a_size; i++) {
	addl	$1, -4(%rbp)	#, i
.L9:
# problem164.c:26:     for (int i = 0; i < a_size; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-28(%rbp), %eax	# a_size, tmp97
	jl	.L11	#,
# problem164.c:29:     return 1;
	movl	$1, %eax	#, _10
.L8:
# problem164.c:30: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem164.c"
	.align 8
.LC1:
	.string	"issame(result, size, expected1, 4)"
	.align 8
.LC2:
	.string	"issame(result, size, expected2, 4)"
	.align 8
.LC3:
	.string	"issame(result, size, expected3, 4)"
	.align 8
.LC4:
	.string	"issame(result, size, expected4, 0)"
.LC5:
	.string	"All tests passed."
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
# problem164.c:32: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp122
	movq	%rax, -8(%rbp)	# tmp122, D.3260
	xorl	%eax, %eax	# tmp122
# problem164.c:35:     int expected1[] = {2, 4, 6, 8};
	movl	$2, -96(%rbp)	#, expected1[0]
	movl	$4, -92(%rbp)	#, expected1[1]
	movl	$6, -88(%rbp)	#, expected1[2]
	movl	$8, -84(%rbp)	#, expected1[3]
# problem164.c:36:     func0(2, 10, result, &size);
	leaq	-104(%rbp), %rdx	#, tmp92
	leaq	-48(%rbp), %rax	#, tmp93
	movq	%rdx, %rcx	# tmp92,
	movq	%rax, %rdx	# tmp93,
	movl	$10, %esi	#,
	movl	$2, %edi	#,
	call	func0	#
# problem164.c:37:     assert(issame(result, size, expected1, 4));
	movl	-104(%rbp), %esi	# size, size.1_1
	leaq	-96(%rbp), %rdx	#, tmp94
	leaq	-48(%rbp), %rax	#, tmp95
	movl	$4, %ecx	#,
	movq	%rax, %rdi	# tmp95,
	call	issame	#
# problem164.c:37:     assert(issame(result, size, expected1, 4));
	testl	%eax, %eax	# _2
	jne	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$37, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC1(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L13:
# problem164.c:39:     int expected2[] = {2, 4, 6, 8};
	movl	$2, -80(%rbp)	#, expected2[0]
	movl	$4, -76(%rbp)	#, expected2[1]
	movl	$6, -72(%rbp)	#, expected2[2]
	movl	$8, -68(%rbp)	#, expected2[3]
# problem164.c:40:     func0(10, 2, result, &size);
	leaq	-104(%rbp), %rdx	#, tmp99
	leaq	-48(%rbp), %rax	#, tmp100
	movq	%rdx, %rcx	# tmp99,
	movq	%rax, %rdx	# tmp100,
	movl	$2, %esi	#,
	movl	$10, %edi	#,
	call	func0	#
# problem164.c:41:     assert(issame(result, size, expected2, 4));
	movl	-104(%rbp), %esi	# size, size.2_3
	leaq	-80(%rbp), %rdx	#, tmp101
	leaq	-48(%rbp), %rax	#, tmp102
	movl	$4, %ecx	#,
	movq	%rax, %rdi	# tmp102,
	call	issame	#
# problem164.c:41:     assert(issame(result, size, expected2, 4));
	testl	%eax, %eax	# _4
	jne	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$41, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC2(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L14:
# problem164.c:43:     int expected3[] = {2, 4, 6, 8};
	movl	$2, -64(%rbp)	#, expected3[0]
	movl	$4, -60(%rbp)	#, expected3[1]
	movl	$6, -56(%rbp)	#, expected3[2]
	movl	$8, -52(%rbp)	#, expected3[3]
# problem164.c:44:     func0(132, 2, result, &size);
	leaq	-104(%rbp), %rdx	#, tmp106
	leaq	-48(%rbp), %rax	#, tmp107
	movq	%rdx, %rcx	# tmp106,
	movq	%rax, %rdx	# tmp107,
	movl	$2, %esi	#,
	movl	$132, %edi	#,
	call	func0	#
# problem164.c:45:     assert(issame(result, size, expected3, 4));
	movl	-104(%rbp), %esi	# size, size.3_5
	leaq	-64(%rbp), %rdx	#, tmp108
	leaq	-48(%rbp), %rax	#, tmp109
	movl	$4, %ecx	#,
	movq	%rax, %rdi	# tmp109,
	call	issame	#
# problem164.c:45:     assert(issame(result, size, expected3, 4));
	testl	%eax, %eax	# _6
	jne	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp110
	movq	%rax, %rcx	# tmp110,
	movl	$45, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	leaq	.LC3(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	__assert_fail@PLT	#
.L15:
# problem164.c:48:     func0(17, 89, result, &size);
	leaq	-104(%rbp), %rdx	#, tmp113
	leaq	-48(%rbp), %rax	#, tmp114
	movq	%rdx, %rcx	# tmp113,
	movq	%rax, %rdx	# tmp114,
	movl	$89, %esi	#,
	movl	$17, %edi	#,
	call	func0	#
# problem164.c:49:     assert(issame(result, size, expected4, 0));
	movl	-104(%rbp), %esi	# size, size.4_7
	leaq	-100(%rbp), %rdx	#, tmp115
	leaq	-48(%rbp), %rax	#, tmp116
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp116,
	call	issame	#
# problem164.c:49:     assert(issame(result, size, expected4, 0));
	testl	%eax, %eax	# _8
	jne	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$49, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC4(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L16:
# problem164.c:51:     printf("All tests passed.\n");
	leaq	.LC5(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	puts@PLT	#
# problem164.c:53:     return 0;
	movl	$0, %eax	#, _35
# problem164.c:54: }
	movq	-8(%rbp), %rdx	# D.3260, tmp123
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp123
	je	.L18	#,
	call	__stack_chk_fail@PLT	#
.L18:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
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
