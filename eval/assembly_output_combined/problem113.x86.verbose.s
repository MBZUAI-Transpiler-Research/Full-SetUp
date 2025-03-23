	.file	"problem113.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"True"
.LC1:
	.string	"False"
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
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# s, s
	movq	%rsi, -64(%rbp)	# c, c
	movq	%rdx, -72(%rbp)	# result, result
	movq	%rcx, -80(%rbp)	# palindrome, palindrome
# problem113.c:7:     int len = strlen(s);
	movq	-56(%rbp), %rax	# s, tmp113
	movq	%rax, %rdi	# tmp113,
	call	strlen@PLT	#
# problem113.c:7:     int len = strlen(s);
	movl	%eax, -24(%rbp)	# _1, len
# problem113.c:8:     char *n = malloc((len + 1) * sizeof(char));
	movl	-24(%rbp), %eax	# len, tmp114
	addl	$1, %eax	#, _2
# problem113.c:8:     char *n = malloc((len + 1) * sizeof(char));
	cltq
	movq	%rax, %rdi	# _3,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp115, n
# problem113.c:9:     int ni = 0;
	movl	$0, -36(%rbp)	#, ni
# problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	movl	$0, -32(%rbp)	#, i
# problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	jmp	.L2	#
.L8:
# problem113.c:11:         const char *temp = c;
	movq	-64(%rbp), %rax	# c, tmp116
	movq	%rax, -16(%rbp)	# tmp116, temp
# problem113.c:12:         bool found = false;
	movb	$0, -38(%rbp)	#, found
# problem113.c:13:         while (*temp != '\0') {
	jmp	.L3	#
.L6:
# problem113.c:14:             if (s[i] == *temp) {
	movl	-32(%rbp), %eax	# i, tmp117
	movslq	%eax, %rdx	# tmp117, _4
	movq	-56(%rbp), %rax	# s, tmp118
	addq	%rdx, %rax	# _4, _5
	movzbl	(%rax), %edx	# *_5, _6
# problem113.c:14:             if (s[i] == *temp) {
	movq	-16(%rbp), %rax	# temp, tmp119
	movzbl	(%rax), %eax	# *temp_34, _7
# problem113.c:14:             if (s[i] == *temp) {
	cmpb	%al, %dl	# _7, _6
	jne	.L4	#,
# problem113.c:15:                 found = true;
	movb	$1, -38(%rbp)	#, found
# problem113.c:16:                 break;
	jmp	.L5	#
.L4:
# problem113.c:18:             temp++;
	addq	$1, -16(%rbp)	#, temp
.L3:
# problem113.c:13:         while (*temp != '\0') {
	movq	-16(%rbp), %rax	# temp, tmp120
	movzbl	(%rax), %eax	# *temp_34, _8
# problem113.c:13:         while (*temp != '\0') {
	testb	%al, %al	# _8
	jne	.L6	#,
.L5:
# problem113.c:20:         if (!found) {
	movzbl	-38(%rbp), %eax	# found, tmp121
	xorl	$1, %eax	#, _9
# problem113.c:20:         if (!found) {
	testb	%al, %al	# _9
	je	.L7	#,
# problem113.c:21:             n[ni++] = s[i];
	movl	-32(%rbp), %eax	# i, tmp122
	movslq	%eax, %rdx	# tmp122, _10
	movq	-56(%rbp), %rax	# s, tmp123
	leaq	(%rdx,%rax), %rcx	#, _11
# problem113.c:21:             n[ni++] = s[i];
	movl	-36(%rbp), %eax	# ni, ni.0_12
	leal	1(%rax), %edx	#, tmp124
	movl	%edx, -36(%rbp)	# tmp124, ni
	movslq	%eax, %rdx	# ni.0_12, _13
# problem113.c:21:             n[ni++] = s[i];
	movq	-8(%rbp), %rax	# n, tmp125
	addq	%rax, %rdx	# tmp125, _14
# problem113.c:21:             n[ni++] = s[i];
	movzbl	(%rcx), %eax	# *_11, _15
# problem113.c:21:             n[ni++] = s[i];
	movb	%al, (%rdx)	# _15, *_14
.L7:
# problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	addl	$1, -32(%rbp)	#, i
.L2:
# problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	movl	-32(%rbp), %eax	# i, tmp126
	movslq	%eax, %rdx	# tmp126, _16
	movq	-56(%rbp), %rax	# s, tmp127
	addq	%rdx, %rax	# _16, _17
	movzbl	(%rax), %eax	# *_17, _18
# problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	testb	%al, %al	# _18
	jne	.L8	#,
# problem113.c:24:     n[ni] = '\0';
	movl	-36(%rbp), %eax	# ni, tmp128
	movslq	%eax, %rdx	# tmp128, _19
	movq	-8(%rbp), %rax	# n, tmp129
	addq	%rdx, %rax	# _19, _20
# problem113.c:24:     n[ni] = '\0';
	movb	$0, (%rax)	#, *_20
# problem113.c:26:     int n_len = strlen(n);
	movq	-8(%rbp), %rax	# n, tmp130
	movq	%rax, %rdi	# tmp130,
	call	strlen@PLT	#
# problem113.c:26:     int n_len = strlen(n);
	movl	%eax, -20(%rbp)	# _21, n_len
# problem113.c:27:     bool is_palindrome = true;
	movb	$1, -37(%rbp)	#, is_palindrome
# problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	movl	$0, -28(%rbp)	#, i
# problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	jmp	.L9	#
.L12:
# problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	movl	-28(%rbp), %eax	# i, tmp131
	movslq	%eax, %rdx	# tmp131, _22
	movq	-8(%rbp), %rax	# n, tmp132
	addq	%rdx, %rax	# _22, _23
	movzbl	(%rax), %edx	# *_23, _24
# problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	movl	-20(%rbp), %eax	# n_len, tmp133
	subl	$1, %eax	#, _25
# problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	subl	-28(%rbp), %eax	# i, _26
	movslq	%eax, %rcx	# _26, _27
# problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	movq	-8(%rbp), %rax	# n, tmp134
	addq	%rcx, %rax	# _27, _28
	movzbl	(%rax), %eax	# *_28, _29
# problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	cmpb	%al, %dl	# _29, _24
	je	.L10	#,
# problem113.c:30:             is_palindrome = false;
	movb	$0, -37(%rbp)	#, is_palindrome
# problem113.c:31:             break;
	jmp	.L11	#
.L10:
# problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	addl	$1, -28(%rbp)	#, i
.L9:
# problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	movl	-20(%rbp), %eax	# n_len, tmp135
	movl	%eax, %edx	# tmp135, tmp136
	shrl	$31, %edx	#, tmp136
	addl	%edx, %eax	# tmp136, tmp137
	sarl	%eax	# tmp138
# problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	cmpl	%eax, -28(%rbp)	# _30, i
	jl	.L12	#,
.L11:
# problem113.c:35:     strcpy(result, n);
	movq	-8(%rbp), %rdx	# n, tmp139
	movq	-72(%rbp), %rax	# result, tmp140
	movq	%rdx, %rsi	# tmp139,
	movq	%rax, %rdi	# tmp140,
	call	strcpy@PLT	#
# problem113.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	cmpb	$0, -37(%rbp)	#, is_palindrome
	je	.L13	#,
# problem113.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	leaq	.LC0(%rip), %rax	#, iftmp.1_38
	jmp	.L14	#
.L13:
# problem113.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	leaq	.LC1(%rip), %rax	#, iftmp.1_38
.L14:
# problem113.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	movq	-80(%rbp), %rdx	# palindrome, tmp141
	movq	%rax, %rsi	# iftmp.1_38,
	movq	%rdx, %rdi	# tmp141,
	call	strcpy@PLT	#
# problem113.c:38:     free(n);
	movq	-8(%rbp), %rax	# n, tmp142
	movq	%rax, %rdi	# tmp142,
	call	free@PLT	#
# problem113.c:39: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC2:
	.string	"ae"
.LC3:
	.string	"abcde"
.LC4:
	.string	"bcd"
.LC5:
	.string	"problem113.c"
	.align 8
.LC6:
	.string	"strcmp(result, \"bcd\") == 0 && strcmp(palindrome, \"False\") == 0"
.LC7:
	.string	"b"
.LC8:
	.string	"abcdef"
.LC9:
	.string	"acdef"
	.align 8
.LC10:
	.string	"strcmp(result, \"acdef\") == 0 && strcmp(palindrome, \"False\") == 0"
.LC11:
	.string	"ab"
.LC12:
	.string	"abcdedcba"
.LC13:
	.string	"cdedc"
	.align 8
.LC14:
	.string	"strcmp(result, \"cdedc\") == 0 && strcmp(palindrome, \"True\") == 0"
.LC15:
	.string	"w"
.LC16:
	.string	"dwik"
.LC17:
	.string	"dik"
	.align 8
.LC18:
	.string	"strcmp(result, \"dik\") == 0 && strcmp(palindrome, \"False\") == 0"
.LC19:
	.string	"a"
	.align 8
.LC20:
	.string	"strcmp(result, \"\") == 0 && strcmp(palindrome, \"True\") == 0"
.LC21:
	.string	""
	.align 8
.LC22:
	.string	"strcmp(result, \"abcdedcba\") == 0 && strcmp(palindrome, \"True\") == 0"
.LC23:
	.string	"v"
.LC24:
	.string	"vabba"
.LC25:
	.string	"abba"
	.align 8
.LC26:
	.string	"strcmp(result, \"abba\") == 0 && strcmp(palindrome, \"True\") == 0"
.LC27:
	.string	"mia"
.LC28:
	.string	"mamma"
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
	addq	$-128, %rsp	#,
# problem113.c:46: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp200
	movq	%rax, -8(%rbp)	# tmp200, D.3157
	xorl	%eax, %eax	# tmp200
# problem113.c:50:     func0("abcde", "ae", result, palindrome);
	leaq	-118(%rbp), %rdx	#, tmp104
	leaq	-112(%rbp), %rax	#, tmp105
	movq	%rdx, %rcx	# tmp104,
	movq	%rax, %rdx	# tmp105,
	leaq	.LC2(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC3(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	func0	#
# problem113.c:51:     assert(strcmp(result, "bcd") == 0 && strcmp(palindrome, "False") == 0);
	leaq	-112(%rbp), %rax	#, tmp108
	leaq	.LC4(%rip), %rdx	#, tmp109
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp108,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _1
	jne	.L16	#,
# problem113.c:51:     assert(strcmp(result, "bcd") == 0 && strcmp(palindrome, "False") == 0);
	leaq	-118(%rbp), %rax	#, tmp110
	leaq	.LC1(%rip), %rdx	#, tmp111
	movq	%rdx, %rsi	# tmp111,
	movq	%rax, %rdi	# tmp110,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _2
	je	.L36	#,
.L16:
# problem113.c:51:     assert(strcmp(result, "bcd") == 0 && strcmp(palindrome, "False") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$51, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC6(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L36:
# problem113.c:53:     func0("abcdef", "b", result, palindrome);
	leaq	-118(%rbp), %rdx	#, tmp115
	leaq	-112(%rbp), %rax	#, tmp116
	movq	%rdx, %rcx	# tmp115,
	movq	%rax, %rdx	# tmp116,
	leaq	.LC7(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC8(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	func0	#
# problem113.c:54:     assert(strcmp(result, "acdef") == 0 && strcmp(palindrome, "False") == 0);
	leaq	-112(%rbp), %rax	#, tmp119
	leaq	.LC9(%rip), %rdx	#, tmp120
	movq	%rdx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp119,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _3
	jne	.L18	#,
# problem113.c:54:     assert(strcmp(result, "acdef") == 0 && strcmp(palindrome, "False") == 0);
	leaq	-118(%rbp), %rax	#, tmp121
	leaq	.LC1(%rip), %rdx	#, tmp122
	movq	%rdx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp121,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _4
	je	.L37	#,
.L18:
# problem113.c:54:     assert(strcmp(result, "acdef") == 0 && strcmp(palindrome, "False") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp123
	movq	%rax, %rcx	# tmp123,
	movl	$54, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	leaq	.LC10(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	__assert_fail@PLT	#
.L37:
# problem113.c:56:     func0("abcdedcba", "ab", result, palindrome);
	leaq	-118(%rbp), %rdx	#, tmp126
	leaq	-112(%rbp), %rax	#, tmp127
	movq	%rdx, %rcx	# tmp126,
	movq	%rax, %rdx	# tmp127,
	leaq	.LC11(%rip), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	leaq	.LC12(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	func0	#
# problem113.c:57:     assert(strcmp(result, "cdedc") == 0 && strcmp(palindrome, "True") == 0);
	leaq	-112(%rbp), %rax	#, tmp130
	leaq	.LC13(%rip), %rdx	#, tmp131
	movq	%rdx, %rsi	# tmp131,
	movq	%rax, %rdi	# tmp130,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _5
	jne	.L20	#,
# problem113.c:57:     assert(strcmp(result, "cdedc") == 0 && strcmp(palindrome, "True") == 0);
	leaq	-118(%rbp), %rax	#, tmp132
	leaq	.LC0(%rip), %rdx	#, tmp133
	movq	%rdx, %rsi	# tmp133,
	movq	%rax, %rdi	# tmp132,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _6
	je	.L38	#,
.L20:
# problem113.c:57:     assert(strcmp(result, "cdedc") == 0 && strcmp(palindrome, "True") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp134
	movq	%rax, %rcx	# tmp134,
	movl	$57, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp135
	movq	%rax, %rsi	# tmp135,
	leaq	.LC14(%rip), %rax	#, tmp136
	movq	%rax, %rdi	# tmp136,
	call	__assert_fail@PLT	#
.L38:
# problem113.c:59:     func0("dwik", "w", result, palindrome);
	leaq	-118(%rbp), %rdx	#, tmp137
	leaq	-112(%rbp), %rax	#, tmp138
	movq	%rdx, %rcx	# tmp137,
	movq	%rax, %rdx	# tmp138,
	leaq	.LC15(%rip), %rax	#, tmp139
	movq	%rax, %rsi	# tmp139,
	leaq	.LC16(%rip), %rax	#, tmp140
	movq	%rax, %rdi	# tmp140,
	call	func0	#
# problem113.c:60:     assert(strcmp(result, "dik") == 0 && strcmp(palindrome, "False") == 0);
	leaq	-112(%rbp), %rax	#, tmp141
	leaq	.LC17(%rip), %rdx	#, tmp142
	movq	%rdx, %rsi	# tmp142,
	movq	%rax, %rdi	# tmp141,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _7
	jne	.L22	#,
# problem113.c:60:     assert(strcmp(result, "dik") == 0 && strcmp(palindrome, "False") == 0);
	leaq	-118(%rbp), %rax	#, tmp143
	leaq	.LC1(%rip), %rdx	#, tmp144
	movq	%rdx, %rsi	# tmp144,
	movq	%rax, %rdi	# tmp143,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _8
	je	.L39	#,
.L22:
# problem113.c:60:     assert(strcmp(result, "dik") == 0 && strcmp(palindrome, "False") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp145
	movq	%rax, %rcx	# tmp145,
	movl	$60, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp146
	movq	%rax, %rsi	# tmp146,
	leaq	.LC18(%rip), %rax	#, tmp147
	movq	%rax, %rdi	# tmp147,
	call	__assert_fail@PLT	#
.L39:
# problem113.c:62:     func0("a", "a", result, palindrome);
	leaq	-118(%rbp), %rdx	#, tmp148
	leaq	-112(%rbp), %rax	#, tmp149
	movq	%rdx, %rcx	# tmp148,
	movq	%rax, %rdx	# tmp149,
	leaq	.LC19(%rip), %rax	#, tmp150
	movq	%rax, %rsi	# tmp150,
	leaq	.LC19(%rip), %rax	#, tmp151
	movq	%rax, %rdi	# tmp151,
	call	func0	#
# problem113.c:63:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	movzbl	-112(%rbp), %eax	# MEM[(const unsigned char * {ref-all})&result], _25
	movzbl	%al, %eax	# _25, _9
	testl	%eax, %eax	# _9
	jne	.L24	#,
# problem113.c:63:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	leaq	-118(%rbp), %rax	#, tmp152
	leaq	.LC0(%rip), %rdx	#, tmp153
	movq	%rdx, %rsi	# tmp153,
	movq	%rax, %rdi	# tmp152,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _10
	je	.L40	#,
.L24:
# problem113.c:63:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp154
	movq	%rax, %rcx	# tmp154,
	movl	$63, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp155
	movq	%rax, %rsi	# tmp155,
	leaq	.LC20(%rip), %rax	#, tmp156
	movq	%rax, %rdi	# tmp156,
	call	__assert_fail@PLT	#
.L40:
# problem113.c:65:     func0("abcdedcba", "", result, palindrome);
	leaq	-118(%rbp), %rdx	#, tmp157
	leaq	-112(%rbp), %rax	#, tmp158
	movq	%rdx, %rcx	# tmp157,
	movq	%rax, %rdx	# tmp158,
	leaq	.LC21(%rip), %rax	#, tmp159
	movq	%rax, %rsi	# tmp159,
	leaq	.LC12(%rip), %rax	#, tmp160
	movq	%rax, %rdi	# tmp160,
	call	func0	#
# problem113.c:66:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	leaq	-112(%rbp), %rax	#, tmp161
	leaq	.LC12(%rip), %rdx	#, tmp162
	movq	%rdx, %rsi	# tmp162,
	movq	%rax, %rdi	# tmp161,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _11
	jne	.L26	#,
# problem113.c:66:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	leaq	-118(%rbp), %rax	#, tmp163
	leaq	.LC0(%rip), %rdx	#, tmp164
	movq	%rdx, %rsi	# tmp164,
	movq	%rax, %rdi	# tmp163,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _12
	je	.L41	#,
.L26:
# problem113.c:66:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp165
	movq	%rax, %rcx	# tmp165,
	movl	$66, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp166
	movq	%rax, %rsi	# tmp166,
	leaq	.LC22(%rip), %rax	#, tmp167
	movq	%rax, %rdi	# tmp167,
	call	__assert_fail@PLT	#
.L41:
# problem113.c:68:     func0("abcdedcba", "v", result, palindrome);
	leaq	-118(%rbp), %rdx	#, tmp168
	leaq	-112(%rbp), %rax	#, tmp169
	movq	%rdx, %rcx	# tmp168,
	movq	%rax, %rdx	# tmp169,
	leaq	.LC23(%rip), %rax	#, tmp170
	movq	%rax, %rsi	# tmp170,
	leaq	.LC12(%rip), %rax	#, tmp171
	movq	%rax, %rdi	# tmp171,
	call	func0	#
# problem113.c:69:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	leaq	-112(%rbp), %rax	#, tmp172
	leaq	.LC12(%rip), %rdx	#, tmp173
	movq	%rdx, %rsi	# tmp173,
	movq	%rax, %rdi	# tmp172,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _13
	jne	.L28	#,
# problem113.c:69:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	leaq	-118(%rbp), %rax	#, tmp174
	leaq	.LC0(%rip), %rdx	#, tmp175
	movq	%rdx, %rsi	# tmp175,
	movq	%rax, %rdi	# tmp174,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _14
	je	.L42	#,
.L28:
# problem113.c:69:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp176
	movq	%rax, %rcx	# tmp176,
	movl	$69, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp177
	movq	%rax, %rsi	# tmp177,
	leaq	.LC22(%rip), %rax	#, tmp178
	movq	%rax, %rdi	# tmp178,
	call	__assert_fail@PLT	#
.L42:
# problem113.c:71:     func0("vabba", "v", result, palindrome);
	leaq	-118(%rbp), %rdx	#, tmp179
	leaq	-112(%rbp), %rax	#, tmp180
	movq	%rdx, %rcx	# tmp179,
	movq	%rax, %rdx	# tmp180,
	leaq	.LC23(%rip), %rax	#, tmp181
	movq	%rax, %rsi	# tmp181,
	leaq	.LC24(%rip), %rax	#, tmp182
	movq	%rax, %rdi	# tmp182,
	call	func0	#
# problem113.c:72:     assert(strcmp(result, "abba") == 0 && strcmp(palindrome, "True") == 0);
	leaq	-112(%rbp), %rax	#, tmp183
	leaq	.LC25(%rip), %rdx	#, tmp184
	movq	%rdx, %rsi	# tmp184,
	movq	%rax, %rdi	# tmp183,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _15
	jne	.L30	#,
# problem113.c:72:     assert(strcmp(result, "abba") == 0 && strcmp(palindrome, "True") == 0);
	leaq	-118(%rbp), %rax	#, tmp185
	leaq	.LC0(%rip), %rdx	#, tmp186
	movq	%rdx, %rsi	# tmp186,
	movq	%rax, %rdi	# tmp185,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _16
	je	.L43	#,
.L30:
# problem113.c:72:     assert(strcmp(result, "abba") == 0 && strcmp(palindrome, "True") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp187
	movq	%rax, %rcx	# tmp187,
	movl	$72, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp188
	movq	%rax, %rsi	# tmp188,
	leaq	.LC26(%rip), %rax	#, tmp189
	movq	%rax, %rdi	# tmp189,
	call	__assert_fail@PLT	#
.L43:
# problem113.c:74:     func0("mamma", "mia", result, palindrome);
	leaq	-118(%rbp), %rdx	#, tmp190
	leaq	-112(%rbp), %rax	#, tmp191
	movq	%rdx, %rcx	# tmp190,
	movq	%rax, %rdx	# tmp191,
	leaq	.LC27(%rip), %rax	#, tmp192
	movq	%rax, %rsi	# tmp192,
	leaq	.LC28(%rip), %rax	#, tmp193
	movq	%rax, %rdi	# tmp193,
	call	func0	#
# problem113.c:75:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	movzbl	-112(%rbp), %eax	# MEM[(const unsigned char * {ref-all})&result], _30
	movzbl	%al, %eax	# _30, _17
	testl	%eax, %eax	# _17
	jne	.L32	#,
# problem113.c:75:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	leaq	-118(%rbp), %rax	#, tmp194
	leaq	.LC0(%rip), %rdx	#, tmp195
	movq	%rdx, %rsi	# tmp195,
	movq	%rax, %rdi	# tmp194,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _18
	je	.L44	#,
.L32:
# problem113.c:75:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp196
	movq	%rax, %rcx	# tmp196,
	movl	$75, %edx	#,
	leaq	.LC5(%rip), %rax	#, tmp197
	movq	%rax, %rsi	# tmp197,
	leaq	.LC20(%rip), %rax	#, tmp198
	movq	%rax, %rdi	# tmp198,
	call	__assert_fail@PLT	#
.L44:
# problem113.c:77:     return 0;
	movl	$0, %eax	#, _31
# problem113.c:78: }
	movq	-8(%rbp), %rdx	# D.3157, tmp201
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp201
	je	.L35	#,
	call	__stack_chk_fail@PLT	#
.L35:
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
