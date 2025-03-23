	.file	"problem55.c"
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
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# s0, s0
	movq	%rsi, -48(%rbp)	# s1, s1
# problem55.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	movq	-40(%rbp), %rax	# s0, tmp100
	movq	%rax, %rdi	# tmp100,
	call	strlen@PLT	#
# problem55.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	movl	%eax, -8(%rbp)	# _1, len0
# problem55.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	movq	-48(%rbp), %rax	# s1, tmp101
	movq	%rax, %rdi	# tmp101,
	call	strlen@PLT	#
# problem55.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	movl	%eax, -4(%rbp)	# _2, len1
# problem55.c:7:     for (int i = 0; i < len0; i++) {
	movl	$0, -24(%rbp)	#, i
# problem55.c:7:     for (int i = 0; i < len0; i++) {
	jmp	.L2	#
.L9:
# problem55.c:8:         bool found = false;
	movb	$0, -26(%rbp)	#, found
# problem55.c:9:         for (int j = 0; j < len1; j++) {
	movl	$0, -20(%rbp)	#, j
# problem55.c:9:         for (int j = 0; j < len1; j++) {
	jmp	.L3	#
.L6:
# problem55.c:10:             if (s0[i] == s1[j]) {
	movl	-24(%rbp), %eax	# i, tmp102
	movslq	%eax, %rdx	# tmp102, _3
	movq	-40(%rbp), %rax	# s0, tmp103
	addq	%rdx, %rax	# _3, _4
	movzbl	(%rax), %edx	# *_4, _5
# problem55.c:10:             if (s0[i] == s1[j]) {
	movl	-20(%rbp), %eax	# j, tmp104
	movslq	%eax, %rcx	# tmp104, _6
	movq	-48(%rbp), %rax	# s1, tmp105
	addq	%rcx, %rax	# _6, _7
	movzbl	(%rax), %eax	# *_7, _8
# problem55.c:10:             if (s0[i] == s1[j]) {
	cmpb	%al, %dl	# _8, _5
	jne	.L4	#,
# problem55.c:11:                 found = true;
	movb	$1, -26(%rbp)	#, found
# problem55.c:12:                 break;
	jmp	.L5	#
.L4:
# problem55.c:9:         for (int j = 0; j < len1; j++) {
	addl	$1, -20(%rbp)	#, j
.L3:
# problem55.c:9:         for (int j = 0; j < len1; j++) {
	movl	-20(%rbp), %eax	# j, tmp106
	cmpl	-4(%rbp), %eax	# len1, tmp106
	jl	.L6	#,
.L5:
# problem55.c:15:         if (!found) return false;
	movzbl	-26(%rbp), %eax	# found, tmp107
	xorl	$1, %eax	#, _9
# problem55.c:15:         if (!found) return false;
	testb	%al, %al	# _9
	je	.L7	#,
# problem55.c:15:         if (!found) return false;
	movl	$0, %eax	#, _23
# problem55.c:15:         if (!found) return false;
	jmp	.L8	#
.L7:
# problem55.c:7:     for (int i = 0; i < len0; i++) {
	addl	$1, -24(%rbp)	#, i
.L2:
# problem55.c:7:     for (int i = 0; i < len0; i++) {
	movl	-24(%rbp), %eax	# i, tmp108
	cmpl	-8(%rbp), %eax	# len0, tmp108
	jl	.L9	#,
# problem55.c:17:     for (int i = 0; i < len1; i++) {
	movl	$0, -16(%rbp)	#, i
# problem55.c:17:     for (int i = 0; i < len1; i++) {
	jmp	.L10	#
.L16:
# problem55.c:18:         bool found = false;
	movb	$0, -25(%rbp)	#, found
# problem55.c:19:         for (int j = 0; j < len0; j++) {
	movl	$0, -12(%rbp)	#, j
# problem55.c:19:         for (int j = 0; j < len0; j++) {
	jmp	.L11	#
.L14:
# problem55.c:20:             if (s1[i] == s0[j]) {
	movl	-16(%rbp), %eax	# i, tmp109
	movslq	%eax, %rdx	# tmp109, _10
	movq	-48(%rbp), %rax	# s1, tmp110
	addq	%rdx, %rax	# _10, _11
	movzbl	(%rax), %edx	# *_11, _12
# problem55.c:20:             if (s1[i] == s0[j]) {
	movl	-12(%rbp), %eax	# j, tmp111
	movslq	%eax, %rcx	# tmp111, _13
	movq	-40(%rbp), %rax	# s0, tmp112
	addq	%rcx, %rax	# _13, _14
	movzbl	(%rax), %eax	# *_14, _15
# problem55.c:20:             if (s1[i] == s0[j]) {
	cmpb	%al, %dl	# _15, _12
	jne	.L12	#,
# problem55.c:21:                 found = true;
	movb	$1, -25(%rbp)	#, found
# problem55.c:22:                 break;
	jmp	.L13	#
.L12:
# problem55.c:19:         for (int j = 0; j < len0; j++) {
	addl	$1, -12(%rbp)	#, j
.L11:
# problem55.c:19:         for (int j = 0; j < len0; j++) {
	movl	-12(%rbp), %eax	# j, tmp113
	cmpl	-8(%rbp), %eax	# len0, tmp113
	jl	.L14	#,
.L13:
# problem55.c:25:         if (!found) return false;
	movzbl	-25(%rbp), %eax	# found, tmp114
	xorl	$1, %eax	#, _16
# problem55.c:25:         if (!found) return false;
	testb	%al, %al	# _16
	je	.L15	#,
# problem55.c:25:         if (!found) return false;
	movl	$0, %eax	#, _23
# problem55.c:25:         if (!found) return false;
	jmp	.L8	#
.L15:
# problem55.c:17:     for (int i = 0; i < len1; i++) {
	addl	$1, -16(%rbp)	#, i
.L10:
# problem55.c:17:     for (int i = 0; i < len1; i++) {
	movl	-16(%rbp), %eax	# i, tmp115
	cmpl	-4(%rbp), %eax	# len1, tmp115
	jl	.L16	#,
# problem55.c:27:     return true;
	movl	$1, %eax	#, _23
.L8:
# problem55.c:28: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"dddzzzzzzzddeddabc"
.LC1:
	.string	"eabcdzzzz"
.LC2:
	.string	"problem55.c"
	.align 8
.LC3:
	.string	"func0(\"eabcdzzzz\", \"dddzzzzzzzddeddabc\") == true"
.LC4:
	.string	"dddddddabc"
.LC5:
	.string	"abcd"
	.align 8
.LC6:
	.string	"func0(\"abcd\", \"dddddddabc\") == true"
	.align 8
.LC7:
	.string	"func0(\"dddddddabc\", \"abcd\") == true"
.LC8:
	.string	"eabcd"
	.align 8
.LC9:
	.string	"func0(\"eabcd\", \"dddddddabc\") == false"
.LC10:
	.string	"dddddddabce"
	.align 8
.LC11:
	.string	"func0(\"abcd\", \"dddddddabce\") == false"
.LC12:
	.string	"dddzzzzzzzddddabc"
	.align 8
.LC13:
	.string	"func0(\"eabcdzzzz\", \"dddzzzzzzzddddabc\") == false"
.LC14:
	.string	"aaccc"
.LC15:
	.string	"aabb"
	.align 8
.LC16:
	.string	"func0(\"aabb\", \"aaccc\") == false"
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
# problem55.c:36:     assert(func0("eabcdzzzz", "dddzzzzzzzddeddabc") == true);
	leaq	.LC0(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC1(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	func0	#
# problem55.c:36:     assert(func0("eabcdzzzz", "dddzzzzzzzddeddabc") == true);
	testb	%al, %al	# _1
	jne	.L18	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$36, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC3(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L18:
# problem55.c:37:     assert(func0("abcd", "dddddddabc") == true);
	leaq	.LC4(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC5(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	func0	#
# problem55.c:37:     assert(func0("abcd", "dddddddabc") == true);
	testb	%al, %al	# _2
	jne	.L19	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$37, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC6(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	__assert_fail@PLT	#
.L19:
# problem55.c:38:     assert(func0("dddddddabc", "abcd") == true);
	leaq	.LC5(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC4(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	func0	#
# problem55.c:38:     assert(func0("dddddddabc", "abcd") == true);
	testb	%al, %al	# _3
	jne	.L20	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$38, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC7(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L20:
# problem55.c:39:     assert(func0("eabcd", "dddddddabc") == false);
	leaq	.LC4(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC8(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	func0	#
# problem55.c:39:     assert(func0("eabcd", "dddddddabc") == false);
	xorl	$1, %eax	#, _5
	testb	%al, %al	# _5
	jne	.L21	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$39, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC9(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L21:
# problem55.c:40:     assert(func0("abcd", "dddddddabce") == false);
	leaq	.LC10(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC5(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	func0	#
# problem55.c:40:     assert(func0("abcd", "dddddddabce") == false);
	xorl	$1, %eax	#, _7
	testb	%al, %al	# _7
	jne	.L22	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$40, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC11(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L22:
# problem55.c:41:     assert(func0("eabcdzzzz", "dddzzzzzzzddddabc") == false);
	leaq	.LC12(%rip), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	leaq	.LC1(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	func0	#
# problem55.c:41:     assert(func0("eabcdzzzz", "dddzzzzzzzddddabc") == false);
	xorl	$1, %eax	#, _9
	testb	%al, %al	# _9
	jne	.L23	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp122
	movq	%rax, %rcx	# tmp122,
	movl	$41, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp123
	movq	%rax, %rsi	# tmp123,
	leaq	.LC13(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	__assert_fail@PLT	#
.L23:
# problem55.c:42:     assert(func0("aabb", "aaccc") == false);
	leaq	.LC14(%rip), %rax	#, tmp125
	movq	%rax, %rsi	# tmp125,
	leaq	.LC15(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	func0	#
# problem55.c:42:     assert(func0("aabb", "aaccc") == false);
	xorl	$1, %eax	#, _11
	testb	%al, %al	# _11
	jne	.L24	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp127
	movq	%rax, %rcx	# tmp127,
	movl	$42, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	leaq	.LC16(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	__assert_fail@PLT	#
.L24:
# problem55.c:44:     return 0;
	movl	$0, %eax	#, _27
# problem55.c:45: }
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
