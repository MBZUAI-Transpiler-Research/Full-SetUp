	.file	"problem11.c"
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
	movq	%rdi, -40(%rbp)	# str, str
# problem11.c:6:     int len = strlen(str), i, j;
	movq	-40(%rbp), %rax	# str, tmp123
	movq	%rax, %rdi	# tmp123,
	call	strlen@PLT	#
# problem11.c:6:     int len = strlen(str), i, j;
	movl	%eax, -12(%rbp)	# _1, len
# problem11.c:7:     char *result = (char *)malloc(2 * len + 1);
	movl	-12(%rbp), %eax	# len, tmp124
	addl	%eax, %eax	# _2
# problem11.c:7:     char *result = (char *)malloc(2 * len + 1);
	addl	$1, %eax	#, _3
# problem11.c:7:     char *result = (char *)malloc(2 * len + 1);
	cltq
	movq	%rax, %rdi	# _4,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp125, result
# problem11.c:8:     if (!result) {
	cmpq	$0, -8(%rbp)	#, result
	jne	.L2	#,
# problem11.c:9:         return NULL; 
	movl	$0, %eax	#, _45
	jmp	.L3	#
.L2:
# problem11.c:12:     for (i = 0; i < len; i++) {
	movl	$0, -24(%rbp)	#, i
# problem11.c:12:     for (i = 0; i < len; i++) {
	jmp	.L4	#
.L12:
# problem11.c:13:         int is_palindrome = 1;
	movl	$1, -16(%rbp)	#, is_palindrome
# problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	movl	$0, -20(%rbp)	#, j
# problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	jmp	.L5	#
.L8:
# problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	movl	-24(%rbp), %edx	# i, tmp126
	movl	-20(%rbp), %eax	# j, tmp127
	addl	%edx, %eax	# tmp126, _5
	movslq	%eax, %rdx	# _5, _6
# problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	movq	-40(%rbp), %rax	# str, tmp128
	addq	%rdx, %rax	# _6, _7
	movzbl	(%rax), %edx	# *_7, _8
# problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	movl	-12(%rbp), %eax	# len, tmp129
	subl	$1, %eax	#, _9
# problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	subl	-20(%rbp), %eax	# j, _10
	movslq	%eax, %rcx	# _10, _11
# problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	movq	-40(%rbp), %rax	# str, tmp130
	addq	%rcx, %rax	# _11, _12
	movzbl	(%rax), %eax	# *_12, _13
# problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	cmpb	%al, %dl	# _13, _8
	je	.L6	#,
# problem11.c:16:                 is_palindrome = 0;
	movl	$0, -16(%rbp)	#, is_palindrome
# problem11.c:17:                 break;
	jmp	.L7	#
.L6:
# problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	addl	$1, -20(%rbp)	#, j
.L5:
# problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	movl	-12(%rbp), %eax	# len, tmp131
	subl	-24(%rbp), %eax	# i, _14
# problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	movl	%eax, %edx	# _14, tmp132
	shrl	$31, %edx	#, tmp132
	addl	%edx, %eax	# tmp132, tmp133
	sarl	%eax	# tmp134
# problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	cmpl	%eax, -20(%rbp)	# _15, j
	jl	.L8	#,
.L7:
# problem11.c:20:         if (is_palindrome) {
	cmpl	$0, -16(%rbp)	#, is_palindrome
	je	.L9	#,
# problem11.c:21:             strncpy(result, str, len);
	movl	-12(%rbp), %eax	# len, tmp135
	movslq	%eax, %rdx	# tmp135, _16
	movq	-40(%rbp), %rcx	# str, tmp136
	movq	-8(%rbp), %rax	# result, tmp137
	movq	%rcx, %rsi	# tmp136,
	movq	%rax, %rdi	# tmp137,
	call	strncpy@PLT	#
# problem11.c:22:             for (j = 0; j < i; j++) {
	movl	$0, -20(%rbp)	#, j
# problem11.c:22:             for (j = 0; j < i; j++) {
	jmp	.L10	#
.L11:
# problem11.c:23:                 result[len + j] = str[i - j - 1];
	movl	-24(%rbp), %eax	# i, tmp138
	subl	-20(%rbp), %eax	# j, _17
	cltq
# problem11.c:23:                 result[len + j] = str[i - j - 1];
	leaq	-1(%rax), %rdx	#, _19
	movq	-40(%rbp), %rax	# str, tmp139
	addq	%rdx, %rax	# _19, _20
# problem11.c:23:                 result[len + j] = str[i - j - 1];
	movl	-12(%rbp), %ecx	# len, tmp140
	movl	-20(%rbp), %edx	# j, tmp141
	addl	%ecx, %edx	# tmp140, _21
	movslq	%edx, %rcx	# _21, _22
# problem11.c:23:                 result[len + j] = str[i - j - 1];
	movq	-8(%rbp), %rdx	# result, tmp142
	addq	%rcx, %rdx	# _22, _23
# problem11.c:23:                 result[len + j] = str[i - j - 1];
	movzbl	(%rax), %eax	# *_20, _24
# problem11.c:23:                 result[len + j] = str[i - j - 1];
	movb	%al, (%rdx)	# _24, *_23
# problem11.c:22:             for (j = 0; j < i; j++) {
	addl	$1, -20(%rbp)	#, j
.L10:
# problem11.c:22:             for (j = 0; j < i; j++) {
	movl	-20(%rbp), %eax	# j, tmp143
	cmpl	-24(%rbp), %eax	# i, tmp143
	jl	.L11	#,
# problem11.c:25:             result[len + i] = '\0';
	movl	-12(%rbp), %edx	# len, tmp144
	movl	-24(%rbp), %eax	# i, tmp145
	addl	%edx, %eax	# tmp144, _25
	movslq	%eax, %rdx	# _25, _26
# problem11.c:25:             result[len + i] = '\0';
	movq	-8(%rbp), %rax	# result, tmp146
	addq	%rdx, %rax	# _26, _27
# problem11.c:25:             result[len + i] = '\0';
	movb	$0, (%rax)	#, *_27
# problem11.c:26:             return result;
	movq	-8(%rbp), %rax	# result, _45
	jmp	.L3	#
.L9:
# problem11.c:12:     for (i = 0; i < len; i++) {
	addl	$1, -24(%rbp)	#, i
.L4:
# problem11.c:12:     for (i = 0; i < len; i++) {
	movl	-24(%rbp), %eax	# i, tmp147
	cmpl	-12(%rbp), %eax	# len, tmp147
	jl	.L12	#,
# problem11.c:30:     strncpy(result, str, len);
	movl	-12(%rbp), %eax	# len, tmp148
	movslq	%eax, %rdx	# tmp148, _28
	movq	-40(%rbp), %rcx	# str, tmp149
	movq	-8(%rbp), %rax	# result, tmp150
	movq	%rcx, %rsi	# tmp149,
	movq	%rax, %rdi	# tmp150,
	call	strncpy@PLT	#
# problem11.c:31:     for (j = 0; j < len; j++) {
	movl	$0, -20(%rbp)	#, j
# problem11.c:31:     for (j = 0; j < len; j++) {
	jmp	.L13	#
.L14:
# problem11.c:32:         result[len + j] = str[len - j - 1];
	movl	-12(%rbp), %eax	# len, tmp151
	subl	-20(%rbp), %eax	# j, _29
	cltq
# problem11.c:32:         result[len + j] = str[len - j - 1];
	leaq	-1(%rax), %rdx	#, _31
	movq	-40(%rbp), %rax	# str, tmp152
	addq	%rdx, %rax	# _31, _32
# problem11.c:32:         result[len + j] = str[len - j - 1];
	movl	-12(%rbp), %ecx	# len, tmp153
	movl	-20(%rbp), %edx	# j, tmp154
	addl	%ecx, %edx	# tmp153, _33
	movslq	%edx, %rcx	# _33, _34
# problem11.c:32:         result[len + j] = str[len - j - 1];
	movq	-8(%rbp), %rdx	# result, tmp155
	addq	%rcx, %rdx	# _34, _35
# problem11.c:32:         result[len + j] = str[len - j - 1];
	movzbl	(%rax), %eax	# *_32, _36
# problem11.c:32:         result[len + j] = str[len - j - 1];
	movb	%al, (%rdx)	# _36, *_35
# problem11.c:31:     for (j = 0; j < len; j++) {
	addl	$1, -20(%rbp)	#, j
.L13:
# problem11.c:31:     for (j = 0; j < len; j++) {
	movl	-20(%rbp), %eax	# j, tmp156
	cmpl	-12(%rbp), %eax	# len, tmp156
	jl	.L14	#,
# problem11.c:34:     result[2 * len] = '\0';
	movl	-12(%rbp), %eax	# len, tmp157
	addl	%eax, %eax	# _37
	movslq	%eax, %rdx	# _37, _38
# problem11.c:34:     result[2 * len] = '\0';
	movq	-8(%rbp), %rax	# result, tmp158
	addq	%rdx, %rax	# _38, _39
# problem11.c:34:     result[2 * len] = '\0';
	movb	$0, (%rax)	#, *_39
# problem11.c:35:     return result;
	movq	-8(%rbp), %rax	# result, _45
.L3:
# problem11.c:36: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"problem11.c"
.LC2:
	.string	"strcmp(palindrome, \"\") == 0"
.LC3:
	.string	"x"
.LC4:
	.string	"strcmp(palindrome, \"x\") == 0"
.LC5:
	.string	"xyz"
.LC6:
	.string	"xyzyx"
	.align 8
.LC7:
	.string	"strcmp(palindrome, \"xyzyx\") == 0"
.LC8:
	.string	"xyx"
	.align 8
.LC9:
	.string	"strcmp(palindrome, \"xyx\") == 0"
.LC10:
	.string	"jerry"
.LC11:
	.string	"jerryrrej"
	.align 8
.LC12:
	.string	"strcmp(palindrome, \"jerryrrej\") == 0"
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
	subq	$16, %rsp	#,
# problem11.c:48:     palindrome = func0("");
	leaq	.LC0(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp91, palindrome
# problem11.c:49:     assert(strcmp(palindrome, "") == 0);
	movq	-8(%rbp), %rax	# palindrome, tmp92
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})palindrome_8], _9
	movzbl	%al, %eax	# _9, _1
	testl	%eax, %eax	# _1
	je	.L16	#,
# problem11.c:49:     assert(strcmp(palindrome, "") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp93
	movq	%rax, %rcx	# tmp93,
	movl	$49, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	leaq	.LC2(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	__assert_fail@PLT	#
.L16:
# problem11.c:50:     free(palindrome);
	movq	-8(%rbp), %rax	# palindrome, tmp96
	movq	%rax, %rdi	# tmp96,
	call	free@PLT	#
# problem11.c:53:     palindrome = func0("x");
	leaq	.LC3(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp98, palindrome
# problem11.c:54:     assert(strcmp(palindrome, "x") == 0);
	movq	-8(%rbp), %rax	# palindrome, tmp99
	leaq	.LC3(%rip), %rdx	#, tmp100
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp99,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _2
	je	.L17	#,
# problem11.c:54:     assert(strcmp(palindrome, "x") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$54, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC4(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L17:
# problem11.c:55:     free(palindrome);
	movq	-8(%rbp), %rax	# palindrome, tmp104
	movq	%rax, %rdi	# tmp104,
	call	free@PLT	#
# problem11.c:58:     palindrome = func0("xyz");
	leaq	.LC5(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp106, palindrome
# problem11.c:59:     assert(strcmp(palindrome, "xyzyx") == 0);
	movq	-8(%rbp), %rax	# palindrome, tmp107
	leaq	.LC6(%rip), %rdx	#, tmp108
	movq	%rdx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp107,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _3
	je	.L18	#,
# problem11.c:59:     assert(strcmp(palindrome, "xyzyx") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$59, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC7(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L18:
# problem11.c:60:     free(palindrome);
	movq	-8(%rbp), %rax	# palindrome, tmp112
	movq	%rax, %rdi	# tmp112,
	call	free@PLT	#
# problem11.c:63:     palindrome = func0("xyx");
	leaq	.LC8(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp114, palindrome
# problem11.c:64:     assert(strcmp(palindrome, "xyx") == 0);
	movq	-8(%rbp), %rax	# palindrome, tmp115
	leaq	.LC8(%rip), %rdx	#, tmp116
	movq	%rdx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp115,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _4
	je	.L19	#,
# problem11.c:64:     assert(strcmp(palindrome, "xyx") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$64, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC9(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L19:
# problem11.c:65:     free(palindrome);
	movq	-8(%rbp), %rax	# palindrome, tmp120
	movq	%rax, %rdi	# tmp120,
	call	free@PLT	#
# problem11.c:68:     palindrome = func0("jerry");
	leaq	.LC10(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp122, palindrome
# problem11.c:69:     assert(strcmp(palindrome, "jerryrrej") == 0);
	movq	-8(%rbp), %rax	# palindrome, tmp123
	leaq	.LC11(%rip), %rdx	#, tmp124
	movq	%rdx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp123,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _5
	je	.L20	#,
# problem11.c:69:     assert(strcmp(palindrome, "jerryrrej") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp125
	movq	%rax, %rcx	# tmp125,
	movl	$69, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	leaq	.LC12(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	__assert_fail@PLT	#
.L20:
# problem11.c:70:     free(palindrome);
	movq	-8(%rbp), %rax	# palindrome, tmp128
	movq	%rax, %rdi	# tmp128,
	call	free@PLT	#
# problem11.c:72:     return 0;
	movl	$0, %eax	#, _28
# problem11.c:73: }
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
