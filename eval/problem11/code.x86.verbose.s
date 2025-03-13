	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
# code.c:6:     int len = strlen(str), i, j;
	movq	-40(%rbp), %rax	# str, tmp123
	movq	%rax, %rdi	# tmp123,
	call	strlen@PLT	#
# code.c:6:     int len = strlen(str), i, j;
	movl	%eax, -12(%rbp)	# _1, len
# code.c:7:     char *result = (char *)malloc(2 * len + 1);
	movl	-12(%rbp), %eax	# len, tmp124
	addl	%eax, %eax	# _2
# code.c:7:     char *result = (char *)malloc(2 * len + 1);
	addl	$1, %eax	#, _3
# code.c:7:     char *result = (char *)malloc(2 * len + 1);
	cltq
	movq	%rax, %rdi	# _4,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp125, result
# code.c:8:     if (!result) {
	cmpq	$0, -8(%rbp)	#, result
	jne	.L2	#,
# code.c:9:         return NULL; 
	movl	$0, %eax	#, _45
	jmp	.L3	#
.L2:
# code.c:12:     for (i = 0; i < len; i++) {
	movl	$0, -24(%rbp)	#, i
# code.c:12:     for (i = 0; i < len; i++) {
	jmp	.L4	#
.L12:
# code.c:13:         int is_palindrome = 1;
	movl	$1, -16(%rbp)	#, is_palindrome
# code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	movl	$0, -20(%rbp)	#, j
# code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	jmp	.L5	#
.L8:
# code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	movl	-24(%rbp), %edx	# i, tmp126
	movl	-20(%rbp), %eax	# j, tmp127
	addl	%edx, %eax	# tmp126, _5
	movslq	%eax, %rdx	# _5, _6
# code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	movq	-40(%rbp), %rax	# str, tmp128
	addq	%rdx, %rax	# _6, _7
	movzbl	(%rax), %edx	# *_7, _8
# code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	movl	-12(%rbp), %eax	# len, tmp129
	subl	$1, %eax	#, _9
# code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	subl	-20(%rbp), %eax	# j, _10
	movslq	%eax, %rcx	# _10, _11
# code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	movq	-40(%rbp), %rax	# str, tmp130
	addq	%rcx, %rax	# _11, _12
	movzbl	(%rax), %eax	# *_12, _13
# code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	cmpb	%al, %dl	# _13, _8
	je	.L6	#,
# code.c:16:                 is_palindrome = 0;
	movl	$0, -16(%rbp)	#, is_palindrome
# code.c:17:                 break;
	jmp	.L7	#
.L6:
# code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	addl	$1, -20(%rbp)	#, j
.L5:
# code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	movl	-12(%rbp), %eax	# len, tmp131
	subl	-24(%rbp), %eax	# i, _14
# code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	movl	%eax, %edx	# _14, tmp132
	shrl	$31, %edx	#, tmp132
	addl	%edx, %eax	# tmp132, tmp133
	sarl	%eax	# tmp134
# code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	cmpl	%eax, -20(%rbp)	# _15, j
	jl	.L8	#,
.L7:
# code.c:20:         if (is_palindrome) {
	cmpl	$0, -16(%rbp)	#, is_palindrome
	je	.L9	#,
# code.c:21:             strncpy(result, str, len);
	movl	-12(%rbp), %eax	# len, tmp135
	movslq	%eax, %rdx	# tmp135, _16
	movq	-40(%rbp), %rcx	# str, tmp136
	movq	-8(%rbp), %rax	# result, tmp137
	movq	%rcx, %rsi	# tmp136,
	movq	%rax, %rdi	# tmp137,
	call	strncpy@PLT	#
# code.c:22:             for (j = 0; j < i; j++) {
	movl	$0, -20(%rbp)	#, j
# code.c:22:             for (j = 0; j < i; j++) {
	jmp	.L10	#
.L11:
# code.c:23:                 result[len + j] = str[i - j - 1];
	movl	-24(%rbp), %eax	# i, tmp138
	subl	-20(%rbp), %eax	# j, _17
	cltq
# code.c:23:                 result[len + j] = str[i - j - 1];
	leaq	-1(%rax), %rdx	#, _19
	movq	-40(%rbp), %rax	# str, tmp139
	addq	%rdx, %rax	# _19, _20
# code.c:23:                 result[len + j] = str[i - j - 1];
	movl	-12(%rbp), %ecx	# len, tmp140
	movl	-20(%rbp), %edx	# j, tmp141
	addl	%ecx, %edx	# tmp140, _21
	movslq	%edx, %rcx	# _21, _22
# code.c:23:                 result[len + j] = str[i - j - 1];
	movq	-8(%rbp), %rdx	# result, tmp142
	addq	%rcx, %rdx	# _22, _23
# code.c:23:                 result[len + j] = str[i - j - 1];
	movzbl	(%rax), %eax	# *_20, _24
# code.c:23:                 result[len + j] = str[i - j - 1];
	movb	%al, (%rdx)	# _24, *_23
# code.c:22:             for (j = 0; j < i; j++) {
	addl	$1, -20(%rbp)	#, j
.L10:
# code.c:22:             for (j = 0; j < i; j++) {
	movl	-20(%rbp), %eax	# j, tmp143
	cmpl	-24(%rbp), %eax	# i, tmp143
	jl	.L11	#,
# code.c:25:             result[len + i] = '\0';
	movl	-12(%rbp), %edx	# len, tmp144
	movl	-24(%rbp), %eax	# i, tmp145
	addl	%edx, %eax	# tmp144, _25
	movslq	%eax, %rdx	# _25, _26
# code.c:25:             result[len + i] = '\0';
	movq	-8(%rbp), %rax	# result, tmp146
	addq	%rdx, %rax	# _26, _27
# code.c:25:             result[len + i] = '\0';
	movb	$0, (%rax)	#, *_27
# code.c:26:             return result;
	movq	-8(%rbp), %rax	# result, _45
	jmp	.L3	#
.L9:
# code.c:12:     for (i = 0; i < len; i++) {
	addl	$1, -24(%rbp)	#, i
.L4:
# code.c:12:     for (i = 0; i < len; i++) {
	movl	-24(%rbp), %eax	# i, tmp147
	cmpl	-12(%rbp), %eax	# len, tmp147
	jl	.L12	#,
# code.c:30:     strncpy(result, str, len);
	movl	-12(%rbp), %eax	# len, tmp148
	movslq	%eax, %rdx	# tmp148, _28
	movq	-40(%rbp), %rcx	# str, tmp149
	movq	-8(%rbp), %rax	# result, tmp150
	movq	%rcx, %rsi	# tmp149,
	movq	%rax, %rdi	# tmp150,
	call	strncpy@PLT	#
# code.c:31:     for (j = 0; j < len; j++) {
	movl	$0, -20(%rbp)	#, j
# code.c:31:     for (j = 0; j < len; j++) {
	jmp	.L13	#
.L14:
# code.c:32:         result[len + j] = str[len - j - 1];
	movl	-12(%rbp), %eax	# len, tmp151
	subl	-20(%rbp), %eax	# j, _29
	cltq
# code.c:32:         result[len + j] = str[len - j - 1];
	leaq	-1(%rax), %rdx	#, _31
	movq	-40(%rbp), %rax	# str, tmp152
	addq	%rdx, %rax	# _31, _32
# code.c:32:         result[len + j] = str[len - j - 1];
	movl	-12(%rbp), %ecx	# len, tmp153
	movl	-20(%rbp), %edx	# j, tmp154
	addl	%ecx, %edx	# tmp153, _33
	movslq	%edx, %rcx	# _33, _34
# code.c:32:         result[len + j] = str[len - j - 1];
	movq	-8(%rbp), %rdx	# result, tmp155
	addq	%rcx, %rdx	# _34, _35
# code.c:32:         result[len + j] = str[len - j - 1];
	movzbl	(%rax), %eax	# *_32, _36
# code.c:32:         result[len + j] = str[len - j - 1];
	movb	%al, (%rdx)	# _36, *_35
# code.c:31:     for (j = 0; j < len; j++) {
	addl	$1, -20(%rbp)	#, j
.L13:
# code.c:31:     for (j = 0; j < len; j++) {
	movl	-20(%rbp), %eax	# j, tmp156
	cmpl	-12(%rbp), %eax	# len, tmp156
	jl	.L14	#,
# code.c:34:     result[2 * len] = '\0';
	movl	-12(%rbp), %eax	# len, tmp157
	addl	%eax, %eax	# _37
	movslq	%eax, %rdx	# _37, _38
# code.c:34:     result[2 * len] = '\0';
	movq	-8(%rbp), %rax	# result, tmp158
	addq	%rdx, %rax	# _38, _39
# code.c:34:     result[2 * len] = '\0';
	movb	$0, (%rax)	#, *_39
# code.c:35:     return result;
	movq	-8(%rbp), %rax	# result, _45
.L3:
# code.c:36: }
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
