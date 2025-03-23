	.file	"problem65.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"aeiouAEIOU"
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
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# s, s
# problem65.c:6:     const char *vowels = "aeiouAEIOU";
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, -8(%rbp)	# tmp98, vowels
# problem65.c:7:     int count = 0;
	movl	$0, -20(%rbp)	#, count
# problem65.c:8:     int length = strlen(s);
	movq	-40(%rbp), %rax	# s, tmp99
	movq	%rax, %rdi	# tmp99,
	call	strlen@PLT	#
# problem65.c:8:     int length = strlen(s);
	movl	%eax, -12(%rbp)	# _1, length
# problem65.c:10:     for (int i = 0; i < length; i++) {
	movl	$0, -16(%rbp)	#, i
# problem65.c:10:     for (int i = 0; i < length; i++) {
	jmp	.L2	#
.L4:
# problem65.c:11:         if (strchr(vowels, s[i])) {
	movl	-16(%rbp), %eax	# i, tmp100
	movslq	%eax, %rdx	# tmp100, _2
	movq	-40(%rbp), %rax	# s, tmp101
	addq	%rdx, %rax	# _2, _3
	movzbl	(%rax), %eax	# *_3, _4
# problem65.c:11:         if (strchr(vowels, s[i])) {
	movsbl	%al, %edx	# _4, _5
	movq	-8(%rbp), %rax	# vowels, tmp102
	movl	%edx, %esi	# _5,
	movq	%rax, %rdi	# tmp102,
	call	strchr@PLT	#
# problem65.c:11:         if (strchr(vowels, s[i])) {
	testq	%rax, %rax	# _6
	je	.L3	#,
# problem65.c:12:             count++;
	addl	$1, -20(%rbp)	#, count
.L3:
# problem65.c:10:     for (int i = 0; i < length; i++) {
	addl	$1, -16(%rbp)	#, i
.L2:
# problem65.c:10:     for (int i = 0; i < length; i++) {
	movl	-16(%rbp), %eax	# i, tmp103
	cmpl	-12(%rbp), %eax	# length, tmp103
	jl	.L4	#,
# problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	cmpl	$0, -12(%rbp)	#, length
	jle	.L5	#,
# problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	movl	-12(%rbp), %eax	# length, tmp104
	cltq
	leaq	-1(%rax), %rdx	#, _8
	movq	-40(%rbp), %rax	# s, tmp105
	addq	%rdx, %rax	# _8, _9
	movzbl	(%rax), %eax	# *_9, _10
# problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	cmpb	$121, %al	#, _10
	je	.L6	#,
# problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	movl	-12(%rbp), %eax	# length, tmp106
	cltq
	leaq	-1(%rax), %rdx	#, _12
	movq	-40(%rbp), %rax	# s, tmp107
	addq	%rdx, %rax	# _12, _13
	movzbl	(%rax), %eax	# *_13, _14
# problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	cmpb	$89, %al	#, _14
	jne	.L5	#,
.L6:
# problem65.c:17:         count++;
	addl	$1, -20(%rbp)	#, count
.L5:
# problem65.c:20:     return count;
	movl	-20(%rbp), %eax	# count, _26
# problem65.c:21: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC1:
	.string	"abcde"
.LC2:
	.string	"problem65.c"
.LC3:
	.string	"func0(\"abcde\") == 2"
.LC4:
	.string	"Alone"
.LC5:
	.string	"func0(\"Alone\") == 3"
.LC6:
	.string	"key"
.LC7:
	.string	"func0(\"key\") == 2"
.LC8:
	.string	"bye"
.LC9:
	.string	"func0(\"bye\") == 1"
.LC10:
	.string	"keY"
.LC11:
	.string	"func0(\"keY\") == 2"
.LC12:
	.string	"bYe"
.LC13:
	.string	"func0(\"bYe\") == 1"
.LC14:
	.string	"ACEDY"
.LC15:
	.string	"func0(\"ACEDY\") == 3"
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
# problem65.c:28:     assert(func0("abcde") == 2);
	leaq	.LC1(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	func0	#
	cmpl	$2, %eax	#, _1
	je	.L9	#,
# problem65.c:28:     assert(func0("abcde") == 2);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$28, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC3(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L9:
# problem65.c:29:     assert(func0("Alone") == 3);
	leaq	.LC4(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	func0	#
	cmpl	$3, %eax	#, _2
	je	.L10	#,
# problem65.c:29:     assert(func0("Alone") == 3);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$29, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC5(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L10:
# problem65.c:30:     assert(func0("key") == 2);
	leaq	.LC6(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	func0	#
	cmpl	$2, %eax	#, _3
	je	.L11	#,
# problem65.c:30:     assert(func0("key") == 2);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$30, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC7(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L11:
# problem65.c:31:     assert(func0("bye") == 1);
	leaq	.LC8(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	func0	#
	cmpl	$1, %eax	#, _4
	je	.L12	#,
# problem65.c:31:     assert(func0("bye") == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$31, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC9(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L12:
# problem65.c:32:     assert(func0("keY") == 2);
	leaq	.LC10(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	func0	#
	cmpl	$2, %eax	#, _5
	je	.L13	#,
# problem65.c:32:     assert(func0("keY") == 2);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp108
	movq	%rax, %rcx	# tmp108,
	movl	$32, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp109
	movq	%rax, %rsi	# tmp109,
	leaq	.LC11(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	__assert_fail@PLT	#
.L13:
# problem65.c:33:     assert(func0("bYe") == 1);
	leaq	.LC12(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	func0	#
	cmpl	$1, %eax	#, _6
	je	.L14	#,
# problem65.c:33:     assert(func0("bYe") == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$33, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC13(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L14:
# problem65.c:34:     assert(func0("ACEDY") == 3);
	leaq	.LC14(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	func0	#
	cmpl	$3, %eax	#, _7
	je	.L15	#,
# problem65.c:34:     assert(func0("ACEDY") == 3);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$34, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC15(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L15:
# problem65.c:36:     return 0;
	movl	$0, %eax	#, _23
# problem65.c:37: }
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
