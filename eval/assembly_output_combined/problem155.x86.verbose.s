	.file	"problem155.c"
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
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# a, a
	movq	%rsi, -48(%rbp)	# b, b
# problem155.c:7:     int len_a = strlen(a);
	movq	-40(%rbp), %rax	# a, tmp101
	movq	%rax, %rdi	# tmp101,
	call	strlen@PLT	#
# problem155.c:7:     int len_a = strlen(a);
	movl	%eax, -16(%rbp)	# _1, len_a
# problem155.c:8:     int len_b = strlen(b);
	movq	-48(%rbp), %rax	# b, tmp102
	movq	%rax, %rdi	# tmp102,
	call	strlen@PLT	#
# problem155.c:8:     int len_b = strlen(b);
	movl	%eax, -12(%rbp)	# _2, len_b
# problem155.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	movl	-12(%rbp), %eax	# len_b, tmp103
	addl	%eax, %eax	# _3
# problem155.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	addl	$1, %eax	#, _4
# problem155.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	cltq
	movq	%rax, %rdi	# _5,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp104, temp
# problem155.c:11:     for (int i = 0; i < len_b; i++) {
	movl	$0, -20(%rbp)	#, i
# problem155.c:11:     for (int i = 0; i < len_b; i++) {
	jmp	.L2	#
.L5:
# problem155.c:12:         strncpy(temp, b + i, len_b - i);
	movl	-12(%rbp), %eax	# len_b, tmp105
	subl	-20(%rbp), %eax	# i, _6
# problem155.c:12:         strncpy(temp, b + i, len_b - i);
	movslq	%eax, %rdx	# _6, _7
	movl	-20(%rbp), %eax	# i, tmp106
	movslq	%eax, %rcx	# tmp106, _8
	movq	-48(%rbp), %rax	# b, tmp107
	addq	%rax, %rcx	# tmp107, _9
	movq	-8(%rbp), %rax	# temp, tmp108
	movq	%rcx, %rsi	# _9,
	movq	%rax, %rdi	# tmp108,
	call	strncpy@PLT	#
# problem155.c:13:         strncpy(temp + len_b - i, b, i);
	movl	-20(%rbp), %eax	# i, tmp109
	movslq	%eax, %rdx	# tmp109, _10
# problem155.c:13:         strncpy(temp + len_b - i, b, i);
	movl	-12(%rbp), %eax	# len_b, tmp110
	cltq
	movl	-20(%rbp), %ecx	# i, tmp111
	movslq	%ecx, %rcx	# tmp111, _12
	subq	%rcx, %rax	# _12, _11
	movq	%rax, %rsi	# _11, _13
# problem155.c:13:         strncpy(temp + len_b - i, b, i);
	movq	-8(%rbp), %rax	# temp, tmp112
	leaq	(%rsi,%rax), %rcx	#, _14
	movq	-48(%rbp), %rax	# b, tmp113
	movq	%rax, %rsi	# tmp113,
	movq	%rcx, %rdi	# _14,
	call	strncpy@PLT	#
# problem155.c:14:         temp[len_b] = '\0';
	movl	-12(%rbp), %eax	# len_b, tmp114
	movslq	%eax, %rdx	# tmp114, _15
	movq	-8(%rbp), %rax	# temp, tmp115
	addq	%rdx, %rax	# _15, _16
# problem155.c:14:         temp[len_b] = '\0';
	movb	$0, (%rax)	#, *_16
# problem155.c:15:         if (strstr(a, temp)) {
	movq	-8(%rbp), %rdx	# temp, tmp116
	movq	-40(%rbp), %rax	# a, tmp117
	movq	%rdx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	strstr@PLT	#
# problem155.c:15:         if (strstr(a, temp)) {
	testq	%rax, %rax	# _17
	je	.L3	#,
# problem155.c:16:             free(temp);
	movq	-8(%rbp), %rax	# temp, tmp118
	movq	%rax, %rdi	# tmp118,
	call	free@PLT	#
# problem155.c:17:             return true;
	movl	$1, %eax	#, _19
	jmp	.L4	#
.L3:
# problem155.c:11:     for (int i = 0; i < len_b; i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# problem155.c:11:     for (int i = 0; i < len_b; i++) {
	movl	-20(%rbp), %eax	# i, tmp119
	cmpl	-12(%rbp), %eax	# len_b, tmp119
	jl	.L5	#,
# problem155.c:21:     free(temp);
	movq	-8(%rbp), %rax	# temp, tmp120
	movq	%rax, %rdi	# tmp120,
	call	free@PLT	#
# problem155.c:22:     return false;
	movl	$0, %eax	#, _19
.L4:
# problem155.c:23: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"xyw"
.LC1:
	.string	"xyzw"
.LC2:
	.string	"problem155.c"
.LC3:
	.string	"func0(\"xyzw\", \"xyw\") == false"
.LC4:
	.string	"ell"
.LC5:
	.string	"yello"
.LC6:
	.string	"func0(\"yello\", \"ell\") == true"
.LC7:
	.string	"ptut"
.LC8:
	.string	"whattup"
	.align 8
.LC9:
	.string	"func0(\"whattup\", \"ptut\") == false"
.LC10:
	.string	"fee"
.LC11:
	.string	"efef"
.LC12:
	.string	"func0(\"efef\", \"fee\") == true"
.LC13:
	.string	"aabb"
.LC14:
	.string	"abab"
	.align 8
.LC15:
	.string	"func0(\"abab\", \"aabb\") == false"
.LC16:
	.string	"tinem"
.LC17:
	.string	"winemtt"
	.align 8
.LC18:
	.string	"func0(\"winemtt\", \"tinem\") == true"
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
# problem155.c:31:     assert(func0("xyzw", "xyw") == false);
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC1(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	func0	#
	xorl	$1, %eax	#, _2
	testb	%al, %al	# _2
	jne	.L7	#,
# problem155.c:31:     assert(func0("xyzw", "xyw") == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$31, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC3(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L7:
# problem155.c:32:     assert(func0("yello", "ell") == true);
	leaq	.LC4(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC5(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	func0	#
	testb	%al, %al	# _3
	jne	.L8	#,
# problem155.c:32:     assert(func0("yello", "ell") == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$32, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC6(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L8:
# problem155.c:33:     assert(func0("whattup", "ptut") == false);
	leaq	.LC7(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC8(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	func0	#
	xorl	$1, %eax	#, _5
	testb	%al, %al	# _5
	jne	.L9	#,
# problem155.c:33:     assert(func0("whattup", "ptut") == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$33, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC9(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L9:
# problem155.c:34:     assert(func0("efef", "fee") == true);
	leaq	.LC10(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC11(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	func0	#
	testb	%al, %al	# _6
	jne	.L10	#,
# problem155.c:34:     assert(func0("efef", "fee") == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp110
	movq	%rax, %rcx	# tmp110,
	movl	$34, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	leaq	.LC12(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	__assert_fail@PLT	#
.L10:
# problem155.c:35:     assert(func0("abab", "aabb") == false);
	leaq	.LC13(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC14(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	func0	#
	xorl	$1, %eax	#, _8
	testb	%al, %al	# _8
	jne	.L11	#,
# problem155.c:35:     assert(func0("abab", "aabb") == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp115
	movq	%rax, %rcx	# tmp115,
	movl	$35, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	leaq	.LC15(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	__assert_fail@PLT	#
.L11:
# problem155.c:36:     assert(func0("winemtt", "tinem") == true);
	leaq	.LC16(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC17(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	func0	#
	testb	%al, %al	# _9
	jne	.L12	#,
# problem155.c:36:     assert(func0("winemtt", "tinem") == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp120
	movq	%rax, %rcx	# tmp120,
	movl	$36, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp121
	movq	%rax, %rsi	# tmp121,
	leaq	.LC18(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	__assert_fail@PLT	#
.L12:
# problem155.c:38:     return 0;
	movl	$0, %eax	#, _23
# problem155.c:39: }
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
