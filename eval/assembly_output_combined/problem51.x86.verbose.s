	.file	"problem51.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	movq	%rdi, -40(%rbp)	# s, s
	movl	%esi, -44(%rbp)	# encode, encode
# problem51.c:6:     int shift = encode ? 5 : 21;
	cmpl	$0, -44(%rbp)	#, encode
	je	.L2	#,
# problem51.c:6:     int shift = encode ? 5 : 21;
	movl	$5, %eax	#, iftmp.0_10
	jmp	.L3	#
.L2:
# problem51.c:6:     int shift = encode ? 5 : 21;
	movl	$21, %eax	#, iftmp.0_10
.L3:
# problem51.c:6:     int shift = encode ? 5 : 21;
	movl	%eax, -24(%rbp)	# iftmp.0_10, shift
# problem51.c:7:     size_t len = strlen(s);
	movq	-40(%rbp), %rax	# s, tmp91
	movq	%rax, %rdi	# tmp91,
	call	strlen@PLT	#
	movq	%rax, -8(%rbp)	# tmp92, len
# problem51.c:8:     for (size_t i = 0; i < len; i++) {
	movq	$0, -16(%rbp)	#, i
# problem51.c:8:     for (size_t i = 0; i < len; i++) {
	jmp	.L4	#
.L5:
# problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	movq	-40(%rbp), %rdx	# s, tmp93
	movq	-16(%rbp), %rax	# i, tmp94
	addq	%rdx, %rax	# tmp93, _1
	movzbl	(%rax), %eax	# *_1, _2
	movsbl	%al, %eax	# _2, _3
# problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	leal	-97(%rax), %edx	#, _4
# problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	movl	-24(%rbp), %eax	# shift, tmp95
	addl	%eax, %edx	# tmp95, _5
# problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	movslq	%edx, %rax	# _5, tmp96
	imulq	$1321528399, %rax, %rax	#, tmp96, tmp97
	shrq	$32, %rax	#, tmp98
	sarl	$3, %eax	#, tmp99
	movl	%edx, %ecx	# _5, tmp100
	sarl	$31, %ecx	#, tmp100
	subl	%ecx, %eax	# tmp100, _6
	imull	$26, %eax, %ecx	#, _6, tmp101
	movl	%edx, %eax	# _5, _5
	subl	%ecx, %eax	# tmp101, _5
# problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	addl	$97, %eax	#, tmp102
	movl	%eax, -20(%rbp)	# tmp102, w
# problem51.c:10:         s[i] = (char)w;
	movq	-40(%rbp), %rdx	# s, tmp103
	movq	-16(%rbp), %rax	# i, tmp104
	addq	%rdx, %rax	# tmp103, _7
# problem51.c:10:         s[i] = (char)w;
	movl	-20(%rbp), %edx	# w, tmp105
# problem51.c:10:         s[i] = (char)w;
	movb	%dl, (%rax)	# _8, *_7
# problem51.c:8:     for (size_t i = 0; i < len; i++) {
	addq	$1, -16(%rbp)	#, i
.L4:
# problem51.c:8:     for (size_t i = 0; i < len; i++) {
	movq	-16(%rbp), %rax	# i, tmp106
	cmpq	-8(%rbp), %rax	# len, tmp106
	jb	.L5	#,
# problem51.c:12: }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem51.c"
.LC1:
	.string	"strcmp(encoded_str, str) == 0"
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
	subq	$32, %rsp	#,
# problem51.c:23:     srand((unsigned int)time(NULL));
	movl	$0, %edi	#,
	call	time@PLT	#
# problem51.c:23:     srand((unsigned int)time(NULL));
	movl	%eax, %edi	# _2,
	call	srand@PLT	#
# problem51.c:25:     for (int i = 0; i < 100; i++) {
	movl	$0, -28(%rbp)	#, i
# problem51.c:25:     for (int i = 0; i < 100; i++) {
	jmp	.L7	#
.L11:
# problem51.c:26:         int l = 10 + rand() % 11;
	call	rand@PLT	#
	movl	%eax, %ecx	#, _3
# problem51.c:26:         int l = 10 + rand() % 11;
	movslq	%ecx, %rax	# _3, tmp101
	imulq	$780903145, %rax, %rax	#, tmp101, tmp102
	shrq	$32, %rax	#, tmp103
	movl	%eax, %edx	# tmp103, tmp104
	sarl	%edx	# tmp104
	movl	%ecx, %eax	# _3, tmp105
	sarl	$31, %eax	#, tmp105
	subl	%eax, %edx	# tmp105, _4
	movl	%edx, %eax	# _4, tmp106
	sall	$2, %eax	#, tmp106
	addl	%edx, %eax	# _4, tmp106
	addl	%eax, %eax	# tmp106
	addl	%edx, %eax	# _4, tmp106
	subl	%eax, %ecx	# tmp106, _3
	movl	%ecx, %edx	# _3, _4
# problem51.c:26:         int l = 10 + rand() % 11;
	leal	10(%rdx), %eax	#, tmp107
	movl	%eax, -20(%rbp)	# tmp107, l
# problem51.c:27:         char *str = (char *)malloc(l + 1);
	movl	-20(%rbp), %eax	# l, tmp108
	addl	$1, %eax	#, _5
# problem51.c:27:         char *str = (char *)malloc(l + 1);
	cltq
	movq	%rax, %rdi	# _6,
	call	malloc@PLT	#
	movq	%rax, -16(%rbp)	# tmp109, str
# problem51.c:28:         for (int j = 0; j < l; j++) {
	movl	$0, -24(%rbp)	#, j
# problem51.c:28:         for (int j = 0; j < l; j++) {
	jmp	.L8	#
.L9:
# problem51.c:29:             char chr = 'a' + rand() % 26;
	call	rand@PLT	#
# problem51.c:29:             char chr = 'a' + rand() % 26;
	movslq	%eax, %rdx	# _7, tmp110
	imulq	$1321528399, %rdx, %rdx	#, tmp110, tmp111
	shrq	$32, %rdx	#, tmp112
	sarl	$3, %edx	#, tmp113
	movl	%eax, %ecx	# _7, tmp114
	sarl	$31, %ecx	#, tmp114
	subl	%ecx, %edx	# tmp114, _8
	imull	$26, %edx, %ecx	#, _8, tmp115
	subl	%ecx, %eax	# tmp115, _7
	movl	%eax, %edx	# _7, _8
# problem51.c:29:             char chr = 'a' + rand() % 26;
	movl	%edx, %eax	# _8, _9
	addl	$97, %eax	#, _10
# problem51.c:29:             char chr = 'a' + rand() % 26;
	movb	%al, -29(%rbp)	# _10, chr
# problem51.c:30:             str[j] = chr;
	movl	-24(%rbp), %eax	# j, tmp116
	movslq	%eax, %rdx	# tmp116, _11
	movq	-16(%rbp), %rax	# str, tmp117
	addq	%rax, %rdx	# tmp117, _12
# problem51.c:30:             str[j] = chr;
	movzbl	-29(%rbp), %eax	# chr, tmp118
	movb	%al, (%rdx)	# tmp118, *_12
# problem51.c:28:         for (int j = 0; j < l; j++) {
	addl	$1, -24(%rbp)	#, j
.L8:
# problem51.c:28:         for (int j = 0; j < l; j++) {
	movl	-24(%rbp), %eax	# j, tmp119
	cmpl	-20(%rbp), %eax	# l, tmp119
	jl	.L9	#,
# problem51.c:32:         str[l] = '\0';
	movl	-20(%rbp), %eax	# l, tmp120
	movslq	%eax, %rdx	# tmp120, _13
	movq	-16(%rbp), %rax	# str, tmp121
	addq	%rdx, %rax	# _13, _14
# problem51.c:32:         str[l] = '\0';
	movb	$0, (%rax)	#, *_14
# problem51.c:34:         char *encoded_str = (char *)malloc(l + 1);
	movl	-20(%rbp), %eax	# l, tmp122
	addl	$1, %eax	#, _15
# problem51.c:34:         char *encoded_str = (char *)malloc(l + 1);
	cltq
	movq	%rax, %rdi	# _16,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp123, encoded_str
# problem51.c:35:         strcpy(encoded_str, str);
	movq	-16(%rbp), %rdx	# str, tmp124
	movq	-8(%rbp), %rax	# encoded_str, tmp125
	movq	%rdx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	strcpy@PLT	#
# problem51.c:36:         func0(encoded_str, 1);
	movq	-8(%rbp), %rax	# encoded_str, tmp126
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp126,
	call	func0	#
# problem51.c:37:         func0(encoded_str, 0);
	movq	-8(%rbp), %rax	# encoded_str, tmp127
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp127,
	call	func0	#
# problem51.c:38:         assert(strcmp(encoded_str, str) == 0);
	movq	-16(%rbp), %rdx	# str, tmp128
	movq	-8(%rbp), %rax	# encoded_str, tmp129
	movq	%rdx, %rsi	# tmp128,
	movq	%rax, %rdi	# tmp129,
	call	strcmp@PLT	#
# problem51.c:38:         assert(strcmp(encoded_str, str) == 0);
	testl	%eax, %eax	# _17
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp130
	movq	%rax, %rcx	# tmp130,
	movl	$38, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp131
	movq	%rax, %rsi	# tmp131,
	leaq	.LC1(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	__assert_fail@PLT	#
.L10:
# problem51.c:40:         free(str);
	movq	-16(%rbp), %rax	# str, tmp133
	movq	%rax, %rdi	# tmp133,
	call	free@PLT	#
# problem51.c:41:         free(encoded_str);
	movq	-8(%rbp), %rax	# encoded_str, tmp134
	movq	%rax, %rdi	# tmp134,
	call	free@PLT	#
# problem51.c:25:     for (int i = 0; i < 100; i++) {
	addl	$1, -28(%rbp)	#, i
.L7:
# problem51.c:25:     for (int i = 0; i < 100; i++) {
	cmpl	$99, -28(%rbp)	#, i
	jle	.L11	#,
# problem51.c:44:     return 0;
	movl	$0, %eax	#, _26
# problem51.c:45: }
	leave	
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
