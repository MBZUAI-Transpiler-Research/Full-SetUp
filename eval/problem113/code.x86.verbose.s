	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
# code.c:7:     int len = strlen(s);
	movq	-56(%rbp), %rax	# s, tmp113
	movq	%rax, %rdi	# tmp113,
	call	strlen@PLT	#
# code.c:7:     int len = strlen(s);
	movl	%eax, -24(%rbp)	# _1, len
# code.c:8:     char *n = malloc((len + 1) * sizeof(char));
	movl	-24(%rbp), %eax	# len, tmp114
	addl	$1, %eax	#, _2
# code.c:8:     char *n = malloc((len + 1) * sizeof(char));
	cltq
	movq	%rax, %rdi	# _3,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp115, n
# code.c:9:     int ni = 0;
	movl	$0, -36(%rbp)	#, ni
# code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	movl	$0, -32(%rbp)	#, i
# code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	jmp	.L2	#
.L8:
# code.c:11:         const char *temp = c;
	movq	-64(%rbp), %rax	# c, tmp116
	movq	%rax, -16(%rbp)	# tmp116, temp
# code.c:12:         bool found = false;
	movb	$0, -38(%rbp)	#, found
# code.c:13:         while (*temp != '\0') {
	jmp	.L3	#
.L6:
# code.c:14:             if (s[i] == *temp) {
	movl	-32(%rbp), %eax	# i, tmp117
	movslq	%eax, %rdx	# tmp117, _4
	movq	-56(%rbp), %rax	# s, tmp118
	addq	%rdx, %rax	# _4, _5
	movzbl	(%rax), %edx	# *_5, _6
# code.c:14:             if (s[i] == *temp) {
	movq	-16(%rbp), %rax	# temp, tmp119
	movzbl	(%rax), %eax	# *temp_34, _7
# code.c:14:             if (s[i] == *temp) {
	cmpb	%al, %dl	# _7, _6
	jne	.L4	#,
# code.c:15:                 found = true;
	movb	$1, -38(%rbp)	#, found
# code.c:16:                 break;
	jmp	.L5	#
.L4:
# code.c:18:             temp++;
	addq	$1, -16(%rbp)	#, temp
.L3:
# code.c:13:         while (*temp != '\0') {
	movq	-16(%rbp), %rax	# temp, tmp120
	movzbl	(%rax), %eax	# *temp_34, _8
# code.c:13:         while (*temp != '\0') {
	testb	%al, %al	# _8
	jne	.L6	#,
.L5:
# code.c:20:         if (!found) {
	movzbl	-38(%rbp), %eax	# found, tmp121
	xorl	$1, %eax	#, _9
# code.c:20:         if (!found) {
	testb	%al, %al	# _9
	je	.L7	#,
# code.c:21:             n[ni++] = s[i];
	movl	-32(%rbp), %eax	# i, tmp122
	movslq	%eax, %rdx	# tmp122, _10
	movq	-56(%rbp), %rax	# s, tmp123
	leaq	(%rdx,%rax), %rcx	#, _11
# code.c:21:             n[ni++] = s[i];
	movl	-36(%rbp), %eax	# ni, ni.0_12
	leal	1(%rax), %edx	#, tmp124
	movl	%edx, -36(%rbp)	# tmp124, ni
	movslq	%eax, %rdx	# ni.0_12, _13
# code.c:21:             n[ni++] = s[i];
	movq	-8(%rbp), %rax	# n, tmp125
	addq	%rax, %rdx	# tmp125, _14
# code.c:21:             n[ni++] = s[i];
	movzbl	(%rcx), %eax	# *_11, _15
# code.c:21:             n[ni++] = s[i];
	movb	%al, (%rdx)	# _15, *_14
.L7:
# code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	addl	$1, -32(%rbp)	#, i
.L2:
# code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	movl	-32(%rbp), %eax	# i, tmp126
	movslq	%eax, %rdx	# tmp126, _16
	movq	-56(%rbp), %rax	# s, tmp127
	addq	%rdx, %rax	# _16, _17
	movzbl	(%rax), %eax	# *_17, _18
# code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	testb	%al, %al	# _18
	jne	.L8	#,
# code.c:24:     n[ni] = '\0';
	movl	-36(%rbp), %eax	# ni, tmp128
	movslq	%eax, %rdx	# tmp128, _19
	movq	-8(%rbp), %rax	# n, tmp129
	addq	%rdx, %rax	# _19, _20
# code.c:24:     n[ni] = '\0';
	movb	$0, (%rax)	#, *_20
# code.c:26:     int n_len = strlen(n);
	movq	-8(%rbp), %rax	# n, tmp130
	movq	%rax, %rdi	# tmp130,
	call	strlen@PLT	#
# code.c:26:     int n_len = strlen(n);
	movl	%eax, -20(%rbp)	# _21, n_len
# code.c:27:     bool is_palindrome = true;
	movb	$1, -37(%rbp)	#, is_palindrome
# code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	movl	$0, -28(%rbp)	#, i
# code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	jmp	.L9	#
.L12:
# code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	movl	-28(%rbp), %eax	# i, tmp131
	movslq	%eax, %rdx	# tmp131, _22
	movq	-8(%rbp), %rax	# n, tmp132
	addq	%rdx, %rax	# _22, _23
	movzbl	(%rax), %edx	# *_23, _24
# code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	movl	-20(%rbp), %eax	# n_len, tmp133
	subl	$1, %eax	#, _25
# code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	subl	-28(%rbp), %eax	# i, _26
	movslq	%eax, %rcx	# _26, _27
# code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	movq	-8(%rbp), %rax	# n, tmp134
	addq	%rcx, %rax	# _27, _28
	movzbl	(%rax), %eax	# *_28, _29
# code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	cmpb	%al, %dl	# _29, _24
	je	.L10	#,
# code.c:30:             is_palindrome = false;
	movb	$0, -37(%rbp)	#, is_palindrome
# code.c:31:             break;
	jmp	.L11	#
.L10:
# code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	addl	$1, -28(%rbp)	#, i
.L9:
# code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	movl	-20(%rbp), %eax	# n_len, tmp135
	movl	%eax, %edx	# tmp135, tmp136
	shrl	$31, %edx	#, tmp136
	addl	%edx, %eax	# tmp136, tmp137
	sarl	%eax	# tmp138
# code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	cmpl	%eax, -28(%rbp)	# _30, i
	jl	.L12	#,
.L11:
# code.c:35:     strcpy(result, n);
	movq	-8(%rbp), %rdx	# n, tmp139
	movq	-72(%rbp), %rax	# result, tmp140
	movq	%rdx, %rsi	# tmp139,
	movq	%rax, %rdi	# tmp140,
	call	strcpy@PLT	#
# code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	cmpb	$0, -37(%rbp)	#, is_palindrome
	je	.L13	#,
# code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	leaq	.LC0(%rip), %rax	#, iftmp.1_38
	jmp	.L14	#
.L13:
# code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	leaq	.LC1(%rip), %rax	#, iftmp.1_38
.L14:
# code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	movq	-80(%rbp), %rdx	# palindrome, tmp141
	movq	%rax, %rsi	# iftmp.1_38,
	movq	%rdx, %rdi	# tmp141,
	call	strcpy@PLT	#
# code.c:38:     free(n);
	movq	-8(%rbp), %rax	# n, tmp142
	movq	%rax, %rdi	# tmp142,
	call	free@PLT	#
# code.c:39: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
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
